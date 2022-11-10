%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Predicates                                             %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Predicates for event percept processing. 
:-dynamic answer/4, % answer(Minidialog, Move, Answer, [Details]) keeps track of answers to questions.
	event/1,  % NAO events (started/done for saying, gesturing, and events for button presses, etc.)  
	waitingForMotionRecording/1,
	waitingForLedAnim/1, waitingForMotionAnim/1, waitingForSoundAnim/1, soundConfig/2,
	emotion/3,
	paused/0, pause_act/0, unpause_act/0, stop_act/0, waitForPause/1, waitForUnPause/1,
	animOption/3.

% Predicates that indicate the robot status.
:- dynamic posture/1,
	isAwake/0,
	batteryCharge/1,
	isCharging/0.
	
% Predicates for memory processing
:-dynamic waitingForMemoryData/1,
	userModel/1, 
	waitingForSession/0, waitingForMetadata/0, waitingForHistory/0,
	dialogHistory/1, narrativeHistory/1, moveHistory/1, moveReset/1,
	topicsOfInterest/1, availableChitchats/1, availableMathDialogs/1.

% Predicates related to move execution and transition handling.
:-dynamic currentMinidialog/1, selectedMinidialog/2, currentMove/1, currentInputModality/1, currentAttempt/1,   
	mcCounter/1, modalityCounter/1, % counter to keep track of options that have been checked for multiple choice question (start counting from 0).
	nextCondition/1, start/0, started/0, timeout/1, session/1, 
	waitingForDetection/0, waitingForAnswer/0, waitingForEvent/1, waitingForAudioFile/1, waitingForMemoryLed/1,
	waitingForEmotion/0, answerProcessed/0, waitingForPosture/1,
	additionalAttempt/2, %used to signal if a user gets an additional attempt.
	waitingForTablet/1, waitingForDelay/0,
	waitingForTimer/0,
	waitingForInit/0, waitingForAfterMemoryInit/0,
	eventListener/2,
	mathCorrect/1, activeInteraction/1, activeInteractionCount/2, mathTime/1, mathSupportStrategy/1.

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
matchesDependency([[history=Target, filter=green] | T]) :- isInDialogHistory(Target, _), matchesDependency(T), !.
matchesDependency([[history=Target, filter=red] | T]) :- not(isInDialogHistory(Target, _)), matchesDependency(T), !.
matchesDependency([[history=Target, filter=orange] | T]) :- sessionId(Session), not(isInDialogHistory(Target, Session)), matchesDependency(T), !.
matchesDependency([[session=Sessions] | T]) :- sessionId(Session), member(Session, Sessions), matchesDependency(T), !.
matchesDependency([[umVariable=Var, filter=green, values=["_any"]] | T]) :- getUserModelValue(Var, _), matchesDependency(T), !.
matchesDependency([[umVariable=Var, filter=red, values=["_any"]] | T]) :- not(getUserModelValue(Var, _)), matchesDependency(T), !.
matchesDependency([[umVariable=Var, filter=Filter, values=Values] | T]) :- Values\=["_any"], listMatchInUserModel(Var, Filter, Values), matchesDependency(T), !.
matchesDependency([]).

matchesConditionals([Conditional | Rest]) :- matchesConditional(Conditional), matchesConditionals(Rest), !.
matchesConditionals([]).
matchesConditional([umVariable=Var, filter=green, values=["_any"]]) :- getUserModelValue(Var, _).
matchesConditional([umVariable=Var, filter=red, values=["_any"]]) :- not(getUserModelValue(Var, _)).
matchesConditional([umVariable=Var, filter=Filter, values=Values]) :- Values\=["_any"], listMatchInUserModel(Var, Filter, Values).
matchesConditional([personalization=Enabled]) :- enablePersonalization(Enabled).
matchesConditional([support=Enabled]) :- enableSupport(Enabled).


extractVariablesFromConditionals(Conditionals, Vars) :- findall(Var, (flatten(Conditionals, FConds), member((umVariable=Var), FConds)), Vars).
extractValuesFromConditionals(Conditionals, Values) :-
    findall(Value, (flatten(Conditionals, FConds), member((values=Value), FConds)), ValuesUF), flatten(ValuesUF, ValuesUS), sort(ValuesUS, Values).

