%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Predicates                                             %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Predicates for event percept processing. 
:-dynamic answer/4, % answer(Topic, State, Answer, [Details]) keeps track of answers to questions.
	branchingPointDecisions/1,
	event/1,  % NAO events (started/done for saying, gesturing, and events for touch, etc.)  
	waitingForMotionRecording/1,
	waitingForLedAnim/1, waitingForMotionAnim/1, waitingForSoundAnim/1, soundConfig/2,
	emotion/3,
	audioRecording/1,
	behavior/2,
	paused/0, pause_act/0, unpause_act/0, stop_act/0, waitForPause/1, waitForUnPause/1,
	animOption/3,
	basePosture/1.

% Predicates that indicate the robot status.
:- dynamic posture/1,
	isAwake/0,
	stiffness/1,
	batteryCharge/1,
	isCharging/0.
	
% Predicates for memory processing
:-dynamic waitingForMemoryData/1,
	userModel/1, 
	waitingForSession/0,
	waitingForGuiData/1,
	userId/1, sessionId/1,
	localVariable/2,
	additionalTopics/1.

% Predicates related to state execution and transition handling.
:-dynamic currentTopic/1, currentState/1, currentInputModality/1, currentAttempt/1,   
	mcCounter/1, modalityCounter/1, % counter to keep track of options that have been checked for multiple choice question (start counting from 0).
	nextCondition/1, start/0, started/0, timeout/1, topics/1, 
	waitingForDetection/0, waitingForAnswer/0, waitingForEvent/1, waitingForAudioFile/1, waitingForMemoryAudio/1, waitingForMemoryLed/1,
	waitingForEmotion/0, answerProcessed/0, waitingForPosture/1,
	additionalAttempt/2, %used to signal if a user gets an additional attempt.
	waitingForSayClear/0, waitingForTimer/0,
	waitingForInit/0.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State parameter handling.                              %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Returns values for all keys in list of condition Pairs in state.
keyListValues(Topic, State, [Key | Keys], [Value | Values]) :- keyValue(Topic, State, Key, Value), keyListValues(Topic, State, Keys, Values).
keyListValues(_, _, [], []).
% Returns value for (one) key in list of condition Pairs in state.
% (use of cut ! to prevent returning default values for keys).
keyValue(Topic, State, Key, Value) :- stateConfig(Topic, State, Pairs), member((Key=Value), Pairs), !.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Useful definitions                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Right bumper means yes and left bumper means no (used if current state is yes/no question with touch response).
feetBumperEventAnswer('answer_yes') :- event('RightBumperPressed').
feetBumperEventAnswer('answer_no') :- event('LeftBumperPressed').

%Update the local instance of the user model.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- not(member((Key=_), OldUserModel)), append(OldUserModel, [Key=Value], NewUserModel), !.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- member((Key=OldValue), OldUserModel), not(OldValue = Value), delete(OldUserModel, (Key=OldValue), UserModelTemp), append(UserModelTemp, [Key=Value], NewUserModel), !.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- member((Key=OldValue), OldUserModel), OldValue = Value, NewUserModel = OldUserModel, !.
%updateUserModel(_, Value, OldUserModel, NewUserModel) :- Value = 'None', NewUserModel = OldUserModel.

