%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test script                                            %%%
%%% Run to evaluate various functions for script handling. %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functionality included in this test script:
% - say state with gesture (animation) and leds
% - question state: yes/no with speech
% - question state: yes/no with touch
% - question state: mc with speech
% - question state: mc with touch
% - variable %var% (with var a key filled by an earlier question)
% - perform choregraph behavior (see also resources folder)
% - play audio fragment (see also resources folder)
% - talk while playing a music fragment (see also resources folder)
% - question state: branching & default answer
% - record and replay of sound effect.
% - topic switch
%
% BEFORE RUNNING THIS SCRIPT, CHECK:
% - Install the choregraphe behaviors in the resource folder following the instructions.
% - Check flags in mas2g file (e.g. recordaudio).
% - Check whether relative path ../tablet-core/laptop/html from this directory gets you to html folder, or
%     set correct relative path using option htmldir = '...' in mas3g file.

topicOrder([test, theend]).

state(test, s1, say).
anim(test, s1, "wakeup/behavior_1").
leds(test, s1, "white").
next(test, s1, "true", s2).

state(test, s2, say). % state s2 is of type 'say'.
stateConfig(test, s2, []). % no configuration parameters for state s2 (empty list); if empty, no need to include stateConfig/2 for s2.
text(test, s2, "Hallo, ik ben Hero.").
anim(test, s2, 'animations/Stand/Gestures/Hey_1').
next(test, s2, 'true', s3).

state(test, s3, question).
stateConfig(test, s3, [type=yesno, response=speech, context='answer_yesno']).
text(test, s3, "Hou je van chocola?").
next(test, s3, 'answer_yes', s4a).
next(test, s3, 'answer_no', s4b).
next(test, s3, 'fail', s3f).

% In second instance try touch (feet bumpers)
state(test, s3f, question).
stateConfig(test, s3f, [type=yesno, response=touch, context='answer_yesno']).
text(test, s3f, "Sorry ik versta je niet. Wil je daarom antwoord geven door de knopjes bij mijn tenen aan te raken? Hou je van chocola?").
next(test, s3f, 'answer_yes', s4a).
next(test, s3f, 'answer_no', s4b).
next(test, s3f, 'fail', s5).

state(test, s4a, say).
text(test, s4a, "Ik houd ook van chocola!").
next(test, s4a, 'true', s5).

state(test, s4b, say).
text(test, s4b, "Ik vind chocola ook vies!").
next(test, s4b, 'true', s5).

state(test, s5, question).
stateConfig(test, s5, [type=mc, response=speech, context='answer_color', key='favoriteColor']).
text(test, s5, "Wat is jouw lievelingskleur?").
next(test, s5, 'answer_color', s6).
next(test, s5, 'fail', s5f).

state(test, s5f, question).
stateConfig(test, s5f, [type=mc, response=touch, options = ["blauw", "geel", "groen", "rood"], context='answer_color', key='favoriteColor']). % "wit", "oranje", "rood", "roze", "blauw", "geel", "groen", "paars", "zwart", "bruin"
text(test, s5f, "Sorry ik versta je niet. Wil je daarom antwoord geven door de knopjes bij mijn tenen aan te raken?").
next(test, s5f, 'answer_color', s6).
next(test, s5f, 'fail', s7).

state(test, s6, say).
text(test, s6, "Ik vind %favoriteColor% ook heel mooi!"). % favoriteColor is a variable that is replaced with an answer given by user for key 'favoriteColor' (see s5).
next(test, s6, 'true', s7).

state(test, s7, say).
text(test, s7, "Kom, laten we samen een olifant nadoen! 3, 2, 1,").
next(test, s7, 'true', s8).

state(test, s8, say).
anim(test, s8, "elephant/behavior_1"). % check choregraph ID for this behavior.
%next(test, s8, 'true', s9).

state(test, s9, say).
text(test, s9, "Ik vond tussen al de modder een mooie ketting.").
next(test, s9, "true", s10).