%extractVariablesFromValuesInConditionals(Conditionals, Vars) :-
    %findall(Value, (flatten(Conditionals, FConds), member((values=Value), FConds)), Values),
    %findall(Var, (flatten(Values, FValues), (   member(Var, FValues), getUserModelValue(Var, _); member(VarS, FValues), atom_string(Var, VarS), getUserModelValue(Var, _))), VarsUS), sort(VarsUS, Vars).

findSuitableMinidialog(chitchat, topic, Minidialog) 
	:- topicsOfInterest(TopicsOfInterest), availableChitchats(AvailableTopics),
	ord_intersection(TopicsOfInterest, AvailableTopics, Topics), findMinidialogWithRandomTopic(chitchat, Topics, Minidialog).

findSuitableMinidialog(chitchat, theme, Minidialog) 
	:- topicsOfInterest(TopicsOfInterest), availableChitchats(AvailableTopics),
	ord_intersection(TopicsOfInterest, AvailableTopics, Topics), findMinidialogWithRandomTheme(chitchat, Topics, Minidialog).

findSuitableMinidialog(math, topic, Minidialog) 
	:- topicsOfInterest(TopicsOfInterest), availableMathDialogs(AvailableTopics),
	ord_intersection(TopicsOfInterest, AvailableTopics, Topics), findMinidialogWithRandomTopic(math, Topics, Minidialog).

findSuitableMinidialog(math, theme, Minidialog) 
	:- topicsOfInterest(TopicsOfInterest), availableMathDialogs(AvailableTopics),
	ord_intersection(TopicsOfInterest, AvailableTopics, Topics), findMinidialogWithRandomTheme(math, Topics, Minidialog).

findMinidialogWithRandomTopic(Type, Topics, Chitchat) :- random_select(Topic, Topics, RemainingTopics), (findRandomMinidialogWithTopic(Type, Topic, Chitchat), ! ; not(findRandomMinidialogWithTopic(Type, Topic, _)), findMinidialogWithRandomTopic(Type, RemainingTopics, Chitchat)).
findRandomMinidialogWithTopic(Type, Topic, Chitchat) :- findall(ID, (minidialog(ID, [type=Type, theme=_, topic=Topic]), minidialogMatchesTopic(Type, Topic, ID)), Chitchats), random_select(Chitchat, Chitchats, _).
minidialogMatchesTopic(Type, Topic, Chitchat) :- minidialog(Chitchat, [type=Type, theme=_, topic=Topic]), not(isInDialogHistory(Chitchat, _)),
			dependencies(Chitchat, Dependencies), matchesDepencencies(Dependencies).
minidialogMatchesTopic(Type, Topic, Chitchat) :- minidialog(Chitchat, [type=Type, theme=_, topic=Topic]), not(isInDialogHistory(Chitchat, _)),
			not(dependencies(Chitchat, _)).

findMinidialogWithRandomTheme(Type, Themes, Chitchat) :- random_select(Theme, Themes, RemainingThemes), (findRandomMinidialogWithTheme(Type, Theme, Chitchat), ! ; not(findRandomMinidialogWithTheme(Type, Theme, _)), findMinidialogWithRandomTheme(Type, RemainingThemes, Chitchat)).
findRandomMinidialogWithTheme(Type, Theme, Chitchat) :- findall(ID, (minidialog(ID, [type=Type, theme=Theme, topic=_]), minidialogMatchesTheme(Type, Theme, ID)), Chitchats), random_select(Chitchat, Chitchats, _).
minidialogMatchesTheme(Type, Theme, Chitchat) :- minidialog(Chitchat, [type=Type, theme=Theme, topic=_]), not(isInDialogHistory(Chitchat, _)),
			dependencies(Chitchat, Dependencies), matchesDepencencies(Dependencies).
minidialogMatchesTheme(Type, Theme, Chitchat) :- minidialog(Chitchat, [type=Type, theme=Theme, topic=_]), not(isInDialogHistory(Chitchat, _)),
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

