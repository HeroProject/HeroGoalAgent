%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           Topics for a co-creation conversation	   %%%
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
text(co_intro,  s8, "Broem broem.").
next(co_intro,  s8, "true",  s9).

state(co_intro, s9, say).
text(co_intro,  s9, "Gaaf he?").
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
text(co_tutorial_speech,  s1, "Mike en ik zullen je eerst uitleggen hoe je dat kunt doen").
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
leds(co_tutorial_speech, s5, "blue").
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
leds(co_tutorial_speech, s6, "white").

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
text(co_tutorial_touch,  s4, "Er is een ja knop en een nee knop. \pau=400\ ").
next(co_tutorial_touch,  s4, "true",  s5).

state(co_tutorial_touch, s5, say).
text(co_tutorial_touch,  s5, "Bij sommige vragen zal ik je wat opties geven. Je kunt dan op de ja knop drukken als je jouw antwoord hoort.").
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
text(co_tutorial_touch, s8incor, "Helaas. Ik wou dat ik die kleur had, maar mijn schouders zijn donker grijs.").

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
text(co_tutorial_gesture,  s5, "Ik ga zo gebaar die je maakt opnemen. Zodat ik hem later weer kan gebruiken.").
next(co_tutorial_gesture,  s5, "true",  s6).

state(co_tutorial_gesture, s6, say).
text(co_tutorial_gesture,  s6, "Vlak voor ik ga beginnen met opnemen maak ik dit geluid.").
next(co_tutorial_gesture,  s6, "true",  s7).

state(co_tutorial_gesture, s7, say).
audio(co_tutorial_gesture, s7, server, "resources/sounds/ready_to_record_gesture.wav").
next(co_tutorial_gesture,  s7, "true",  s8).

state(co_tutorial_gesture, s8, say).
text(co_tutorial_gesture,  s8, "En vlak voordat ik ga stoppen, tel ik af van drie naar 1.").
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
text(co_tutorial_gesture,  s15, "Laten we eens kijken naar de beweging die je net hebt gemaakt").
next(co_tutorial_gesture,  s15, "true",  s16).

state(co_tutorial_gesture, s16, say).
play_motion(co_tutorial_gesture, s16, co_tutorial_gesture_s14).
next(co_tutorial_gesture, s16, "true", s17).

state(co_tutorial_gesture, s17, say).
text(co_tutorial_gesture,  s17, "Cool cool cool cool!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Tutorial - lights       				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_light, s1, question).
stateConfig(co_tutorial_light, s1, [type=input, context='answer_light_location', options=['ogen', 'buik', 'voeten', 'allemaal'], defaultAnswer='ogen']).
text(co_tutorial_light, s1, "Welke lichtjes wil jij in kleuren? De ogen, buik, voeten, of ze allemaal?").
next(co_tutorial_light, s1, 'success', s2).
next(co_tutorial_light, s1, 'fail', s2f).

state(co_tutorial_light, s2, say).
text(co_tutorial_light, s2, "%co_tutorial_light_s1%, helemaal prima!").
next(co_tutorial_light, s2, "true", s3).

state(co_tutorial_light, s2f, say).
text(co_tutorial_light, s2f, "Sorry, ik heb je niet helemaal begrepen. Laten we de %co_tutorial_light_s1% in kleuren.").
next(co_tutorial_light, s2f, "true", s3).

state(co_tutorial_light, s3, question).
stateConfig(co_tutorial_light, s3, [type=yesno, context='answer_yesno']).
text(co_tutorial_light, s3, "Wil je er ook een animatie, zoals knipperen, bij?").
next(co_tutorial_light, s3, 'answer_yes', s3anim).
next(co_tutorial_light, s3, 'answer_no', s3no).
next(co_tutorial_light, s3, 'answer_dontknow', s3d).
next(co_tutorial_light, s3, 'fail', s3d).

%%%%%%%%%%%%%% No animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_light, s3no, say).
text(co_tutorial_light, s3no, "Prima. Dan hoeven we nu alleen nog een kleur te kiezen.").
next(co_tutorial_light, s3no, "true", s4no).

state(co_tutorial_light, s3d, say).
text(co_tutorial_light, s3d, "Laten we dit keer een kleur kiezen.").
next(co_tutorial_light, s3d, "true", s4no).

state(co_tutorial_light, s4no, branchingPoint).
stateConfig(co_tutorial_light, s4no, [branchDecider=entity, branchSource=co_tutorial_light_s1]).
next(co_tutorial_light, s4no, "ogen", s5no).
next(co_tutorial_light, s4no, "buik", s5no). % buik kan alleen maar knipperen.
next(co_tutorial_light, s4no, "voeten", s5no).
next(co_tutorial_light, s4no, "allemaal", s5noall).
next(co_tutorial_light, s4no, "fail", s5no). % omdat default = ogen

