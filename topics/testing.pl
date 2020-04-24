%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      TESTING TOPICS	                   %%%
%%%      Topics for testing the various functionalities	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Chocolate - Testing yesno question                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_chocolate, s1, question).
stateConfig(test_chocolate, s1, [type=yesno, context='answer_yesno']).
text(test_chocolate, s1, "Hou je van chocola?").
next(test_chocolate, s1, 'answer_yes', s2y).
next(test_chocolate, s1, 'answer_no', s2n).
next(test_chocolate, s1, 'fail', s2f).

state(test_chocolate, s2y, say).
text(test_chocolate, s2y, "Ik houd ook van chocola!").

state(test_chocolate, s2n, say).
text(test_chocolate, s2n, "Ik vind chocola ook vies!").

state(test_chocolate, s2f, say).
text(test_chocolate, s2f, "Ik vind het ook een lastige keuze").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Color - Testing input question	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_color, s1, question).
stateConfig(test_color, s1, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], 
defaultAnswer="rood", modalitySwitchResponse=[speechtouch='Sorry, ik kon je even niet verstaan. Ik zal nu wat opties opnoemen']]).
text(test_color, s1, "Wat is jouw lievelingskleur?").
next(test_color, s1, 'success', s2).
next(test_color, s1, 'fail', s2f).

state(test_color, s2, say).
text(test_color, s2, "Ik vind %test_color_s1% ook heel mooi!").

