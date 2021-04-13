%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           Topics for a co-creation conversation	   %%%
%%%			Secret Handshake		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake, s1, say).
text(co_handshake,  s1, "Zo, we zijn bijna bij het einde gekomen.").
next(co_handshake,  s1, "true",  s2).

state(co_handshake, s2, say).
text(co_handshake,  s2, "Ik vond het erg leuk.").
next(co_handshake,  s2, "true",  s3).

state(co_handshake, s3, question).
stateConfig(co_handshake, s3, [type=yesno, context='answer_yesno']).
text(co_handshake, s3, "Vond jij het ook leuk?").
next(co_handshake, s3, 'answer_yes', s4y).
next(co_handshake, s3, 'answer_no', s4n).
next(co_handshake, s3, 'answer_dontknow', s4n).
next(co_handshake, s3, 'fail', s5).

state(co_handshake, s4y, question).
stateConfig(co_handshake, s4y, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_handshake, s4y, "Wat vond je het leukste?").
next(co_handshake, s4y, 'success', s5y).
next(co_handshake, s4y, 'fail', s5y).

state(co_handshake, s4n, question).
stateConfig(co_handshake, s4n, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_handshake, s4n, "Wat vond je niet zo leuk?").
next(co_handshake, s4n, 'success', s5n).
next(co_handshake, s4n, 'fail', s5n).

state(co_handshake, s5y, say).
text(co_handshake,  s5y, "Dat was ook leuk!").
next(co_handshake,  s5y, "true",  s6).

state(co_handshake, s5n, say).
text(co_handshake,  s5n, "Wat vervelend.").
next(co_handshake,  s5n, "true",  s6).

state(co_handshake, s6, say).
text(co_handshake,  s6, "Voor we gaan zou ik graag nog een afscheids show willen maken.").
next(co_handshake,  s6, "true",  s7).

state(co_handshake, s7, say).
text(co_handshake,  s7, "Als je het leuk vind kun je hier een beweging, geluid, en een licht animatie aan toevoegen. Ik zal dit 1 voor 1 vragen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Gesture				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_gesture, s1, question).
stateConfig(co_handshake_gesture, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_gesture, s1, "Wil je een beweging toevoegen aan de af scheids show?").
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
leds(co_handshake_gesture,  s6maken, direct, ["RightFootLeds"], ["groen"]).
stateConfig(co_handshake_gesture, s6maken, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_handshake_gesture,  s6maken, "true",  s7maken).

state(co_handshake_gesture, s7maken, say).
text(co_handshake_gesture,  s7maken, "Pak mijn armen maar vast.").
leds(co_handshake_gesture,  s7maken, direct, ["RightFootLeds"], ["wit"]).
stateConfig(co_handshake_gesture, s7maken, [noAnimation="true"]).
set_stiffness(co_handshake_gesture, s7maken, ['RArm', 'LArm'], 0).
next(co_handshake_gesture,  s7maken, "true",  s8maken).

state(co_handshake_gesture, s8maken, say).
audio(co_handshake_gesture, s8maken, file, "resources/sounds/ready_to_record_gesture.wav").
next(co_handshake_gesture,  s8maken, "true",  s9maken).

state(co_handshake_gesture, s9maken, say).
start_motion_recording(co_handshake_gesture, s9maken, ['RArm', 'LArm']).
stateConfig(co_handshake_gesture, s9maken, [waitTimer=12]).
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
save_behavior(co_handshake_gesture, s12maken, "GoodbyeCeremonie", [motion=recording, motionSource=co_handshake_gesture_s11maken]).

%%%%%%%%%%%%%% Download gesture %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_gesture, s6downloaden, say).
text(co_handshake_gesture,  s6downloaden, "Ik ben nu twee gebaren aan het downloaden.").
leds(co_handshake_gesture, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_gesture, s6downloaden, [waitTimer=1500]).
next(co_handshake_gesture,  s6downloaden, "true",  s7downloaden).

state(co_handshake_gesture, s7downloaden, say).
text(co_handshake_gesture,  s7downloaden, "Klaar. Dit is optie 1").
leds(co_handshake_gesture, s7downloaden, reset).
next(co_handshake_gesture,  s7downloaden, "true",  s8downloaden).

state(co_handshake_gesture, s8downloaden, say).
anim(co_handshake_gesture, s8downloaden, file, "resources/gestures/goodbye1.xml").
next(co_handshake_gesture, s8downloaden, "true", s9downloaden).

