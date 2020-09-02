%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           Topics for a co-creation conversation	   %%%
%%%			  TUTORIAL			   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introduction    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_intro, s1, say).
text(co_intro,  s1, "Hallo %first_name%, ik ben Hero en ik ben een sociale robot.").
next(co_intro,  s1, "true",  s2).

state(co_intro, s2, say).
text(co_intro,  s2, "Ik ben aan het oefenen om kinderen in het ziekenhuis te helpen.").
next(co_intro,  s2, "true",  s3).

state(co_intro, s3, say).
text(co_intro,  s3, "Wat fijn dat je mij daarmee wilt helpen. \pau=300\ ").
next(co_intro,  s3, "true",  s4).

state(co_intro, s4, say).
text(co_intro,  s4, "Ik hou echt van kletsen en heb vele verhalen om te vertellen.").
next(co_intro,  s4, "true",  s5).

state(co_intro, s5, say).
text(co_intro,  s5, "Ik vind het altijd extra leuk om daar geluidseffecten aan toe te voegen.").
next(co_intro,  s5, "true",  s6).

state(co_intro, s6, say).
text(co_intro,  s6, "Ik kan er ook speciale bewegingen en licht animaties bij maken.").
next(co_intro,  s6, "true",  s7).

state(co_intro, s7, say).
text(co_intro,  s7, "Kijk maar eens naar hoe ik doe als ik in een race auto zit.").
next(co_intro,  s7, "true",  s8).

state(co_intro, s8, say).
audio(co_intro, s8, server, 'resources/sounds/racecar.wav').
play_motion_file(co_intro, s8, "resources/gestures/racecar.xml").
start_led_anim(co_intro, s8, "all", "alternate", ["oranje", "paars"], 500).
next(co_intro,  s8, "true",  s9).

state(co_intro, s9, say).
text(co_intro,  s9, "Gaaf hè?").
stop_led_anim(co_intro, s9).
next(co_intro,  s9, "true",  s10).

state(co_intro, s10, say).
text(co_intro,  s10, "Alleen heb ik nog niet overal de juiste geluidseffecten, bewegingen, en licht animaties voor.").
next(co_intro,  s10, "true",  s11).

