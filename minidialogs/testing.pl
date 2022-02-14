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
moveConfig(test_color, s1, [type=input, context='answer_color', fast=yes, options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'],
defaultAnswer='rood']).
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
start_interaction_probe(test_party, s2a).
text(test_party, s2a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").
next(test_party, s2a, "true", s3).

move(test_party, s2b, say).
start_interaction_probe(test_party, s2b).
text(test_party, s2b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").
next(test_party, s2b, "true", s3).

move(test_party, s2c, say).
start_interaction_probe(test_party, s2c).
text(test_party, s2c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakten muziek de hele dag en de hele nacht, en altijd in het donker.").
next(test_party, s2c, "true", s3).

move(test_party, s2f, say).
start_interaction_probe(test_party, s2f).
text(test_party, s2f, "In de koelkast dansen, zongen, en maakten we muziek de hele dag en de hele nacht, en altijd in het donker.").
next(test_party, s2f, "true", s3).

move(test_party, s3, branchingPoint, test_party_s1).
stop_interaction_probe(test_party, s3).
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
%%% Party2 - Testing branching point	                   %%%
%%% Note: needs to be preceded by 'test_pary' minidialog        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_party2, s1, say).
text(test_party2, s1, "Ik ben een nieuw minidialog").
next(test_party2, s1, "true", s2).

move(test_party2, s2, branchingPoint, test_party_s1).
next(test_party2, s2, "dansen", s2a).
next(test_party2, s2, "zingen", s2b).
next(test_party2, s2, "muziek maken", s2c).
next(test_party2, s2, "fail", s2f).

move(test_party2, s2a, say).
text(test_party2, s2a, "Er is gekozen voor dansen.").

move(test_party2, s2b, say).
text(test_party2, s2b, "Er is gekozen voor zingen.").

move(test_party2, s2c, say).
text(test_party2, s2c, "Er is gekozen voor muziek maken.").

move(test_party2, s2f, say).
text(test_party2, s2f, "Je hebt geen geldig antwoord gegeven.").

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
%%% beroep 2 - Testing quiz question	                   %%%
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
%%% Note: web server needs to be on.		           %%%
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
%%% Test sound 2 				           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(test_sound2, s1, say).
audio(test_sound2, s1, file, "resources/sounds/tiktok1.wav").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Animation - Testing anim option		           %%%
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
leds(test_leds, s4, direct, ["FaceLeds", "ChestLeds", "FeetLeds"], ["wit", "wit", "wit"]).

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
text(test_tablet, s1, "Hoi echt en alleen op tablet in alwasy modus").
next(test_tablet, s1, "true", s4).

move(test_tablet, s2, say).
text(test_tablet, s2, "Hoi echt en een ander bericht op de tablet in always of explicit modus").
display(test_tablet, s2, "Een ander bericht").
next(test_tablet, s2, "true", s3).

move(test_tablet, s3, say).
text(test_tablet, s3, "Hoi echt en altijd op tablet").
display(test_tablet, s3, "Mij zie je altijd", always).
next(test_tablet, s3, "true", s4).

move(test_tablet, s4, question).
moveConfig(test_tablet, s4, [type=input, context='answer_color', fast=yes, options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'],
defaultAnswer='rood']).
display(test_tablet, s4, "2 Wat is jouw lievelingskleur?").
text(test_tablet, s4, "Wat is jouw lievelingskleur?").
next(test_tablet, s4, 'success', s5).
next(test_tablet, s4, 'fail', s5f).

move(test_tablet, s5, say).
text(test_tablet, s5, "Ik vind %test_tablet_s4% ook heel mooi!").

move(test_tablet, s5f, say).
text(test_tablet, s5f, "Mijn levelingskleur is %test_tablet_s4%.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test session 1					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%% Test session 3					   %%%
%%% Co-create a motion					   %%%
%%% 				           		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(test_motion_co_a, s1, say).
text(test_motion_co_a, s1, "Ik kan wel een beweging gebruiken van het toveren met een tover staf.").
next(test_motion_co_a, s1, "true", s2).

move(test_motion_co_a, s2, say).
prepare_motion_anim(test_motion_co_a, s2).
moveConfig(test_motion_co_a, s2, [umVariable=motion_magic_wand,
				 option1='resources/gestures/magicwand1.json',
				 option2='resources/gestures/magicwand2.json']).

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