state(co_handshake_gesture, s9downloaden, say).
text(co_handshake_gesture,  s9downloaden, "En dit is optie 2").
next(co_handshake_gesture,  s9downloaden, "true",  s10downloaden).

state(co_handshake_gesture, s10downloaden, say).
anim(co_handshake_gesture, s10downloaden, file, "resources/gestures/goodbye2.xml").
next(co_handshake_gesture, s10downloaden, "true", s11downloaden).

state(co_handshake_gesture, s11downloaden, question).
stateConfig(co_handshake_gesture, s11downloaden, [type = branch, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'robot kiest'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two', 'robot kiest' = 'involvement_robot_picks'], branchingPoints=[[co_handshake_gesture, s12downloaden]]]).
text(co_handshake_gesture, s11downloaden, "Wil jij de eerste of tweede beweging, of zal ik kiezen?").
next(co_handshake_gesture, s11downloaden, "success", s12downloaden).
next(co_handshake_gesture, s11downloaden, "fail", s11downloadenf).

state(co_handshake_gesture, s11downloadenf, say).
text(co_handshake_gesture,  s11downloadenf, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_handshake_gesture,  s11downloadenf, "true",  s12downloaden).

state(co_handshake_gesture, s12downloaden, branchingPoint).
next(co_handshake_gesture, s12downloaden, "eerste", s13eerste).
next(co_handshake_gesture, s12downloaden, "tweede", s13tweede).
next(co_handshake_gesture, s12downloaden, "robot kiest", s13robot).
next(co_handshake_gesture, s12downloaden, "fail", s14eerste).

state(co_handshake_gesture, s13eerste, say).
text(co_handshake_gesture,  s13eerste, "De eerste, goede keuze.").
next(co_handshake_gesture,  s13eerste, "true",  s14eerste).

state(co_handshake_gesture, s13tweede, say).
text(co_handshake_gesture,  s13tweede, "De tweede, goede keuze.").
next(co_handshake_gesture,  s13tweede, "true",  s14tweede).

state(co_handshake_gesture, s13robot, say).
text(co_handshake_gesture,  s13robot, "De eerste vond ik het leukst. Dus die heb ik gekozen.").
next(co_handshake_gesture,  s13robot, "true",  s14eerste).

state(co_handshake_gesture, s14eerste, say).
save_behavior(co_handshake_gesture, s14eerste, "GoodbyeCeremonie", [motion=file, motionSource="resources/gestures/goodbye1.xml"]).

state(co_handshake_gesture, s14tweede, say).
save_behavior(co_handshake_gesture, s14tweede, "GoodbyeCeremonie", [motion=file, motionSource="resources/gestures/goodbye2.xml"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Gesture Baseline			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_gesture_baseline, s1, question).
stateConfig(co_handshake_gesture_baseline, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_gesture_baseline, s1, "Wil je een beweging toevoegen aan de af scheids show?").
next(co_handshake_gesture_baseline, s1, 'answer_yes', s2y).
next(co_handshake_gesture_baseline, s1, 'answer_no', s2n).
next(co_handshake_gesture_baseline, s1, 'answer_dontknow', s2d).
next(co_handshake_gesture_baseline, s1, 'fail', s2d).

state(co_handshake_gesture_baseline, s2y, say).
text(co_handshake_gesture_baseline, s2y, "Leuk!").
next(co_handshake_gesture_baseline,  s2y, "true",  s6downloaden).

state(co_handshake_gesture_baseline, s2n, say).
text(co_handshake_gesture_baseline, s2n, "Helemaal prima.").

state(co_handshake_gesture_baseline, s2d, say).
text(co_handshake_gesture_baseline, s2d, "Misschien een volgende keer dan.").

state(co_handshake_gesture_baseline, s6downloaden, say).
text(co_handshake_gesture_baseline,  s6downloaden, "Ik ben nu twee gebaren aan het downloaden.").
leds(co_handshake_gesture_baseline, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_gesture_baseline, s6downloaden, [waitTimer=1500]).
next(co_handshake_gesture_baseline,  s6downloaden, "true",  s7downloaden).

state(co_handshake_gesture_baseline, s7downloaden, say).
text(co_handshake_gesture_baseline,  s7downloaden, "Klaar. Dit is optie 1").
leds(co_handshake_gesture_baseline, s7downloaden, reset).
next(co_handshake_gesture_baseline,  s7downloaden, "true",  s8downloaden).

state(co_handshake_gesture_baseline, s8downloaden, say).
anim(co_handshake_gesture_baseline, s8downloaden, file, "resources/gestures/goodbye1.xml").
next(co_handshake_gesture_baseline, s8downloaden, "true", s9downloaden).

state(co_handshake_gesture_baseline, s9downloaden, say).
text(co_handshake_gesture_baseline,  s9downloaden, "En dit is optie 2").
next(co_handshake_gesture_baseline,  s9downloaden, "true",  s10downloaden).

state(co_handshake_gesture_baseline, s10downloaden, say).
anim(co_handshake_gesture_baseline, s10downloaden, file, "resources/gestures/goodbye2.xml").
next(co_handshake_gesture_baseline, s10downloaden, "true", s13kindkiest).

state(co_handshake_gesture_baseline, s13kindkiest, question).
stateConfig(co_handshake_gesture_baseline, s13kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one_baseline', 'tweede' = 'involvement_option_two_baseline'], branchingPoints=[[co_handshake_gesture_baseline, s15kindkiest]]]).
text(co_handshake_gesture_baseline, s13kindkiest, "Wil je de eerste of de tweede beweging?").
next(co_handshake_gesture_baseline, s13kindkiest, "success", s14kindkiest).
next(co_handshake_gesture_baseline, s13kindkiest, "fail", s13kindkiestf).

state(co_handshake_gesture_baseline, s13kindkiestf, say).
text(co_handshake_gesture_baseline,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_handshake_gesture_baseline, s13kindkiestf, "true", s15eerste).

state(co_handshake_gesture_baseline, s14kindkiest, say).
text(co_handshake_gesture_baseline,  s14kindkiest, "Goede keuze.").
next(co_handshake_gesture_baseline,  s14kindkiest, "true", s15kindkiest).

state(co_handshake_gesture_baseline, s15kindkiest, branchingPoint).
next(co_handshake_gesture_baseline, s15kindkiest, "eerste", s15eerste).
next(co_handshake_gesture_baseline, s15kindkiest, "tweede", s15tweede).
next(co_handshake_gesture_baseline, s15kindkiest, "fail", s15eerste).

state(co_handshake_gesture_baseline, s15eerste, say).
save_behavior(co_handshake_gesture_baseline, s15eerste, "GoodbyeCeremonie", [motion=file, motionSource="resources/gestures/goodbye1.xml"]).

state(co_handshake_gesture_baseline, s15tweede, say).
save_behavior(co_handshake_gesture_baseline, s15tweede, "GoodbyeCeremonie", [motion=file, motionSource="resources/gestures/goodbye2.xml"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sound				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_sound, s1, question).
stateConfig(co_handshake_sound, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_sound, s1, "Wil je een geluid toevoegen aan de af scheids show?").
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
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_handshake_sound, s5]]]).
text(co_handshake_sound, s3, "Dus, zelf maken of downloaden?").
next(co_handshake_sound, s3, "success", s4).
next(co_handshake_sound, s3, "fail", s3f).

state(co_handshake_sound, s3f, say).
text(co_handshake_sound, s3f, "Weet je wat? Ik download gewoon wat geluiden.").
next(co_handshake_sound, s3f, 'true', s5).

state(co_handshake_sound, s4, say).
text(co_handshake_sound,  s4, "Oke we gaan het %co_handshake_sound_s3%.").
next(co_handshake_sound,  s4, "true",  s5).

state(co_handshake_sound, s5, branchingPoint).
next(co_handshake_sound, s5, "maken", s6maken).
next(co_handshake_sound, s5, "downloaden", s6downloaden).
next(co_handshake_sound, s5, "fail", s6downloaden).

%%%%%%%%%%%%%% Create sound %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_sound, s6maken, say).
text(co_handshake_sound,  s6maken, "Als je wat bedacht hebt, kun je mijn linker teen indrukken.").
leds(co_handshake_sound,  s6maken, direct, ["RightFootLeds"], ["groen"]).
stateConfig(co_handshake_sound, s6maken, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_handshake_sound,  s6maken, "true",  s7maken).