state(co_intro, s11, say).
text(co_intro,  s11, "Daar kun jij mij bij helpen als je wilt.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - speech       %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_speech, s1, say).
text(co_tutorial_speech,  s1, "Mike en ik, zullen je eerst uitleggen hoe je dat kunt doen").
next(co_tutorial_speech, s1, "true", s2).

state(co_tutorial_speech, s2, say).
text(co_tutorial_speech,  s2, "Laten we beginnen bij het beantwoorden van vragen.").
next(co_tutorial_speech, s2, "true", s3).

state(co_tutorial_speech, s3, say).
text(co_tutorial_speech, s3, "Kun jij dit uitleggen Mike?").
stateConfig(co_tutorial_speech, s3, [next='FrontTactilTouched', repeat='MiddleTactilTouched']).
next(co_tutorial_speech, s3, "true", s4).

state(co_tutorial_speech, s4, say).
text(co_tutorial_speech,  s4, "Laten we oefenen. Hier komt de eerste vraag.").
next(co_tutorial_speech,  s4, "true",  s5).

state(co_tutorial_speech, s5, question).
stateConfig(co_tutorial_speech, s5, [type=quiz, context='answer_color', correctAnswer=["blauw"], inputModality=[speech=3], additionalAttempt=true]).
leds(co_tutorial_speech, s5, ["FaceLeds"], ["blauw"]).
text(co_tutorial_speech, s5, "Welke kleur hebben mijn ogen nu?").
next(co_tutorial_speech, s5, 'correct', s5cor).
next(co_tutorial_speech, s5, 'incorrect', s5incor).
next(co_tutorial_speech, s5, 'fail', s5f).

state(co_tutorial_speech, s5cor, say).
text(co_tutorial_speech,  s5cor, "Ze zijn inderdaad blauw. Goed gedaan!").
next(co_tutorial_speech,  s5cor, "true",  s6).

state(co_tutorial_speech, s5incor, say).
text(co_tutorial_speech,  s5incor, "Die kleur kunnen ze inderdaad worden, maar deze keer waren ze echt blauw.").
next(co_tutorial_speech,  s5incor, "true",  s6).

state(co_tutorial_speech, s5f, say).
text(co_tutorial_speech,  s5f, "Dankjewel! Denk er aan om luid, en duidelijk, antwoord te geven.").
next(co_tutorial_speech,  s5f, "true",  s6).

state(co_tutorial_speech, s6, say).
leds(co_tutorial_speech, s6, ["FaceLeds"], ["wit"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - touch					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_touch, s1, say).
text(co_tutorial_touch,  s1, "Soms heb ik een beetje moeite om mensen te verstaan.").
next(co_tutorial_touch,  s1, "true",  s2).

state(co_tutorial_touch, s2, say).
text(co_tutorial_touch,  s2, "Dan kun je antwoord geven door op mijn grijze tenen te drukken.").
next(co_tutorial_touch,  s2, "true",  s3).

state(co_tutorial_touch, s3, say).
text(co_tutorial_touch,  s3, "Dat zijn namelijk knopjes.").
next(co_tutorial_touch,  s3, "true",  s4).

state(co_tutorial_touch, s4, say).
text(co_tutorial_touch,  s4, "Het lichtje boven de ja knop is groen en het lichtje boven de nee knop is rood. \pau=400\ ").
leds(co_tutorial_touch,  s4, ['LeftFootLeds', 'RightFootLeds'], ['red', 'green']).
next(co_tutorial_touch,  s4, "true",  s5).

state(co_tutorial_touch, s5, say).
text(co_tutorial_touch,  s5, "Bij sommige vragen zal ik je wat opties geven. Je kunt dan op de ja knop drukken als je jouw antwoord hoort.").
leds(co_tutorial_touch,  s4, ['LeftFootLeds', 'RightFootLeds'], ['white', 'white']).
next(co_tutorial_touch,  s5, "true",  s6).

state(co_tutorial_touch, s6, say).
text(co_tutorial_touch,  s6, "Laten we dat oefenen. \pau=400\ ").
next(co_tutorial_touch,  s6, "true",  s7).

state(co_tutorial_touch, s7, question).
stateConfig(co_tutorial_touch, s7, [type=quiz, options=['rood', 'licht blauw', 'donker grijs', 'groen'], 
	correctAnswer=['donker grijs'], inputModality=[touch=3]]).
text(co_tutorial_touch, s7, "Welke kleur hebben mijn schouders? Druk op de ja knop als je het antwoord hoort.").
next(co_tutorial_touch, s7, 'correct', s8cor).
next(co_tutorial_touch, s7, 'incorrect', s8incor).
next(co_tutorial_touch, s7, 'fail', s8f).

state(co_tutorial_touch, s8cor, say).
text(co_tutorial_touch, s8cor, "Jazeker! Ze zijn inderdaad donker grijs").

state(co_tutorial_touch, s8incor, say).
text(co_tutorial_touch, s8incor, "Ik wou dat ik die kleur had, maar mijn schouders zijn donker grijs.").

state(co_tutorial_touch, s8f, say).
text(co_tutorial_touch, s8f, "Mijn schouders zijn donker grijs. Vergeet niet de knopjes goed in te drukken de volgende keer.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - sound					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_sound, s1, say).
text(co_tutorial_sound,  s1, "Laten we verder gaan met geluidseffecten.").
next(co_tutorial_sound,  s1, "true",  s2).

state(co_tutorial_sound, s2, say).
text(co_tutorial_sound, s2, "Kun jij dit uitleggen Mike?").
stateConfig(co_tutorial_sound, s2, [next='FrontTactilTouched', repeat='MiddleTactilTouched']).
next(co_tutorial_sound, s2, "true", s3).

state(co_tutorial_sound, s3, say).
text(co_tutorial_sound,  s3, "Laten we even oefenen.").
next(co_tutorial_sound,  s3, "true",  s4).

state(co_tutorial_sound, s4, say).
text(co_tutorial_sound,  s4, "Piep als een muis in 3, 2, 1.").
next(co_tutorial_sound,  s4, "true",  s5).

state(co_tutorial_sound, s5, audioInput).
stateConfig(co_tutorial_sound, s5, [recordTime=3000]).
next(co_tutorial_sound, s5, "true", s6).

state(co_tutorial_sound, s6, say).
text(co_tutorial_sound,  s6, "Top.").
next(co_tutorial_sound,  s6, "true",  s7).

state(co_tutorial_sound, s7, say).
text(co_tutorial_sound,  s7, "Zo klinkt het geluidseffect nu.").
next(co_tutorial_sound,  s7, "true",  s8).

state(co_tutorial_sound, s8, say).
audio(co_tutorial_sound, s8, recorded, [co_tutorial_sound, s5]).
next(co_tutorial_sound,  s8, "true",  s9).

state(co_tutorial_sound, s9, say).
text(co_tutorial_sound,  s9, "Mooi. Dit komt later goed van pas.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - gesture					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_gesture, s1, say).
text(co_tutorial_gesture,  s1, "Zoals je wel gezien hebt vind ik het leuk om mijn armen te bewegen.").
next(co_tutorial_gesture,  s1, "true",  s2).

state(co_tutorial_gesture, s2, say).
text(co_tutorial_gesture,  s2, "Die kan ik ook goed gebruiken om dingen uit te beelden.").
next(co_tutorial_gesture,  s2, "true",  s3).

state(co_tutorial_gesture, s3, say).
text(co_tutorial_gesture,  s3, "Mike kun jij aan %first_name% laten zien hoe je gebaren met mijn armen kan maken?").
stateConfig(co_tutorial_gesture, s3, [next='FrontTactilTouched', repeat='MiddleTactilTouched']).
set_stiffness(co_tutorial_gesture, s3, ['RArm', 'LArm'], 0).
next(co_tutorial_gesture,  s3, "true",  s4).

state(co_tutorial_gesture, s4, say).
set_stiffness(co_tutorial_gesture, s4, ['RArm', 'LArm'], 100).
stateConfig(co_tutorial_gesture, s4, [noAnimation="true"]).
text(co_tutorial_gesture,  s4, "Goed bezig.").
next(co_tutorial_gesture,  s4, "true",  s5).

state(co_tutorial_gesture, s5, say).
text(co_tutorial_gesture,  s5, "Ik ga zo een gebaar die je maakt opnemen. Zodat ik hem later weer kan gebruiken.").
next(co_tutorial_gesture,  s5, "true",  s6).

state(co_tutorial_gesture, s6, say).
text(co_tutorial_gesture,  s6, "Vlak voor ik ga beginnen met opnemen maak ik dit geluid.").
next(co_tutorial_gesture,  s6, "true",  s7).

state(co_tutorial_gesture, s7, say).
audio(co_tutorial_gesture, s7, server, "resources/sounds/ready_to_record_gesture.wav").
next(co_tutorial_gesture,  s7, "true",  s8).

state(co_tutorial_gesture, s8, say).
text(co_tutorial_gesture,  s8, "En vlak voordat ik ga stoppen, tel ik af van drie, naar 1.").
next(co_tutorial_gesture,  s8, "true",  s9).

state(co_tutorial_gesture, s9, say).
text(co_tutorial_gesture,  s9, "Laten we dat een keer oefenen.").
next(co_tutorial_gesture,  s9, "true",  s10).

state(co_tutorial_gesture, s10, say).
text(co_tutorial_gesture,  s10, "Pak mijn armen maar vast.").
stateConfig(co_tutorial_gesture, s10, [noAnimation="true"]).
set_stiffness(co_tutorial_gesture, s10, ['RArm', 'LArm'], 0).
next(co_tutorial_gesture,  s10, "true",  s11).

state(co_tutorial_gesture, s11, say).
audio(co_tutorial_gesture, s11, server, "resources/sounds/ready_to_record_gesture.wav").
next(co_tutorial_gesture,  s11, "true",  s12).

state(co_tutorial_gesture, s12, say).
start_motion_recording(co_tutorial_gesture, s12, ['RArm', 'LArm']).
stateConfig(co_tutorial_gesture, s12, [waitTimer=5]).
next(co_tutorial_gesture,  s12, "true",  s13).

state(co_tutorial_gesture, s13, say).
text(co_tutorial_gesture,  s13, "3. 2. 1. Klaar.").
stateConfig(co_tutorial_gesture, s13, [noAnimation="true"]).
next(co_tutorial_gesture,  s13, "true",  s14).

state(co_tutorial_gesture, s14, say).
stop_motion_recording(co_tutorial_gesture, s14, ['RArm', 'LArm']).
stateConfig(co_tutorial_gesture, s14, [noAnimation="true"]).
next(co_tutorial_gesture,  s14, "true",  s15).

state(co_tutorial_gesture, s15, say).
text(co_tutorial_gesture,  s15, "Laten we eens kijken naar de beweging die ik van je heb geleerd.").
next(co_tutorial_gesture,  s15, "true",  s16).

state(co_tutorial_gesture, s16, say).
play_motion(co_tutorial_gesture, s16, co_tutorial_gesture_s14).
next(co_tutorial_gesture, s16, "true", s17).

state(co_tutorial_gesture, s17, say).
text(co_tutorial_gesture,  s17, "Cool cool cool cool!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - lights       				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_tutorial_lights, s1, say).
text(co_tutorial_lights,  s1, "Tot slot heb ik ook allemaal lichtjes die we kunnen inkleuren.").
next(co_tutorial_lights,  s1, "true",  s2).

state(co_tutorial_lights, s2, say).
text(co_tutorial_lights,  s2, "Je hebt mijn ogen al van kleur zien veranderen.").
next(co_tutorial_lights,  s2, "true",  s3).

state(co_tutorial_lights, s3, say).
text(co_tutorial_lights,  s3, "Maar ik kan ook mijn buik en voeten een andere kleur geven.").
leds(co_tutorial_lights,  s3, ["ChestLeds", "FeetLeds"], ["paars", "oranje"]).
next(co_tutorial_lights,  s3, "true",  s4).

state(co_tutorial_lights, s4, say).
text(co_tutorial_lights,  s4, "Leuk hè.").
next(co_tutorial_lights,  s4, "true",  s5).

state(co_tutorial_lights, s5, say).
text(co_tutorial_lights,  s5, "Verder kan ik ook de lichtjes laten knipperen.").
start_led_anim(co_tutorial_lights, s5, "all", "blink", ["paars", "oranje", "groen"], 500).
stateConfig(co_tutorial_lights, s5, [waitTimer=2500]).
next(co_tutorial_lights,  s5, "true",  s6).

state(co_tutorial_lights, s6, say).
stop_led_anim(co_tutorial_lights, s6).
next(co_tutorial_lights,  s6, "true",  s7).

state(co_tutorial_lights, s7, say).
text(co_tutorial_lights,  s7, "of de lichtjes heen en weer laten gaan.").
start_led_anim(co_tutorial_lights, s7, "all", "alternate", ["red", "blue"], 500).
stateConfig(co_tutorial_lights, s7, [waitTimer=2500]).
next(co_tutorial_lights,  s7, "true",  s8).

state(co_tutorial_lights, s8, say).
stop_led_anim(co_tutorial_lights, s8).
next(co_tutorial_lights,  s8, "true",  s9).

state(co_tutorial_lights, s9, say).
text(co_tutorial_lights,  s9, "of mijn ogen laten draaien.").
start_led_anim(co_tutorial_lights, s9, "eyes", "rotate", ["chocolade"], 500).
stateConfig(co_tutorial_lights, s9, [waitTimer=2500]).
next(co_tutorial_lights,  s9, "true",  s10).

state(co_tutorial_lights, s10, say).
text(co_tutorial_lights, s10, "Mike, wil jij uitleggen hoe je deze licht animaties kan maken?").
stateConfig(co_tutorial_lights, s10, [next='FrontTactilTouched', repeat='MiddleTactilTouched']).
stop_led_anim(co_tutorial_lights, s10).
next(co_tutorial_lights,  s10, "true",  s11).

% Prepare LED co-creation
state(co_tutorial_lights, s11, say).
text(co_tutorial_lights,  s11, "Laten we eens oefenen met het maken van een licht animatie.").
next(co_tutorial_lights,  s11, "true",  s12).

state(co_tutorial_lights, s12, say).
text(co_tutorial_lights,  s12, "Laten we een licht animatie maken die past bij een verjaardagsfeestje.").
prepare_led_anim(co_tutorial_lights, s12).

% Show result of LED co-creation
state(co_tutorial_lights2, s1, say).
text(co_tutorial_lights2,  s1, "Top helemaal klaar.").
next(co_tutorial_lights2,  s1, "true",  s2).

state(co_tutorial_lights2, s2, say).
text(co_tutorial_lights2,  s2, "Laat het feestje met de lichtjes maar beginnen.").
play_led_anim(co_tutorial_lights2,  s2, co_tutorial_lights_s12).
stateConfig(co_tutorial_lights2, s2, [waitTimer=3000]).
next(co_tutorial_lights2,  s2, "true",  s3).

state(co_tutorial_lights2, s3, say).
text(co_tutorial_lights2,  s3, "Goed gedaan zeg!").
stop_led_anim(co_tutorial_lights2,  s3).
leds(co_tutorial_lights2, s3, ["FaceLeds", "ChestLeds", "FeetLeds"], ["white", "white", "white"]).