state(co_tutorial_light, s5no, question).
stateConfig(co_tutorial_light, s5no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='groen']).
text(co_tutorial_light, s5no, "Welke kleur moeten de lichtjes hebben?").
next(co_tutorial_light, s5no, 'success', s6).
next(co_tutorial_light, s5no, 'fail', s5nof).

% s5noall

state(co_tutorial_light, s5nof, say).
text(co_tutorial_light, s5nof, "Ik kon je even niet verstaan. Ik vind zelf %co_tutorial_light_s5no% een geschikte kleur.").
next(co_tutorial_light, s5nof, "true", s6).

state(co_tutorial_light, s6, say).
text(co_tutorial_light, s6, "Dit is het resultaat").
leds(co_tutorial_light, s6, "green").
next(co_tutorial_light, s6, "true", s7).

state(co_tutorial_light, s7, say).
text(co_tutorial_light, s7, "klaar").
leds(co_tutorial_light, s7, "white").

%%%%%%%%%%%%%% With animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_tutorial_light, s3anim, branchingPoint).
stateConfig(co_tutorial_light, s3anim, [branchDecider=entity, branchSource=co_tutorial_light_s1]).
next(co_tutorial_light, s3anim, "ogen", s4animeye).
next(co_tutorial_light, s3anim, "buik", s5animknip). % buik kan alleen maar knipperen.
next(co_tutorial_light, s3anim, "voeten", s4animfeet).
next(co_tutorial_light, s3anim, "allemaal", s4animeye).
next(co_tutorial_light, s3anim, "fail", s4animeye). % omdat default = ogen

state(co_tutorial_light, s4animeye, question). % ogen of allemaal
stateConfig(co_tutorial_light, s4animeye, [type=input, context='answer_light_animation', options=['knipperen', 'heen en weer', 'draaien'], defaultAnswer='knipperen']).
text(co_tutorial_light, s4animeye, "Welke animatie wil je? De lichtjes laten knipperen, heen en weer willen laten gaan, of de ogen laten draaien?").
next(co_tutorial_light, s4animeye, 'success', s5anim).
next(co_tutorial_light, s4animeye, 'fail', s4animf).

state(co_tutorial_light, s4animfeet, question). % voeten
stateConfig(co_tutorial_light, s4animfeet, [type=quiz, context='answer_light_animation', options=['knipperen', 'heen en weer'], correctAnswer=['knipperen', 'heen en weer']]).
text(co_tutorial_light, s4animfeet, "Welke animatie wil je? De lichtjes laten knipperen of heen en weer willen laten gaan?").
next(co_tutorial_light, s4animfeet, 'correct', s5animfeet).
next(co_tutorial_light, s4animfeet, 'incorrect', s4animfeetf).
next(co_tutorial_light, s4animfeet, 'fail', s4animf).

state(co_tutorial_light, s4animfeetf, say).
text(co_tutorial_light, s4animfeetf, "Alleen de ogen kunnen draaien helaas. Ik laat ze wel knipperen.").
next(co_tutorial_light, s4animfeetf, "true", s5animknip).

state(co_tutorial_light, s4animf, say).
text(co_tutorial_light, s4animf, "Sorry, ik heb je niet helemaal begrepen. Ik de lichtjes ze wel knipperen.").
next(co_tutorial_light, s4animf, "true", s5animknip).

state(co_tutorial_light, s5anim, branchingPoint).
stateConfig(co_tutorial_light, s5anim, [branchDecider=entity, branchSource=co_tutorial_light_s4animeye]).
next(co_tutorial_light, s5anim, "knipperen", s5animknip).
next(co_tutorial_light, s5anim, "heen en weer", s5animheen).
next(co_tutorial_light, s5anim, "draaien", s5animdraai).
next(co_tutorial_light, s5anim, "fail", s5animf).

state(co_tutorial_light, s5animfeet, branchingPoint).
stateConfig(co_tutorial_light, s5animfeet, [branchDecider=entity, branchSource=co_tutorial_light_s4animfeet]).
next(co_tutorial_light, s5animfeet, "knipperen", s5animknip).
next(co_tutorial_light, s5animfeet, "heen en weer", s5animheen).
next(co_tutorial_light, s5animfeet, "fail", s5animf).

% s5animknip
% s5animheen
% s5animdraai
% s5animf