importTopicsOfInterest([], []).
importTopicsOfInterest(IToI, OToI) :- IToI \= [], term_string(IToII, IToI), sort(IToII, OToI). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Useful definitions                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Right bumper means yes and left bumper means no (used if current move is yes/no question with feet response).
feetBumperEventAnswer('answer_yes') :- event('RightBumperPressed').
feetBumperEventAnswer('answer_no') :- event('LeftBumperPressed').

%yesno synonyms
answer_yes_synonyms(["ja", "jazeker", "jawel", "oké", "oke", "ok", "prima", "goed", "natuurlijk", "tuurlijk", "absoluut", "zeker", "klopt"]).
answer_no_synonyms(["nee", "neen", "nah"]).
answer_dontknow_synonyms(["twijfel", "heb ik niet", "weet ik niet", "geen idee"]).

tablet_yesno(answer_yes, "Ja").
tablet_yesno(answer_no, "Nee").

string_match_word_list(Move, L, DS) :- downcase_atom(Move, DS), maplist(downcase_atom, L, DL), member(DS, DL), !.
string_match_word_list(Move, L, R) :- split_string(Move," ",", ", SL), maplist(downcase_atom, SL, DSL), maplist(downcase_atom, L, DL), any_list_match(DSL, DL, R), !.
any_list_match([H | _], L, H) :- member(H, L).
any_list_match([H | Minidialog], L, R) :- not(member(H, L)), any_list_match(Minidialog, L, R), !.

%Update the local instance of the user model.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- not(member((Key=_), OldUserModel)), append(OldUserModel, [Key=Value], NewUserModel), !.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- member((Key=OldValue), OldUserModel), not(OldValue = Value), delete(OldUserModel, (Key=OldValue), UserModelTemp), append(UserModelTemp, [Key=Value], NewUserModel), !.
updateUserModel(Key, Value, OldUserModel, NewUserModel) :- member((Key=OldValue), OldUserModel), OldValue = Value, NewUserModel = OldUserModel, !.

updateUserModelList([Key=Value | T], OldUserModel, NewUserModel) :- updateUserModel(Key, Value, OldUserModel, TransUserModel), updateUserModelList(T, TransUserModel, NewUserModel).
updateUserModelList([], UserModel, UserModel).

getUserModelValue(Key, Value) :- userModel(UserModel), member((Key=Value), UserModel).
getUserModelWithoutLocal(ProcessedUserModel) :- userModel(UserModel), member((first_name=FirstName), UserModel), delete(UserModel, (first_name=FirstName), ProcessedUserModel).
getUserModelWithoutLocal(UserModel) :- userModel(UserModel), not(member((first_name=_), UserModel)).

listMatchInUserModel(Key, green, RValues) :- valueListFromKeyList(RValues, Values), getUserModelValue(Key, Value), (member(Value, Values) ; atom_string(Value, ValueS), member(ValueS, Values)), !.
listMatchInUserModel(Key, red, RValues) :- valueListFromKeyList(RValues, Values), getUserModelValue(Key, Value), not(member(Value, Values)), atom_string(Value, ValueS), not(member(ValueS, Values)), !.


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

getSpeechSpeed(Minidialog, Move, Speed) :- keyValue(Minidialog, Move, speechSpeed, Speed).
getSpeechSpeed(Minidialog, Move, Speed) :- not(keyValue(Minidialog, Move, speechSpeed, _)), keyValue(default, default, speechSpeed, Speed).

addSpeechSpeed(Text, Speed, Result) :- string_concat("\rspd=", Speed, STFront), string_concat(STFront, "\ ", SpeedText), string_concat(SpeedText, Text, Result).

getInputModalityOrder(Minidialog, Move, Order) :- (keyValue(Minidialog, Move, inputModality, Modalities); not(keyValue(Minidialog, Move, inputModality, _)), keyValue(default, default, inputModality, Modalities)), getKeys(Modalities, Order).
getMaxAnswerAttempts(Minidialog, Move, Modality, MaxAnsAttempts) :- keyValue(Minidialog, Move, inputModality, Modalities), member((Modality=MaxAnsAttempts), Modalities), !.
getMaxAnswerAttempts(Minidialog, Move, Modality, MaxAnsAttempts) :- not(keyValue(Minidialog, Move, inputModality, _)), keyValue(default, default, inputModality, Modalities), member((Modality=MaxAnsAttempts), Modalities), !.


