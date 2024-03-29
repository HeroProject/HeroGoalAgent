%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		SETTINGS for AGENT APPLICATION		   %%%
%%%  			  				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% SESSION SETTINGS		    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
multiSessionDesignId(zoe). % see minidialogs/session.pl for available multi-session designs
sessionId(3).
userId('999').

%%% Local Variables 		    %%%
localVariable(first_name, "Zoey"). % %fist_name% can be used in text.

%%% Memory settings		    %%%
useMemory(true). % condition
continueSession(true).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DEFAULT VALUES		    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ROBOT defaults		    %%%
pauseButton('MiddleTactilTouched').
basePosture('Stand').
tabletUse(always). %can be repair, explicit, or always

%%% MOVECONFIG defaults		    %%% 
% override config param for specific move by using key-label in key-value list associated with that move.

% Order for input modalities and respective maximum number of attempts. Available modalities are speech, feet and tablet.

%keyValue(default, default, inputModality, [speech=2, feet=2]).
keyValue(default, default, inputModality, [tablet=1]).
%keyValue(default, default, inputModality, [speech=2, tablet=1]).
% If no answer is given during the first attempt, add an additional attempt to the max. number of attempts.
keyValue(default, default, additionalAttempt, true).
% Default speech speed (value between 1-100)
keyValue(default, default, speechSpeed, 85).
% Default response times for different input modalities, question types, and attempt numbers
keyValue(default, default, maxAnswerTime, [	feet=3000,
						tablet=0, 
						speechopenend=12000,
						speechyesnofirst=3500, 
						speechyesnononinitial=4500, 
						speechinputfirst=5000, 
						speechinputnoninitial=3500,
						speechquizfirst=5000,
						speechquiznoninitial=3500]).					 

% Default responses of robot to an input modality switch.
keyValue(default, default, modalitySwitchResponse, [feet='Sorry, dat ging even mis. Je kunt nu mijn voeten gebruiken om je antwoord door te geven.',
						    speech='Sorry, dat ging even mis.  Je mag je antwoord nu hardop tegen mij zeggen.',
						    tablet='Sorry, dat ging even mis. Je kunt nu de tè blèet gebruiken om je antwoord door te geven.']).