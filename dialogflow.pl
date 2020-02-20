% Predicates for event percept processing. 
:-dynamic answer/4, % answer(S, Context, Intent, Params) keeps track of answer types and answers in Params in a state.
	answers/1, % key-value list of answers from user to questions (initially empty list).
	event/1,  % NAO events (started/done for saying, gesturing, and events for touch, etc.)  
	audioRecording/2,
	emotion/2.

% Predicates related to state execution and transition handling.
:-dynamic currentAttempt/1, currentState/1, currentTopic/1, 
	mcCounter/1, % counter to keep track of options that have been checked for multiple choice question (start counting from 0).
	nextCondition/1, start/0, started/0, timeout/1, topics/1, waitingForAnswer/0, waitingForEvent/1, waitingForAudio/0, waitingForEmotion/0,
	speechText/3. %used to signal that a user did not say anything detectable.  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Event handling logic                                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Right bumper means yes and left bumper means no (used if current state is yes/no question with touch response).
feetBumperEventAnswer('answer_yes') :- event('RightBumperPressed').
feetBumperEventAnswer('answer_no') :- event('LeftBumperPressed').

% All events have been completed when all robot events indicating actions have been done (saying something, gesture, etc.) have been received.
eventsCompleted :- started, not(waitingForEvent(_)).

% An answer has been received when there is an answer and we're no longer waiting for an answer.
answerReceived :- answer(_, _, _, _), not(waitingForAnswer).

% Audio has been received, not longer waiting for audio.
audioReceived :- audioRecording(_,_), not(waitingForAudio).

% Emotion has been received, no longer waiting for emotion.
emotionReceived :- emotion(_,_), not(waitingForEmotion).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Useful definitions                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Text string processing (replacing all mentioned keys with their (presumably) stored values.
% If you're using variables in text strings, make sure there always is a value for these variables in answers!
replaceVar(Text, Result) :- split_string(Text, '%', "", TextParts), replaceKeys(TextParts, Replaced), concatenate(Replaced, Result).
replaceKeys([H | T], [VString | Result]) :-
	atom_string(Key, H), answers(Answers), member((Key=Value), Answers), atom_string(Value, VString), !, replaceKeys(T, Result).
replaceKeys([H | T], [H | Result]) :- replaceKeys(T, Result).
replaceKeys([], []).

concatenate([H1, H2 | T], R) :- string_concat(H1, H2, C), concatenate([C | T], R).
concatenate([H], H).

% Simply append an answer to the list if not yet present; otherwise, replace.
updateAnswers(Answers, Key, Answer, NewAnswers) :- not(member((Key=Answer), Answers)), append(Answers, [Key=Answer], NewAnswers).
updateAnswers(Answers, Key, Answer, NewAnswers) :- member((Key=Value), Answers), delete(Answers, (Key=Value), AnswersTemp), append(AnswersTemp, [Key=Answer], NewAnswers).

getAnswer(Key, Answer) :- atom_string(KeyA, Key), answers(Pairs), member((KeyA=Value), Pairs), atom_string(Value, Answer), !.

addSpeechSpeed(Text, Speed, Result) :- string_concat("\rspd=", Speed, STFront), string_concat(STFront, "\ ", SpeedText), string_concat(SpeedText, Text, Result).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State parameter handling.                              %%%
%%% Define default configuration parameters here.          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Returns values for all keys in list of condition Pairs in state.
keyListValues(State, [Key | Keys], [Value | Values]) :- keyValue(State, Key, Value), keyListValues(State, Keys, Values).
keyListValues(_, [], []).
% Returns value for (one) key in list of condition Pairs in state.
% (use of cut ! to prevent returning default values for keys).
keyValue(State, Key, Value) :- currentTopic(Topic), stateConfig(Topic, State, Pairs), member((Key=Value), Pairs), !.

%% Global and/or default configuration parameters
% (override config param for specific state by using key-label in key-value list associated with that state).
% Number of tries a user gets to provide an answer to a question (of whatever type).
keyValue(_, maxAnswerAttempts, 2).

% Time (in milliseconds) a user gets to answer a question with touch.
keyValue(_, maxAnswerTimeTouch, 6000).

% Time (in milliseconds) a users gets to answer a first and second speech attempt.
keyValue(_, maxAnswerTimeFirst, 6000).
keyValue(_, maxAnswerTimeSecond, 4000).

% Check if the intent result is correct (DialogFlow allows partial intent matching)
keyValue(_, numParams, 0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State completion logic               		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A say state is completed if after starting it, all events that were started have been completed.
% That is, a say state transitions from (1) start to (2) waiting for event completion ('TextDone', 'GestureDone', etc.) to (3) completion.
completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, say), eventsCompleted.
% A question state is completed if after starting it, all events that were started have been completed,
% and an answer has been received, or a timeout occurred.
% That is, a question state transitions from (1) start to (2) posing the question (waitingForEvent) to (3) waiting for answer to (4) complete.
completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, question), eventsCompleted, answerReceived.

completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, audioInput), eventsCompleted, audioReceived.

completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, emotion), eventsCompleted, emotionReceived.