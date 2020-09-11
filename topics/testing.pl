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
next(test_chocolate, s1, 'answer_dontknow', s2d).
next(test_chocolate, s1, 'fail', s2f).

state(test_chocolate, s2y, say).
text(test_chocolate, s2y, "Ik houd ook van chocola!").

state(test_chocolate, s2n, say).
text(test_chocolate, s2n, "Ik vind chocola ook vies!").

state(test_chocolate, s2d, say).
text(test_chocolate, s2d, "Ik vind het ook een lastige keuze").

state(test_chocolate, s2f, say).
text(test_chocolate, s2f, "Oke.").

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
branchIntents=['dansen' = 'answer_koelkast_dansen', 'zingen' = 'answer_koelkast_zingen', 'muziek maken' = 'answer_koelkast_muziek'], branchingPoints=[[test_party, s3], [test_party2, s2]]]).
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
text(test_color2, s2incor, "Helaas. Ik wou dat ik %test_color2_s1% was, maar ik ben grijs met wit.").

state(test_color2, s2f, say).
text(test_color2, s2f, "Zal ik het maar verklappen? Ik ben grijs met wit.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Color 2 - Testing open question	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_open, s1, question).
stateConfig(test_open, s1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(test_open, s1, "Waarom is een zeeluiaard je lievelingsdier?").
next(test_open, s1, 'success', s2).
next(test_open, s1, 'fail', s2f).

state(test_open, s2, say).
text(test_open, s2, "Daar ben ik het helemaal mee eens.").

state(test_open, s2f, say).
text(test_open, s2f, "Leuk hoor.").

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
audio(test_sound, s5, recorded, [test_sound, s2]).
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
leds(test_emotion, s3h, ["FaceLeds"], ["green"]).
text(test_emotion, s3h, "Wauw, wat een blij gezicht!").
next(test_emotion, s3h, "true", s4).

state(test_emotion, s3s, say).
leds(test_emotion, s3s, ["FaceLeds"], ["red"]).
text(test_emotion, s3s, "Wauw, wat een zielig gezicht!").
next(test_emotion, s3s, "true", s4).

state(test_emotion, s3n, say).
leds(test_emotion, s3n, ["FaceLeds"], ["cyan"]).
text(test_emotion, s3n, "Wauw, wat kijk jij nietszeggend.").
next(test_emotion, s3n, "true", s4).

state(test_emotion, s3f, say).
leds(test_emotion, s3f, ["FaceLeds"], ["white"]).
text(test_emotion, s3f, "Ik kon helaas niks zien.").
next(test_emotion, s3f, "true", s4).

state(test_emotion, s4, say).
leds(test_emotion, s4, ["FaceLeds"], ["white"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test sound 2 - Testing playing sound from server	   %%%
%%% Note: web server needs to be on.		           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_sound2, s1, say).
audio(test_sound2, s1, server, "resources/sounds/truck.wav").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Animation - Testing anim option		           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_animation, s1, say).
text(test_animation, s1, "Ik doe nu een standaard animatie").
anim(test_animation, s1, "animations/Stand/Gestures/Enthusiastic_4").
%animations/Stand/Question/NAO/Left_Neutral_QUE_01
%animations/Stand/Gestures/Enthusiastic_4

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% leds - Testing led colors			           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_leds, s1, say).
text(test_leds, s1, "Kijk, mijn ogen zijn nu grijs").
leds(test_leds, s1, ["FaceLeds"], ["grijs"]).
next(test_leds, s1, "true", s2).

state(test_leds, s2, say).
text(test_leds, s2, "Kijk, mijn buik is nu azuur").
leds(test_leds, s2, ["ChestLeds"], ["azuur"]).
next(test_leds, s2, "true", s3).

state(test_leds, s3, say).
text(test_leds, s3, "Kijk, mijn voeten zijn nu kaki").
leds(test_leds, s3, ["FeetLeds"], ["kaki"]).
next(test_leds, s3, "true", s4).

state(test_leds, s4, say).
leds(test_leds, s4, ["FaceLeds", "ChestLeds", "FeetLeds"], ["wit", "wit", "wit"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% leds - Testing led animations		           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_leds_anim, s1, say).
text(test_leds_anim, s1, "Kijk, ik heb mijn zwaailicht aangezet").
start_led_anim(test_leds_anim, s1, "all", "alternate", ["red", "blue"], 500).
stateConfig(test_leds_anim, s1, [waitTimer=5000]).
next(test_leds_anim, s1, "true", s2).

state(test_leds_anim, s2, say).
stop_led_anim(test_leds_anim, s2).
next(test_leds_anim, s2, "true", s3).

state(test_leds_anim, s3, say).
text(test_leds_anim, s3, "Leuk hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Posture - Testing goToPosture option	           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_posture, s1, say).
text(test_posture, s1, "Ik ga nu zitten.").
goToPosture(test_posture, s1, "Sit").
next(test_posture, s1, "true", s2).

state(test_posture, s2, say).
text(test_posture, s2, "Ik ga nu langzaam staan.").
goToPosture(test_posture, s2, "Stand", 30).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Record and Play Motion 			  	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_motion, s1, say).
text(test_motion, s1, "Je kunt nu een beweging maken met mijn rechter arm").
next(test_motion, s1, "true", s2).

state(test_motion, s2, say).
record_motion_timer(test_motion, s2, ['RArm'], 5000).
next(test_motion, s2, "true", s3).

state(test_motion, s3, say).
text(test_motion, s3, "Dan ga ik de beweging na doen.").
next(test_motion, s3, "true", s4).

state(test_motion, s4, say).
play_motion(test_motion, s4, test_motion_s2).
next(test_motion, s4, "true", s5).

state(test_motion, s5, say).
text(test_motion, s5, "Gaaf hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Play Motion File			  		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_motion_file, s1, say).
text(test_motion_file, s1, "Kijk, ik speel nu een bewegingsbestand af.").
next(test_motion_file, s1, "true", s2).

state(test_motion_file, s2, say).
play_motion_file(test_motion_file, s2, "resources/gestures/elephant2.xml").
audio(test_motion_file, s2, server, "resources/sounds/elephant.wav").
next(test_motion_file, s2, "true", s3).

state(test_motion_file, s3, say).
text(test_motion_file, s3, "Heel leuk.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 2					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'ga_sports' topic		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_second_session, s1, say).
text(test_second_session, s1, "Ik weet nog dat jij van %ga_sports_s2% houdt."). 