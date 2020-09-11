%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           Topics for a co-creation conversation	   %%%
%%%			Secret Handshake		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake, s1, say).
text(co_handshake,  s1, "Voordat we zo gaan stoppen, wil ik graag nog 1 ding met je doen.").
next(co_handshake,  s1, "true",  s2).

% Add question about whether they liked it.

state(co_handshake, s2, say).
text(co_handshake,  s2, "Ik zou graag een leuke afscheids ceremonie willen maken.").
next(co_handshake,  s2, "true",  s3).

state(co_handshake, s3, say).
text(co_handshake,  s3, "Als je het leuk vind kun je hier een beweging, geluid, en een licht animatie aan toevoegen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Gesture				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_gesture, s1, question).
stateConfig(co_handshake_gesture, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_gesture, s1, "Wil je een beweging toevoegen aan de ceremonie?").
next(co_handshake_gesture, s1, 'answer_yes', s2y).
next(co_handshake_gesture, s1, 'answer_no', s2n).
next(co_handshake_gesture, s1, 'answer_dontknow', s2d).
next(co_handshake_gesture, s1, 'fail', s2d).

state(co_handshake_gesture, s2y, say).
text(co_handshake_gesture, s2y, "Leuk!").
next(co_handshake_gesture,  s2y, "true",  s3).

state(co_handshake_gesture, s2n, say).
text(co_handshake_gesture, s2n, "Helemaal prima.").

state(co_handshake_gesture, s2d, say).
text(co_handshake_gesture, s2d, "Misschien een volgende keer dan.").

state(co_handshake_gesture, s3, question).
stateConfig(co_handshake_gesture, s3, [type = branch, context = "involvement_selection", options = ['maken', 'downloaden'], defaultAnswer='downloaden',
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_handshake_gesture, s5], [co_handshake_ceremonie, s20]]]).
text(co_handshake_gesture, s3, "Wil jij die zelf maken of zal ik wat bewegingen downloaden?").
next(co_handshake_gesture, s3, "success", s4).
next(co_handshake_gesture, s3, "fail", s3f).

state(co_handshake_gesture, s4, say).
text(co_handshake_gesture,  s4, "Oke we gaan het %co_handshake_gesture_s3%.").
next(co_handshake_gesture,  s4, "true",  s5).

state(co_handshake_gesture, s3f, say).
text(co_handshake_gesture, s3f, "Weet je wat? Ik download gewoon wat bewegingen.").
next(co_handshake_gesture, s3f, 'true', s5).

state(co_handshake_gesture, s5, branchingPoint).
next(co_handshake_gesture, s5, "maken", s6maken).
next(co_handshake_gesture, s5, "downloaden", s6downloaden).
next(co_handshake_gesture, s5, "fail", s6downloaden).

%%%%%%%%%%%%%% Create gesture %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_gesture, s6maken, say).
text(co_handshake_gesture,  s6maken, "Als je klaar bent om te beginnen, kun je mijn linker teen indrukken.").
leds(co_handshake_gesture,  s6maken, ["RightFootLeds"], ["groen"]).
stateConfig(co_handshake_gesture, s6maken, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_handshake_gesture,  s6maken, "true",  s7maken).

state(co_handshake_gesture, s7maken, say).
text(co_handshake_gesture,  s7maken, "Pak mijn armen maar vast.").
leds(co_handshake_gesture,  s7maken, ["RightFootLeds"], ["wit"]).
stateConfig(co_handshake_gesture, s7maken, [noAnimation="true"]).
set_stiffness(co_handshake_gesture, s7maken, ['RArm', 'LArm'], 0).
next(co_handshake_gesture,  s7maken, "true",  s8maken).

state(co_handshake_gesture, s8maken, say).
audio(co_handshake_gesture, s8maken, server, "resources/sounds/ready_to_record_gesture.wav").
next(co_handshake_gesture,  s8maken, "true",  s9maken).

state(co_handshake_gesture, s9maken, say).
start_motion_recording(co_handshake_gesture, s9maken, ['RArm', 'LArm']).
stateConfig(co_handshake_gesture, s9maken, [waitTimer=7]).
next(co_handshake_gesture,  s9maken, "true",  s10maken).

