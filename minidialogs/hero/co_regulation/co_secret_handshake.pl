%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           Topics for a co-creation conversation	   %%%
%%%			Secret Handshake		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_handshake, s1, say).
text(co_handshake,  s1, "Zo, we zijn bijna bij het einde gekomen.").
next(co_handshake,  s1, "true",  s2).

move(co_handshake, s2, say).
text(co_handshake,  s2, "Ik vond het erg leuk.").
next(co_handshake,  s2, "true",  s3).

move(co_handshake, s3, question).
moveConfig(co_handshake, s3, [type=yesno, context='answer_yesno']).
text(co_handshake, s3, "Vond jij het ook leuk?").
next(co_handshake, s3, 'answer_yes', s4y).
next(co_handshake, s3, 'answer_no', s4n).
next(co_handshake, s3, 'answer_dontknow', s4n).
next(co_handshake, s3, 'fail', s5).

move(co_handshake, s4y, question).
moveConfig(co_handshake, s4y, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_handshake, s4y, "Wat vond je het leukste?").
next(co_handshake, s4y, 'success', s5y).
next(co_handshake, s4y, 'fail', s5y).

move(co_handshake, s4n, question).
moveConfig(co_handshake, s4n, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_handshake, s4n, "Wat vond je niet zo leuk?").
next(co_handshake, s4n, 'success', s5n).
next(co_handshake, s4n, 'fail', s5n).

move(co_handshake, s5y, say).
text(co_handshake,  s5y, "Dat was ook leuk!").
next(co_handshake,  s5y, "true",  s6).

move(co_handshake, s5n, say).
text(co_handshake,  s5n, "Wat vervelend.").
next(co_handshake,  s5n, "true",  s6).

move(co_handshake, s6, say).
text(co_handshake,  s6, "Voor we gaan zou ik graag nog een afscheids show willen maken.").
next(co_handshake,  s6, "true",  s7).

move(co_handshake, s7, say).
text(co_handshake,  s7, "Als je het leuk vind kun je hier een beweging, geluid, en een licht animatie aan toevoegen. Ik zal dit 1 voor 1 vragen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Gesture				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_handshake_gesture, s1, question).
moveConfig(co_handshake_gesture, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_gesture, s1, "Wil je een beweging toevoegen aan de af scheids show?").
next(co_handshake_gesture, s1, 'answer_yes', s2y).
next(co_handshake_gesture, s1, 'answer_no', s2n).
next(co_handshake_gesture, s1, 'answer_dontknow', s2d).
next(co_handshake_gesture, s1, 'fail', s2d).

move(co_handshake_gesture, s2y, say).
text(co_handshake_gesture, s2y, "Leuk!").
next(co_handshake_gesture,  s2y, "true",  s3).

move(co_handshake_gesture, s2n, say).
text(co_handshake_gesture, s2n, "Helemaal prima.").

move(co_handshake_gesture, s2d, say).
text(co_handshake_gesture, s2d, "Misschien een volgende keer dan.").

move(co_handshake_gesture, s6, say).
prepare_motion_anim(co_handshake_gesture, s6).
moveConfig(co_handshake_gesture, s6, [umVariable=co_goodbye_motion,
				 option1='resources/gestures/goodbye1.xml',
				 option2='resources/gestures/goodbye2.xml']).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Gesture Baseline			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_handshake_gesture_baseline, s1, question).
moveConfig(co_handshake_gesture_baseline, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_gesture_baseline, s1, "Wil je een beweging toevoegen aan de af scheids show?").
next(co_handshake_gesture_baseline, s1, 'answer_yes', s2y).
next(co_handshake_gesture_baseline, s1, 'answer_no', s2n).
next(co_handshake_gesture_baseline, s1, 'answer_dontknow', s2d).
next(co_handshake_gesture_baseline, s1, 'fail', s2d).

move(co_handshake_gesture_baseline, s2y, say).
text(co_handshake_gesture_baseline, s2y, "Leuk!").
next(co_handshake_gesture_baseline,  s2y, "true",  s6downloaden).

move(co_handshake_gesture_baseline, s2n, say).
text(co_handshake_gesture_baseline, s2n, "Helemaal prima.").

move(co_handshake_gesture_baseline, s2d, say).
text(co_handshake_gesture_baseline, s2d, "Misschien een volgende keer dan.").