getKeys([(Key=_)|Pairs], [Key|Keys]) :- getKeys(Pairs, Keys).
getKeys([], []).

getMaxAnswerTime(Minidialog, Move, Modality, _, _, MaxAnswerTime) :- Modality \= speech, (keyValue(Minidialog, Move, maxAnswerTime, Times), member((Modality=MaxAnswerTime), Times), !; 
								keyValue(default, default, maxAnswerTime, Times), member((Modality=MaxAnswerTime), Times), !).
getMaxAnswerTime(Minidialog, Move, speech, openend, _, MaxAnswerTime) :- (keyValue(Minidialog, Move, maxAnswerTime, Times), member((speechopenend=MaxAnswerTime), Times), !; 
								keyValue(default, default, maxAnswerTime, Times), member((speechopenend=MaxAnswerTime), Times), !).
getMaxAnswerTime(Minidialog, Move, Modality, Type, Attempt, MaxAnswerTime) :- Attempt = 1, atom_concat(Modality, Type, ModType), atom_concat(ModType, first, Key),
								(keyValue(Minidialog, Move, maxAnswerTime, Times), member((Key=MaxAnswerTime), Times), !; 
								keyValue(default, default, maxAnswerTime, Times), member((Key=MaxAnswerTime), Times), !).
getMaxAnswerTime(Minidialog, Move, Modality, Type, Attempt, MaxAnswerTime) :- Attempt > 1, atom_concat(Modality, Type, ModType), atom_concat(ModType, noninitial, Key),
								(keyValue(Minidialog, Move, maxAnswerTime, Times), member((Key=MaxAnswerTime), Times), !; 
								keyValue(default, default, maxAnswerTime, Times), member((Key=MaxAnswerTime), Times), !).
								  
getModalitySwitchResponse(Minidialog, Move, ToModality, Response) :- keyValue(Minidialog, Move, modalitySwitchResponse, Responses), member((ToModality=Response), Responses), !.
getModalitySwitchResponse(Minidialog, Move, ToModality, Response) :- not(keyValue(Minidialog, Move, modalitySwitchResponse, _)), keyValue(default, default, modalitySwitchResponse, Responses), 
								     member((ToModality=Response), Responses), !.

getAdditionalAttempt(Minidialog, Move) :- keyValue(Minidialog, Move, additionalAttempt, true).
getAdditionalAttempt(Minidialog, Move) :- not(keyValue(Minidialog, Move, additionalAttempt, _)), keyValue(default, default, additionalAttempt, true).

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
valueListFromKeyList([Hkey | Tkey], [Hvalue | Tvalue]) :- atom_string(HkeyA, Hkey), getUserModelValue(HkeyA, Hvalue), valueListFromKeyList(Tkey, Tvalue), !.
valueListFromKeyList([Hkey | Tkey], [Hkey | Tvalue]) :- not(getUserModelValue(Hkey, _)), valueListFromKeyList(Tkey, Tvalue), !.
valueListFromKeyList(Key, List) :- getUserModelValue(Key, List), !.
valueListFromKeyList(Key, List) :- atom_string(KeyA, Key), getUserModelValue(KeyA, List), !.
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

% Text generation
generate_text_from_source(math_correct_acknowledge, SelectedText) :- findall(Text, math_correct_acknowledge(Text), Texts), random_select(SelectedText, Texts, _).
generate_text_from_source(math_correct_praise, SelectedText) :- findall(Text, math_correct_praise(Text), Texts), random_select(SelectedText, Texts, _).
generate_text_from_source(math_incorrect, SelectedText) :- findall(Text, math_incorrect(Text), Texts), random_select(SelectedText, Texts, _).
generate_text_from_source(math_no_answer, SelectedText) :- findall(Text, math_no_answer(Text), Texts), random_select(SelectedText, Texts, _).
generate_text_from_source(math_move_on, SelectedText) :- findall(Text, math_move_on(Text), Texts), random_select(SelectedText, Texts, _).
generate_text_from_source(math_incorrect_after_hint, SelectedText) :- findall(Text, math_incorrect_after_hint(Text), Texts), random_select(SelectedText, Texts, _).