state(co_handshake_sound, s7maken, say).
leds(co_handshake_sound, s7maken, direct, ["RightFootLeds"], ["wit"]).
text(co_handshake_sound,  s7maken, "Maak je geluid in 3, 2, 1.").
next(co_handshake_sound,  s7maken, "true",  s8maken).

state(co_handshake_sound, s8maken, audioInput).
stateConfig(co_handshake_sound, s8maken, [recordTime=6000]).
next(co_handshake_sound, s8maken, "true", s9maken).

state(co_handshake_sound, s9maken, say).
text(co_handshake_sound,  s9maken, "Wow, leuk joh!").
save_behavior(co_handshake_sound, s9maken, "GoodbyeCeremonie", [sound=recording, soundSource=[co_handshake_sound, s8maken]]).

%%%%%%%%%%%%%% Download sound %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_sound, s6downloaden, say).
text(co_handshake_sound,  s6downloaden, "Ik ben nu twee geluiden aan het downloaden.").
leds(co_handshake_sound, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_sound, s6downloaden, [waitTimer=1500]).
next(co_handshake_sound,  s6downloaden, "true",  s7downloaden).

state(co_handshake_sound, s7downloaden, say).
leds(co_handshake_sound, s7downloaden, reset).
text(co_handshake_sound,  s7downloaden, "Klaar. Dit is de eerste").
next(co_handshake_sound,  s7downloaden, "true", s8downloaden).