move(co_handshake_gesture_baseline, s6downloaden, say).
text(co_handshake_gesture_baseline,  s6downloaden, "Ik ben nu twee gebaren aan het downloaden.").
leds(co_handshake_gesture_baseline, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
moveConfig(co_handshake_gesture_baseline, s6downloaden, [waitTimer=1500]).
next(co_handshake_gesture_baseline,  s6downloaden, "true",  s7downloaden).

move(co_handshake_gesture_baseline, s7downloaden, say).
text(co_handshake_gesture_baseline,  s7downloaden, "Klaar. Dit is optie 1").
leds(co_handshake_gesture_baseline, s7downloaden, reset).
next(co_handshake_gesture_baseline,  s7downloaden, "true",  s8downloaden).

move(co_handshake_gesture_baseline, s8downloaden, say).
anim(co_handshake_gesture_baseline, s8downloaden, file, "resources/gestures/goodbye1.xml").
next(co_handshake_gesture_baseline, s8downloaden, "true", s9downloaden).

move(co_handshake_gesture_baseline, s9downloaden, say).
text(co_handshake_gesture_baseline,  s9downloaden, "En dit is optie 2").
next(co_handshake_gesture_baseline,  s9downloaden, "true",  s10downloaden).

move(co_handshake_gesture_baseline, s10downloaden, say).
anim(co_handshake_gesture_baseline, s10downloaden, file, "resources/gestures/goodbye2.xml").
next(co_handshake_gesture_baseline, s10downloaden, "true", s13kindkiest).

move(co_handshake_gesture_baseline, s13kindkiest, question).
moveConfig(co_handshake_gesture_baseline, s13kindkiest, [type=input, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='eerste']).
text(co_handshake_gesture_baseline, s13kindkiest, "Wil je de eerste of de tweede beweging?").
next(co_handshake_gesture_baseline, s13kindkiest, "success", s14kindkiest).
next(co_handshake_gesture_baseline, s13kindkiest, "fail", s13kindkiestf).

move(co_handshake_gesture_baseline, s13kindkiestf, say).
text(co_handshake_gesture_baseline,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_handshake_gesture_baseline, s13kindkiestf, "true", s15eerste).

move(co_handshake_gesture_baseline, s14kindkiest, say).
text(co_handshake_gesture_baseline,  s14kindkiest, "Goede keuze.").
next(co_handshake_gesture_baseline,  s14kindkiest, "true", s15kindkiest).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sound				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_handshake_sound, s1, question).
moveConfig(co_handshake_sound, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_sound, s1, "Wil je een geluid toevoegen aan de af scheids show?").
next(co_handshake_sound, s1, 'answer_yes', s2y).
next(co_handshake_sound, s1, 'answer_no', s2n).
next(co_handshake_sound, s1, 'answer_dontknow', s2d).
next(co_handshake_sound, s1, 'fail', s2d).

move(co_handshake_sound, s2y, say).
text(co_handshake_sound, s2y, "Leuk! Als je een leuk idee hebt kun je het geluid zelf maken of ik kan wat downloaden.").
next(co_handshake_sound,  s2y, "true",  s3).

move(co_handshake_sound, s2n, say).
text(co_handshake_sound, s2n, "Helemaal prima.").

move(co_handshake_sound, s2d, say).
text(co_handshake_sound, s2d, "Lastig, misschien een volgende keer.").

move(co_handshake_sound, s3, say).
prepare_motion_anim(co_handshake_sound, s3).
moveConfig(co_handshake_sound, s3, [umVariable=co_goodbye_sound,
				 option1='resources/sounds/applaus.wav',
				 option2='resources/sounds/outro.wav']).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sound Baseline			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_handshake_sound_baseline, s1, question).
moveConfig(co_handshake_sound_baseline, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_sound_baseline, s1, "Wil je een geluid toevoegen aan de af scheids show?").
next(co_handshake_sound_baseline, s1, 'answer_yes', s2y).
next(co_handshake_sound_baseline, s1, 'answer_no', s2n).
next(co_handshake_sound_baseline, s1, 'answer_dontknow', s2d).
next(co_handshake_sound_baseline, s1, 'fail', s2d).

move(co_handshake_sound_baseline, s2y, say).
text(co_handshake_sound_baseline, s2y, "Leuk!").
next(co_handshake_sound_baseline,  s2y, "true",  s6downloaden).

move(co_handshake_sound_baseline, s2n, say).
text(co_handshake_sound_baseline, s2n, "Helemaal prima.").

move(co_handshake_sound_baseline, s2d, say).
text(co_handshake_sound_baseline, s2d, "Lastig, misschien een volgende keer.").

