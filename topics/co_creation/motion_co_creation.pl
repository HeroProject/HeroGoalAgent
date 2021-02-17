%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 			MOTION CO-CREATION	           %%%
%%%           	  Select or create robot motions	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Coordination of involvement				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_motion, s1, say).
scrup_answers(co_motion, s1).
next(co_motion, s1, "true", s2).

state(co_motion, s2, question).
stateConfig(co_motion, s2, [type = branch, context = "involvement_selection", options = ['maken', 'downloaden'],
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_motion, s4]]]).
text(co_motion, s2, "Wil jij de beweging maken of zal ik wat opties downloaden?").
next(co_motion, s2, "success", s3).
next(co_motion, s2, "fail", s3f).

state(co_motion, s3f, say).
text(co_motion, s3f, "Weet je wat? Ik download gewoon wat bewegingen.").
next(co_motion, s3f, 'true', sdownload1).

state(co_motion, s3, say).
text(co_motion,  s3, "Oke we gaan het %co_motion_s2%.").
next(co_motion,  s3, "true",  s4).

state(co_motion, s4, branchingPoint).
next(co_motion, s4, "maken", smaken1).
next(co_motion, s4, "downloaden", sdownload1).
next(co_motion, s4, "fail", sdownload1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Download						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_motion, sdownload1, say).
text(co_motion,  sdownload1, "Ik ben nu twee bewegingen aan het downloaden.").
start_led_anim(co_motion, sdownload1, "eyes", "rotate", ["purple"], 500).
stateConfig(co_motion, sdownload1, [waitTimer=1500]).
next(co_motion,  sdownload1, "true",  sdownload2).

state(co_motion, sdownload2, say).
text(co_motion,  sdownload2, "Klaar. Dit is optie 1").
stop_led_anim(co_motion, sdownload2).
next(co_motion,  sdownload2, "true",  sdownload3).

state(co_motion, sdownload3, say).
play_motion_option(co_motion, sdownload3, 1).
next(co_motion, sdownload3, "true", sdownload4).

state(co_motion, sdownload4, say).
text(co_motion,  sdownload4, "En dit is optie 2").
next(co_motion,  sdownload4, "true",  sdownload5).

state(co_motion, sdownload5, say).
play_motion_option(co_motion, sdownload5, 2).
next(co_motion, sdownload5, "true", sdownload6).

state(co_motion, sdownload6, question).
stateConfig(co_motion, sdownload6, [type = branch, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'robot kiest'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two', 'robot kiest' = 'involvement_robot_picks'], branchingPoints=[[co_motion, sdownload7]]]).
text(co_motion, sdownload6, "Wil jij de eerste of tweede beweging, of zal ik kiezen?").
go_to_base_posture(co_motion, sdownload6).
next(co_motion, sdownload6, "success", sdownload7).
next(co_motion, sdownload6, "fail", sdownload7f).

state(co_motion, sdownload7f, say).
text(co_motion,  sdownload7f, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_motion,  sdownload7f, "true",  sdownload8robot).

state(co_motion, sdownload7, branchingPoint).
next(co_motion, sdownload7, "eerste", sdownload8eerste).
next(co_motion, sdownload7, "tweede", sdownload8tweede).
next(co_motion, sdownload7, "robot kiest", sdownload8robot).

state(co_motion, sdownload8eerste, say).
text(co_motion,  sdownload8eerste, "De eerste, goede keuze.").
save_motion_option(co_motion, sdownload8eerste, 1).

state(co_motion, sdownload8tweede, say).
text(co_motion,  sdownload8tweede, "De tweede, goede keuze.").
save_motion_option(co_motion, sdownload8tweede, 2).

state(co_motion, sdownload8robot, say).
text(co_motion,  sdownload8robot, "Prima! De eerste vond ik het leukst. Dus die heb ik gekozen.").
save_motion_option(co_motion, sdownload8robot, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Maken						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_motion, smaken1, say).
text(co_motion,  smaken1, "Als je klaar bent om te beginnen, kun je mijn linker teen indrukken.").
leds(co_motion,  smaken1, ["RightFootLeds"], ["groen"]).
stateConfig(co_motion, smaken1, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_motion,  smaken1, "true",  smaken2).

state(co_motion, smaken2, say).
text(co_motion,  smaken2, "Pak mijn armen maar vast.").
leds(co_motion,  smaken2, ["RightFootLeds"], ["wit"]).
stateConfig(co_motion, smaken2, [noAnimation="true"]).
set_stiffness(co_motion, smaken2, ['RArm', 'LArm'], 0).
next(co_motion,  smaken2, "true",  smaken3).

state(co_motion, smaken3, say).
%audio(co_motion, smaken3, server, "resources/sounds/ready_to_record_gesture.wav").
text(co_motion, smaken3, "3. 2. 1").
next(co_motion,  smaken3, "true",  smaken4).

state(co_motion, smaken4, say).
start_motion_recording(co_motion, smaken4, ['RArm', 'LArm']).
stateConfig(co_motion, smaken4, [waitTimer=5000]).
next(co_motion,  smaken4, "true",  smaken5).

state(co_motion, smaken5, say).
text(co_motion,  smaken5, "3. 2. 1. Klaar.").
stateConfig(co_motion, smaken5, [noAnimation="true"]).
next(co_motion,  smaken5, "true",  smaken6).

state(co_motion, smaken6, say).
stop_motion_recording(co_motion, smaken6, ['RArm', 'LArm']).
stateConfig(co_motion, smaken6, [noAnimation="true"]).
next(co_motion,  smaken6, "true",  smaken7).

state(co_motion, smaken7, say).
go_to_base_posture(co_motion, smaken7).
text(co_motion,  smaken7, "Het is heel mooi geworden.").