state(test, s10, question).
stateConfig(test, s10, [type = mc, response = speech, altEnding = yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(test, s10, "Pakte ik die op of gooide ik die weg?").

state(test, s10f, question).
stateConfig(test, s10f, [type = mc, response = touch, options = ["oppakken","weggooien"], altEnding = yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(test, s10f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Pakte ik die op of gooide ik die weg?").

next(test, s10, "true", s11).
next(test, s10, "fail", s10f).
next(test, s10f, "true", s11).
next(test, s10f, "fail", s11).

state(test, s11, say).
text(test, s11, "Ik ga nu een los geluidje afspelen. Ik ga piepen als een vrachtwagen.").
leds(test, s11, 'white').
next(test, s11, 'true', s12).

state(test, s12, say).
audio(test, s12, server, 'truck.wav').
leds(test, s12, 'red').
next(test, s12, 'true', s13).

state(test, s13, say).
text(test, s13, "Nu praat ik terwijl er een muziekje afspeelt.").
leds(test, s13, 'white').
audio(test, s13, server, 'short_test_song.wav').
next(test, s13, 'true', s14).

state(test, s14, question).
stateConfig(test, s14, [type = mc, response = speech, branching = yes, context = "answer_graafmachine_branch_1", key = "graafmachine_keuze_1"]).
text(test, s14, "Wat zal ik eens gaan doen. Zal ik muziek maken? Of zal ik kunstwerken maken? Of toch liever schaatsen? Jij mag het kiezen!").

state(test, s14f, question).
stateConfig(test, s14f, [type = mc, response = touch, options = ["muziek maken","kunstwerken maken","schaatsen"], branching = yes, context = "answer_graafmachine_branch_1", key = "graafmachine_keuze_1", defaultAnswer="muziek maken"]).
text(test, s14f, "Sorry ik versta je niet. Ik noem de antwoorden even op. Je kunt op de ja knop drukken om te kiezen.").

state(test, s14ff, say).
text(test, s14ff, "Ik kies dan zelf voor muziek maken").

state(test, s15a, say).
text(test, s15a, "Ja! Dan kunnen er mensen lekker dansen, dat vinden mensen leuk").

state(test, s15b, say).
text(test, s15b, "Ja! Dan kunnen mensen mijn mooie kunstwerken komen bekijken, dat vinden ze leuk!").

state(test, s15c, say).
text(test, s15c, "Ja! Dan kunnnen alle mensen met me mee doen en kunnen we kijken wie het mooist schaatst!").

next(test, s14, "answer_graafmachine_muziek", s15a).
next(test, s14f, "muziek maken", s15a).

next(test, s14, "answer_graafmachine_kunstwerken", s15b).
next(test, s14f, "kunstwerken maken", s15b).

next(test, s14, "answer_graafmachine_schaatsen", s15c).
next(test, s14f, "schaatsen", s15c).

next(test, s14, "fail", s14f).
next(test, s14f, "fail", s14ff).
next(test, s14ff, "true", s15a).
next(test, s15a, "true", s16).
next(test, s15b, "true", s16).
next(test, s15c, "true", s16).

state(test, s16, say).
text(test, s16, "Doe het geluid van een Koe na.").
next(test, s16, "true", s17).

state(test, s17, audioInput).
stateConfig(test, s17, [recordTime=2000]).
next(test, s17, "true", s18).

state(test, s18, say).
text(test, s18, "Dankjewel").
next(test, s18, "true", s19).

state(test, s19, say).
audio(test, s19, recorded, s17).
next(test, s19, "true", s20).

state(test, s20, say).
stateConfig(test, s20, [selectEnding=yes, key="graafmachine_alt_ending"]).
text(test, s20, "Weet je nog dat ik die ketting vond?").

next(test, s20, "oppakken", s21a).
next(test, s20, "weggooien", s21b).
next(test, s20, "fail", s21f).

state(test, s21a, say).
text(test, s21a, "Gelukkig liet jij mij hem oppakken? Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").

state(test, s21b, say).
text(test, s21b, "Maar goed dat je mij hem liet weggooien. Er ruste namelijk een vloek op. Maar dat is een verhaal voor een andere keer.").

state(test, s21f, say).
text(test, s21f, "Gelukkig had ik de ketting opgepakt. Die is perfect voor in het museum. Ik geef hem aan mijn zusje en ze is er ontzettend blij mee!").

% Topic: theend
state(theend, s1, say).
text(theend, s1, "Dat was het.").
next(theend, s1, 'true', s2).

state(theend, s2, say). 
text(theend, s2, "Tot snel weer. Doei!").
anim(theend, s2, "rest/behavior_1").