state(co_handshake_gesture, s10maken, say).
text(co_handshake_gesture,  s10maken, "3. 2. 1. Klaar.").
stateConfig(co_handshake_gesture, s10maken, [noAnimation="true"]).
next(co_handshake_gesture,  s10maken, "true",  s11maken).

state(co_handshake_gesture, s11maken, say).
stop_motion_recording(co_handshake_gesture, s11maken, ['RArm', 'LArm']).
stateConfig(co_handshake_gesture, s11maken, [noAnimation="true"]).
next(co_handshake_gesture,  s11maken, "true",  s12maken).

state(co_handshake_gesture, s12maken, say).
text(co_handshake_gesture,  s12maken, "Het is heel mooi geworden.").

%%%%%%%%%%%%%% Download gesture %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_gesture, s6downloaden, say).
text(co_handshake_gesture,  s6downloaden, "Ik ben nu twee gebaren aan het downloaden.").
start_led_anim(co_handshake_gesture, s6downloaden, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_gesture, s6downloaden, [waitTimer=1500]).
next(co_handshake_gesture,  s6downloaden, "true",  s7downloaden).

state(co_handshake_gesture, s7downloaden, say).
text(co_handshake_gesture,  s7downloaden, "Klaar. Dit is optie 1").
stop_led_anim(co_handshake_gesture, s7downloaden).
next(co_handshake_gesture,  s7downloaden, "true",  s8downloaden).

state(co_handshake_gesture, s8downloaden, say).
play_motion_file(co_handshake_gesture, s8downloaden, "resources/gestures/elephant1.xml").
next(co_handshake_gesture, s8downloaden, "true", s9downloaden).

state(co_handshake_gesture, s9downloaden, say).
text(co_handshake_gesture,  s9downloaden, "En dit is optie 2").
next(co_handshake_gesture,  s9downloaden, "true",  s10downloaden).

state(co_handshake_gesture, s10downloaden, say).
play_motion_file(co_handshake_gesture, s10downloaden, "resources/gestures/elephant2.xml").
next(co_handshake_gesture, s10downloaden, "true", s11downloaden).

state(co_handshake_gesture, s11downloaden, question).
stateConfig(co_handshake_gesture, s11downloaden, [type = branch, context = "involvement_who_picks_option", options = ['uitzoeken', 'ik maak keuze'], defaultAnswer='uitzoeken',
branchIntents=['uitzoeken' = 'involvement_child_picks', 'ik maak keuze' = 'involvement_robot_picks'], branchingPoints=[[co_handshake_gesture, s12downloaden], [co_handshake_ceremonie, s20downloaden]]]).
text(co_handshake_gesture, s11downloaden, "Wil jij de beste optie uitzoeken of zal ik gewoon kiezen?").
next(co_handshake_gesture, s11downloaden, "success", s12downloaden).
next(co_handshake_gesture, s11downloaden, "fail", s11downloadenf).

state(co_handshake_gesture, s11downloadenf, say).
text(co_handshake_gesture,  s11downloadenf, "Het lijkt me beter als jij kiest.").
next(co_handshake_gesture,  s11downloadenf, "true",  s12downloaden).

state(co_handshake_gesture, s12downloaden, branchingPoint).
next(co_handshake_gesture, s12downloaden, "uitzoeken", s13kindkiest).
next(co_handshake_gesture, s12downloaden, "ik maak keuze", s13robotkiest).
next(co_handshake_gesture, s12downloaden, "fail", s13kindkiest).

state(co_handshake_gesture, s13kindkiest, question).
stateConfig(co_handshake_gesture, s13kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_handshake, s20kindkiest]]]).
text(co_handshake_gesture, s13kindkiest, "Wil je de eerste of de tweede beweging?").
next(co_handshake_gesture, s13kindkiest, "success", s14kindkiest).
next(co_handshake_gesture, s13kindkiest, "fail", s13kindkiestf).