move(co_handshake_sound_baseline, s6downloaden, say).
text(co_handshake_sound_baseline,  s6downloaden, "Ik ben nu twee geluiden aan het downloaden.").
leds(co_handshake_sound_baseline, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
moveConfig(co_handshake_sound_baseline, s6downloaden, [waitTimer=1500]).
next(co_handshake_sound_baseline,  s6downloaden, "true",  s7downloaden).

move(co_handshake_sound_baseline, s7downloaden, say).
leds(co_handshake_sound_baseline, s7downloaden, reset).
text(co_handshake_sound_baseline,  s7downloaden, "Klaar. Dit is de eerste").
next(co_handshake_sound_baseline,  s7downloaden, "true", s8downloaden).

move(co_handshake_sound_baseline, s8downloaden, say).
audio(co_handshake_sound_baseline, s8downloaden, file, "resources/sounds/applaus.wav").
next(co_handshake_sound_baseline,  s8downloaden, "true", s9downloaden).

move(co_handshake_sound_baseline, s9downloaden, say).
text(co_handshake_sound_baseline,  s9downloaden, "En dit is de tweede").
next(co_handshake_sound_baseline,  s9downloaden, "true", s10downloaden).

move(co_handshake_sound_baseline, s10downloaden, say).
audio(co_handshake_sound_baseline, s10downloaden, file, "resources/sounds/outro.wav").
next(co_handshake_sound_baseline,  s10downloaden, "true", s13kindkiest).

move(co_handshake_sound_baseline, s13kindkiest, question).
moveConfig(co_handshake_sound_baseline, s13kindkiest, [type=input, context="involvement_which_option", options=['eerste', 'tweede'], defaultAnswer='tweede']).
text(co_handshake_sound_baseline, s13kindkiest, "Welke vind je leuker, het eerste of het tweede geluid?").
next(co_handshake_sound_baseline, s13kindkiest, "success", s14kindkiest).
next(co_handshake_sound_baseline, s13kindkiest, "fail", s13kindkiestf).

move(co_handshake_sound_baseline, s13kindkiestf, say).
text(co_handshake_sound_baseline,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_handshake_sound_baseline,  s13kindkiestf, "true",  s15tweede).

move(co_handshake_sound_baseline, s14kindkiest, say).
text(co_handshake_sound_baseline,  s14kindkiest, "Goede keuze.").
next(co_handshake_sound_baseline,  s14kindkiest, "true",  s15kindkiest).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Light Animation			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_handshake_led, s1, question).
moveConfig(co_handshake_led, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_led, s1, "Wil je een licht animatie toevoegen aan de af scheids show?").
next(co_handshake_led, s1, 'answer_yes', s2y).
next(co_handshake_led, s1, 'answer_no', s2n).
next(co_handshake_led, s1, 'answer_dontknow', s2d).
next(co_handshake_led, s1, 'fail', s2d).

move(co_handshake_led, s2y, say).
text(co_handshake_led, s2y, "Leuk!").
next(co_handshake_led,  s2y, "true",  s3).

move(co_handshake_led, s2n, say).
text(co_handshake_led, s2n, "Helemaal prima.").

move(co_handshake_led, s2d, say).
text(co_handshake_led, s2d, "Lastig, misschien een volgende keer.").

move(co_handshake_led, s3, say).
prepare_motion_anim(co_handshake_led, s3).
moveConfig(co_handshake_led, s3, [umVariable=co_goodbye_led,
					option1=["all", "blink", ["rood", "wit", "blauw"], 500],
					option2=["all", "alternate", ["geel", "paars"], 500]]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Light Animation Baseline		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_handshake_led_baseline, s1, question).
moveConfig(co_handshake_led_baseline, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_led_baseline, s1, "Wil je een licht animatie toevoegen aan de af scheids show?").
next(co_handshake_led_baseline, s1, 'answer_yes', s2y).
next(co_handshake_led_baseline, s1, 'answer_no', s2n).
next(co_handshake_led_baseline, s1, 'answer_dontknow', s2d).
next(co_handshake_led_baseline, s1, 'fail', s2d).

move(co_handshake_led_baseline, s2y, say).
text(co_handshake_led_baseline, s2y, "Leuk!").
next(co_handshake_led_baseline,  s2y, "true",  s6downloaden).

move(co_handshake_led_baseline, s2n, say).
text(co_handshake_led_baseline, s2n, "Helemaal prima.").

move(co_handshake_led_baseline, s2d, say).
text(co_handshake_led_baseline, s2d, "Lastig, misschien een volgende keer.").

