%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DEFAULT CONVERSATIONAL SETTINGS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% override config param for specific state by using key-label in key-value list associated with that state.

% Order for input modalities and respective maximum number of attempts. Available modalities are speech and touch.
keyValue(_, _, inputModality, [speech=2, touch=2]).
% If no answer is given during the first attempt, add an additional attempt to the max. number of attempts.
keyValue(_, _, additionalAttempt, true).
% Default speech speed (value between 1-100)
keyValue(_, _, speechSpeed, 100).
% Default response times for different input modalities, question types, and attempt numbers
keyValue(_, _, maxAnswerTime, [	touch=3000, 
				speechopenend=10000,
				speechyesnofirst=2500, 
				speechyesnononinitial=2000, 
				speechinputfirst=5000, 
				speechinputnoninitial=3500,
				speechbranchfirst=6000,
				speechbranchnoninitial=4000,
				speechquizfirst=5000,
				speechquiznoninitial=3500]).						 
% Default responses of robot to an input modality switch.
keyValue(_, _, modalitySwitchResponse, [speechtouch='Sorry, ik kan het even niet verstaan. Je kunt nu mijn voeten gebruiken.',
					touchspeech='Je mag je antwoord nu hardop tegen mij zeggen.']).
% Name of memory database to connect to.
database("hero_memory"). 