%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      TESTING MINIDIALOGS	           %%%
%%%  MiniDialogs for testing the various functionalities   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Chocolate - Testing yesno question                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_chocolate, s1, question).
moveConfig(test_chocolate, s1, [type=yesno, context='answer_yesno']).
text(test_chocolate, s1, "Hou je van chocola?").
next(test_chocolate, s1, 'answer_yes', s2y).
next(test_chocolate, s1, 'answer_no', s2n).
next(test_chocolate, s1, 'answer_dontknow', s2d).
next(test_chocolate, s1, 'fail', s2f).

move(test_chocolate, s2y, say).
text(test_chocolate, s2y, "Ik houd ook van chocola!").

move(test_chocolate, s2n, say).
text(test_chocolate, s2n, "Ik vind chocola ook vies!").

move(test_chocolate, s2d, say).
text(test_chocolate, s2d, "Ik vind het ook een lastige keuze").

move(test_chocolate, s2f, say).
text(test_chocolate, s2f, "Oke.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Color - Testing input question	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_color, s1, question).
moveConfig(test_color, s1, [type=input, context='answer_color', fast=yes, options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='rood']).
text(test_color, s1, "Wat is jouw lievelingskleur?").
next(test_color, s1, 'success', s2).
next(test_color, s1, 'fail', s2f).

move(test_color, s2, say).
text(test_color, s2, "Ik vind %test_color_s1% ook heel mooi!").

move(test_color, s2f, say).
text(test_color, s2f, "Mijn levelingskleur is %test_color_s1%.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Party - Testing branch question	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_party, s1, question).
moveConfig(test_party, s1, [type = input, context = "answer_koelkast_branch_1", options = ['dansen', 'zingen', 'muziek maken'], defaultAnswer='zingen']).
text(test_party, s1, "Dansen, zingen, of muziek maken?").
next(test_party, s1, "dansen", s2a).
next(test_party, s1, "zingen", s2b).
next(test_party, s1, "muziek maken", s2c).
next(test_party, s1, "fail", s2f).

move(test_party, s2a, say).
text(test_party, s2a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").
next(test_party, s2a, "true", s3).

move(test_party, s2b, say).
text(test_party, s2b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").
next(test_party, s2b, "true", s3).

move(test_party, s2c, say).
text(test_party, s2c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakten muziek de hele dag en de hele nacht, en altijd in het donker.").
next(test_party, s2c, "true", s3).

move(test_party, s2f, say).
text(test_party, s2f, "In de koelkast dansen, zongen, en maakten we muziek de hele dag en de hele nacht, en altijd in het donker.").
next(test_party, s2f, "true", s3).

move(test_party, s3, branchingPoint, test_party_s1).
next(test_party, s3, "dansen", s3a).
next(test_party, s3, "_others", s3b).
next(test_party, s3, "fail", s3f).

move(test_party, s3a, say).
text(test_party, s3a, "Ik hou heel erg van dansen.").
next(test_party, s3a, "true", s4).

move(test_party, s3b, say).
text(test_party, s3b, "Ik hou heel erg van zingen en muziek maken.").
next(test_party, s3b, "true", s4).

move(test_party, s3f, say).
text(test_party, s3f, "Ik hou heel erg van dansen, zingen, en muziek maken").
next(test_party, s3f, "true", s4).

move(test_party, s4, branchingPoint, test_party_s1).
next(test_party, s4, "success", s4a).
next(test_party, s4, "fail", s3f).

move(test_party, s4a, say).
text(test_party, s4a, "Dat ging goed!").

move(test_party, s4a, say).
text(test_party, s4a, "Fail is goed doorgekomen").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Color 2 - Testing quiz question	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_color2, s1, question).
moveConfig(test_color2, s1, [type=quiz, context='answer_color', options=['rood', 'grijs', 'blauw', 'wit'], correctAnswer=['grijs', 'wit']]).
text(test_color2, s1, "Kun je me vertellen welke kleur ik ben?").
next(test_color2, s1, 'correct', s2cor).
next(test_color2, s1, 'incorrect', s2incor).
next(test_color2, s1, 'fail', s2f).

move(test_color2, s2cor, say).
text(test_color2, s2cor, "Ja klopt! Ik ben grijs met wit.").

move(test_color2, s2incor, say).
text(test_color2, s2incor, "Helaas. Ik wou dat ik %test_color2_s1% was, maar ik ben grijs met wit.").

move(test_color2, s2f, say).
text(test_color2, s2f, "Zal ik het maar verklappen? Ik ben grijs met wit.").


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% beroep 2 - Testing fast=yes and umVariable             %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_beroep, s1, question).
moveConfig(test_beroep, s1, [type=input, context="professions", options=['Dokter', 'Politieagent', 'Influencer', 'Voetballer', 'Leraar', 'Kunstenaar'], fast=yes, umVariable=test_beroep]).
text(test_beroep, s1, "Wat wil jij later worden?").
next(test_beroep, s1, "success", s2success1).
next(test_beroep, s1, "fail", s2fail1).

move(test_beroep, s2success1, say).
text(test_beroep, s2success1, "%test_beroep%, facinerend!").

move(test_beroep, s2fail1, say).
text(test_beroep, s2fail1, "Dat ging mis.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Color 2 - Testing open question	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_open, s1, question).
moveConfig(test_open, s1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(test_open, s1, "Waarom is een zeeluiaard je lievelingsdier?").
next(test_open, s1, 'success', s2).
next(test_open, s1, 'fail', s2f).

move(test_open, s2, say).
text(test_open, s2, "Daar ben ik het helemaal mee eens.").

move(test_open, s2f, say).
text(test_open, s2f, "Leuk hoor.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test sound - Testing sound recording and playing	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_sound, s1, say).
text(test_sound, s1, "Brul als een leeuw in 3, 2, 1.").
next(test_sound, s1, "true", s2).

move(test_sound, s2, audioInput).
moveConfig(test_sound, s2, [recordTime=3000, umVariable=sound_lion]).
next(test_sound, s2, "true", s3).

move(test_sound, s3, say).
text(test_sound, s3, "We reden met onze jeep over de savannen en toen ineens hoorden we het.").
next(test_sound, s3, "true", s4).

move(test_sound, s4, say).
text(test_sound, s4, "Het was het gebrul van de leeuw").
next(test_sound, s4, "true", s5).

move(test_sound, s5, say).
audio(test_sound, s5, id, sound_lion).
next(test_sound, s5, "true", s6).

move(test_sound, s6, say).
text(test_sound, s6, "Gaaf zeg.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test playing sound file			           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_sound2, s1, say).
audio(test_sound2, s1, file, "resources/sounds/tiktok1.wav").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Animation - Testing anim onRobot option	           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_animation, s1, say).
text(test_animation, s1, "Ik doe nu een standaard animatie").
anim(test_animation, s1, onRobot, "animations/Stand/Gestures/Enthusiastic_4").
%animations/Stand/Question/NAO/Left_Neutral_QUE_01
%animations/Stand/Gestures/Enthusiastic_4

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% leds - Testing led colors			           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_leds, s1, say).
text(test_leds, s1, "Kijk, mijn ogen zijn nu groen").
leds(test_leds, s1, direct, ["FaceLeds"], ["groen"]).
next(test_leds, s1, "true", s2).

move(test_leds, s2, say).
text(test_leds, s2, "Kijk, mijn buik is nu rood").
leds(test_leds, s2, direct, ["ChestLeds"], ["rood"]).
next(test_leds, s2, "true", s3).

move(test_leds, s3, say).
text(test_leds, s3, "Kijk, mijn voeten zijn nu oranje").
leds(test_leds, s3, direct, ["FeetLeds"], ["oranje"]).
next(test_leds, s3, "true", s4).

move(test_leds, s4, say).
leds(test_leds, s4, reset).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% leds - Testing led animations		           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_leds_anim, s1, say).
text(test_leds_anim, s1, "Kijk, ik heb mijn zwaailicht aangezet").
leds(test_leds_anim, s1, direct, "all", "alternate", ["red", "blue"], 500).
moveConfig(test_leds_anim, s1, [waitTimer=5000]).
next(test_leds_anim, s1, "true", s2).

move(test_leds_anim, s2, say).
leds(test_leds_anim, s2, reset).
next(test_leds_anim, s2, "true", s3).

move(test_leds_anim, s3, say).
text(test_leds_anim, s3, "Leuk hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Posture - Testing go_to_posture option	           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_posture, s1, say).
text(test_posture, s1, "Ik ga nu zitten.").
go_to_posture(test_posture, s1, "Sit").
next(test_posture, s1, "true", s2).

move(test_posture, s2, say).
text(test_posture, s2, "Ik ga nu langzaam staan.").
go_to_posture(test_posture, s2, "Stand", 30).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Record and Play Motion 			  	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_motion, s1, say).
set_stiffness(test_motion, s1, ['RArm'], 0).
next(test_motion, s1, "true", s2a).

move(test_motion, s2a, say).
text(test_motion, s2a, "3, 2, 1.").
next(test_motion, s2a, "true", s2).

move(test_motion, s2, say).
record_motion(test_motion, s2, ['RArm'], 3000).
moveConfig(test_motion, s2, [umVariable=test_motion]).
next(test_motion, s2, "true", s3).

move(test_motion, s3, say).
text(test_motion, s3, "Dan ga ik de beweging na doen.").
next(test_motion, s3, "true", s4).

move(test_motion, s4, say).
anim(test_motion, s4, id, test_motion).
next(test_motion, s4, "true", s5).

move(test_motion, s5, say).
go_to_posture(test_motion, s5).
text(test_motion, s5, "Gaaf hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Play Motion File			  		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_motion_file, s1, say).
text(test_motion_file, s1, "Kijk, ik speel nu een bewegingsbestand af.").
next(test_motion_file, s1, "true", s2).

move(test_motion_file, s2, say).
anim(test_motion_file, s2, file, "resources/gestures/goodbye2.xml").
next(test_motion_file, s2, "true", s3).

move(test_motion_file, s3, say).
text(test_motion_file, s3, "Heel leuk.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% stop led					           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_stop_led, s1, say).
leds(test_stop_led, s1, reset).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% test tablet					           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_tablet, s1, say).
text(test_tablet, s1, "Hoi echt en alleen op tablet in always modus").
next(test_tablet, s1, "true", s4).

move(test_tablet, s2, say).
text(test_tablet, s2, "Hoi echt en een ander bericht op de tablet in always of explicit modus").
display(test_tablet, s2, "Een ander bericht").
next(test_tablet, s2, "true", s3).

move(test_tablet, s3, say).
text(test_tablet, s3, "En nu een plaatje").
image(intro, s1, "data:image/jpeg;base64,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").
next(test_tablet, s3, "true", s4).

move(test_tablet, s4, say).
text(test_tablet, s4, "Hoi echt en altijd op tablet").
display(test_tablet, s4, "Mij zie je altijd", always).
next(test_tablet, s4, "true", s5).

move(test_tablet, s5, question).
moveConfig(test_tablet, s5, [type=input, context='answer_color', fast=yes, options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'],
defaultAnswer='rood']).
display(test_tablet, s5, "2 Wat is jouw lievelingskleur?").
text(test_tablet, s5, "Wat is jouw lievelingskleur?").
next(test_tablet, s5, 'success', s6).
next(test_tablet, s5, 'fail', s6f).

move(test_tablet, s6, say).
text(test_tablet, s6, "Ik vind %test_tablet_s4% ook heel mooi!").

move(test_tablet, s6f, say).
text(test_tablet, s6f, "Mijn levelingskleur is %test_tablet_s4%.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 1					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(test_first_session, [type=narrative, thread=test, position=1]).
move(test_first_session, s1, say).
text(test_first_session,  s1, "Het lijkt mij leuk om over sport te praten, %first_name%. De sporten die ik zelf graag doe zijn dansen of voetballen met andere robots").
next(test_first_session, s1, "true", s2).

move(test_first_session, s2, question).
moveConfig(test_first_session, s2, [type=input, context='answer_sports', options=['voetbal', 'hockey', 'dansen', 'paard rijden'], umVariable=test_favo_sport, fast=yes]).
text(test_first_session, s2, "Wat is jouw lievelings sport?").
next(test_first_session, s2, 'success', s3).
next(test_first_session, s2, 'fail', s5f).

move(test_first_session, s3, say).
text(test_first_session,  s3, "Wat gaaf zeg!").
next(test_first_session, s3, "true", s4).

move(test_first_session, s4, question).
moveConfig(test_first_session, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(test_first_session, s4, "Wat vind je zo leuk aan %test_favo_sport%?").
next(test_first_session, s4, 'success', s5).
next(test_first_session, s4, 'fail', s5f).

move(test_first_session, s5, say).
text(test_first_session,  s5, "%test_favo_sport% klinkt inderdaad erg leuk! ").

move(test_first_session, s5f, say).
text(test_first_session,  s5f, "Laten we verder gaan naar de volgende vraag."). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 2					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(test_second_session, [type=narrative, thread=test, position=2]).
dependencies(test_second_session, [[[test_first_session, user_model, 0], [umVariable=test_favo_sport, filter=green, values=["_any"]]]]).
move(test_second_session, s1, say).
text(test_second_session, s1, "Ik weet nog dat jij van %test_favo_sport% houdt.").
next(test_second_session, s1, "true", s2).

move(test_second_session, s2, branchingPoint, test_favo_sport).
next(test_second_session, s2, "floorball", s3floorball).
next(test_second_session, s2, "voetbal", s3voetbal).
next(test_second_session, s2, "hockey", s3hockey).
next(test_second_session, s2, "_others", s3others).
next(test_second_session, s2, "fail", s3fail).

move(test_second_session, s3floorball, say).
text(test_second_session, s3floorball, "Lekker door de zaal rennen.").

move(test_second_session, s3voetbal, say).
text(test_second_session, s3voetbal, "Lekker tegen een bal aan schoppen.").

move(test_second_session, s3hockey, say).
text(test_second_session, s3hockey, "Lekker tegen de bal aan slaan.").

move(test_second_session, s3others, say).
text(test_second_session, s3others, "Lijkt mij ook leuk om eens te doen.").

move(test_second_session, s3fail, say).
text(test_second_session, s3fail, "Dat ging een beetje mis geloof ik.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 3 Co-create a motion			   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(test_motion_co_a, [type=chitchat, theme=test, topic=motion]).
move(test_motion_co_a, s1, say).
text(test_motion_co_a, s1, "Ik kan wel een beweging gebruiken van het toveren met een tover staf.").
next(test_motion_co_a, s1, "true", s2).

move(test_motion_co_a, s2, say).
prepare_motion_anim(test_motion_co_a, s2).
insert_minidialog(test_motion_co_a, s2, test_motion_co_b).
moveConfig(test_motion_co_a, s2, [umVariable=motion_magic_wand,
				 option1='resources/gestures/magicwand1.json',
				 option2='resources/gestures/magicwand2.json']).

minidialog(test_motion_co_b, [type=chitchat, theme=test, topic=motion]).
move(test_motion_co_b, s1, say).
text(test_motion_co_b, s1, "Laten we eens kijken wat je hebt gemaakt").
next(test_motion_co_b, s1, "true", s2).

move(test_motion_co_b, s2, say).
anim(test_motion_co_b, s2, id, motion_magic_wand).
next(test_motion_co_b, s2, "true", s3).

move(test_motion_co_b, s3, say).
text(test_motion_co_b, s3, "Gaaf zeg!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 4					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'test_motion' minidialog		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_motion_2, s1, say).
text(test_motion_2, s1, "Ik weet nog die beweging").
next(test_motion_2, s1, "true", s2).

move(test_motion_2, s2, say).
anim(test_motion_2, s2, id, motion_magic_wand).
next(test_motion_2, s2, "true", s3).

move(test_motion_2, s3, say).
go_to_posture(test_motion_2, s3).
text(test_motion_2, s3, "Gaaf hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 5					   %%%
%%% Co-create a sound effecr			 	   %%%
%%% 				           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_session_sound_1a, s1, say).
text(test_session_sound_1a, s1, "Ik kan wel een geluidseffect van een brullende leeuw gebruiken.").
next(test_session_sound_1a, s1, "true", s2).

move(test_session_sound_1a, s2, say).
prepare_sound_anim(test_session_sound_1a, s2).
moveConfig(test_session_sound_1a, s2, [umVariable=test_sound_lion,
				 option1='resources/sounds/lion1.wav',
				 option2='resources/sounds/lion2.wav',
				 recordTime=4000]).

move(test_session_sound_1b, s1, say).
text(test_session_sound_1b, s1, "We reden met onze jeep over de savannen en toen ineens hoorden we het.").
next(test_session_sound_1b, s1, "true", s2).

move(test_session_sound_1b, s2, say).
text(test_session_sound_1b, s2, "Het was het gebrul van de leeuw").
next(test_session_sound_1b, s2, "true", s3).

move(test_session_sound_1b, s3, say).
audio(test_session_sound_1b, s3, id, test_sound_lion).
next(test_session_sound_1b, s3, "true", s4).

move(test_session_sound_1b, s4, say).
text(test_session_sound_1b, s4, "Gaaf zeg.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 6					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'test_motion' minidialog		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_session_sound_2, s1, say).
text(test_session_sound_2, s1, "Als machtige krijgers brullen wij als een leeuw.").
next(test_session_sound_2, s1, "true", s2).

move(test_session_sound_2, s2, say).
audio(test_session_sound_2, s2, id, test_sound_lion).
next(test_session_sound_2, s2, "true", s3).

move(test_session_sound_2, s3, say).
text(test_session_sound_2, s3, "Gaaf hè").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 7					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'test_motion' minidialog		           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_session_led_1a, s1, say).
text(test_session_led_1a, s1, "Laten we een lichtshow maken").
prepare_led_anim(test_session_led_1a, s1).
moveConfig(test_session_led_1a, s1, [	umVariable=test_led_show,
					option1=["all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500],
					option2=[["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["paars", "oranje", "rood"], 0]]).

move(test_session_led_1b, s1, say).
text(test_session_led_1b, s1, "Laten we eens gaan kijken wat je er van gemaakt hebt.").
next(test_session_led_1b, s1, "true", s2).

move(test_session_led_1b, s2, say).
leds(test_session_led_1b,  s2, id, test_led_show).
next(test_session_led_1b, s2, "true", s3).

move(test_session_led_1b, s3, say).
text(test_session_led_1b, s3, "Wow, dit is echt heel gaaf").
next(test_session_led_1b, s3, "true", s4).

move(test_session_led_1b, s4, say).
text(test_session_led_1b, s4, "Dat was het.").
leds(test_session_led_1b, s4, reset).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 8					   %%%
%%% Note: a previous session should contain the 	   %%%
%%% 'test_motion' minidialog		           	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_session_led_2, s1, say).
text(test_session_led_2, s1, "Ik heb je lichtshow van de vorige keer onthouden").
next(test_session_led_2, s1, "true", s2).

move(test_session_led_2, s2, say).
leds(test_session_led_2,  s2, id, test_led_show).
next(test_session_led_2, s2, "true", s3).

move(test_session_led_2, s3, say).
text(test_session_led_2, s3, "Het blijft leuk om te zien.").
next(test_session_led_2, s3, "true", s4).

move(test_session_led_2, s4, say).
text(test_session_led_2, s4, "Dat was het.").
leds(test_session_led_2, s4, reset).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test getal						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_getal, s1, question).
moveConfig(test_getal, s1, [type=input, context="integer", options=['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'], umVariable=test_getal]).
text(test_getal, s1, "Wat is jouw geluksgetal?").
next(test_getal, s1, 0, s2_0).
next(test_getal, s1, 1, s2_1).
next(test_getal, s1, "_others", s2_others).
next(test_getal, s1, "fail", s2_fail).

move(test_getal, s2_0, say).
text(test_getal, s2_0, "Oke, 0").

move(test_getal, s2_1, say).
text(test_getal, s2_1, "Oke, 1").

move(test_getal, s2_others, say).
text(test_getal, s2_others, "Oke, %test_getal%").

move(test_getal, s2_fail, say).
text(test_getal, s2_fail, "Dat ging mis.").

%%% Show feet %%%
move(test_feet, s1, say).
text(test_feet, s1, "Kijk, mijn voeten zijn nu groen en rood").
leds(test_feet, s1, direct, ["LeftFootLeds", "RightFootLeds"], ["red", "green"]).
moveConfig(test_feet, s1, [next='RightBumperPressed']).
next(test_feet, s1, "true", s2).

move(test_feet, s2, say).
text(test_feet, s2, "Dat was het.").
leds(test_feet, s2, reset).
%% 