state(co_handshake_gesture, s13kindkiestf, say).
text(co_handshake_gesture,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").

state(co_handshake_gesture, s14kindkiest, say).
text(co_handshake_gesture,  s14kindkiest, "Goede keuze.").

state(co_handshake_gesture, s13robotkiest, say).
text(co_handshake_gesture,  s13robotkiest, "De eerste vond ik het leukst. Dus die heb ik gekozen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sound				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_sound, s1, question).
stateConfig(co_handshake_sound, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_sound, s1, "Wil je een geluid toevoegen aan de ceremonie?").
next(co_handshake_sound, s1, 'answer_yes', s2y).
next(co_handshake_sound, s1, 'answer_no', s2n).
next(co_handshake_sound, s1, 'answer_dontknow', s2d).
next(co_handshake_sound, s1, 'fail', s2d).

state(co_handshake_sound, s2y, say).
text(co_handshake_sound, s2y, "Leuk! Als je een leuk idee hebt kun je het geluid zelf maken of ik kan wat downloaden.").
next(co_handshake_sound,  s2y, "true",  s3).

state(co_handshake_sound, s2n, say).
text(co_handshake_sound, s2n, "Helemaal prima.").

state(co_handshake_sound, s2d, say).
text(co_handshake_sound, s2d, "Lastig, misschien een volgende keer.").

state(co_handshake_sound, s3, question).
stateConfig(co_handshake_sound, s3, [type = branch, context = "involvement_selection", options = ['maken', 'downloaden'], defaultAnswer='downloaden',
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_handshake_sound, s5], [co_handshake_ceremonie, s20]]]).
text(co_handshake_sound, s3, "Dus, zelf maken of downloaden?").
next(co_handshake_sound, s3, "success", s4).
next(co_handshake_sound, s3, "fail", s3f).

state(co_handshake_sound, s3f, say).
text(co_handshake_sound, s3f, "Weet je wat? Ik download gewoon wat geluiden.").
next(co_handshake_sound, s3f, 'true', s5).

state(co_handshake_sound, s4, say).
text(co_handshake_sound,  s4, "Oke we gaan het %co_handshake_sound_s21%.").
next(co_handshake_sound,  s4, "true",  s5).

state(co_handshake_sound, s5, branchingPoint).
next(co_handshake_sound, s5, "maken", s6maken).
next(co_handshake_sound, s5, "downloaden", s6downloaden).
next(co_handshake_sound, s5, "fail", s6downloaden).

%%%%%%%%%%%%%% Create sound %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_sound, s6maken, say).
text(co_handshake_sound,  s6maken, "Als je wat bedacht hebt, kun je mijn linker teen indrukken.").
leds(co_handshake_sound,  s6maken, ["RightFootLeds"], ["groen"]).
stateConfig(co_handshake_sound, s6maken, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_handshake_sound,  s6maken, "true",  s7maken).

state(co_handshake_sound, s7maken, say).
text(co_handshake_sound,  s7maken, "Maak je geluid in 3, 2, 1.").
next(co_handshake_sound,  s7maken, "true",  s8maken).

state(co_handshake_sound, s8maken, audioInput).
stateConfig(co_handshake_sound, s8maken, [recordTime=3000]).
next(co_handshake_sound, s8maken, "true", s9maken).

state(co_handshake_sound, s9maken, say).
text(co_handshake_sound,  s9maken, "Wow, leuk joh!").

%%%%%%%%%%%%%% Download sound %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_sound, s6downloaden, say).
text(co_handshake_sound,  s6downloaden, "Ik ben nu twee geluiden aan het downloaden.").
start_led_anim(co_handshake_sound, s6downloaden, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_sound, s6downloaden, [waitTimer=1500]).
next(co_handshake_sound,  s6downloaden, "true",  s7downloaden).

state(co_handshake_sound, s7downloaden, say).
stop_led_anim(co_handshake_sound, s7downloaden).
text(co_handshake_sound,  s7downloaden, "Klaar. Dit is de eerste").
next(co_handshake_sound,  s7downloaden, "true", s8downloaden).

state(co_handshake_sound, s8downloaden, say).
audio(co_handshake_sound, s8downloaden, server, "resources/sounds/lion1.wav").
next(co_handshake_sound,  s8downloaden, "true", s9downloaden).

