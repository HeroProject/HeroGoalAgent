%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		        GENERAL MINIDIALOGS                     %%%
%%%   Collection of general conversational minidialogs for Hero %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% NAO		    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Wake up	    		                           %%%
move(general_wakeup, s1, say).
wakeup(general_wakeup, s1).
leds(general_wakeup, s1, reset).
display(general_wakeup, s1, '', always).
next(general_wakeup, s1, "true", s2).

move(general_wakeup, s2, say).
go_to_posture(general_wakeup, s2).
next(general_wakeup, s2, "true", s3).

move(general_wakeup, s3, say).
enableBreathing(general_wakeup, s3).

%%% Rest	    		                           %%%
move(general_rest, s1, say).
text(general_rest, s1, "Ik ga nu weer rusten.").
disableBreathing(general_rest, s1).
leds(general_rest, s1, reset).
display(general_rest, s1, '', always).
next(general_rest, s1, "true", s2).

move(general_rest, s2, say). 
rest(general_rest, s2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Pepper	    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Wake up	    		                           %%%
move(general_wakeup_pepper, s1, say).
wakeup(general_wakeup_pepper, s1).
display(general_wakeup_pepper, s1, '', always).
next(general_wakeup_pepper, s1, "true", s2).

move(general_wakeup_pepper, s2, say).
idle(general_wakeup_pepper, s2, 'false').
next(general_wakeup_pepper, s2, "true", s3).

move(general_wakeup_pepper, s3, say).
enableBreathing(general_wakeup_pepper, s3).

%%% Rest	    		                           %%%
move(general_rest_pepper, s1, say).
text(general_rest_pepper, s1, "Ik ga nu weer rusten.").
%disableBreathing(general_rest_pepper, s1).
display(general_rest_pepper, s1, '', always).
next(general_rest_pepper, s1, "true", s2).

move(general_rest_pepper, s2, say). 
%rest(general_rest, s2).
idle(general_rest_pepper, s2, 'true').