state(co_handshake_sound, s8downloaden, say).
audio(co_handshake_sound, s8downloaden, file, "resources/sounds/applaus.wav").
next(co_handshake_sound,  s8downloaden, "true", s9downloaden).

state(co_handshake_sound, s9downloaden, say).
text(co_handshake_sound,  s9downloaden, "En dit is de tweede").
next(co_handshake_sound,  s9downloaden, "true", s10downloaden).

state(co_handshake_sound, s10downloaden, say).
audio(co_handshake_sound, s10downloaden, file, "resources/sounds/outro.wav").
next(co_handshake_sound,  s10downloaden, "true", s11downloaden).

state(co_handshake_sound, s11downloaden, question).
stateConfig(co_handshake_sound, s11downloaden, [type = branch, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'robot kiest'], defaultAnswer='tweede',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two', 'robot kiest' = 'involvement_robot_picks'], branchingPoints=[[co_handshake_sound, s12downloaden]]]).
text(co_handshake_sound, s11downloaden, "Wil jij het eerste of tweede geluid, of zal ik kiezen?").
next(co_handshake_sound, s11downloaden, "success", s12downloaden).
next(co_handshake_sound, s11downloaden, "fail", s11downloadenf).

state(co_handshake_sound, s11downloadenf, say).
text(co_handshake_sound,  s11downloadenf, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_handshake_sound,  s11downloadenf, "true",  s12downloaden).

state(co_handshake_sound, s12downloaden, branchingPoint).
next(co_handshake_sound, s12downloaden, "eerste", s13eerste).
next(co_handshake_sound, s12downloaden, "tweede", s13tweede).
next(co_handshake_sound, s12downloaden, "robot kiest", s13robot).
next(co_handshake_sound, s12downloaden, "fail", s14tweede).

state(co_handshake_sound, s13eerste, say).
text(co_handshake_sound,  s13eerste, "De eerste, goede keuze.").
next(co_handshake_sound,  s13eerste, "true",  s14eerste).

state(co_handshake_sound, s13tweede, say).
text(co_handshake_sound,  s13tweede, "De tweede, goede keuze.").
next(co_handshake_sound,  s13tweede, "true",  s14tweede).

state(co_handshake_sound, s13robot, say).
text(co_handshake_sound,  s13robot, "De tweede vond ik het leukst. Dus die heb ik gekozen.").
next(co_handshake_sound,  s13robot, "true",  s14tweede).

state(co_handshake_sound, s14eerste, say).
save_behavior(co_handshake_sound, s14eerste, "GoodbyeCeremonie", [sound=file, soundSource="resources/sounds/applaus.wav"]).

state(co_handshake_sound, s14tweede, say).
save_behavior(co_handshake_sound, s14tweede, "GoodbyeCeremonie", [sound=file, soundSource="resources/sounds/outro.wav"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sound Baseline			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_handshake_sound_baseline, s1, question).
stateConfig(co_handshake_sound_baseline, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_sound_baseline, s1, "Wil je een geluid toevoegen aan de af scheids show?").
next(co_handshake_sound_baseline, s1, 'answer_yes', s2y).
next(co_handshake_sound_baseline, s1, 'answer_no', s2n).
next(co_handshake_sound_baseline, s1, 'answer_dontknow', s2d).
next(co_handshake_sound_baseline, s1, 'fail', s2d).

state(co_handshake_sound_baseline, s2y, say).
text(co_handshake_sound_baseline, s2y, "Leuk!").
next(co_handshake_sound_baseline,  s2y, "true",  s6downloaden).

state(co_handshake_sound_baseline, s2n, say).
text(co_handshake_sound_baseline, s2n, "Helemaal prima.").

state(co_handshake_sound_baseline, s2d, say).
text(co_handshake_sound_baseline, s2d, "Lastig, misschien een volgende keer.").

state(co_handshake_sound_baseline, s6downloaden, say).
text(co_handshake_sound_baseline,  s6downloaden, "Ik ben nu twee geluiden aan het downloaden.").
leds(co_handshake_sound_baseline, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_sound_baseline, s6downloaden, [waitTimer=1500]).
next(co_handshake_sound_baseline,  s6downloaden, "true",  s7downloaden).

state(co_handshake_sound_baseline, s7downloaden, say).
leds(co_handshake_sound_baseline, s7downloaden, reset).
text(co_handshake_sound_baseline,  s7downloaden, "Klaar. Dit is de eerste").
next(co_handshake_sound_baseline,  s7downloaden, "true", s8downloaden).

state(co_handshake_sound_baseline, s8downloaden, say).
audio(co_handshake_sound_baseline, s8downloaden, file, "resources/sounds/applaus.wav").
next(co_handshake_sound_baseline,  s8downloaden, "true", s9downloaden).

state(co_handshake_sound_baseline, s9downloaden, say).
text(co_handshake_sound_baseline,  s9downloaden, "En dit is de tweede").
next(co_handshake_sound_baseline,  s9downloaden, "true", s10downloaden).

state(co_handshake_sound_baseline, s10downloaden, say).
audio(co_handshake_sound_baseline, s10downloaden, file, "resources/sounds/outro.wav").
next(co_handshake_sound_baseline,  s10downloaden, "true", s13kindkiest).

state(co_handshake_sound_baseline, s13kindkiest, question).
stateConfig(co_handshake_sound_baseline, s13kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='tweede',
branchIntents=['eerste' = 'involvement_option_one_baseline', 'tweede' = 'involvement_option_two_baseline'], branchingPoints=[[co_handshake_sound_baseline, s15kindkiest]]]).
text(co_handshake_sound_baseline, s13kindkiest, "Welke vind je leuker, het eerste of het tweede geluid?").
next(co_handshake_sound_baseline, s13kindkiest, "success", s14kindkiest).
next(co_handshake_sound_baseline, s13kindkiest, "fail", s13kindkiestf).

state(co_handshake_sound_baseline, s13kindkiestf, say).
text(co_handshake_sound_baseline,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_handshake_sound_baseline,  s13kindkiestf, "true",  s15tweede).

state(co_handshake_sound_baseline, s14kindkiest, say).
text(co_handshake_sound_baseline,  s14kindkiest, "Goede keuze.").
next(co_handshake_sound_baseline,  s14kindkiest, "true",  s15kindkiest).

state(co_handshake_sound_baseline, s15kindkiest, branchingPoint).
next(co_handshake_sound_baseline, s15kindkiest, "eerste", s15eerste).
next(co_handshake_sound_baseline, s15kindkiest, "tweede", s15tweede).
next(co_handshake_sound_baseline, s15kindkiest, "fail", s15eerste).

state(co_handshake_sound_baseline, s15eerste, say).
save_behavior(co_handshake_sound_baseline, s15eerste, "GoodbyeCeremonie", [sound=file, soundSource="resources/sounds/applaus.wav"]).

state(co_handshake_sound_baseline, s15tweede, say).
save_behavior(co_handshake_sound_baseline, s15tweede, "GoodbyeCeremonie", [sound=file, soundSource="resources/sounds/outro.wav"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Light Animation			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_led, s1, question).
stateConfig(co_handshake_led, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_led, s1, "Wil je een licht animatie toevoegen aan de af scheids show?").
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
save_behavior(co_handshake_led, s6maken, "GoodbyeCeremonie", [led=recording, ledSource=co_handshake_led_s6maken]).

%%%%%%%%%%%%%% Download light animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_led, s6downloaden, say).
text(co_handshake_led,  s6downloaden, "Ik ben nu twee licht animaties aan het downloaden.").
leds(co_handshake_led, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_led, s6downloaden, [waitTimer=1500]).
next(co_handshake_led,  s6downloaden, "true",  s7downloaden).

state(co_handshake_led, s7downloaden, say).
text(co_handshake_led,  s7downloaden, "Klaar. Dit is optie 1").
leds(co_handshake_led, s7downloaden, reset).
next(co_handshake_led,  s7downloaden, "true",  s8downloaden).

state(co_handshake_led, s8downloaden, say).
leds(co_handshake_led, s8downloaden, direct, "all", "blink", ["rood", "wit", "blauw"], 500).
stateConfig(co_handshake_led, s8downloaden, [waitTimer=3000]).
next(co_handshake_led, s8downloaden, "true", s9downloaden).

state(co_handshake_led, s9downloaden, say).
text(co_handshake_led,  s9downloaden, "En dit is optie 2").
leds(co_handshake_led, s9downloaden, reset).
next(co_handshake_led,  s9downloaden, "true",  s10downloaden).

state(co_handshake_led, s10downloaden, say).
leds(co_handshake_led, s10downloaden, direct, "all", "alternate", ["geel", "paars"], 500).
stateConfig(co_handshake_led, s10downloaden, [waitTimer=3000]).
next(co_handshake_led, s10downloaden, "true", s11downloaden).

state(co_handshake_led, s11downloaden, question).
stateConfig(co_handshake_led, s11downloaden, [type = branch, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'robot kiest'], defaultAnswer='tweede',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two', 'robot kiest' = 'involvement_robot_picks'], branchingPoints=[[co_handshake_led, s12downloaden]]]).
text(co_handshake_led, s11downloaden, "Wil jij de eerste of tweede licht animatie, of zal ik kiezen?").
leds(co_handshake_led, s11downloaden, reset).
next(co_handshake_led, s11downloaden, "success", s12downloaden).
next(co_handshake_led, s11downloaden, "fail", s11downloadenf).

state(co_handshake_led, s11downloadenf, say).
text(co_handshake_led,  s11downloadenf, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_handshake_led,  s11downloadenf, "true",  s12downloaden).

state(co_handshake_led, s12downloaden, branchingPoint).
next(co_handshake_led, s12downloaden, "eerste", s13eerste).
next(co_handshake_led, s12downloaden, "tweede", s13tweede).
next(co_handshake_led, s12downloaden, "robot kiest", s13robot).
next(co_handshake_led, s12downloaden, "fail", s14tweede).

state(co_handshake_led, s13eerste, say).
text(co_handshake_led,  s13eerste, "De eerste, goede keuze.").
next(co_handshake_led,  s13eerste, "true",  s14eerste).

state(co_handshake_led, s13tweede, say).
text(co_handshake_led,  s13tweede, "De tweede, goede keuze.").
next(co_handshake_led,  s13tweede, "true",  s14tweede).

state(co_handshake_led, s13robot, say).
text(co_handshake_led,  s13robot, "De tweede vond ik het leukst. Dus die heb ik gekozen.").
next(co_handshake_led,  s13robot, "true",  s14tweede).

state(co_handshake_led, s14eerste, say).
save_behavior(co_handshake_led, s14eerste, "GoodbyeCeremonie", [led=file, ledSource=["all", "blink", ["rood", "wit", "blauw"], 500]]).

state(co_handshake_led, s14tweede, say).
save_behavior(co_handshake_led, s14tweede, "GoodbyeCeremonie", [led=file, ledSource=["all", "alternate", ["geel", "paars"], 500]]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Light Animation Baseline		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_handshake_led_baseline, s1, question).
stateConfig(co_handshake_led_baseline, s1, [type=yesno, context='answer_yesno']).
text(co_handshake_led_baseline, s1, "Wil je een licht animatie toevoegen aan de af scheids show?").
next(co_handshake_led_baseline, s1, 'answer_yes', s2y).
next(co_handshake_led_baseline, s1, 'answer_no', s2n).
next(co_handshake_led_baseline, s1, 'answer_dontknow', s2d).
next(co_handshake_led_baseline, s1, 'fail', s2d).

state(co_handshake_led_baseline, s2y, say).
text(co_handshake_led_baseline, s2y, "Leuk!").
next(co_handshake_led_baseline,  s2y, "true",  s6downloaden).

state(co_handshake_led_baseline, s2n, say).
text(co_handshake_led_baseline, s2n, "Helemaal prima.").

state(co_handshake_led_baseline, s2d, say).
text(co_handshake_led_baseline, s2d, "Lastig, misschien een volgende keer.").

state(co_handshake_led_baseline, s6downloaden, say).
text(co_handshake_led_baseline,  s6downloaden, "Ik ben nu twee licht animaties aan het downloaden.").
leds(co_handshake_led_baseline, s6downloaden, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_handshake_led_baseline, s6downloaden, [waitTimer=1500]).
next(co_handshake_led_baseline,  s6downloaden, "true",  s7downloaden).

state(co_handshake_led_baseline, s7downloaden, say).
text(co_handshake_led_baseline,  s7downloaden, "Klaar. Dit is optie 1").
leds(co_handshake_led_baseline, s7downloaden, reset).
next(co_handshake_led_baseline,  s7downloaden, "true",  s8downloaden).

state(co_handshake_led_baseline, s8downloaden, say).
leds(co_handshake_led_baseline, s8downloaden, direct, "all", "blink", ["rood", "wit", "blauw"], 500).
stateConfig(co_handshake_led_baseline, s8downloaden, [waitTimer=3000]).
next(co_handshake_led_baseline, s8downloaden, "true", s9downloaden).

state(co_handshake_led_baseline, s9downloaden, say).
text(co_handshake_led_baseline,  s9downloaden, "En dit is optie 2").
leds(co_handshake_led_baseline, s9downloaden, reset).
next(co_handshake_led_baseline,  s9downloaden, "true",  s10downloaden).

state(co_handshake_led_baseline, s10downloaden, say).
leds(co_handshake_led_baseline, s10downloaden, direct, "all", "alternate", ["geel", "paars"], 500).
stateConfig(co_handshake_led_baseline, s10downloaden, [waitTimer=3000]).
next(co_handshake_led_baseline, s10downloaden, "true", s13kindkiest).

state(co_handshake_led_baseline, s13kindkiest, question).
stateConfig(co_handshake_led_baseline, s13kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='tweede',
branchIntents=['eerste' = 'involvement_option_one_baseline', 'tweede' = 'involvement_option_two_baseline'], branchingPoints=[[co_handshake_led_baseline, s15kindkiest]]]).
text(co_handshake_led_baseline, s13kindkiest, "Wil je de eerste of de tweede licht show?").
leds(co_handshake_led_baseline, s13kindkiest, reset).
next(co_handshake_led_baseline, s13kindkiest, "success", s14kindkiest).
next(co_handshake_led_baseline, s13kindkiest, "fail", s13kindkiestf).

state(co_handshake_led_baseline, s13kindkiestf, say).
text(co_handshake_led_baseline,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_handshake_led_baseline,  s13kindkiestf, "true",  s15tweede).

state(co_handshake_led_baseline, s14kindkiest, say).
text(co_handshake_led_baseline,  s14kindkiest, "Goede keuze.").
next(co_handshake_led_baseline,  s14kindkiest, "true",  s15kindkiest).

state(co_handshake_led_baseline, s15kindkiest, branchingPoint).
next(co_handshake_led_baseline, s15kindkiest, "eerste", s15eerste).
next(co_handshake_led_baseline, s15kindkiest, "tweede", s15tweede).
next(co_handshake_led_baseline, s15kindkiest, "fail", s15eerste).

state(co_handshake_led_baseline, s15eerste, say).
save_behavior(co_handshake_led_baseline, s15eerste, "GoodbyeCeremonie", [led=file, ledSource=["all", "blink", ["rood", "wit", "blauw"], 500]]).

state(co_handshake_led_baseline, s15tweede, say).
save_behavior(co_handshake_led_baseline, s15tweede, "GoodbyeCeremonie", [led=file, ledSource=["all", "alternate", ["geel", "paars"], 500]]).

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
text(co_handshake_ceremonie,  s4, "En dan nu de af scheids show.").
next(co_handshake_ceremonie,  s4, "true",  s5).

state(co_handshake_ceremonie, s5, say).
text(co_handshake_ceremonie,  s5, "Doei %first_name%, bedankt!").
next(co_handshake_ceremonie,  s5, "true",  s6).

state(co_handshake_ceremonie, s6, say).
play_behavior(co_handshake_ceremonie, s6, "GoodbyeCeremonie").
next(co_handshake_ceremonie,  s6, "true",  s7).

state(co_handshake_ceremonie, s7, say).
leds(co_handshake_ceremonie, s7, reset). 