%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Predicates                                             %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Predicates for event percept processing. 
:-dynamic answer/4, % answer(Minidialog, Move, Answer, [Details]) keeps track of answers to questions.
	event/1,  % NAO events (started/done for saying, gesturing, and events for touch, etc.)  
	waitingForMotionRecording/1,
	waitingForLedAnim/1, waitingForMotionAnim/1, waitingForSoundAnim/1, soundConfig/2,
	emotion/3,
	paused/0, pause_act/0, unpause_act/0, stop_act/0, waitForPause/1, waitForUnPause/1,
	animOption/3,
	basePosture/1.

% Predicates that indicate the robot status.
:- dynamic posture/1,
	isAwake/0,
	batteryCharge/1,
	isCharging/0.
	
% Predicates for memory processing
:-dynamic waitingForMemoryData/1,
	userModel/1, 
	waitingForSession/0, waitingForHistory/0,
	waitingForGuiData/1,
	userId/1, sessionId/1,
	continueSession/0, localVariable/2,
	dialogHistory/1, narrativeHistory/1,
	probes/1, topicsOfInterest/1, availableChitchats/1.

% Predicates related to move execution and transition handling.
:-dynamic currentMinidialog/1, selectedMinidialog/2, currentMove/1, currentInputModality/1, currentAttempt/1,   
	mcCounter/1, modalityCounter/1, % counter to keep track of options that have been checked for multiple choice question (start counting from 0).
	nextCondition/1, start/0, started/0, timeout/1, session/1, 
	waitingForDetection/0, waitingForAnswer/0, waitingForEvent/1, waitingForAudioFile/1, waitingForMemoryLed/1,
	waitingForEmotion/0, answerProcessed/0, waitingForPosture/1,
	additionalAttempt/2, %used to signal if a user gets an additional attempt.
	waitingForSayClear/0, waitingForTimer/0,
	waitingForInit/0.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Move parameter handling.                               %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Returns values for all keys in list of condition Pairs in move.
keyListValues(Minidialog, Move, [Key | Keys], [Value | Values]) :- keyValue(Minidialog, Move, Key, Value), keyListValues(Minidialog, Move, Keys, Values).
keyListValues(_, _, [], []).
% Returns value for (one) key in list of condition Pairs in move.
% (use of cut ! to prevent returning default values for keys).
keyValue(Minidialog, Move, Key, Value) :- moveConfig(Minidialog, Move, Pairs), member((Key=Value), Pairs), !.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Interaction History Management.                        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% DialogHistory %%%
%Dialoghistory is a nestedlist [[minidialogs in session 1], [minidialogs in session 2], [...]]
updateDialogHistory(Minidialog, UpdatedHistory) :- dialogHistory(History), appendDialogToHistory(History, Minidialog, UpdatedHistory), !.

appendDialogToHistory(History, Minidialog, UpdatedHistory) :- sessionId(Session), length(History, HL), HL >= Session,
	appendSublist(History, Session, Minidialog, UpdatedHistory).
appendDialogToHistory(History, Minidialog, UpdatedHistory) :- sessionId(Session), length(History, HL), HL < Session,
	append(History, [[]], UppedHistory), appendDialogToHistory(UppedHistory, Minidialog, UpdatedHistory), !.
    
appendSublist([H|T], 1, E, [HE|T]) :- append(H, [E], HE), !.
appendSublist([H|T], P, E, [H|TE]) :- P > 1, NP is P-1, appendSublist(T, NP, E, TE).

isInDialogHistory(Minidialog, Pos) :- dialogHistory(History), isInNestedListAtPos(History, Minidialog, Pos).

isInNestedListAtPos(L, E, P) :- length(L, P), nth1(P, L, SubL),
	member(E, SubL), !.
isInNestedListAtPos(L, E, NP) :- length(L, P), nth1(P, L, SubL),
	not(member(E, SubL)), without_last(L, WL),  isInNestedListAtPos(WL, E, NP), !.

without_last([_], []).
without_last([X|Xs], [X|WithoutLast]) :- 
    without_last(Xs, WithoutLast), !.

%%% NarrativeHistory %%%
updateNarrativeHistory(Thread, UpdatedHistory) :- narrativeHistory(History), not(member((Thread=_), History)),
	append(History, [Thread=1], UpdatedHistory), !.
updateNarrativeHistory(Thread, UpdatedHistory) :- narrativeHistory(History), member((Thread=Pos), History),
	delete(History, (Thread=Pos), HistoryTemp), NewPos is Pos + 1, append(HistoryTemp, [Thread=NewPos], UpdatedHistory), !.