state(co_handshake_sound, s9downloaden, say).
text(co_handshake_sound,  s9downloaden, "En dit is de tweede").
next(co_handshake_sound,  s9downloaden, "true", s10downloaden).

state(co_handshake_sound, s10downloaden, say).
audio(co_handshake_sound, s10downloaden, server, "resources/sounds/lion2.wav").
next(co_handshake_sound,  s10downloaden, "true", s11downloaden).

state(co_handshake_sound, s11downloaden, question).
stateConfig(co_handshake_sound, s11downloaden, [type = branch, context = "involvement_who_picks_option", options = ['uitzoeken', 'ik maak keuze'], defaultAnswer='uitzoeken',
branchIntents=['uitzoeken' = 'involvement_child_picks', 'ik maak keuze' = 'involvement_robot_picks'], branchingPoints=[[co_handshake_sound, s12downloaden], [co_handshake_ceremonie, s9]]]).
text(co_handshake_sound, s11downloaden, "Wil jij de beste optie uitzoeken of zal ik gewoon kiezen?").
next(co_handshake_sound, s11downloaden, "success", s12downloaden).
next(co_handshake_sound, s11downloaden, "fail", s11downloadenf).

state(co_handshake_sound, s11downloadenf, say).
text(co_handshake_sound,  s11downloadenf, "Het lijkt me beter als jij kiest.").
next(co_handshake_sound,  s11downloadenf, "true",  s12downloaden).

state(co_handshake_sound, s12downloaden, branchingPoint).
next(co_handshake_sound, s12downloaden, "uitzoeken", s13kindkiest).
next(co_handshake_sound, s12downloaden, "ik maak keuze", s13robotkiest).
next(co_handshake_sound, s12downloaden, "fail", s13kindkiest).

state(co_handshake_sound, s13kindkiest, question).
stateConfig(co_handshake_sound, s13kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_handshake_ceremonie, s40]]]).
text(co_handshake_sound, s13kindkiest, "Welke vind je leuker, het eerste of het tweede geluid?").
next(co_handshake_sound, s13kindkiest, "success", s14kindkiest).
next(co_handshake_sound, s13kindkiest, "fail", s13kindkiestf).

state(co_handshake_sound, s13kindkiestf, say).
text(co_handshake_sound,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").

state(co_handshake_sound, s14kindkiest, say).
text(co_handshake_sound,  s14kindkiest, "Goede keuze.").

state(co_handshake_sound, s13robotkiest, say).
text(co_handshake_sound,  s13robotkiest, "Prima! Ik vind de eerste het leukste, dus dan kies ik die.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Light Animation			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_led, s1, question).
stateConfig(co_handshake_led, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_led, s1, "Wil je een licht animatie toevoegen aan de ceremonie?").
next(co_handshake_led, s1, 'answer_yes', s2y).
next(co_handshake_led, s1, 'answer_no', s2n).
next(co_handshake_led, s1, 'answer_dontknow', s2d).
next(co_handshake_led, s1, 'fail', s2d).

state(co_handshake_led, s2y, say).
text(co_handshake_led, s2y, "Leuk!").
next(co_handshake_led,  s2y, "true",  s3).

state(co_handshake_led, s2n, say).
text(co_handshake_led, s2n, "Helemaal prima.").

state(co_handshake_led, s2d, say).
text(co_handshake_led, s2d, "Lastig, misschien een volgende keer.").

state(co_handshake_led, s3, question).
stateConfig(co_handshake_led, s3, [type = branch, context = "involvement_selection", options = ['maken', 'downloaden'], defaultAnswer='downloaden',
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_handshake_led, s5], [co_handshake_ceremonie, s6]]]).
text(co_handshake_led, s3, "Wil jij die voor mij maken of zal ik wat licht animaties downloaden?").
next(co_handshake_led, s3, "success", s4).
next(co_handshake_led, s3, "fail", s3f).

