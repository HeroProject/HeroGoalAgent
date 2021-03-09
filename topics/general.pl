%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		        GENERAL TOPICS                     %%%
%%%   Collection of general conversational topics for Hero %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Wake up	    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(general_wakeup, s1, say).
wakeup(general_wakeup, s1).
leds(general_wakeup, s1, ["FaceLeds", "ChestLeds", "FeetLeds"], ["white", "white", "white"]).
next(general_wakeup, s1, "true", s2).

state(general_wakeup, s2, say).
go_to_base_posture(general_wakeup, s2).
next(general_wakeup, s2, "true", s3).

state(general_wakeup, s3, say).
enableBreathing(general_wakeup, s3).

state(general_wakeup_en, s1, say).
wakeup(general_wakeup_en, s1).
leds(general_wakeup_en, s1, ["FaceLeds", "ChestLeds", "FeetLeds"], ["white", "white", "white"]).
next(general_wakeup_en, s1, "true", s2).

state(general_wakeup_en, s2, say).
go_to_base_posture(general_wakeup_en, s2).
next(general_wakeup_en, s2, "true", s3).

state(general_wakeup_en, s3, say).
enableBreathing(general_wakeup_en, s3).
stateConfig(general_wakeup_en, s3, [waitTimer=5000]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Rest	    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(general_rest, s1, say).
text(general_rest, s1, "Ik ga nu weer rusten.").
disableBreathing(general_rest, s1).
leds(general_rest, s1, ["FaceLeds", "ChestLeds", "FeetLeds"], ["white", "white", "white"]).
next(general_rest, s1, 'true', s2).

state(general_rest, s2, say). 
rest(general_rest, s2).

state(general_rest_en, s1, say).
%text(general_rest_en, s1, "Time for a break.").
disableBreathing(general_rest_en, s1).
leds(general_rest_en, s1, ["FaceLeds", "ChestLeds", "FeetLeds"], ["white", "white", "white"]).
next(general_rest_en, s1, 'true', s2).

state(general_rest_en, s2, say). 
rest(general_rest_en, s2). 