getNarrativeThreadPos(Thread, Pos) :- narrativeHistory(History), member((Thread=Pos), History), !.
getNarrativeThreadPos(Thread, 1) :- narrativeHistory(History), not(member((Thread=_), History)), !.

getNarrativeDialogs(_, _, 0, []).
getNarrativeDialogs(Thread, FromPos, Amount, [NarrativeMD| RemainingMD]) :- 
	minidialog(NarrativeMD, [type=narrative, thread=Thread, position=FromPos]),
	NFP is FromPos + 1, NA is Amount - 1, getNarrativeDialogs(Thread, NFP, NA, RemainingMD), !.

%%% Dependencies %%%
matchesDepencencies([Depencency | Rest]) :- matchesDependency(Depencency), ! ; matchesDepencencies(Rest), !.
matchesDependency([[umVariable=Var, filter=Filter, values=Values] | T]) :- listMatchInUserModel(Var, Filter, Values), matchesDependency(T), !.
matchesDependency([[Target, _, _] | T]) :- isInDialogHistory(Target, _), matchesDependency(T), !.
matchesDependency([]).

matchesConditionals([Conditional | Rest]) :- matchesConditional(Conditional), ! ; matchesConditionals(Rest), !.
matchesConditional([[umVariable=Var, filter=Filter, values=["_any"]] | T]) :- getUserModelValue(Var, _), matchesConditional(T), !.
matchesConditional([[umVariable=Var, filter=Filter, values=Values] | T]) :- listMatchInUserModel(Var, Filter, Values), matchesConditional(T), !.
matchesConditional([]).

extractVariablesFromConditionals([Conditional | Rest], UniqueVars) 
	:- extractVariablesFromConditional(Conditional, Vars), extractVariablesFromConditionals(Rest, VarsRest),
       append(Vars, VarsRest, VarsTotal), sort(VarsTotal, UniqueVars).
extractVariablesFromConditionals([], []).
extractVariablesFromConditional([[umVariable=Var, filter=_, values=_] | T], [Var | RestVariables])
	:- extractVariablesFromConditional(T, RestVariables).
extractVariablesFromConditional([], []).

findSuitableChitchat(Chitchat) 
	:- topicsOfInterest(TopicsOfInterest), availableChitchats(AvailableTopics),
	ord_intersection(TopicsOfInterest, AvailableTopics, Topics), findChitchatWithRandomTopic(Topics, Chitchat).

findChitchatWithRandomTopic(Topics, Chitchat) :- random_select(Topic, Topics, RemainingTopics), (chitchatMatchesTopic(Topic, Chitchat), ! ; not(chitchatMatchesTopic(Topic, _)), findChitchatWithRandomTopic(RemainingTopics, Chitchat)).
	
chitchatMatchesTopic(Topic, Chitchat) :- minidialog(Chitchat, [type=chitchat, theme=_, topic=Topic]), not(isInDialogHistory(Chitchat, _)),
			dependencies(Chitchat, Dependencies), matchesDepencencies(Dependencies).
chitchatMatchesTopic(Theme, Chitchat) :- minidialog(Chitchat, [type=chitchat, theme=Theme, topic=_]), not(isInDialogHistory(Chitchat, _)),
			dependencies(Chitchat, Dependencies), matchesDepencencies(Dependencies).
chitchatMatchesTopic(Topic, Chitchat) :- minidialog(Chitchat, [type=chitchat, theme=_, topic=Topic]), not(isInDialogHistory(Chitchat, _)),
			not(dependencies(Chitchat, _)).
chitchatMatchesTopic(Theme, Chitchat) :- minidialog(Chitchat, [type=chitchat, theme=Theme, topic=_]), not(isInDialogHistory(Chitchat, _)),
			not(dependencies(Chitchat, _)).

addToTopicsOfInterest([answer_yes=Topics | T], ToI, UpdatedToI) :- append(ToI, Topics, ToII), sort(ToII, ToIII), addToTopicsOfInterest(T, ToIII, UpdatedToI).
addToTopicsOfInterest([answer_no=Topics | T], ToI, UpdatedToI) :- append(ToI, Topics, ToII), sort(ToII, ToIII), addToTopicsOfInterest(T, ToIII, UpdatedToI).
addToTopicsOfInterest([answer_dontknow=Topics | T], ToI, UpdatedToI) :- append(ToI, Topics, ToII), sort(ToII, ToIII), addToTopicsOfInterest(T, ToIII, UpdatedToI).
addToTopicsOfInterest([], ToI, ToI).