state(co_handshake_led, s3f, say).
text(co_handshake_led, s3f, "Weet je wat? Ik download gewoon wat licht animaties.").
next(co_handshake_led, s3f, 'true', s37).

state(co_handshake_led, s4, say).
text(co_handshake_led,  s4, "Oke we gaan het %co_handshake_led_s3%.").
next(co_handshake_led,  s4, "true",  s5).

state(co_handshake_led, s5, branchingPoint).
next(co_handshake_led, s5, "maken", s6maken).
next(co_handshake_led, s5, "downloaden", s6downloaden).
next(co_handshake_led, s5, "fail", s6downloaden).

%%%%%%%%%%%%%% Create light animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_led, s6maken, say).
prepare_led_anim(co_handshake_led, s6maken).

%%%%%%%%%%%%%% Download light animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_led, s6downloaden, say).
text(co_handshake_led,  s6downloaden, "Ik ben nu twee licht animaties aan het downloaden.").
start_led_anim(co_handshake_led, s6downloaden, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_led, s6downloaden, [waitTimer=1500]).
next(co_handshake_led,  s6downloaden, "true",  s7downloaden).

state(co_handshake_led, s7downloaden, say).
text(co_handshake_led,  s7downloaden, "Klaar. Dit is optie 1").
stop_led_anim(co_handshake_led, s7downloaden).
next(co_handshake_led,  s7downloaden, "true",  s8downloaden).

state(co_handshake_led, s8downloaden, say).
start_led_anim(co_handshake_led, s8downloaden, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
stateConfig(co_handshake_led, s8downloaden, [waitTimer=3000]).
next(co_handshake_led, s8downloaden, "true", s9downloaden).

state(co_handshake_led, s9downloaden, say).
text(co_handshake_led,  s9downloaden, "En dit is optie 2").
stop_led_anim(co_handshake_led, s9downloaden).
next(co_handshake_led,  s9downloaden, "true",  s10downloaden).

state(co_handshake_led, s10downloaden, say).
start_led_anim(co_handshake_led, s10downloaden, "all", "alternate", ["blauw", "oranje"], 500).
stateConfig(co_handshake_led, s10downloaden, [waitTimer=3000]).
next(co_handshake_led, s10downloaden, "true", s11downloaden).

state(co_handshake_led, s11downloaden, question).
stateConfig(co_handshake_led, s11downloaden, [type = branch, context = "involvement_who_picks_option", options = ['uitzoeken', 'ik maak keuze'], defaultAnswer='uitzoeken',
branchIntents=['uitzoeken' = 'involvement_child_picks', 'ik maak keuze' = 'involvement_robot_picks'], branchingPoints=[[co_handshake_led, s12downloaden], [co_handshake_ceremonie, s7downloaden]]]).
text(co_handshake_led, s11downloaden, "Wil jij de beste optie uitzoeken of zal ik gewoon kiezen?").
stop_led_anim(co_handshake_led, s11downloaden).
next(co_handshake_led, s11downloaden, "success", s12downloaden).
next(co_handshake_led, s11downloaden, "fail", s11downloadenf).

state(co_handshake_led, s11downloadenf, say).
text(co_handshake_led,  s11downloadenf, "Het lijkt me beter als jij kiest.").
next(co_handshake_led,  s11downloadenf, "true",  s12downloaden).

state(co_handshake_led, s12downloaden, branchingPoint).
next(co_handshake_led, s12downloaden, "uitzoeken", s13kindkiest).
next(co_handshake_led, s12downloaden, "ik maak keuze", s13robotkiest).
next(co_handshake_led, s12downloaden, "fail", s13kindkiest).

state(co_handshake_led, s13kindkiest, question).
stateConfig(co_handshake_led, s13kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='tweede',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_handshake_ceremonie, s7kindkiest]]]).
text(co_handshake_led, s13kindkiest, "Wil je de eerste of de tweede licht show?").
next(co_handshake_led, s13kindkiest, "success", s14kindkiest).
next(co_handshake_led, s13kindkiest, "fail", s13kindkiestf).

