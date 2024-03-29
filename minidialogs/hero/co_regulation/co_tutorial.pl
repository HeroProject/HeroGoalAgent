 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           minidialogs for a co-creation conversation   %%%
%%%			  TUTORIAL			   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introduction    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_intro, s1, say).
text(co_intro,  s1, "Hallo %first_name%, ik ben Hero en ik ben een sociale robot.").
next(co_intro,  s1, "true",  s2).

move(co_intro, s2, say).
text(co_intro,  s2, "Ik ben aan het oefenen om een vriendje te zijn voor kinderen in het ziekenhuis.").
next(co_intro,  s2, "true",  s3).

move(co_intro, s3, say).
text(co_intro,  s3, "Wat fijn dat je mij daarmee wilt helpen. \pau=300\ ").
next(co_intro,  s3, "true",  s4).

move(co_intro, s4, say).
text(co_intro,  s4, "Ik hou echt van kletsen en heb vele verhalen om te vertellen.").
next(co_intro,  s4, "true",  s5).

move(co_intro, s5, say).
text(co_intro,  s5, "Ik vind het extra leuk om daar geluidseffecten aan toe te voegen.").
next(co_intro,  s5, "true",  s6).

move(co_intro, s6, say).
text(co_intro,  s6, "Ik kan er ook speciale bewegingen en licht animaties bij maken.").
next(co_intro,  s6, "true",  s7).

move(co_intro, s7, say).
text(co_intro,  s7, "Kijk maar eens. Nu zit ik in een race auto.").
next(co_intro,  s7, "true",  s8).

move(co_intro, s8, say).
audio(co_intro, s8, file, 'resources/sounds/racecar.wav').
anim(co_intro, s8, file, "resources/gestures/racecar.xml").
leds(co_intro, s8, direct, "all", "alternate", ["oranje", "paars"], 500).
next(co_intro,  s8, "true",  s9).

move(co_intro, s9, say).
text(co_intro,  s9, "Gaaf hè?").
leds(co_intro, s9, reset).
next(co_intro,  s9, "true",  s10).

move(co_intro, s10, say).
text(co_intro,  s10, "Alleen heb ik nog niet overal de juiste geluidseffecten, bewegingen, en licht animaties voor.").
next(co_intro,  s10, "true",  s11).