% Session pruning
excludePrunning(Minidialog) :- atom_string(Minidialog, MDS), split_string(MDS, "_", "", ["math" | _]).
getPrunedSession(Session, History, 1, [general_wakeup, KeepLast | Pruned]) :- last(History, KeepLast), not(excludePrunning(KeepLast)), pruneSession(Session, History, Pruned), !.
getPrunedSession(Session, History, 1, [general_wakeup | Pruned]) :- last(History, KeepLast), excludePrunning(KeepLast), pruneSession(Session, History, Pruned), !.
getPrunedSession(Session, History, 0, [general_wakeup | Pruned]) :- pruneSession(Session, History, Pruned), !.

pruneSession([[narrative=_] | SessionRemain], [_ | HistoryRemain], PrunedRest) :- pruneSession(SessionRemain, HistoryRemain, PrunedRest).
pruneSession([[topic=_] | SessionRemain], [_ | HistoryRemain], PrunedRest) :- pruneSession(SessionRemain, HistoryRemain, PrunedRest).
pruneSession([[theme=Theme] | SessionRemain], [_ | HistoryRemain], PrunedRest) :- Theme\=math, pruneSession(SessionRemain, HistoryRemain, PrunedRest).
pruneSession([[type=math, params=_] | SessionRemain], [_ | HistoryRemain], [[type=math]| PrunedRest]) :- pruneSession(SessionRemain, HistoryRemain, PrunedRest).
pruneSession([[type=math] | SessionRemain], [_ | HistoryRemain], [[type=math]| PrunedRest]) :- pruneSession(SessionRemain, HistoryRemain, PrunedRest).
pruneSession([CurrentDialog | SessionRemain], [CurrentDialog | HistoryRemain], PrunedRest) :- pruneSession(SessionRemain, HistoryRemain, PrunedRest).
pruneSession([CurrentDialog | SessionRemain], [CurrentHistory | HistoryRemain], PrunedRest) :- CurrentDialog\=CurrentHistory, pruneSession([CurrentDialog | SessionRemain], HistoryRemain, PrunedRest).
pruneSession(Session, [], Session).
pruneSession([], [], []).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Math			            		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mathMaxLevel(11).
math_generate_left_right(0, Left, Right, Answer) :- random_member(Left, [2, 5, 10]), random(2,11, Right), Answer is Left*Right, !.
math_generate_left_right(1, Left, Right, Answer) :- random(2,11, Left), random(2,10, Right), Answer is Left*Right, !.
math_generate_left_right(2, Left, Right, Answer) :- random(2,11, Left), random(1,10, R1), Right is R1 * 10, Answer is Left*Right, !.
math_generate_left_right(3, Left, Right, Answer) :- random(2,11, Left), random(1,10, R1), random_member(Factor, [100, 1000]), Right is R1 * Factor, Answer is Left*Right, !.
math_generate_left_right(4, Left, Right, Answer) :- random(2,11, L1), Left is L1 * 10, random(2,10, R1), Right is R1 * 10, Answer is Left*Right, !.
math_generate_left_right(5, Left, Right, Answer) :- random(2,11, Left), random(11,20, Right), Answer is Left*Right, !.
math_generate_left_right(6, Left, Right, Answer) :- random(11,20, Left), random(2,10, R1), random_member(Factor, [10, 100, 1000]), Right is R1 * Factor, Answer is Left*Right, !.
math_generate_left_right(7, Left, Right, Answer) :- random(2,11, Left), random(11,100, Right), Answer is Left*Right, !.
math_generate_left_right(8, Left, Right, Answer) :- random(2,11, Left), random(11,100, R1), random_member(Factor, [10, 100]), Right is R1 * Factor, Answer is Left*Right, !.
math_generate_left_right(9, Left, Right, Answer) :- random(11,100, Left), random(2,10, R1), random_member(Factor, [10, 100, 1000]), Right is R1 * Factor, Answer is Left*Right, !.
math_generate_left_right(10, Left, Right, Answer) :- random(11,20, Left), random(11,20, Right), Answer is Left*Right, !.
math_generate_left_right(11, Left, Right, Answer) :- random(11,100, Left), random(11,100, Right), Answer is Left*Right, !.

