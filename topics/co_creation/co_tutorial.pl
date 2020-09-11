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
text(co_intro,  s2, "Ik ben aan het oefenen om een vriendje te zijn voor kinderen in het ziekenhuis.").
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
text(co_intro,  s7, "Kijk maar eens, nu zit ik in een race auto.").
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
text(co_intro,  s11, "Daar kun jij mij bij helpen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Involvement    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Co-creation condition
state(co_invol, s1, say).
text(co_invol,  s1, "Je hebt nu geleerd hoe je een geluidseffect, gebaar, of licht animatie kan maken.").
next(co_invol,  s1, "true",  s2).

state(co_invol, s2, say).
text(co_invol,  s2, "Mocht je nou denken, daar heb ik even geen zin in.").
next(co_invol,  s2, "true",  s3).

state(co_invol, s3, say).
text(co_invol,  s3, "Dat is helemaal prima.").
next(co_invol,  s3, "true",  s4).

state(co_invol, s4, say).
text(co_invol,  s4, "Ik kan namelijk ook proberen om een geluidseffect enzo te downloaden.").
next(co_invol,  s4, "true",  s5).

state(co_invol, s5, say).
text(co_invol,  s5, "Jij kan dan kiezen of je het geluidseffect, gebaar, of licht zelf wilt maken, of dat ik wat moet downloaden.").
next(co_invol,  s5, "true",  s6).

state(co_invol, s6, say).
text(co_invol,  s6, "Ik download steeds twee verschillende opties.").
next(co_invol,  s6, "true",  s7).

state(co_invol, s7, say).
text(co_invol,  s7, "Daarna mag jij zeggen of je zelf de beste optie wil kiezen of dat ik dat moet doen.").

% Baseline condition
state(co_invol_baseline, s1, say).
text(co_invol_baseline,  s1, "Elke keer als ik een geluidseffect, beweging, of licht animatie nodig heb zal ik er een paar downloaden.").
next(co_invol_baseline,  s1, "true",  s2).

state(co_invol_baseline, s2, say).
text(co_invol_baseline,  s2, "Die zal ik voorleggen aan jou.").
next(co_invol_baseline,  s2, "true",  s3).

state(co_invol_baseline, s3, say).
text(co_invol_baseline,  s3, "Dan kun jij kiezen welke jij het beste vind passen bij de situatie.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - speech       				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_speech, s1, say).
text(co_tutorial_speech,  s1, "Mike en ik, zullen je eerst uitleggen hoe dit allemaal werkt.").
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
stateConfig(co_tutorial_touch, s7, [type=quiz, options=['paars', 'licht blauw', 'donker grijs', 'groen'], 
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
text(co_tutorial_sound,  s1, "Laten we verder gaan met het maken van geluidseffecten.").
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
text(co_tutorial_gesture,  s5, "Laat ik nog wat meer uitleggen.").
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
text(co_tutorial_gesture,  s9, "Laten we het gewoon een keer oefenen.").
next(co_tutorial_gesture,  s9, "true",  s10).

state(co_tutorial_gesture, s10, say).
text(co_tutorial_gesture,  s10, "Ik wil wel een gebaar hebben voor het toveren met een toverstaf.").
next(co_tutorial_gesture,  s10, "true",  s11).

state(co_tutorial_gesture, s11, say).
text(co_tutorial_gesture,  s11, "Als je klaar bent om te beginnen, kun je mijn linker teen indrukken.").
leds(co_tutorial_gesture,  s11, ["RightFootLeds"], ["groen"]).
stateConfig(co_tutorial_gesture, s11, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_tutorial_gesture,  s11, "true",  s12).

state(co_tutorial_gesture, s12, say).
text(co_tutorial_gesture,  s12, "Pak mijn armen maar vast.").
leds(co_tutorial_gesture,  s12, ["RightFootLeds"], ["wit"]).
stateConfig(co_tutorial_gesture, s12, [noAnimation="true"]).
set_stiffness(co_tutorial_gesture, s12, ['RArm', 'LArm'], 0).
next(co_tutorial_gesture,  s12, "true",  s13).

state(co_tutorial_gesture, s13, say).
audio(co_tutorial_gesture, s13, server, "resources/sounds/ready_to_record_gesture.wav").
next(co_tutorial_gesture,  s13, "true",  s14).

state(co_tutorial_gesture, s14, say).
start_motion_recording(co_tutorial_gesture, s14, ['RArm', 'LArm']).
stateConfig(co_tutorial_gesture, s14, [waitTimer=5]).
next(co_tutorial_gesture,  s14, "true",  s15).

state(co_tutorial_gesture, s15, say).
text(co_tutorial_gesture,  s15, "3. 2. 1. Klaar.").
stateConfig(co_tutorial_gesture, s15, [noAnimation="true"]).
next(co_tutorial_gesture,  s15, "true",  s16).

state(co_tutorial_gesture, s16, say).
stop_motion_recording(co_tutorial_gesture, s16, ['RArm', 'LArm']).
stateConfig(co_tutorial_gesture, s16, [noAnimation="true"]).
next(co_tutorial_gesture,  s16, "true",  s17).

state(co_tutorial_gesture, s17, say).
text(co_tutorial_gesture,  s17, "Laten we eens kijken naar de beweging die ik van je heb geleerd.").
next(co_tutorial_gesture,  s17, "true",  s18).

state(co_tutorial_gesture, s18, say).
play_motion(co_tutorial_gesture, s18, co_tutorial_gesture_s16).
next(co_tutorial_gesture, s18, "true", s19).

state(co_tutorial_gesture, s19, say).
text(co_tutorial_gesture,  s19, "Cool cool cool cool!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - lights       				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_tutorial_lights, s1, say).
text(co_tutorial_lights,  s1, "Tot slot heb ik ook allemaal lichtjes die we kunnen inkleuren.").
next(co_tutorial_lights,  s1, "true",  s2).

state(co_tutorial_lights, s2, say).
text(co_tutorial_lights,  s2, "Ik kan mijn ogen, buik, en voeten van kleur veranderen.").
leds(co_tutorial_lights,  s2, ["FaceLeds", "ChestLeds", "FeetLeds"], ["paars", "oranje", "rood"]).
next(co_tutorial_lights,  s2, "true",  s4).

state(co_tutorial_lights, s4, say).
text(co_tutorial_lights,  s4, "Leuk hè.").
next(co_tutorial_lights,  s4, "true",  s5).

state(co_tutorial_lights, s5, say).
text(co_tutorial_lights,  s5, "Verder kan ik ook de lichtjes laten knipperen.").
start_led_anim(co_tutorial_lights, s5, "all", "blink", ["paars", "oranje", "groen"], 500).
stateConfig(co_tutorial_lights, s5, [waitTimer=1500]).
next(co_tutorial_lights,  s5, "true",  s6).

state(co_tutorial_lights, s6, say).
stop_led_anim(co_tutorial_lights, s6).
next(co_tutorial_lights,  s6, "true",  s7).

state(co_tutorial_lights, s7, say).
text(co_tutorial_lights,  s7, "of de lichtjes heen en weer laten gaan.").
start_led_anim(co_tutorial_lights, s7, "all", "alternate", ["red", "blue"], 500).
stateConfig(co_tutorial_lights, s7, [waitTimer=1500]).
next(co_tutorial_lights,  s7, "true",  s8).

state(co_tutorial_lights, s8, say).
stop_led_anim(co_tutorial_lights, s8).
next(co_tutorial_lights,  s8, "true",  s9).

state(co_tutorial_lights, s9, say).
text(co_tutorial_lights,  s9, "of mijn ogen laten draaien.").
start_led_anim(co_tutorial_lights, s9, "eyes", "rotate", ["chocolade"], 500).
stateConfig(co_tutorial_lights, s9, [waitTimer=1500]).
next(co_tutorial_lights,  s9, "true",  s10).

state(co_tutorial_lights, s10, say).
text(co_tutorial_lights, s10, "Mike, wil jij uitleggen hoe je deze licht animaties kan maken?").
stateConfig(co_tutorial_lights, s10, [next='FrontTactilTouched', repeat='MiddleTactilTouched']).
stop_led_anim(co_tutorial_lights, s10).
next(co_tutorial_lights,  s10, "true",  s11).

% Prepare LED co-creation
state(co_tutorial_lights, s11, say).
text(co_tutorial_lights,  s11, "Laten we eens oefenen.").
next(co_tutorial_lights,  s11, "true",  s12).

state(co_tutorial_lights, s12, say).
text(co_tutorial_lights,  s12, "Ik wil wel licht animatie die past bij een verjaardagsfeestje.").
prepare_led_anim(co_tutorial_lights, s12).

% Show result of LED co-creation
state(co_tutorial_lights2, s1, say).
text(co_tutorial_lights2,  s1, "Top helemaal klaar.").
next(co_tutorial_lights2,  s1, "true",  s2).

state(co_tutorial_lights2, s2, say).
text(co_tutorial_lights2,  s2, "Laat het feestje met de lichtjes maar beginnen.").
play_led_anim(co_tutorial_lights2,  s2, co_tutorial_lights_s12).
stateConfig(co_tutorial_lights2, s2, [waitTimer=2500]).
next(co_tutorial_lights2,  s2, "true",  s3).

state(co_tutorial_lights2, s3, say).
text(co_tutorial_lights2,  s3, "Goed gedaan zeg!").
stop_led_anim(co_tutorial_lights2,  s3).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - final questions				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_question, s1, say).
text(co_tutorial_question,  s1, "Zo nu heb ik alles wel uitgelegd.").
next(co_tutorial_question,  s1, "true",  s2).

state(co_tutorial_question, s2, question).
stateConfig(co_tutorial_question, s2, [type=yesno, context='answer_yesno']).
text(co_tutorial_question, s2, "Heb je nog vragen?").
next(co_tutorial_question, s2, 'answer_yes', s2y).
next(co_tutorial_question, s2, 'answer_no', s2n).
next(co_tutorial_question, s2, 'answer_dontknow', s2y).
next(co_tutorial_question, s2, 'fail', s2y).

state(co_tutorial_question, s2y, say).
text(co_tutorial_question, s2y, "Mike, kun jij %first_name% even helpen.").
stateConfig(co_tutorial_question, s2y, [next='FrontTactilTouched', repeat='MiddleTactilTouched']).
next(co_tutorial_question,  s2y, "true",  s3).

state(co_tutorial_question, s2n, say).
text(co_tutorial_question,  s2n, "Top!").
next(co_tutorial_question,  s2n, "true",  s3).

state(co_tutorial_question, s3, say).
text(co_tutorial_question, s3, "Laten we beginnen met het echte gesprek!").