addToTopicsOfInterest([success=Topics | T], Ans, ToI, UpdatedToI) :- replaceAns(Topics, Ans, PTopics), append(ToI, PTopics, ToII), sort(ToII, ToIII), addToTopicsOfInterest(T, Ans, ToIII, UpdatedToI).
addToTopicsOfInterest([fail=Topics | T], Ans, ToI, UpdatedToI) :- replaceAns(Topics, Ans, PTopics), append(ToI, PTopics, ToII), sort(ToII, ToIII), addToTopicsOfInterest(T, Ans, ToIII, UpdatedToI).
addToTopicsOfInterest([], _, ToI, ToI).

replaceAns(['_answer' | T], Ans, [Ans | PT]) :- replaceAns(T, Ans, PT), !.
replaceAns([H | T], Ans, [H | PT]) :- H \= '_answer', replaceAns(T, Ans, PT).
replaceAns([], _, []).

importTopicsOfInterest("[]", []).
importTopicsOfInterest(IToI, OToI) :- term_string(IToII, IToI), sort(IToII, OToI). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Useful definitions                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Right bumper means yes and left bumper means no (used if current move is yes/no question with touch response).
feetBumperEventAnswer('answer_yes') :- event('RightBumperPressed').
feetBumperEventAnswer('answer_no') :- event('LeftBumperPressed').

%yesno synonyms
answer_yes_synonyms(["ja", "jazeker", "jawel", "oké", "oke", "ok", "prima", "goed", "natuurlijk", "absoluut", "zeker"]).
answer_no_synonyms(["nee", "neen", "nah"]).
answer_dontknow_synonyms(["twijfel", "heb ik niet", "weet ik niet", "geen idee"]).

string_match_word_list(Move, L, DS) :- downcase_atom(Move, DS), maplist(downcase_atom, L, DL), member(DS, DL), !.
string_match_word_list(Move, L, R) :- split_string(Move," ",", ", SL), maplist(downcase_atom, SL, DSL), maplist(downcase_atom, L, DL), any_list_match(DSL, DL, R), !.
any_list_match([H | _], L, H) :- member(H, L).
any_list_match([H | Minidialog], L, R) :- not(member(H, L)), any_list_match(Minidialog, L, R), !.

%Update the local instance of the user model.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- not(member((Key=_), OldUserModel)), append(OldUserModel, [Key=Value], NewUserModel), !.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- member((Key=OldValue), OldUserModel), not(OldValue = Value), delete(OldUserModel, (Key=OldValue), UserModelTemp), append(UserModelTemp, [Key=Value], NewUserModel), !.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- member((Key=OldValue), OldUserModel), OldValue = Value, NewUserModel = OldUserModel, !.

getUserModelValue(Key, Value) :- userModel(UserModel), member((Key=Value), UserModel).
getUserModelValue(Key, Key) :- userModel(UserModel), not(member((Key=_), UserModel)).
getUserModelWithoutLocal(ProcessedUserModel) :- userModel(UserModel), member((first_name=FirstName), UserModel), delete(UserModel, (first_name=FirstName), ProcessedUserModel).
getUserModelWithoutLocal(UserModel) :- userModel(UserModel), not(member((first_name=_), UserModel)).

listMatchInUserModel(Key, green, RValues) :- valueListFromKeyList(RValues, Values), getUserModelValue(Key, Value), member(Value, Values), !.
listMatchInUserModel(Key, red, RValues) :- valueListFromKeyList(RValues, Values), getUserModelValue(Key, Value), not(member(Value, Values)), !.

