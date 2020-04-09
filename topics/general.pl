%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		        GENERAL TOPICS                     %%%
%%%   Collection of general conversational topics for Hero %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Wake up	    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(general_wakeup, s1, say).
wakeup(general_wakeup, s1).
leds(general_wakeup, s1, "white").
next(general_wakeup, s1, "true", s2).

state(general_wakeup, s2, say).
enableBreathing(general_wakeup, s2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Rest	    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(general_rest, s1, say).
text(general_rest, s1, "Ik ga nu weer rusten.").
disableBreathing(general_rest, s1).
next(general_rest, s1, 'true', s2).

state(general_rest, s2, say). 
rest(general_rest, s2). 