move(co_handshake_led_baseline, s6downloaden, say).
text(co_handshake_led_baseline,  s6downloaden, "Ik ben nu twee licht animaties aan het downloaden.").
leds(co_handshake_led_baseline, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
moveConfig(co_handshake_led_baseline, s6downloaden, [waitTimer=1500]).
next(co_handshake_led_baseline,  s6downloaden, "true",  s7downloaden).

move(co_handshake_led_baseline, s7downloaden, say).
text(co_handshake_led_baseline,  s7downloaden, "Klaar. Dit is optie 1").
leds(co_handshake_led_baseline, s7downloaden, reset).
next(co_handshake_led_baseline,  s7downloaden, "true",  s8downloaden).

move(co_handshake_led_baseline, s8downloaden, say).
leds(co_handshake_led_baseline, s8downloaden, direct, "all", "blink", ["rood", "wit", "blauw"], 500).
moveConfig(co_handshake_led_baseline, s8downloaden, [waitTimer=3000]).
next(co_handshake_led_baseline, s8downloaden, "true", s9downloaden).

move(co_handshake_led_baseline, s9downloaden, say).
text(co_handshake_led_baseline,  s9downloaden, "En dit is optie 2").
leds(co_handshake_led_baseline, s9downloaden, reset).
next(co_handshake_led_baseline,  s9downloaden, "true",  s10downloaden).

move(co_handshake_led_baseline, s10downloaden, say).
leds(co_handshake_led_baseline, s10downloaden, direct, "all", "alternate", ["geel", "paars"], 500).
moveConfig(co_handshake_led_baseline, s10downloaden, [waitTimer=3000]).
next(co_handshake_led_baseline, s10downloaden, "true", s13kindkiest).

move(co_handshake_led_baseline, s13kindkiest, question).
moveConfig(co_handshake_led_baseline, s13kindkiest, [type=input, context="involvement_which_option", options=['eerste', 'tweede'], defaultAnswer='tweede']).
text(co_handshake_led_baseline, s13kindkiest, "Wil je de eerste of de tweede licht show?").
leds(co_handshake_led_baseline, s13kindkiest, reset).
next(co_handshake_led_baseline, s13kindkiest, "success", s14kindkiest).
next(co_handshake_led_baseline, s13kindkiest, "fail", s13kindkiestf).

move(co_handshake_led_baseline, s13kindkiestf, say).
text(co_handshake_led_baseline,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_handshake_led_baseline,  s13kindkiestf, "true",  s15tweede).

move(co_handshake_led_baseline, s14kindkiest, say).
text(co_handshake_led_baseline,  s14kindkiest, "Goede keuze.").
next(co_handshake_led_baseline,  s14kindkiest, "true",  s15kindkiest).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ceremonie				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_handshake_ceremonie, s1, say).
text(co_handshake_ceremonie,  s1, "Het is tijd om te gaan afronden.").
next(co_handshake_ceremonie,  s1, "true",  s2).

move(co_handshake_ceremonie, s2, say).
text(co_handshake_ceremonie,  s2, "Ik heb er veel van geleerd.").
next(co_handshake_ceremonie,  s2, "true",  s3).

move(co_handshake_ceremonie, s3, say).
text(co_handshake_ceremonie,  s3, "Bedankt voor al je hulp!").
next(co_handshake_ceremonie,  s3, "true",  s4).

move(co_handshake_ceremonie, s4, say).
text(co_handshake_ceremonie,  s4, "En dan nu de af scheids show.").
next(co_handshake_ceremonie,  s4, "true",  s5).

move(co_handshake_ceremonie, s5, say).
text(co_handshake_ceremonie,  s5, "Doei %first_name%, bedankt!").
next(co_handshake_ceremonie,  s5, "true",  s6).

move(co_handshake_ceremonie, s6, say).
anim(co_handshake_ceremonie, s6, id, co_goodbye_motion).
audio(co_handshake_ceremonie, s6, id, co_goodbye_sound).
leds(co_handshake_ceremonie, s6, id, co_goodbye_led).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ceremonie Baseline			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_handshake_ceremonie_baseline, s1, say).
text(co_handshake_ceremonie_baseline,  s1, "Het is tijd om te gaan afronden.").
next(co_handshake_ceremonie_baseline,  s1, "true",  s2).

move(co_handshake_ceremonie_baseline, s2, say).
text(co_handshake_ceremonie_baseline,  s2, "Ik heb er veel van geleerd.").
next(co_handshake_ceremonie_baseline,  s2, "true",  s3).

move(co_handshake_ceremonie_baseline, s3, say).
text(co_handshake_ceremonie_baseline,  s3, "Bedankt voor al je hulp!").
next(co_handshake_ceremonie_baseline,  s3, "true",  s4).

move(co_handshake_ceremonie_baseline, s4, say).
text(co_handshake_ceremonie_baseline,  s4, "En dan nu de af scheids show.").
next(co_handshake_ceremonie_baseline,  s4, "true",  s5).

move(co_handshake_ceremonie_baseline, s5, say).
text(co_handshake_ceremonie_baseline,  s5, "Doei %first_name%, bedankt!").
next(co_handshake_ceremonie_baseline,  s5, "true",  s6).

% TODO: insert baseline cermonie output
% Suggestion: make co-creation pipeline available for a fixed route