% Text string processing (replacing all mentioned keys with their (presumably) stored values.
% If you're using variables in text strings, make sure there always is a value for these variables in answers!
replaceVar(Text, Result) :- split_string(Text, '%', "", TextParts), replaceKeys(TextParts, Replaced), concatenate(Replaced, Result).
replaceKeys([H | Minidialog], [VString | Result]) :- 
	atom_string(Key, H), getUserModelValue(Key, Value), atom_string(Value, VString), !, replaceKeys(Minidialog, Result).
replaceKeys([H | Minidialog], [H | Result]) :- replaceKeys(Minidialog, Result).
replaceKeys([], []).

concatenate([H1, H2 | Minidialog], R) :- string_concat(H1, H2, C), concatenate([C | Minidialog], R).
concatenate([H], H).

%Generate a key in the form of Minidialog_Move for referencing a particular minidialog-move pair.
generateKeyFromMinidialogAndMove(Minidialog, Move, Key) :- atomics_to_string([Minidialog, Move], '_', KeyS), atom_string(Key, KeyS).

addSpeechSpeed(Text, Speed, Result) :- string_concat("\rspd=", Speed, STFront), string_concat(STFront, "\ ", SpeedText), string_concat(SpeedText, Text, Result).

getInputModalityOrder(Minidialog, Move, Order) :- keyValue(Minidialog, Move, inputModality, Modalities), getKeys(Modalities, Order).
getMaxAnswerAttempts(Minidialog, Move, Modality, MaxAnsAttempts) :- keyValue(Minidialog, Move, inputModality, Modalities), member((Modality=MaxAnsAttempts), Modalities), !.

getKeys([(Key=_)|Pairs], [Key|Keys]) :- getKeys(Pairs, Keys).
getKeys([], []).

getMaxAnswerTime(Minidialog, Move, touch, _, _, MaxAnswerTime) :- keyValue(Minidialog, Move, maxAnswerTime, Times), member((touch=MaxAnswerTime), Times), !.
getMaxAnswerTime(Minidialog, Move, speech, openend, _, MaxAnswerTime) :- keyValue(Minidialog, Move, maxAnswerTime, Times), member((speechopenend=MaxAnswerTime), Times), !.
getMaxAnswerTime(Minidialog, Move, Modality, Type, Attempt, MaxAnswerTime) :- keyValue(Minidialog, Move, maxAnswerTime, Times), Attempt = 1, 
								  atom_concat(Modality, Type, ModType), atom_concat(ModType, first, Key),
								  member((Key=MaxAnswerTime), Times), !.
getMaxAnswerTime(Minidialog, Move, Modality, Type, Attempt, MaxAnswerTime) :- keyValue(Minidialog, Move, maxAnswerTime, Times), Attempt > 1, 
								  atom_concat(Modality, Type, ModType), atom_concat(ModType, noninitial, Key),
								  member((Key=MaxAnswerTime), Times), !.
								  
getModalitySwitchResponse(Minidialog, Move, From, To, Response) :- keyValue(Minidialog, Move, modalitySwitchResponse, Responses), atom_concat(From, To, Key), member((Key=Response), Responses), !.

% Pop first element out of list.
pop([H | Minidialog], H, Minidialog).

getVarsFromText(Text, Vars) :- string_chars(Text, CharList), member('%', CharList), split_string(Text, '%', "", TextParts), odd_elements(TextParts, Vars), !.

% get all odd elements of list
odd_elements([], []).
odd_elements([_ | []], []):-  !.
odd_elements([_, X], [X]) :- !.
odd_elements([_, X| L], [X | R]) :- odd_elements(L, R), !.

% Create list of values from a list of keys of user model entries
valueListFromKeyList([Hkey | Tkey], [Hvalue | Tvalue]) :- getUserModelValue(Hkey, Hvalue), valueListFromKeyList(Tkey, Tvalue), !.
valueListFromKeyList([Hkey | Tkey], [Hkey | Tvalue]) :- not(getUserModelValue(Hkey, _)), valueListFromKeyList(Tkey, Tvalue), !.
valueListFromKeyList(Key, List) :- getUserModelValue(Key, List), !.
valueListFromKeyList([], []).

%Parse led animation (a nested list) to a string to store in memory
nested_list_to_string(L1, L4) :-
  	maplist(term_to_atom, L1, L2),
    	nested_list_to_nested_string(L2, L3),
  	atomics_to_string(L3, ',', L4).

nested_list_to_nested_string([H | Minidialog], [HProcessed | TProcessed]) :- is_nested_list(H),
    replace_chars(H, ',', '@', HProcessed), nested_list_to_nested_string(Minidialog, TProcessed), !.
nested_list_to_nested_string([H | Minidialog], [H | TProcessed]):- not(is_nested_list(H)), nested_list_to_nested_string(Minidialog, TProcessed), !.
nested_list_to_nested_string([], []).
 
string_to_nested_list(Input, Output) :- 
    atomics_to_string(A, ',', Input),
    maplist(nested_list_to_atom, A, AFixed),
    maplist(term_to_atom, Output, AFixed).

nested_list_to_atom(I, O) :- replace_chars(I, '@', ',', O).

replace_char([H | Minidialog], CharI, CharO, [CharO | Tout]) :- H = CharI, replace_char(Minidialog, CharI, CharO, Tout), !.
replace_char([H | Minidialog], CharI, CharO, [H | Tout]) :- not(H = CharI), replace_char(Minidialog, CharI, CharO, Tout), !.
replace_char([], _, _, []).

replace_chars(I, CharI, CharO, O) :-
    	atom_chars(I, IChars),
   	replace_char(IChars, CharI, CharO, OChars),
    	atom_chars(O, OChars).

is_nested_list(Canditate):- atom_chars(Canditate, ['[' | _]).

% Delete minidialogs from minidialog list
delete_minidialogs(MinidialogsList, [H | Minidialog], NewMinidialogsList) :- delete(MinidialogsList, H, IntermidiateList), delete_minidialogs(IntermidiateList, Minidialog, NewMinidialogsList), !.
delete_minidialogs(MinidialogsList, [H | []], NewMinidialogsList):- delete(MinidialogsList, H, NewMinidialogsList), !.

% Generate interaction recording id
interaction_recording_id(ID) :- userId(UserId), atom_string(UserId, SUserId), sessionId(Session), atom_string(Session, SSession), string_concat(SUserId, "_", Left), string_concat(Left, SSession, ID).
interaction_probe_id(Count, ID) :- atom_string(Count, SCount), userId(UserId), atom_string(UserId, SUserId), sessionId(Session), atom_string(Session, SSession), string_concat(SUserId, "_", Left),
					string_concat(Left, SSession, MiddleL), string_concat(MiddleL, "_", MiddleR), string_concat(MiddleR, SCount, ID).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Move completion logic               		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ready for action
readyForAction(Minidialog, Move) :- start, not(paused), not(waitingForEvent(_)), not(audio(Minidialog, Move, id, _)).
readyForAction(Minidialog, Move) :- start, not(paused), not(waitingForEvent(_)), audio(Minidialog, Move, id, ID), getUserModelValue(ID, _).

% All events have been completed when all robot events indicating actions have been done (saying something, gesture, etc.) have been received.
eventsCompleted :- started, not(waitingForEvent(_)), not(waitingForTimer).

% All memory tasks have been completed when all expected memory events and data have been received.
memoryTasksCompleted :- not(waitingForEvent('InteractantDataSet')),  not(waitingForEvent('MemoryEntryStored')), not(waitingForMemoryData(_)).

% An answer has been received when there is an answer and we're no longer waiting for an answer.
answerReceived(Minidialog, Move) :- answer(Minidialog, Move, _, _), not(waitingForAnswer), answerProcessed.

% Audio has been received, not longer waiting for audio.
audioReceived :- not(waitingForAudioFile(_)).

% Emotion has been received, no longer waiting for emotion.
emotionReceived :- emotion(_, _,_), not(waitingForEmotion).

% Robot is in required posture
correctPosture :- not(waitingForPosture(_)).

% Motion recording completed
motionRecordingCompleted :- not(waitingForMotionRecording(_)).

% A say move is completed if after starting it, all events that were started have been completed.
% That is, a say move transitions from (1) start to (2) waiting for event completion ('TextDone', 'GestureDone', etc.) to (3) completion.
completed(Move) :- currentMinidialog(Minidialog), currentMove(Move), move(Minidialog, Move, say), eventsCompleted, correctPosture, motionRecordingCompleted.
% A question move is completed if after starting it, all events that were started have been completed,
% and an answer has been received, or a timeout occurred.
% That is, a question move transitions from (1) start to (2) posing the question (waitingForEvent) to (3) waiting for answer to (4) complete.
completed(Move) :- currentMinidialog(Minidialog), currentMove(Move), move(Minidialog, Move, question), eventsCompleted, answerReceived(Minidialog, Move), correctPosture.

completed(Move) :- currentMinidialog(Minidialog), currentMove(Move), move(Minidialog, Move, audioInput), eventsCompleted, audioReceived, correctPosture.

completed(Move) :- currentMinidialog(Minidialog), currentMove(Move), move(Minidialog, Move, emotion), eventsCompleted, emotionReceived, correctPosture.

completed(Move) :- currentMinidialog(Minidialog), currentMove(Move), move(Minidialog, Move, branchingPoint, _), eventsCompleted, correctPosture.

completed(Move) :- currentMinidialog(Minidialog), currentMove(Move), move(Minidialog, Move, continuator), eventsCompleted, correctPosture.
					
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DEFAULT CONVERSATIONAL SETTINGS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% override config param for specific move by using key-label in key-value list associated with that move.

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
				speechquizfirst=5000,
				speechquiznoninitial=3500]).						 
% Default responses of robot to an input modality switch.
keyValue(_, _, modalitySwitchResponse, [speechtouch='Sorry, ik kan het even niet verstaan. Je kunt nu mijn voeten gebruiken.',
					touchspeech='Je mag je antwoord nu hardop tegen mij zeggen.']).