state(test_color, s2f, say).
text(test_color, s2f, "Mijn levelingskleur is %test_color_s1%.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Party - Testing branch question	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_party, s1, question).
stateConfig(test_party, s1, [type = branch, context = "answer_koelkast_branch_1", options = ['dansen', 'zingen', 'muziek maken'], defaultAnswer='zingen',
branchIntents=['dansen' = 'answer_koelkast_dansen', 'zingen' = 'answer_koelkast_zingen', 'muziek maken' = 'answer_koelkast_muziek'], branchingPoints=[[party, s3], [party2, s2]]]).
text(test_party, s1, "Dansen, zingen, of muziek maken?").
next(test_party, s1, "success", s2).
next(test_party, s1, "fail", s2f).

state(test_party, s2, say).
text(test_party, s2, "Ik hou je nog even in spanning.").
next(test_party, s2, 'true', s3).

state(test_party, s2f, say).
text(test_party, s2f, "Ik kies zelf voor zingen.").
next(test_party, s2f, 'true', s3).

state(test_party, s3, branchingPoint).
next(test_party, s3, "dansen", s3a).
next(test_party, s3, "zingen", s3b).
next(test_party, s3, "muziek maken", s3c).
next(test_party, s3, "fail", s3f).

state(test_party, s3a, say).
text(test_party, s3a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").

state(test_party, s3b, say).
text(test_party, s3b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").

state(test_party, s3c, say).
text(test_party, s3c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakten muziek de hele dag en de hele nacht, en altijd in het donker.").

state(test_party, s3f, say).
text(test_party, s3f, "In de koelkast dansen, zongen, en maakten we muziek de hele dag en de hele nacht, en altijd in het donker.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Party2 - Testing branching point	                   %%%
%%% Note: needs to be preceded by 'test_pary' topic        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_party2, s1, say).
text(test_party2, s1, "Ik ben een nieuw topic").
next(test_party2, s1, "true", s2).

state(test_party2, s2, branchingPoint).
next(test_party2, s2, "dansen", s2a).
next(test_party2, s2, "zingen", s2b).
next(test_party2, s2, "muziek maken", s2c).
next(test_party2, s2, "fail", s2f).

state(test_party2, s2a, say).
text(test_party2, s2a, "Er is gekozen voor dansen.").

state(test_party2, s2b, say).
text(test_party2, s2b, "Er is gekozen voor zingen.").

state(test_party2, s2c, say).
text(test_party2, s2c, "Er is gekozen voor muziek maken.").

state(test_party2, s2f, say).
text(test_party2, s2f, "Je hebt geen geldig antwoord gegeven.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Color 2 - Testing quiz question	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_color2, s1, question).
stateConfig(test_color2, s1, [type=quiz, context='answer_color', options=['rood', 'grijs', 'blauw', 'wit'], correctAnswer=['grijs', 'wit']]).
text(test_color2, s1, "Kun je me vertellen welke kleur ik ben?").
next(test_color2, s1, 'correct', s2cor).
next(test_color2, s1, 'incorrect', s2incor).
next(test_color2, s1, 'fail', s2f).

state(test_color2, s2cor, say).
text(test_color2, s2cor, "Ja klopt! Ik ben grijs met wit.").

state(test_color2, s2incor, say).
text(test_color2, s2incor, "Helaas. Ik wou dat ik die kleur had, maar ik ben grijs met wit.").

state(test_color2, s2f, say).
text(test_color2, s2f, "Zal ik het maar verklappen? Ik ben grijs met wit.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test sound - Testing sound recording and playing	   %%%
%%% Note: web server needs to be on.		           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_sound, s1, say).
text(test_sound, s1, "Brul als een leeuw in 3, 2, 1.").
next(test_sound, s1, "true", s2).

state(test_sound, s2, audioInput).
stateConfig(test_sound, s2, [recordTime=3000]).
next(test_sound, s2, "true", s3).

state(test_sound, s3, say).
text(test_sound, s3, "We reden met onze jeep over de savannen en toen ineens hoorden we het.").
next(test_sound, s3, "true", s4).

state(test_sound, s4, say).
text(test_sound, s4, "Het was het gebrul van de leeuw").
next(test_sound, s4, "true", s5).

state(test_sound, s5, say).
audio(test_sound, s5, recorded, [sound, s2]).
next(test_sound, s5, "true", s6).

state(test_sound, s6, say).
text(test_sound, s6, "Gaaf zeg.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Chocolate - Testing emotion recognition		   %%%
%%% Note: emotion service needs to be on.                  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_emotion, s1, say).
text(test_emotion, s1, "Laat mij je gezicht eens goed bekijken.").
next(test_emotion, s1, "true", s2).

state(test_emotion, s2, emotion).
next(test_emotion, s2, happy, s3h).
next(test_emotion, s2, sad, s3s).
next(test_emotion, s2, neutral, s3n).
next(test_emotion, s2, "fail", s3f).

state(test_emotion, s3h, say).
leds(test_emotion, s3h, "green").
text(test_emotion, s3h, "Wauw, wat een blij gezicht!").
next(test_emotion, s3h, "true", s4).

state(test_emotion, s3s, say).
leds(test_emotion, s3s, "red").
text(test_emotion, s3s, "Wauw, wat een zielig gezicht!").
next(test_emotion, s3s, "true", s4).

state(test_emotion, s3n, say).
leds(test_emotion, s3n, "cyan").
text(test_emotion, s3n, "Wauw, wat kijk jij nietszeggend.").
next(test_emotion, s3n, "true", s4).

state(test_emotion, s3f, say).
leds(test_emotion, s3f, "white").
text(test_emotion, s3f, "Ik kon helaas niks zien.").
next(test_emotion, s3f, "true", s4).

state(test_emotion, s4, say).
leds(test_emotion, s4, "white").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test sound 2 - Testing playing sound from server	   %%%
%%% Note: web server needs to be on.		           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_sound2, s1, say).
audio(test_sound2, s1, server, "short_test_song.wav").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Animation - Testing anim option		           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_animation, s1, say).
text(test_animation, s1, "Ik doe nu een standaard animatie").
anim(test_animation, s1, "animations/Stand/Gestures/Enthusiastic_4").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% leds - Testing led option			           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_leds, s1, say).
text(test_leds, s1, "Kijk mijn ogen zijn nu paars").
leds(test_leds, s1, "magenta").
next(test_leds, s1, "true", s2).

state(test_leds, s2, say).
text(test_leds, s2, "Kijk mijn ogen zijn nu groen").
leds(test_leds, s2, "green").
next(test_leds, s2, "true", s3).

state(test_leds, s3, say).
text(test_leds, s3, "Kijk mijn ogen zijn nu blauw").
leds(test_leds, s3, "blue").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test sound 2 - Testing playing sound from server	   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'ga_sports' topic		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_second_session, s1, say).
text(test_second_session, s1, "Ik weet nog dat jij van %ga_sports_s2% houdt."). 