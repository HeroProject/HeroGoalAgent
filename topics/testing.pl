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
stateConfig(test_sound, s2, [recordTime=3000, umVariable=sound_lion]).
next(test_sound, s2, "true", s3).

state(test_sound, s3, say).
text(test_sound, s3, "We reden met onze jeep over de savannen en toen ineens hoorden we het.").
next(test_sound, s3, "true", s4).

state(test_sound, s4, say).
text(test_sound, s4, "Het was het gebrul van de leeuw").
next(test_sound, s4, "true", s5).

state(test_sound, s5, say).
audio(test_sound, s5, recorded, sound_lion).
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
audio(test_sound2, s1, server, "resources/sounds/tiktok1.wav").

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
text(test_leds, s1, "Kijk, mijn ogen zijn nu groen").
leds(test_leds, s1, ["FaceLeds"], ["groen"]).
next(test_leds, s1, "true", s4).

%state(test_leds, s2, say).
%text(test_leds, s2, "Kijk, mijn buik is nu azuur").
%leds(test_leds, s2, ["ChestLeds"], ["azuur"]).
%next(test_leds, s2, "true", s3).

%state(test_leds, s3, say).
%text(test_leds, s3, "Kijk, mijn voeten zijn nu kaki").
%leds(test_leds, s3, ["FeetLeds"], ["kaki"]).
%next(test_leds, s3, "true", s4).

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
%%% Posture - Testing go_to_posture option	           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_posture, s1, say).
text(test_posture, s1, "Ik ga nu zitten.").
go_to_posture(test_posture, s1, "Sit").
next(test_posture, s1, "true", s2).

state(test_posture, s2, say).
text(test_posture, s2, "Ik ga nu langzaam staan.").
go_to_posture(test_posture, s2, "Stand", 30).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Record and Play Motion 			  	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_motion, s1, say).
text(test_motion, s1, "Je kunt nu een beweging maken met mijn armen").
set_stiffness(test_motion, s1, ['RArm', 'LArm'], 0).
next(test_motion, s1, "true", s2).

state(test_motion, s2, say).
record_motion_timer(test_motion, s2, ['RArm', 'LArm'], 6000).
stateConfig(test_motion, s2, [umVariable=test_motion]).
next(test_motion, s2, "true", s3).

state(test_motion, s3, say).
text(test_motion, s3, "Dan ga ik de beweging na doen.").
next(test_motion, s3, "true", s4).

state(test_motion, s4, say).
play_motion(test_motion, s4, test_motion).
next(test_motion, s4, "true", s5).