getUserModelValue(Key, Value) :- userModel(UserModel), member((Key=Value), UserModel).
getUserModelValue(Key, Key) :- userModel(UserModel), not(member((Key=_), UserModel)).
%isInUserModel(Key) :- userModel(UserModel), member((Key=_), UserModel).
getUserModelWithoutLocal(ProcessedUserModel) :- userModel(UserModel), member((first_name=FirstName), UserModel), delete(UserModel, (first_name=FirstName), ProcessedUserModel).
getUserModelWithoutLocal(UserModel) :- userModel(UserModel), not(member((first_name=_), UserModel)).
% Text string processing (replacing all mentioned keys with their (presumably) stored values.
% If you're using variables in text strings, make sure there always is a value for these variables in answers!
replaceVar(Text, Result) :- split_string(Text, '%', "", TextParts), replaceKeys(TextParts, Replaced), concatenate(Replaced, Result).
replaceKeys([H | T], [VString | Result]) :- 
	atom_string(Key, H), getUserModelValue(Key, Value), atom_string(Value, VString), !, replaceKeys(T, Result).
replaceKeys([H | T], [H | Result]) :- replaceKeys(T, Result).
replaceKeys([], []).

concatenate([H1, H2 | T], R) :- string_concat(H1, H2, C), concatenate([C | T], R).
concatenate([H], H).

%Generate a key in the form of Topic_State for referencing a particular topic-state pair.
generateKeyFromTopicAndState(T, S, Key) :- atomics_to_string([T, S], '_', KeyS), atom_string(Key, KeyS).

updateBPDs(BPDs, Key, Decision, NewBPDs) :- not(member((Key=_), BPDs)), append(BPDs, [Key=Decision], NewBPDs), !.
updateBPDs(BPDs, Key, Decision, NewBPDs) :- member((Key=OldValue), BPDs), not(OldValue = Decision), delete(BPDs, (Key=OldValue), BPDsTemp), append(BPDsTemp, [Key=Decision], NewBPDs), !.
updateBPDs(BPDs, Key, Decision, NewBPDs) :- member((Key=OldValue), BPDs), OldValue = Decision, NewBPDs=BPDs, !.
getBranchingPointDecision(BP, Decision) :- branchingPointDecisions(BPDs), member((BP=Decision), BPDs).

addDecisionToBranchingPoints([H | T], Decision, BPDs, NewBPDs) :- updateBPDs(BPDs, H, Decision, TempBPDs),  addDecisionToBranchingPoints(T, Decision, TempBPDs, NewBPDs).
addDecisionToBranchingPoints([H | []], Decision, BPDs, NewBPDs) :- updateBPDs(BPDs, H, Decision, NewBPDs).

addSpeechSpeed(Text, Speed, Result) :- string_concat("\rspd=", Speed, STFront), string_concat(STFront, "\ ", SpeedText), string_concat(SpeedText, Text, Result).

getInputModalityOrder(T, S, Order) :- keyValue(T, S, inputModality, Modalities), getKeys(Modalities, Order).
getMaxAnswerAttempts(T, S, Modality, MaxAnsAttempts) :- keyValue(T, S, inputModality, Modalities), member((Modality=MaxAnsAttempts), Modalities), !.

getKeys([(Key=_)|Pairs], [Key|Keys]) :- getKeys(Pairs, Keys).
getKeys([], []).

getMaxAnswerTime(T, S, touch, _, _, MaxAnswerTime) :- keyValue(T, S, maxAnswerTime, Times), member((touch=MaxAnswerTime), Times), !.
getMaxAnswerTime(T, S, speech, openend, _, MaxAnswerTime) :- keyValue(T, S, maxAnswerTime, Times), member((speechopenend=MaxAnswerTime), Times), !.
getMaxAnswerTime(T, S, Modality, Type, Attempt, MaxAnswerTime) :- keyValue(T, S, maxAnswerTime, Times), Attempt = 1, 
								  atom_concat(Modality, Type, ModType), atom_concat(ModType, first, Key),
								  member((Key=MaxAnswerTime), Times), !.
getMaxAnswerTime(T, S, Modality, Type, Attempt, MaxAnswerTime) :- keyValue(T, S, maxAnswerTime, Times), Attempt > 1, 
								  atom_concat(Modality, Type, ModType), atom_concat(ModType, noninitial, Key),
								  member((Key=MaxAnswerTime), Times), !.
								  
getModalitySwitchResponse(T, S, From, To, Response) :- keyValue(T, S, modalitySwitchResponse, Responses), atom_concat(From, To, Key), member((Key=Response), Responses), !.

% Pop first element out of list.
pop([H | T], H, T).

% get all odd elements of list
odd_elements([], []).
odd_elements([_ | []], []):-  !.
odd_elements([_, X], [X]) :- !.
odd_elements([_, X| L], [X | R]) :- odd_elements(L, R), !.

% Create list of values from a list of keys of user model entries
%valueListFromKeyList([Hkey | Tkey], [Hvalue | Tvalue]) :- getUserModelValue(Hkey, Ori), getTranslation(Ori, Hvalue), valueListFromKeyList(Tkey, Tvalue), !.
valueListFromKeyList([Hkey | Tkey], [Hvalue | Tvalue]) :- getUserModelValue(Hkey, Hvalue), valueListFromKeyList(Tkey, Tvalue), !.
%valueListFromKeyList([Hkey | Tkey], [Hvalue | Tvalue]) :- getTranslation(Hkey, Hvalue), valueListFromKeyList(Tkey, Tvalue), !.
valueListFromKeyList([Hkey | Tkey], [Hkey | Tvalue]) :- not(getUserModelValue(Hkey, _)), valueListFromKeyList(Tkey, Tvalue), !.

valueListFromKeyList(Key, List) :- getUserModelValue(Key, List), !.
valueListFromKeyList([], []).

%Parse led animation (a nested list) to a string to store in memory
%nested_list_to_string(L1, L4) :-
  	%to_atoms(L1, L2),
    	%nested_list_to_nested_string(L2, L3),
  	%atomics_to_string(L3, ',', L4).

nested_list_to_string(L1, L4) :-
  	maplist(term_to_atom, L1, L2),
    	nested_list_to_nested_string(L2, L3),
  	atomics_to_string(L3, ',', L4).
 
string_to_nested_list(Input, Output) :- 
    atomics_to_string(A, ',', Input),
    maplist(nested_list_to_atom, A, AFixed),
    maplist(term_to_atom, Output, AFixed).

nested_list_to_nested_string([H | T], [HProcessed | TProcessed]) :- is_nested_list(H),
    replace_chars(H, ',', '@', HProcessed), nested_list_to_nested_string(T, TProcessed), !.
nested_list_to_nested_string([H | T], [H | TProcessed]):- not(is_nested_list(H)), nested_list_to_nested_string(T, TProcessed), !.
nested_list_to_nested_string([], []).

replace_char([H | T], CharI, CharO, [CharO | Tout]) :- H = CharI, replace_char(T, CharI, CharO, Tout), !.
replace_char([H | T], CharI, CharO, [H | Tout]) :- not(H = CharI), replace_char(T, CharI, CharO, Tout), !.
replace_char([], _, _, []).

replace_chars(I, CharI, CharO, O) :-
    	atom_chars(I, IChars),
   	replace_char(IChars, CharI, CharO, OChars),
    	atom_chars(O, OChars).

%string_to_nested_list(Input, Output) :- 
    	%atomics_to_string(A, ',', Input),
   	%nested_list_to_atom(A, AFixed),
   	%to_terms(AFixed, Output).
 
%nested_list_to_atom([H | T], [Hout | Tout]) :- replace_chars(H, '@', ',', Hout), nested_list_to_atom(T, Tout), !.
%nested_list_to_atom([], []).

%nested_list_to_atom(I, O) :- replace_chars(I, '@', ',', O).

%to_terms([H | T], [Hout | Tout]) :- term_to_atom(Hout, H), to_terms(T, Tout), !.
%to_terms([], []).

%to_atoms([H | T], [Hout | Tout]) :- term_to_atom(H, Hout), to_atoms(T, Tout), !.
%to_atoms([], []).

is_nested_list(Canditate):- atom_chars(Canditate, ['[' | _]).

%string_to_nested_list2(Input, Output) :- 
%    atomics_to_string(A, ',', Input),
%    maplist('nested_list_to_atom2', A, AFixed),
%    maplist('term_to_atom', Output, AFixed).
 
delete_topics(TopicsList, [H | T], NewTopicsList) :- delete(TopicsList, H, IntermidiateList), delete_topics(IntermidiateList, T, NewTopicsList), !.
delete_topics(TopicsList, [H | []], NewTopicsList):- delete(TopicsList, H, NewTopicsList), !.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State completion logic               		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ready for action
readyForAction(T, S) :- start, not(waitingForEvent(_)), not(audio(T, S, recorded, _)).
readyForAction(T, S) :- start, not(waitingForEvent(_)), audio(T, S, recorded, ID), getUserModelValue(ID, _).

% All events have been completed when all robot events indicating actions have been done (saying something, gesture, etc.) have been received.
eventsCompleted :- started, not(waitingForEvent(_)), not(waitingForTimer).

% All memory tasks have been completed when all expected memory events and data have been received.
memoryTasksCompleted :- not(waitingForEvent('UserDataSet')),  not(waitingForEvent('MemoryEntryStored')).

% An answer has been received when there is an answer and we're no longer waiting for an answer.
answerReceived(T, S) :- answer(T, S, _, _), not(waitingForAnswer), answerProcessed.

% Audio has been received, not longer waiting for audio.
audioReceived :- not(waitingForAudioFile(_)).

% Emotion has been received, no longer waiting for emotion.
emotionReceived :- emotion(_, _,_), not(waitingForEmotion).

% Robot is in required posture
correctPosture :- not(waitingForPosture(_)).

% Motion recording completed
motionRecordingCompleted :- not(waitingForMotionRecording(_)).

% A say state is completed if after starting it, all events that were started have been completed.
% That is, a say state transitions from (1) start to (2) waiting for event completion ('TextDone', 'GestureDone', etc.) to (3) completion.
completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, say), eventsCompleted, correctPosture, motionRecordingCompleted.
% A question state is completed if after starting it, all events that were started have been completed,
% and an answer has been received, or a timeout occurred.
% That is, a question state transitions from (1) start to (2) posing the question (waitingForEvent) to (3) waiting for answer to (4) complete.
completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, question), eventsCompleted, answerReceived(Topic, State), correctPosture.

completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, audioInput), eventsCompleted, audioReceived, correctPosture.

completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, emotion), eventsCompleted, emotionReceived, correctPosture.

completed(State) :- currentTopic(Topic), currentState(State), state(Topic, State, branchingPoint), eventsCompleted, correctPosture.
					
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DEFAULT CONVERSATIONAL SETTINGS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% override config param for specific state by using key-label in key-value list associated with that state.

% Order for input modalities and respective maximum number of attempts. Available modalities are speech and touch.
keyValue(_, _, inputModality, [speech=2, touch=2]).
% If no answer is given during the first attempt, add an additional attempt to the max. number of attempts.
keyValue(_, _, additionalAttempt, true).
% Default speech speed (value between 1-100)
keyValue(_, _, speechSpeed, 85).
% Default response times for different input modalities, question types, and attempt numbers
keyValue(_, _, maxAnswerTime, [	touch=3000, 
				speechopenend=12000,
				speechyesnofirst=3500, 
				speechyesnononinitial=3500, 
				speechinputfirst=5000, 
				speechinputnoninitial=3500,
				speechbranchfirst=6000,
				speechbranchnoninitial=4000,
				speechquizfirst=5000,
				speechquiznoninitial=3500]).						 
% Default responses of robot to an input modality switch.
keyValue(_, _, modalitySwitchResponse, [speechtouch='Sorry, ik kan het even niet verstaan. Je kunt nu mijn voeten gebruiken.',
					touchspeech='Je mag je antwoord nu hardop tegen mij zeggen.']).
