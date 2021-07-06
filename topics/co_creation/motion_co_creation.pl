%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 			MOTION CO-CREATION	           %%%
%%%           	  Select or create robot motions	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Coordination of involvement				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_motion, s1, question).
stateConfig(co_motion, s1, [type = input, context = "involvement_selection", options = ['maken', 'downloaden'], fast = yes]).
text(co_motion, s1, "Wil jij de beweging maken of zal ik wat opties downloaden?").
next(co_motion, s1, "success", s3).
next(co_motion, s1, "fail", s3f).

state(co_motion, s3f, say).
text(co_motion, s3f, "Weet je wat? Ik download gewoon wat bewegingen.").
next(co_motion, s3f, 'true', sdownload1).

state(co_motion, s3, say).
text(co_motion,  s3, "Oke we gaan het %co_motion_s1%.").
next(co_motion,  s3, "true",  s4).

state(co_motion, s4, branchingPoint, co_motion_s1).
next(co_motion, s4, "maken", smaken1).
next(co_motion, s4, "downloaden", sdownload1).
next(co_motion, s4, "fail", sdownload1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Download						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_motion, sdownload1, say).
text(co_motion,  sdownload1, "Ik ben nu twee bewegingen aan het downloaden.").
leds(co_motion, sdownload1, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_motion, sdownload1, [waitTimer=1500]).
next(co_motion,  sdownload1, "true",  sdownload2).

state(co_motion, sdownload2, say).
text(co_motion,  sdownload2, "Klaar. Dit is optie 1").
leds(co_motion, sdownload2, reset).
next(co_motion,  sdownload2, "true",  sdownload3).

state(co_motion, sdownload3, say).
anim(co_motion, sdownload3, option, 1).
next(co_motion, sdownload3, "true", sdownload4).

state(co_motion, sdownload4, say).
text(co_motion,  sdownload4, "En dit is optie 2").
next(co_motion,  sdownload4, "true",  sdownload5).

state(co_motion, sdownload5, say).
anim(co_motion, sdownload5, option, 2).
next(co_motion, sdownload5, "true", sdownload6).

state(co_motion, sdownload6, question).
stateConfig(co_motion, sdownload6, [type = input, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'hero'], defaultAnswer='eerste', fast = yes]).
text(co_motion, sdownload6, "Wil jij de eerste of tweede beweging, of zal ik kiezen?").
go_to_posture(co_motion, sdownload6).
next(co_motion, sdownload6, "success", sdownload7).
next(co_motion, sdownload6, "fail", sdownload7f).

state(co_motion, sdownload7f, say).
text(co_motion,  sdownload7f, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_motion,  sdownload7f, "true",  sdownload8robot).

state(co_motion, sdownload7, branchingPoint, co_motion_sdownload6).
next(co_motion, sdownload7, "eerste", sdownload8eerste).
next(co_motion, sdownload7, "tweede", sdownload8tweede).
next(co_motion, sdownload7, "hero", sdownload8robot).

state(co_motion, sdownload8eerste, say).
text(co_motion,  sdownload8eerste, "De eerste, goede keuze.").
save_motion(co_motion, sdownload8eerste, option, 1).

state(co_motion, sdownload8tweede, say).
text(co_motion,  sdownload8tweede, "De tweede, goede keuze.").
save_motion(co_motion, sdownload8tweede, option, 2).

state(co_motion, sdownload8robot, say).
text(co_motion,  sdownload8robot, "Prima! De eerste vond ik het leukst. Dus die heb ik gekozen.").
save_motion(co_motion, sdownload8robot, option, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Maken						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_motion, smaken1, say).
text(co_motion,  smaken1, "Als je klaar bent om te beginnen, kun je op mijn grijze tenen drukken waar het lampje groen is.").
leds(co_motion,  smaken1, direct, ["RightFootLeds"], ["groen"]).
stateConfig(co_motion, smaken1, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_motion,  smaken1, "true",  smaken2).

state(co_motion, smaken2, say).
text(co_motion,  smaken2, "Pak mijn armen maar vast.").
leds(co_motion,  smaken2, direct, ["RightFootLeds"], ["wit"]).
stateConfig(co_motion, smaken2, [noAnimation="true"]).
set_stiffness(co_motion, smaken2, ['RArm', 'LArm'], 0).
next(co_motion,  smaken2, "true",  smaken3).

state(co_motion, smaken3, say).
%audio(co_motion, smaken3, file, "resources/sounds/ready_to_record_gesture.wav").
text(co_motion, smaken3, "3. 2. 1").
next(co_motion,  smaken3, "true",  smaken4).

state(co_motion, smaken4, say).
record_motion(co_motion, smaken4, ['RArm', 'LArm'], 0).
stateConfig(co_motion, smaken4, [waitTimer=5000]).
next(co_motion,  smaken4, "true",  smaken5).

state(co_motion, smaken5, say).
text(co_motion,  smaken5, "3. 2. 1. Klaar.").
stateConfig(co_motion, smaken5, [noAnimation="true"]).
next(co_motion,  smaken5, "true",  smaken6).

state(co_motion, smaken6, say).
save_motion(co_motion, smaken6, recording, ['RArm', 'LArm']).
stateConfig(co_motion, smaken6, [noAnimation="true"]).
next(co_motion,  smaken6, "true",  smaken7).

state(co_motion, smaken7, say).
go_to_posture(co_motion, smaken7).
text(co_motion,  smaken7, "Het is heel mooi geworden.").