%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Predicates                                             %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Predicates for event percept processing. 
:-dynamic answer/4, % answer(Topic, State, Answer, [Details]) keeps track of answers to questions.
	branchingPointDecisions/1,
	event/1,  % NAO events (started/done for saying, gesturing, and events for touch, etc.)  
	audioRecording/3,
	motionRecording/2, waitingForMotionRecording/1,
	emotion/3.

% Predicates that indicate the robot status.
:- dynamic posture/1,
	isAwake/0,
	stiffness/1,
	batteryCharge/1,
	isCharging/0.
	

% Predicates for memory processing
:-dynamic memoryEvent/1, waitingForMemoryEvent/1,
	waitingForMemoryData/1,
	userModel/1, waitingForUserModelInit/0, waitingForLoadedUserModel/0.

% Predicates related to state execution and transition handling.
:-dynamic currentTopic/1, currentState/1, currentInputModality/1, currentAttempt/1,   
	mcCounter/1, modalityCounter/1, % counter to keep track of options that have been checked for multiple choice question (start counting from 0).
	nextCondition/1, start/0, started/0, timeout/1, topics/1, 
	waitingForDetection/0, waitingForAnswer/0, waitingForEvent/1, waitingForAudio/0, waitingForAudioFile/2, waitingForLoadedAudioID/2,
	waitingForEmotion/0, answerProcessed/0, waitingForPosture/1,
	speechText/4. %used to signal that a user did not say anything detectable.  

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

%Local instance of the user model.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- not(Value = 'None'), not(member((Key=_), OldUserModel)), append(OldUserModel, [Key=Value], NewUserModel).
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- not(Value = 'None'), member((Key=OldValue), OldUserModel), not(OldValue = Value), delete(OldUserModel, (Key=OldValue), UserModelTemp), append(UserModelTemp, [Key=Value], NewUserModel).
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- not(Value = 'None'), member((Key=OldValue), OldUserModel), OldValue = Value, NewUserModel = OldUserModel.
updateUserModel(_, Value, OldUserModel, NewUserModel) :- Value = 'None', NewUserModel = OldUserModel.

getUserModelValue(Key, Value) :- userModel(UserModel), member((Key=Value), UserModel).
%isInUserModel(Key) :- userModel(UserModel), member((Key=_), UserModel).


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
generateKeyFromTopicAndState(T, S, Key) :- atomics_to_string([T, S], '_', Key).

updateBPDs(BPDs, Key, Decision, NewBPDs) :- not(member((Key=Decision), BPDs)), append(BPDs, [Key=Decision], NewBPDs).
updateBPDs(BPDs, Key, Decision, NewBPDs) :- member((Key=Value), BPDs), delete(BPDs, (Key=Value), BPDsTemp), append(BPDsTemp, [Key=Decision], NewBPDs).
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

% Parse list of key-value pairs to a string representation.
% createMemoryEntry(Pairs, Entry) :- createMemoryEntryPacket(Pairs, "", Packet), string_concat("{", Packet, FirstHalf), string_concat(FirstHalf, "}", Entry).
% createMemoryEntryPacket([H|[]], In, Out) :- pairToString(H, StringPair), string_concat(In, StringPair, Out).
% createMemoryEntryPacket([H|T], In, Out) :- pairToString(H, StringPair), string_concat(StringPair, ", ", Packet), string_concat(In, Packet, TempOut), createMemoryEntryPacket(T, TempOut, Out).
% pairToString(Pair, Result) :- Pair = (Key=Value), atom_string(Key, KeyString), atom_string(Value, ValueString), string_concat("'", KeyString, FirstPart), string_concat(FirstPart, "':'", SecondPart), string_concat(SecondPart, ValueString, ThirdPart), string_concat(ThirdPart, "'", Result).
%pairToString(Pair, Result) :- Pair = (Key=Value), atom_string(Key, KeyString), Key = text, string_concat("'", KeyString, FirstPart), string_concat(FirstPart, "':'", SecondPart), string_concat(SecondPart, Value, ThirdPart), string_concat(ThirdPart, "'", Result).

% Pop first element out of list.
pop([H | T], H, T).

% get all odd elements of list
odd_elements([], []).
odd_elements([_ | []], []):-  !.
odd_elements([_, X], [X]) :- !.
odd_elements([_, X| L], [X | R]) :- odd_elements(L, R), !.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State completion logic               		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% All events have been completed when all robot events indicating actions have been done (saying something, gesture, etc.) have been received.
eventsCompleted :- started, not(waitingForEvent(_)).

% All memory tasks have been completed when all expected memory events and data have been received.
memoryTasksCompleted :- not(waitingForMemoryEvent(_)).

% An answer has been received when there is an answer and we're no longer waiting for an answer.
answerReceived(T, S) :- answer(T, S, _, _), not(waitingForAnswer), answerProcessed.

% Audio has been received, not longer waiting for audio.
audioReceived :- not(waitingForAudio).

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