state(co_handshake_led, s13kindkiestf, say).
text(co_handshake_led,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").

state(co_handshake_led, s14kindkiest, say).
text(co_handshake_led,  s14kindkiest, "Goede keuze.").

state(co_handshake_led, s13robotkiest, say).
text(co_handshake_led,  s13robotkiest, "De tweede vond ik het leukst. Dus die heb ik gekozen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ceremonie				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_ceremonie, s1, say).
text(co_handshake_ceremonie,  s1, "Het is tijd om te gaan afronden.").
next(co_handshake_ceremonie,  s1, "true",  s2).

state(co_handshake_ceremonie, s2, say).
text(co_handshake_ceremonie,  s2, "Ik heb er veel van geleerd.").
next(co_handshake_ceremonie,  s2, "true",  s3).

state(co_handshake_ceremonie, s3, say).
text(co_handshake_ceremonie,  s3, "Bedankt voor al je hulp!").
next(co_handshake_ceremonie,  s3, "true",  s4).

state(co_handshake_ceremonie, s4, say).
text(co_handshake_ceremonie,  s4, "En dan nu het afscheid.").
next(co_handshake_ceremonie,  s4, "true",  s5).

state(co_handshake_ceremonie, s5, branchingPoint).
stateConfig(co_handshake_ceremonie, s5, [branchDecider=entity, branchSource=co_handshake_gesture_s1]).
next(co_handshake_ceremonie, s5, 'answer_yes', s6gesture).
next(co_handshake_ceremonie, s5, 'answer_no', s6nogesture).
next(co_handshake_ceremonie, s5, 'answer_dontknow', s6nogesture).
next(co_handshake_ceremonie, s5, 'fail', s6nogesture).

state(co_handshake_ceremonie, s6gesture, branchingPoint).
stateConfig(co_handshake_ceremonie, s6gesture, [branchDecider=entity, branchSource=co_handshake_sound_s1]).
next(co_handshake_ceremonie, s6gesture, 'answer_yes', s6gesturesound).
next(co_handshake_ceremonie, s6gesture, 'answer_no', s6gesturenosound).
next(co_handshake_ceremonie, s6gesture, 'answer_dontknow', s6gesturenosound).
next(co_handshake_ceremonie, s6gesture, 'fail', s6gesturenosound).

state(co_handshake_ceremonie, s6gesturesound, branchingPoint).
stateConfig(co_handshake_ceremonie, s6gesturesound, [branchDecider=entity, branchSource=co_handshake_led_s1]).
next(co_handshake_ceremonie, s6gesturesound, 'answer_yes', s6gesturesoundled).
next(co_handshake_ceremonie, s6gesturesound, 'answer_no', s6gesturesoundnoled).
next(co_handshake_ceremonie, s6gesturesound, 'answer_dontknow', s6gesturesoundnoled).
next(co_handshake_ceremonie, s6gesturesound, 'fail', s6gesturesoundnoled).

state(co_handshake_ceremonie, s6gesturenosound, branchingPoint).
stateConfig(co_handshake_ceremonie, s6gesturenosound, [branchDecider=entity, branchSource=co_handshake_led_s1]).
next(co_handshake_ceremonie, s6gesturenosound, 'answer_yes', s6gesturenosoundled).
next(co_handshake_ceremonie, s6gesturenosound, 'answer_no', s6gesturenosoundnoled).
next(co_handshake_ceremonie, s6gesturenosound, 'answer_dontknow', s6gesturenosoundnoled).
next(co_handshake_ceremonie, s6gesturenosound, 'fail', s6gesturenosoundnoled).

state(co_handshake_ceremonie, s6nogesture, branchingPoint).
stateConfig(co_handshake_ceremonie, s6nogesture, [branchDecider=entity, branchSource=co_handshake_sound_s1]).
next(co_handshake_ceremonie, s6nogesture, 'answer_yes', s6nogesturesound).
next(co_handshake_ceremonie, s6nogesture, 'answer_no', s6nogesturenosound).
next(co_handshake_ceremonie, s6nogesture, 'answer_dontknow', s6nogesturenosound).
next(co_handshake_ceremonie, s6nogesture, 'fail', s6nogesturenosound).

state(co_handshake_ceremonie, s6nogesturesound, branchingPoint).
stateConfig(co_handshake_ceremonie, s6nogesturesound, [branchDecider=entity, branchSource=co_handshake_led_s1]).
next(co_handshake_ceremonie, s6nogesturesound, 'answer_yes', s6nogesturesoundled).
next(co_handshake_ceremonie, s6nogesturesound, 'answer_no', s6nogesturesoundnoled).
next(co_handshake_ceremonie, s6nogesturesound, 'answer_dontknow', s6nogesturesoundnoled).
next(co_handshake_ceremonie, s6nogesturesound, 'fail', s6nogesturesoundnoled).

state(co_handshake_ceremonie, s6nogesturenosound, branchingPoint).
stateConfig(co_handshake_ceremonie, s6nogesturenosound, [branchDecider=entity, branchSource=co_handshake_led_s1]).
next(co_handshake_ceremonie, s6nogesturenosound, 'answer_yes', s6nogesturenosoundled).
next(co_handshake_ceremonie, s6nogesturenosound, 'answer_no', s6nogesturenosoundnoled).
next(co_handshake_ceremonie, s6nogesturenosound, 'answer_dontknow', s6nogesturenosoundnoled).
next(co_handshake_ceremonie, s6nogesturenosound, 'fail', s6nogesturenosoundnoled).

%%%%%%%%%%%%%% Gesture Sound Led %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_ceremonie, s6gesturesoundled, say).
play_motion(co_handshake_ceremonie, s6gesturesoundled, co_handshake_gesture_s11maken).
audio(co_handshake_ceremonie, s6gesturesoundled, recorded, [co_handshake_sound, s8maken]).
play_led_anim(co_handshake_ceremonie,  s6gesturesoundled, co_handshake_led_s6maken).
next(co_handshake_ceremonie, s6gesturesoundled, "true", s7).

state(co_handshake_ceremonie, s7, say).
text(co_handshake_ceremonie,  s7, "Echt prachtig, bedankt en tot ziens!").
stop_led_anim(co_handshake_ceremonie, s7).

%%%%%%%%%%%%%% Gesture Sound NoLed %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_ceremonie, s6gesturesoundnoled, say).
text(co_handshake_ceremonie,  s6gesturesoundnoled, "2").
next(co_handshake_ceremonie,  s6gesturesoundnoled, "true",  s7).

