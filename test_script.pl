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
stateConfig(test, s3f, [type=yesno, response=touch]).
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
stateConfig(test, s5f, [type=mc, response=touch, options = ["blauw", "geel", "groen", "rood"], branching=no, context='answer_color', key='favoriteColor']). % "wit", "oranje", "rood", "roze", "blauw", "geel", "groen", "paars", "zwart", "bruin"
text(test, s5f, "Sorry ik versta je niet. Wil je daarom antwoord geven door de knopjes bij mijn tenen aan te raken?").
next(test, s5f, 'answer_color', s6).

state(test, s6, say).
text(test, s6, "Ik vind %favoriteColor% ook heel mooi!"). % favoriteColor is a variable that is replaced with an answer given by user for key 'favoriteColor' (see s5).
next(test, s6, 'true', s7).

state(test, s7, say).
text(test, s7, "Kom, laten we samen een olifant nadoen! 3, 2, 1,").
next(test, s7, 'true', s8).

state(test, s8, say).
anim(test, s8, "elephant/behavior_1"). % check choregraph ID for this behavior.
next(test, s8, 'true', s9).

state(test, s9, say).
text(test, s9, "Ik ga nu een los geluidje afspelen. Ik ga piepen als een vrachtwagen.").
leds(test, s9, 'white').
next(test, s9, 'true', s10).

state(test, s10, say).
audio(test, s10, server, 'truck.wav').
leds(test, s10, 'red').
next(test, s10, 'true', s11).

state(test, s11, say).
text(test, s11, "Nu praat ik terwijl er een muziekje afspeelt.").
leds(test, s11, 'white').
audio(test, s11, server, 'short_test_song.wav').
next(test, s11, 'true', s12).

state(test, s12, question).
stateConfig(test, s12, [type = mc, response = speech, context = "answer_graafmachine_branch_1", key = "graafmachine_keuze_1"]).
text(test, s12, "Wat zal ik eens gaan doen. Zal ik muziek maken? Of zal ik kunstwerken maken? Of toch liever schaatsen? Jij mag het kiezen!").

state(test, s12f, question).
stateConfig(test, s12f, [type = mc, response = touch, options = ["muziek maken","kunstwerken maken","schaatsen"], branching = yes, context = "answer_graafmachine_branch_1", key = "graafmachine_keuze_1", defaultAnswer="muziek maken"]).
text(test, s12f, "Sorry ik versta je niet. Ik noem de antwoorden even op. Je kunt op de ja knop drukken om te kiezen.").

state(test, s12ff, say).
text(test, s12ff, "Ik kies dan zelf voor muziek maken").

state(test, s13a, say).
text(test, s13a, "Ja! Dan kunnen er mensen lekker dansen, dat vinden mensen leuk").

state(test, s13b, say).
text(test, s13b, "Ja! Dan kunnen mensen mijn mooie kunstwerken komen bekijken, dat vinden ze leuk!").

state(test, s13c, say).
text(test, s13c, "Ja! Dan kunnnen alle mensen met me mee doen en kunnen we kijken wie het mooist schaatst!").

next(test, s12, "answer_graafmachine_muziek", s13a).
next(test, s12f, "muziek maken", s13a).

next(test, s12, "answer_graafmachine_kunstwerken", s13b).
next(test, s12f, "kunstwerken maken", s13b).

next(test, s12, "answer_graafmachine_schaatsen", s13c).
next(test, s12f, "schaatsen", s13c).

next(test, s12, "fail", s12f).
next(test, s12f, "true", s12ff).
next(test, s12ff, "true", s13a).
next(test, s13a, "true", s14).
next(test, s13b, "true", s14).
next(test, s13c, "true", s14).

state(test, s14, say).
text(test, s14, "Doe het geluid van een Koe na.").
next(test, s14, "true", s15).

state(test, s15, audioInput).
stateConfig(test, s15, [recordTime=2000]).
next(test, s15, "true", s16).

state(test, s16, say).
text(test, s16, "Dankjewel").
next(test, s16, "true", s17).

state(test, s17, say).
audio(test, s17, recorded, s15).

% Topic: theend
state(theend, s1, say).
text(theend, s1, "Dat was het.").
next(theend, s1, 'true', s2).

state(theend, s2, say). 
text(theend, s2, "Tot snel weer. Doei!").
anim(theend, s2, "rest/behavior_1").