mathHintStrategies([tafel_rij, tafel_rij, kleine_som, kleine_som, kleine_som, splitsen, kleine_som, splitsen, none, none, none, none]).
math_get_hintstrategy(Level, _, _, Strategy) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), (Strategy=splitsen; Strategy=tafel_rij).
math_get_hintstrategy(Level, _, Right, kleine_som_1000) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), Strategy=kleine_som, Right >= 1000, Right < 10000.
math_get_hintstrategy(Level, _, Right, kleine_som_100) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), Strategy=kleine_som, Right >= 100, Right < 1000.
math_get_hintstrategy(Level, _, Right, kleine_som_10) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), Strategy=kleine_som, Right >= 10, Right < 100.
math_get_hintstrategy(Level, Left, _, tafel_rij) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), Strategy=tafel, (Left=2; Left=5; Left=10).
math_get_hintstrategy(Level, Left, _, steunsom) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), Strategy=tafel, (Left=3; Left=6; Left=9).
math_get_hintstrategy(Level, 4, _, verdubbelen_4) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), Strategy=tafel.
math_get_hintstrategy(Level, 8, _, verdubbelen_8) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), Strategy=tafel.
math_get_hintstrategy(Level, 7, _, split_7) :- mathHintStrategies(Strategies), nth0(Level, Strategies, Strategy), Strategy=tafel.

math_generate_hint_splitsen(Left, Right, Big, Left * Big, Small, Left * Small) :-  number_string(Right, RightString), string_chars(RightString, [BigChar, SmallChar]), 
								string_chars(BigString, [BigChar, '0']), string_chars(SmallString, [SmallChar]), 
								number_string(Big, BigString), number_string(Small, SmallString).

math_generate_hint_kleine_som(Left, Right, Som1, Answer1, Som10, Answer10, Som100, Answer100) :- Som1 is Right / 1000, Answer1 is Left * Som1, 
												 Som10 is Right / 100, Answer10 is Left * Som10,
												 Som100 is Right / 10, Answer100 is Left * Som100.

steunsommen([2,5,10]).
math_generate_hint_steunsom(Left, Right, Steunsom, Steunanswer, '1 keer meer') :- steunsommen(Steunsommen), Steunsom is Left+1, Steunanswer is Steunsom * Right, member(Steunsom, Steunsommen), !.
math_generate_hint_steunsom(Left, Right, Steunsom, Steunanswer, '1 keer minder') :- steunsommen(Steunsommen), Steunsom is Left-1, Steunanswer is Steunsom * Right, member(Steunsom, Steunsommen), !.

math_generate_hint_verdubbelen(Left, Right, [Answer2, Answer4]) :- Left=8, Answer2 is 2 * Right, Answer4 is 4 * Right. 
math_generate_hint_verdubbelen(Left, Right, [Answer2]) :- Left=4, Answer2 is 2 * Right.

math_generate_hint_split_7(Right, Answer2, Answer5) :- Answer2 is 2 * Right, Answer5 is 5 * Right.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Move completion logic               		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ready for action
readyForAction(Minidialog, Move) :- start, not(paused), not(waitingForEvent(_)), not(audio(Minidialog, Move, id, _)), memoryTasksCompleted.
readyForAction(Minidialog, Move) :- start, not(paused), not(waitingForEvent(_)), audio(Minidialog, Move, id, ID), getUserModelValue(ID, _), memoryTasksCompleted.

% All events have been completed when all robot events indicating actions have been done (saying something, gesture, etc.) have been received.
eventsCompleted :- started, not(waitingForEvent(_)), not(waitingForTimer), not(waitingForTablet(_)).

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