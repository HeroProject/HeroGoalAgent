%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		SETTINGS for AGENT APPLICATION		   %%%
%%%  			  				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% SESSION SETTINGS		    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
multiSessionDesignId(testing_short). % see minidialogs/session.pl for available multi-session designs
sessionId(1).
userId('999').

%%% Local Variables 		    %%%
localVariable(first_name, "Max"). % %fist_name% can be used in text.

%%% Memory settings		    %%%
useMemory(true). % condition
continueSession(true).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DEFAULT VALUES		    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ROBOT defaults		    %%%
pauseButton('MiddleTactilTouched').
basePosture('Stand').
tabletUse(explicit). %can be repair, explicit, or always

%%% MOVECONFIG defaults		    %%% 
% override config param for specific move by using key-label in key-value list associated with that move.

% Order for input modalities and respective maximum number of attempts. Available modalities are speech, feet and tablet.
%keyValue(_, _, inputModality, [speech=2, feet=2]).
keyValue(_, _, inputModality, [speech=2, tablet=2]).
% If no answer is given during the first attempt, add an additional attempt to the max. number of attempts.
keyValue(_, _, additionalAttempt, true).
% Default speech speed (value between 1-100)
keyValue(_, _, speechSpeed, 90).
% Default response times for different input modalities, question types, and attempt numbers
keyValue(_, _, maxAnswerTime, [	feet=3000,
				tablet=4000, 
				speechopenend=12000,
				speechyesnofirst=3500, 
				speechyesnononinitial=3500, 
				speechinputfirst=5000, 
				speechinputnoninitial=3500,
				speechquizfirst=5000,
				speechquiznoninitial=3500]).						 

% Default responses of robot to an input modality switch.
keyValue(_, _, modalitySwitchResponse, [feet='Sorry, dat ging even mis. Je kunt nu mijn voeten gebruiken om je antwoord door te geven.',
					speech='Sorry, dat ging even mis.  Je mag je antwoord nu hardop tegen mij zeggen.',
					tablet='Sorry, dat ging even mis. Je kunt nu de tè blèet gebruiken om je antwoord door te geven.']).