%%%%%%%%%%%%%% Gesture NoSound Led %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_ceremonie, s6gesturenosoundled, say).
text(co_handshake_ceremonie,  s6gesturenosoundled, "3").
next(co_handshake_ceremonie,  s6gesturenosoundled, "true",  s7).

%%%%%%%%%%%%%% Gesture NoSound NoLed %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_ceremonie, s6gesturenosoundnoled, say).
text(co_handshake_ceremonie,  s6gesturenosoundnoled, "4").
next(co_handshake_ceremonie,  s6gesturenosoundnoled, "true",  s7).

%%%%%%%%%%%%%% NoGesture Sound Led %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_ceremonie, s6nogesturesoundled, say).
text(co_handshake_ceremonie,  s6nogesturesoundled, "5").
next(co_handshake_ceremonie,  s6nogesturesoundled, "true",  s7).

%%%%%%%%%%%%%% NoGesture Sound No Led %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_ceremonie, s6nogesturesoundnoled, say).
text(co_handshake_ceremonie,  s6nogesturesoundnoled, "6").
next(co_handshake_ceremonie,  s6nogesturesoundnoled, "true",  s7).

%%%%%%%%%%%%%% NoGesture NoSound Led %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_ceremonie, s6nogesturenosoundled, say).
text(co_handshake_ceremonie,  s6nogesturenosoundled, "7").
next(co_handshake_ceremonie,  s6nogesturenosoundled, "true",  s7).

%%%%%%%%%%%%%% NoGesture NoSound NoLed %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_ceremonie, s6nogesturenosoundnoled, say).
text(co_handshake_ceremonie,  s6nogesturenosoundnoled, "8").
next(co_handshake_ceremonie,  s6nogesturenosoundnoled, "true",  s7).