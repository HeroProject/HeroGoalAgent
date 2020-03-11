%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test script                                            %%%
%%% Run to evaluate various functions for script handling. %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
topicOrder([startup, chocolate, color, party, party2, color2, sound, emotion, sound2, theend]).

%%% Start up %%%
state(startup, s1, say).
anim(startup, s1, "wakeup/behavior_1").
leds(startup, s1, "white").
next(startup, s1, "true", s2).

state(startup, s2, say).
text(startup, s2, "Hallo, ik ben Hero.").

%%% Chocolate - yesno %%%
state(chocolate, s1, question).
stateConfig(chocolate, s1, [type=yesno, context='answer_yesno']).
text(chocolate, s1, "Hou je van chocola?").
next(chocolate, s1, 'answer_yes', s2y).
next(chocolate, s1, 'answer_no', s2n).
next(chocolate, s1, 'fail', s2f).

state(chocolate, s2y, say).
text(chocolate, s2y, "Ik houd ook van chocola!").

state(chocolate, s2n, say).
text(chocolate, s2n, "Ik vind chocola ook vies!").

state(chocolate, s2f, say).
text(chocolate, s2f, "Ik vind het ook een lastige keuze").

%%% Color - input %%%
state(color, s1, question).
stateConfig(color, s1, [type=input, context='answer_color', options=['rood', 'geel', 'blauw'], 
defaultAnswer="rood", modalitySwitchResponse=[speechtouch='Sorry, ik kon je even niet verstaan. Ik zal nu wat opties opnoemen']]).
text(color, s1, "Wat is jouw lievelingskleur?").
next(color, s1, 'success', s2).
next(color, s1, 'fail', s2f).

state(color, s2, say).
text(color, s2, "Ik vind %color_s1% ook heel mooi!").

state(color, s2f, say).
text(color, s2f, "Mijn levelingskleur is %color_s1%.").

%%% Party - branch %%%
state(party, s1, question).
stateConfig(party, s1, [type = branch, context = "answer_koelkast_branch_1", options = ['dansen', 'zingen', 'muziek maken'], defaultAnswer='zingen',
branchIntents=['dansen' = 'answer_koelkast_dansen', 'zingen' = 'answer_koelkast_zingen', 'muziek maken' = 'answer_koelkast_muziek'], branchingPoints=[[party, s3], [party2, s2]]]).
text(party, s1, "Dansen, zingen, of muziek maken?").
next(party, s1, "success", s2).
next(party, s1, "fail", s2f).

state(party, s2, say).
text(party, s2, "Ik hou je nog even in spanning.").
next(party, s2, 'true', s3).

state(party, s2f, say).
text(party, s2f, "Ik kies zelf voor zingen.").
next(party, s2f, 'true', s3).

state(party, s3, branchingPoint).
next(party, s3, "dansen", s3a).
next(party, s3, "zingen", s3b).
next(party, s3, "muziek maken", s3c).
next(party, s3, "fail", s3f).

state(party, s3a, say).
text(party, s3a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").

state(party, s3b, say).
text(party, s3b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").

state(party, s3c, say).
text(party, s3c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakten muziek de hele dag en de hele nacht, en altijd in het donker.").

state(party, s3f, say).
text(party, s3f, "In de koelkast dansen, zongen, en maakten we muziek de hele dag en de hele nacht, en altijd in het donker.").

%%% Party II - branchingPoint %%%

state(party2, s1, say).
text(party2, s1, "Ik ben een nieuw topic").
next(party2, s1, "true", s2).

state(party2, s2, branchingPoint).
next(party2, s2, "dansen", s2a).
next(party2, s2, "zingen", s2b).
next(party2, s2, "muziek maken", s2c).
next(party2, s2, "fail", s2f).

state(party2, s2a, say).
text(party2, s2a, "Er is gekozen voor dansen.").

state(party2, s2b, say).
text(party2, s2b, "Er is gekozen voor zingen.").

state(party2, s2c, say).
text(party2, s2c, "Er is gekozen voor muziek maken.").

state(party2, s2f, say).
text(party2, s2f, "Je hebt geen geldig antwoord gegeven.").

%%% Color II - quiz %%%
state(color2, s1, question).
stateConfig(color2, s1, [type=quiz, context='answer_color', options=['rood', 'grijs', 'blauw', 'wit'], correctAnswer=['grijs', 'wit']]).
text(color2, s1, "Kun je me vertellen welke kleur ik ben?").
next(color2, s1, 'correct', s2cor).
next(color2, s1, 'incorrect', s2incor).
next(color2, s1, 'fail', s2f).

state(color2, s2cor, say).
text(color2, s2cor, "Ja klopt! Ik ben grijs met wit.").

state(color2, s2incor, say).
text(color2, s2incor, "Helaas. Ik wou dat ik die kleur had, maar ik ben grijs met wit.").

state(color2, s2f, say).
text(color2, s2f, "Zal ik het maar verklappen? Ik ben grijs met wit.").

%%% Sound recording%%%%
state(sound, s1, say).
text(sound, s1, "Brul als een leeuw in 3, 2, 1.").
next(sound, s1, "true", s2).

state(sound, s2, audioInput).
stateConfig(sound, s2, [recordTime=2000]).
next(sound, s2, "true", s3).

state(sound, s3, say).
text(sound, s3, "En de leeuw brulde.").
next(sound, s3, "true", s4).

state(sound, s4, say).
audio(sound, s4, recorded, [sound, s2]).
next(sound, s4, "true", s5).

state(sound, s5, say).
text(sound, s5, "Gaaf zeg.").

%%% Emotion %%%
state(emotion, s1, say).
text(emotion, s1, "Laat mij je gezicht eens goed bekijken.").
next(emotion, s1, "true", s2).

state(emotion, s2, emotion).
next(emotion, s2, happy, s3h).
next(emotion, s2, sad, s3s).
next(emotion, s2, neutral, s3n).
next(emotion, s2, "fail", s3f).

state(emotion, s3h, say).
leds(emotion, s3h, "green").
text(emotion, s3h, "Wauw, wat een blij gezicht!").
next(emotion, s3h, "true", s4).

state(emotion, s3s, say).
leds(emotion, s3s, "red").
text(emotion, s3s, "Wauw, wat een zielig gezicht!").
next(emotion, s3s, "true", s4).

state(emotion, s3n, say).
leds(emotion, s3n, "cyan").
text(emotion, s3n, "Wauw, wat kijk jij nietszeggend.").
next(emotion, s3n, "true", s4).

state(emotion, s3f, say).
leds(emotion, s3f, "white").
text(emotion, s3f, "Ik kon helaas niks zien.").
next(emotion, s3f, "true", s4).

state(emotion, s4, say).
leds(emotion, s4, "white").

%%% Sound - sound2 %%%
state(sound2, s1, say).
audio(sound2, s1, server, "short_test_song.wav").

%%% The end %%%
state(theend, s1, say).
text(theend, s1, "Dat was het.").
next(theend, s1, 'true', s2).

state(theend, s2, say). 
text(theend, s2, "Tot snel weer. Doei!").
anim(theend, s2, "rest/behavior_1"). 