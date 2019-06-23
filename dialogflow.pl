% Predicates for event percept processing. 
:-dynamic answer/3, % answer(State, Type, Params) keeps track of answer types and answers in Params in a state.
	answers/1, % key-value list of answers from user to questions (initially empty list).
	event/1.

% Predicates related to state execution and transition handling.
:- dynamic currentAttempt/1, currentState/1, nextCondition/1, start/0, started/0, timeout/1, waitingForAnswer/0, waitingForEvent/1.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State completion logic               		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A say state is completed if after starting it, all events that were started have been completed.
% That is, a say state transitions from (1) start to (2) waiting for event completion ('TextDone', 'GestureDone', etc.) to (3) completion.
completed(State) :- state(State, say), eventsCompleted.
% A question state is completed if after starting it, all events that were started have been completed,
% and an answer has been received, or a timeout occurred.
% That is, a question state transitions from (1) start to (2) posing the question (waitingForEvent) to (3) waiting for answer to (4) complete.
completed(State) :- state(State, question), eventsCompleted, answerReceived.

% All events have been completed when all robot events indicating actions have been done (saying something, gesture, etc.) have been received.
eventsCompleted :- started, not(waitingForEvent(_)).

% An answer has been received when there is an answer and we're no longer waiting for an answer.
answerReceived :- answer(_, _, _), not(waitingForAnswer).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State parameter handling (incl. default config params) %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Returns values for all keys in list of condition Pairs in state.
keyListValues(State, [Key | Keys], [Value | Values]) :- keyValue(State, Key, Value), keyListValues(State, Keys, Values).
keyListValues(_, [], []).
% Returns value for (one) key in list of condition Pairs in state.
% (use of cut ! to prevent returning default values for keys).
keyValue(State, Key, Value) :- stateConfig(State, Pairs), member((Key=Value), Pairs), !.

%% Global (default) configuration parameters
% (override config param for specific state by using key-label in key-value list associated with that state).
% Number of tries a user gets to provide an answer to a question (of whatever type).
keyValue(_, maxAnswerAttempts, 1).

% Time (in milliseconds) a user gets to answer a question.
keyValue(_, maxAnswerTime, 4000).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Event handling logic                                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Right bumper means yes and left bumper means no (used if current state is yes/no question with touch response).
feetBumperEventAnswer('answer_yes') :- event('RightBumperPressed').
feetBumperEventAnswer('answer_no') :- event('LeftBumperPressed').

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Script		                                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(s1, say). % state s1 is of type 'say'.
stateConfig(s1, []). % no configuration parameters for state s1 (empty list); if empty, no need to include stateConfig/2 for s1.
text(s1, "Hallo, ik ben Hero.", []).
anim(s1, 'animations/Stand/Gestures/Hey_1', []).
leds(s1, 'white', []).

state(s2, question).
stateConfig(s2, [type=yesno, response=speech, context='answer_yesno']).
text(s2, "Hou je van chocola?", []).

% In second instance try touch (feet bumpers)
state(s2f, question).
stateConfig(s2f, [type=yesno, response=touch]).
text(s2f, "Sorry ik verstond je niet goed. Kun je daarom via de bumpers antwoord geven. Hou je van chocola?", []).

state(s3a, say).
text(s3a, "Ik houd ook van chocola!", []).

state(s3b, say).
text(s3b, "Ik vind chocola ook vies!", []).

state(s4, question).
stateConfig(s4, [type=mc, response=speech, context='answer_color', key='favoriteColor']).
text(s4, "Wat is jouw lievelingskleur?", []).

state(s4f, question).
stateConfig(s4f, [type=mc, response=touch]).
text(s4f, "Sorry ik verstond je niet goed. Kun je daarom via de bumpers antwoord geven. Hou je van chocola?", []).

state(s5, say).
text(s5, "Ik vind %favoriteColor% ook heel mooi!", []). % favoriteColor is a variable that is replaced with an answer given by user for key 'favoriteColor' (see s4).

state(s6, say).
text(s6, "Dat was het. Doei!", []).

next(s1, 'true', s2).
next(s2, 'answer_yes', s3a).
next(s2, 'answer_no', s3b).
next(s2, 'fail', s2f).
next(s2f, 'answer_yes', s3a).
next(s2f, 'answer_no', s3b).
next(s2f, 'fail', s4).
next(s3a, 'true', s4).
next(s3b, 'true', s4).
next(s4, 'answer_color', s5).
next(s4, 'fail', s4f).
next(s5, 'true', s6).

%state(s5, question, [type=mc, response=speech, context='answer_pets']).
%state(s5a, question, [type=mc, response=touch, options=['hond', 'kat', 'konijn', 'cavia']]).