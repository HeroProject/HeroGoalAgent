state(test, s1, say). % state s1 is of type 'say'.
stateConfig(test, s1, []). % no configuration parameters for state s1 (empty list); if empty, no need to include stateConfig/2 for s1.
text(test, s1, "Hallo, ik ben Hero.").
anim(test, s1, 'animations/Stand/Gestures/Hey_1').
leds(test, s1, 'white').
next(test, s1, 'true', s2).

state(test, s2, question).
stateConfig(test, s2, [type=yesno, response=speech, context='answer_yesno']).
text(test, s2, "Hou je van chocola?").
next(test, s2, 'answer_yes', s3a).
next(test, s2, 'answer_no', s3b).
next(test, s2, 'fail', s2f).

% In second instance try touch (feet bumpers)
state(test, s2f, question).
stateConfig(test, s2f, [type=yesno, response=touch]).
text(test, s2f, "Sorry ik versta je niet. Wil je daarom antwoord geven door de knopjes bij mijn tenen aan te raken? Hou je van chocola?").
next(test, s2f, 'answer_yes', s3a).
next(test, s2f, 'answer_no', s3b).
next(test, s2f, 'fail', s4).

state(test, s3a, say).
text(test, s3a, "Ik houd ook van chocola!").
next(test, s3a, 'true', s4).

state(test, s3b, say).
text(test, s3b, "Ik vind chocola ook vies!").
next(test, s3b, 'true', s4).

state(test, s4, question).
stateConfig(test, s4, [type=mc, response=speech, context='answer_color', key='favoriteColor']).
text(test, s4, "Wat is jouw lievelingskleur?").
next(test, s4, 'answer_color', s5).
next(test, s4, 'fail', s4f).

state(test, s4f, question).
stateConfig(test, s4f, [type=mc, response=touch, options = ["blauw", "geel", "groen", "rood"], context='answer_color', key='favoriteColor']). % "wit", "oranje", "rood", "roze", "blauw", "geel", "groen", "paars", "zwart", "bruin"
text(test, s4f, "Sorry ik versta je niet. Wil je daarom antwoord geven door de knopjes bij mijn tenen aan te raken? Ik vertel je alle mogelijke antwoorden. Druk op het knopje bij de ja sticker als je je antwoord hoort.").
next(test, s4f, 'answer_color', s5).

state(test, s5, say).
text(test, s5, "Ik vind %favoriteColor% ook heel mooi!"). % favoriteColor is a variable that is replaced with an answer given by user for key 'favoriteColor' (see s4).
next(test, s5, 'true', s6).

state(test, s6, say).
text(test, s6, "Kom, laten we samen een olifant nadoen! 3, 2, 1,"). % favoriteColor is a variable that is replaced with an answer given by user for key 'favoriteColor' (see s4).
next(test, s6, 'true', s7).

state(test, s7, say).
anim(test, s7, "elephant-bf57b3/behavior_1").
next(test, s7, 'true', s8).

state(test, s8, say).
text(test, s8, "Ik a nu een los geluidje afspelen. Ik ga piepen als een vrachtwagen.").
leds(test, s8, 'white').
next(test, s8, 'true', s9).

state(test, s9, say).
audio(test, s9, 'truck.wav').
leds(test, s9, 'red').
next(test, s9, 'true', s10).

state(test, s10, say).
text(test, s10, "Nu praat ik terwijl er een muziekje afspeelt.").
audio(test, s10, 'short_test_song.wav').

state(theend, s1, say).
text(theend, s1, "Dat was het. Doei!"). 