state(test_motion, s5, say).
go_to_base_posture(test_motion, s5).
text(test_motion, s5, "Gaaf hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Play Motion File			  		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_motion_file, s1, say).
text(test_motion_file, s1, "Kijk, ik speel nu een bewegingsbestand af.").
next(test_motion_file, s1, "true", s2).

state(test_motion_file, s2, say).
play_motion_file(test_motion_file, s2, "resources/gestures/goodbye2.xml").
%audio(test_motion_file, s2, server, "resources/sounds/elephant.wav").
next(test_motion_file, s2, "true", s3).

state(test_motion_file, s3, say).
text(test_motion_file, s3, "Heel leuk.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% stop led					           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_stop_led, s1, say).
stop_led_anim(test_stop_led, s1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 2					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'ga_sports' topic		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_second_session, s1, say).
text(test_second_session, s1, "Ik weet nog dat jij van %favo_sport% houdt.").
next(test_second_session, s1, "true", s2).

state(test_second_session, s2, branchingPoint).
stateConfig(test_second_session, s2, [branchDecider=entity, branchSource=favo_sport]).
next(test_second_session, s2, "floorball", s3floorball).
next(test_second_session, s2, "voetbal", s3voetbal).
next(test_second_session, s2, "hockey", s3hockey).
next(test_second_session, s2, "fail", s3fail).

state(test_second_session, s3floorball, say).
text(test_second_session, s3floorball, "Lekker door de zaal rennen.").

state(test_second_session, s3voetbal, say).
text(test_second_session, s3voetbal, "Lekker tegen een bal aan schoppen.").

state(test_second_session, s3hockey, say).
text(test_second_session, s3hockey, "Lekker tegen de bal aan slaan.").

state(test_second_session, s3fail, say).
text(test_second_session, s3fail, "Dat ging een beetje mis geloof ik.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 3					   %%%
%%% Co-create a motion					   %%%
%%% 				           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(test_motion_co_a, s1, say).
text(test_motion_co_a, s1, "Ik kan wel een beweging gebruiken van het toveren met een tover staf.").
next(test_motion_co_a, s1, "true", s2).

state(test_motion_co_a, s2, say).
prepare_motion_anim(test_motion_co_a, s2).
stateConfig(test_motion_co_a, s2, [umVariable=motion_magic_wand,
				 option1='resources/gestures/magicwand1.json',
				 option2='resources/gestures/magicwand2.json']).

state(test_motion_co_b, s1, say).
text(test_motion_co_b, s1, "Laten we eens kijken wat je hebt gemaakt").
next(test_motion_co_b, s1, "true", s2).

state(test_motion_co_b, s2, say).
play_motion(test_motion_co_b, s2, motion_magic_wand).
next(test_motion_co_b, s2, "true", s3).

state(test_motion_co_b, s3, say).
text(test_motion_co_b, s3, "Gaaf zeg!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 4					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'test_motion' topic		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_motion_2, s1, say).
text(test_motion_2, s1, "Ik weet nog die beweging").
next(test_motion_2, s1, "true", s2).

state(test_motion_2, s2, say).
play_motion(test_motion_2, s2, motion_magic_wand).
next(test_motion_2, s2, "true", s3).

state(test_motion_2, s3, say).
go_to_base_posture(test_motion_2, s3).
text(test_motion_2, s3, "Gaaf hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 5					   %%%
%%% Co-create a sound effecr			 	   %%%
%%% 				           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_session_sound_1a, s1, say).
text(test_session_sound_1a, s1, "Ik kan wel een geluidseffect van een brullende leeuw gebruiken.").
next(test_session_sound_1a, s1, "true", s2).

state(test_session_sound_1a, s2, say).
prepare_sound_anim(test_session_sound_1a, s2).
stateConfig(test_session_sound_1a, s2, [umVariable=sound_lion,
				 option1='resources/sounds/lion1.wav',
				 option2='resources/sounds/lion2.wav',
				 recordTime=4000]).

state(test_session_sound_1b, s1, say).
text(test_session_sound_1b, s1, "We reden met onze jeep over de savannen en toen ineens hoorden we het.").
next(test_session_sound_1b, s1, "true", s2).

state(test_session_sound_1b, s2, say).
text(test_session_sound_1b, s2, "Het was het gebrul van de leeuw").
next(test_session_sound_1b, s2, "true", s3).

state(test_session_sound_1b, s3, say).
audio(test_session_sound_1b, s3, source, sound_lion).
next(test_session_sound_1b, s3, "true", s4).

state(test_session_sound_1b, s4, say).
text(test_session_sound_1b, s4, "Gaaf zeg.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 6					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'test_motion' topic		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_session_sound_2, s1, say).
text(test_session_sound_2, s1, "Als machtige krijgers brullen wij als een leeuw.").
next(test_session_sound_2, s1, "true", s2).

state(test_session_sound_2, s2, say).
audio(test_session_sound_2, s2, source, sound_lion).
next(test_session_sound_2, s2, "true", s3).

state(test_session_sound_2, s3, say).
text(test_session_sound_2, s3, "Gaaf hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 7					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'test_motion' topic		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_session_led_1a, s1, say).
text(test_session_led_1a, s1, "Laten we een lichtshow maken").
prepare_led_anim(test_session_led_1a, s1).
stateConfig(test_session_led_1a, s1, [	umVariable=test_led_show,
					option1=["all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500],
					option2=[["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["paars", "oranje", "rood"], 0]]).

state(test_session_led_1b, s1, say).
text(test_session_led_1b, s1, "Laten we eens gaan kijken wat je er van gemaakt hebt.").
next(test_session_led_1b, s1, "true", s2).

state(test_session_led_1b, s2, say).
play_led_anim(test_session_led_1b,  s2, test_led_show).
next(test_session_led_1b, s2, "true", s3).

state(test_session_led_1b, s3, say).
text(test_session_led_1b, s3, "Wow, dit is echt heel gaaf").
next(test_session_led_1b, s3, "true", s4).

state(test_session_led_1b, s4, say).
text(test_session_led_1b, s4, "Dat was het.").
stop_led_anim(test_session_led_1b, s4).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 8					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'test_motion' topic		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(test_session_led_2, s1, say).
text(test_session_led_2, s1, "Ik heb je lichtshow van de vorige keer onthouden").
next(test_session_led_2, s1, "true", s2).

state(test_session_led_2, s2, say).
play_led_anim(test_session_led_2,  s2, test_led_show).
next(test_session_led_2, s2, "true", s3).

state(test_session_led_2, s3, say).
text(test_session_led_2, s3, "Het blijft leuk om te zien.").
next(test_session_led_2, s3, "true", s4).

state(test_session_led_2, s4, say).
text(test_session_led_2, s4, "Dat was het.").
stop_led_anim(test_session_led_2, s4).