move(co_intro, s11, say).
text(co_intro,  s11, "Daar kun jij mij bij helpen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Involvement    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Co-creation condition
move(co_invol, s1, say).
text(co_invol,  s1, "Je hebt nu geleerd hoe je een geluidseffect, gebaar, of licht animatie kan maken.").
next(co_invol,  s1, "true",  s2).

move(co_invol, s2, say).
text(co_invol,  s2, "Mocht je nou denken, daar heb ik even geen zin in.").
next(co_invol,  s2, "true",  s3).

move(co_invol, s3, say).
text(co_invol,  s3, "Dat is helemaal prima.").
next(co_invol,  s3, "true",  s4).

move(co_invol, s4, say).
text(co_invol,  s4, "Ik kan namelijk geluidseffecten, gebaren, en licht animaties van het internet downloaden.").
next(co_invol,  s4, "true",  s5).

move(co_invol, s5, say).
text(co_invol,  s5, "Jij mag altijd kiezen of je het zelf wilt maken of ik iets moet downloaden.").

% Baseline condition
move(co_invol_baseline, s1, say).
text(co_invol_baseline,  s1, "Elke keer als ik een geluidseffect, beweging, of licht animatie nodig heb zal ik er een paar downloaden.").
next(co_invol_baseline,  s1, "true",  s2).

move(co_invol_baseline, s2, say).
text(co_invol_baseline,  s2, "Die zal ik voorleggen aan jou.").
next(co_invol_baseline,  s2, "true",  s3).

move(co_invol_baseline, s3, say).
text(co_invol_baseline,  s3, "Dan kun jij kiezen welke jij het beste vind passen bij de situatie.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - speech       				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_tutorial_speech, s1, say).
text(co_tutorial_speech,  s1, "Mike en ik, zullen je eerst uitleggen hoe dit allemaal werkt.").
next(co_tutorial_speech, s1, "true", s2).

move(co_tutorial_speech, s2, say).
text(co_tutorial_speech,  s2, "Laten we beginnen bij hoe je met mij kan praten.").
next(co_tutorial_speech, s2, "true", s3).

move(co_tutorial_speech, s3, say).
text(co_tutorial_speech, s3, "Kun jij dit uitleggen Mike?").
moveConfig(co_tutorial_speech, s3, [next='FrontTactilTouched', repeat='MiddleTactilTouched']).
next(co_tutorial_speech, s3, "true", s4).

move(co_tutorial_speech, s4, say).
text(co_tutorial_speech,  s4, "Laten we oefenen. Hier komt de eerste vraag.").
next(co_tutorial_speech,  s4, "true",  s5).

move(co_tutorial_speech, s5, question).
moveConfig(co_tutorial_speech, s5, [type=quiz, context='answer_color', correctAnswer=["blauw"], inputModality=[speech=3], additionalAttempt=true]).
leds(co_tutorial_speech, s5, ["FaceLeds"], ["blauw"]).
text(co_tutorial_speech, s5, "Welke kleur hebben mijn ogen nu?").
next(co_tutorial_speech, s5, 'correct', s5cor).
next(co_tutorial_speech, s5, 'incorrect', s5incor).
next(co_tutorial_speech, s5, 'fail', s5f).

move(co_tutorial_speech, s5cor, say).
text(co_tutorial_speech,  s5cor, "Ze zijn inderdaad blauw. Goed gedaan!").
next(co_tutorial_speech,  s5cor, "true",  s6).

move(co_tutorial_speech, s5incor, say).
text(co_tutorial_speech,  s5incor, "Die kleur kunnen ze inderdaad worden, maar deze keer waren ze echt blauw.").
next(co_tutorial_speech,  s5incor, "true",  s6).

move(co_tutorial_speech, s5f, say).
text(co_tutorial_speech,  s5f, "Dankjewel! Denk er aan om luid, en duidelijk, antwoord te geven.").
next(co_tutorial_speech,  s5f, "true",  s6).

move(co_tutorial_speech, s6, say).
leds(co_tutorial_speech, s6, ["FaceLeds"], ["wit"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - touch					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_tutorial_touch, s1, say).
text(co_tutorial_touch,  s1, "Soms heb ik een beetje moeite om mensen te verstaan.").
next(co_tutorial_touch,  s1, "true",  s2).

move(co_tutorial_touch, s2, say).
text(co_tutorial_touch,  s2, "Dan kun je antwoord geven door op mijn grijze tenen te drukken.").
next(co_tutorial_touch,  s2, "true",  s3).

move(co_tutorial_touch, s3, say).
text(co_tutorial_touch,  s3, "Dat zijn namelijk knopjes.").
next(co_tutorial_touch,  s3, "true",  s4).

move(co_tutorial_touch, s4, say).
text(co_tutorial_touch,  s4, "Het lichtje boven de ja knop is groen en het lichtje boven de nee knop is rood. \pau=400\ ").
leds(co_tutorial_touch,  s4, ['LeftFootLeds', 'RightFootLeds'], ['red', 'green']).
next(co_tutorial_touch,  s4, "true",  s5).

move(co_tutorial_touch, s5, say).
text(co_tutorial_touch,  s5, "Bij sommige vragen zal ik je wat opties geven. Je kunt dan op de ja knop drukken als je jouw antwoord hoort.").
leds(co_tutorial_touch,  s4, ['LeftFootLeds', 'RightFootLeds'], ['white', 'white']).
next(co_tutorial_touch,  s5, "true",  s6).

move(co_tutorial_touch, s6, say).
text(co_tutorial_touch,  s6, "Laten we dat oefenen. \pau=400\ ").
next(co_tutorial_touch,  s6, "true",  s7).

move(co_tutorial_touch, s7, question).
moveConfig(co_tutorial_touch, s7, [type=quiz, options=['paars', 'licht blauw', 'donker grijs', 'groen'], 
	correctAnswer=['donker grijs'], inputModality=[touch=3]]).
text(co_tutorial_touch, s7, "Welke kleur hebben mijn schouders? Druk op de ja knop als je het antwoord hoort.").
next(co_tutorial_touch, s7, 'correct', s8cor).
next(co_tutorial_touch, s7, 'incorrect', s8incor).
next(co_tutorial_touch, s7, 'fail', s8f).

move(co_tutorial_touch, s8cor, say).
text(co_tutorial_touch, s8cor, "Jazeker! Ze zijn inderdaad donker grijs").

move(co_tutorial_touch, s8incor, say).
text(co_tutorial_touch, s8incor, "Ik wou dat ik die kleur had, maar mijn schouders zijn donker grijs.").

move(co_tutorial_touch, s8f, say).
text(co_tutorial_touch, s8f, "Mijn schouders zijn donker grijs. Vergeet niet de knopjes goed in te drukken de volgende keer.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - sound					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_tutorial_sound, s1, say).
text(co_tutorial_sound,  s1, "Laten we verder gaan met het maken van geluidseffecten.").
next(co_tutorial_sound,  s1, "true",  s2).

move(co_tutorial_sound, s2, say).
text(co_tutorial_sound,  s2, "Ik zal vragen om een bepaald geluid. Bijvoorbeeld het piep geluid dat een muis maakt.").
next(co_tutorial_sound,  s2, "true",  s3).

move(co_tutorial_sound, s3, say).
text(co_tutorial_sound,  s3, "Daarna tel ik af en kun jij het geluidseffect inspreken. Dan kun je bijvoorbeeld piep piep piep zeggen.").
next(co_tutorial_sound,  s3, "true",  s4).

move(co_tutorial_sound, s4, say).
text(co_tutorial_sound,  s4, "Laten we even oefenen.").
next(co_tutorial_sound,  s4, "true",  s5).

move(co_tutorial_sound, s5, say).
text(co_tutorial_sound,  s5, "Piep als een muis in 3, 2, 1.").
next(co_tutorial_sound,  s5, "true",  s6).

move(co_tutorial_sound, s6, audioInput).
moveConfig(co_tutorial_sound, s6, [recordTime=3000, umVariable=co_tut_mouse]).
next(co_tutorial_sound, s6, "true", s7).

move(co_tutorial_sound, s7, say).
text(co_tutorial_sound,  s7, "Top gedaan.").
next(co_tutorial_sound,  s7, "true",  s8).

move(co_tutorial_sound, s8, say).
text(co_tutorial_sound,  s8, "Zo klinkt het geluidseffect nu.").
next(co_tutorial_sound,  s8, "true",  s9).

move(co_tutorial_sound, s9, say).
audio(co_tutorial_sound, s9, id, co_tut_mouse).
next(co_tutorial_sound,  s9, "true",  s10).

move(co_tutorial_sound, s10, say).
text(co_tutorial_sound,  s10, "Mooi. Dit komt later goed van pas.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - gesture					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_tutorial_gesture, s1, say).
text(co_tutorial_gesture,  s1, "Zoals je wel gezien hebt vind ik het leuk om mijn armen te bewegen.").
next(co_tutorial_gesture,  s1, "true",  s2).

move(co_tutorial_gesture, s2, say).
text(co_tutorial_gesture,  s2, "Die kan ik ook goed gebruiken om dingen uit te beelden.").
next(co_tutorial_gesture,  s2, "true",  s3).

move(co_tutorial_gesture, s3, say).
text(co_tutorial_gesture,  s3, "Mike kun jij aan %first_name% laten zien hoe je gebaren met mijn armen kan maken?").
moveConfig(co_tutorial_gesture, s3, [next='FrontTactilTouched']).
set_stiffness(co_tutorial_gesture, s3, ['RArm', 'LArm'], 0).
next(co_tutorial_gesture,  s3, "true",  s4).

move(co_tutorial_gesture, s4, say).
set_stiffness(co_tutorial_gesture, s4, ['RArm', 'LArm'], 100).
moveConfig(co_tutorial_gesture, s4, [noAnimation="true"]).
text(co_tutorial_gesture,  s4, "Goed bezig.").
next(co_tutorial_gesture,  s4, "true",  s5).

move(co_tutorial_gesture, s5, say).
text(co_tutorial_gesture,  s5, "Laat ik nog wat meer uitleggen.").
next(co_tutorial_gesture,  s5, "true",  s6).

move(co_tutorial_gesture, s6, say).
text(co_tutorial_gesture,  s6, "Vlak voor ik ga beginnen met opnemen maak ik dit geluid.").
next(co_tutorial_gesture,  s6, "true",  s7).

move(co_tutorial_gesture, s7, say).
audio(co_tutorial_gesture, s7, file, "resources/sounds/ready_to_record_gesture.wav").
next(co_tutorial_gesture,  s7, "true",  s8).

move(co_tutorial_gesture, s8, say).
text(co_tutorial_gesture,  s8, "En vlak voordat ik ga stoppen, tel ik af van drie, naar 1.").
next(co_tutorial_gesture,  s8, "true",  s9).

move(co_tutorial_gesture, s9, say).
text(co_tutorial_gesture,  s9, "Laten we het gewoon een keer oefenen.").
next(co_tutorial_gesture,  s9, "true",  s10).

move(co_tutorial_gesture, s10, say).
text(co_tutorial_gesture,  s10, "Ik wil wel een gebaar hebben voor het toveren met een toverstaf.").
next(co_tutorial_gesture,  s10, "true",  s11).

move(co_tutorial_gesture, s11, say).
text(co_tutorial_gesture,  s11, "Als je klaar bent om te beginnen, kun je mijn linker teen indrukken.").
leds(co_tutorial_gesture,  s11, direct, ["RightFootLeds"], ["groen"]).
moveConfig(co_tutorial_gesture, s11, [next='RightBumperPressed']).
next(co_tutorial_gesture,  s11, "true",  s12).

move(co_tutorial_gesture, s12, say).
text(co_tutorial_gesture,  s12, "Pak mijn armen maar vast.").
leds(co_tutorial_gesture,  s12, direct, ["RightFootLeds"], ["wit"]).
moveConfig(co_tutorial_gesture, s12, [noAnimation="true"]).
set_stiffness(co_tutorial_gesture, s12, ['RArm', 'LArm'], 0).
next(co_tutorial_gesture,  s12, "true",  s13).

move(co_tutorial_gesture, s13, say).
audio(co_tutorial_gesture, s13, file, "resources/sounds/ready_to_record_gesture.wav").
next(co_tutorial_gesture,  s13, "true",  s14).

move(co_tutorial_gesture, s14, say).
record_motion(co_tutorial_gesture, s14, ['RArm', 'LArm'], 0).
moveConfig(co_tutorial_gesture, s14, [waitTimer=5000]).
next(co_tutorial_gesture,  s14, "true",  s15).

move(co_tutorial_gesture, s15, say).
text(co_tutorial_gesture,  s15, "3. 2. 1. Klaar.").
moveConfig(co_tutorial_gesture, s15, [noAnimation="true"]).
next(co_tutorial_gesture,  s15, "true",  s16).

move(co_tutorial_gesture, s16, say).
save_motion(co_tutorial_gesture, s16, recording, ['RArm', 'LArm']).
moveConfig(co_tutorial_gesture, s16, [noAnimation="true"]).
next(co_tutorial_gesture,  s16, "true",  s17).

move(co_tutorial_gesture, s17, say).
text(co_tutorial_gesture,  s17, "Laten we eens kijken naar de beweging die ik van je heb geleerd.").
next(co_tutorial_gesture,  s17, "true",  s18).

move(co_tutorial_gesture, s18, say).
anim(co_tutorial_gesture, s18, id, co_tutorial_gesture_s16).
next(co_tutorial_gesture, s18, "true", s19).

move(co_tutorial_gesture, s19, say).
text(co_tutorial_gesture,  s19, "Cool cool cool cool!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - lights       				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_tutorial_lights, s1, say).
text(co_tutorial_lights,  s1, "Tot slot heb ik ook allemaal lichtjes waarmee we een licht show kunnen maken.").
next(co_tutorial_lights,  s1, "true",  s2).

move(co_tutorial_lights, s2, say).
text(co_tutorial_lights,  s2, "Ik kan mijn ogen, buik, en voeten van kleur veranderen.").
leds(co_tutorial_lights,  s2, direct, ["FaceLeds", "ChestLeds", "FeetLeds"], ["paars", "oranje", "rood"]).
next(co_tutorial_lights,  s2, "true",  s4).

move(co_tutorial_lights, s4, say).
text(co_tutorial_lights,  s4, "Leuk hè. Verder kan ik er ook een animatie aan toe voegen.").
next(co_tutorial_lights,  s4, "true",  s5).

move(co_tutorial_lights, s5, say).
text(co_tutorial_lights,  s5, "Ik kan de lichtjes laten knipperen.").
leds(co_tutorial_lights, s5, direct, "all", "blink", ["paars", "oranje", "groen"], 500).
moveConfig(co_tutorial_lights, s5, [waitTimer=1500]).
next(co_tutorial_lights,  s5, "true",  s6).

move(co_tutorial_lights, s6, say).
leds(co_tutorial_lights, s6, reset).
next(co_tutorial_lights,  s6, "true",  s7).

move(co_tutorial_lights, s7, say).
text(co_tutorial_lights,  s7, "of de lichtjes heen en weer laten gaan.").
leds(co_tutorial_lights, s7, direct, "all", "alternate", ["red", "blue"], 500).
moveConfig(co_tutorial_lights, s7, [waitTimer=1500]).
next(co_tutorial_lights,  s7, "true",  s8).

move(co_tutorial_lights, s8, say).
leds(co_tutorial_lights, s8, reset).
next(co_tutorial_lights,  s8, "true",  s9).

move(co_tutorial_lights, s9, say).
text(co_tutorial_lights,  s9, "Door het beantwoorden van vragen kunnen we samen een licht show maken.").
next(co_tutorial_lights,  s9, "true",  s10).

move(co_tutorial_lights, s10, say).
text(co_tutorial_lights,  s10, "Ik zal je eerst vragen of je een animatie wilt.").
next(co_tutorial_lights,  s10, "true",  s11).

move(co_tutorial_lights, s11, say).
text(co_tutorial_lights,  s11, "Als je dan nee zegt hoef je alleen de lichtjes in te kleuren.").
next(co_tutorial_lights,  s11, "true",  s12).

move(co_tutorial_lights, s12, say).
text(co_tutorial_lights,  s12, "Als je dan ja zegt kun je de lichtjes laten knipperen of heen en weer laten gaan. Met de kleuren die jij wilt.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - final questions				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_tutorial_question, s1, say).
text(co_tutorial_question,  s1, "Zo nu heb ik alles wel uitgelegd.").
next(co_tutorial_question,  s1, "true",  s2).

move(co_tutorial_question, s2, question).
moveConfig(co_tutorial_question, s2, [type=yesno, context='answer_yesno']).
text(co_tutorial_question, s2, "Heb je hier nog vragen over?").
next(co_tutorial_question, s2, 'answer_yes', s2y).
next(co_tutorial_question, s2, 'answer_no', s2n).
next(co_tutorial_question, s2, 'answer_dontknow', s2y).
next(co_tutorial_question, s2, 'fail', s2y).

move(co_tutorial_question, s2y, say).
text(co_tutorial_question, s2y, "Mike, kun jij %first_name% even helpen.").
moveConfig(co_tutorial_question, s2y, [next='FrontTactilTouched']).
next(co_tutorial_question,  s2y, "true",  s3).

move(co_tutorial_question, s2n, say).
text(co_tutorial_question,  s2n, "Top!").
next(co_tutorial_question,  s2n, "true",  s3).

move(co_tutorial_question, s3, say).
text(co_tutorial_question, s3, "Laten we beginnen met het echte gesprek!").
 