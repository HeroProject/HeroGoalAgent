%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SESSION DESIGN                       %%%
%%% 							   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

session(hospital_1, [general_wakeup, ho1_greeting, ho1_tutorial_speech, ho1_tutorial_touch, ho1_tutorial_question, ho1_animals, ho1_food, ho1_beroep, ho1_sports, ho1_continue, ho1_colors, ho1_family, ho1_goodbye, general_rest]).
session(hospital_2, [general_wakeup, ho2_greeting, ho2_tutorial, ho2_tutorial_2, ho2_story_selection, ho2_goodbye, general_rest]).
session(hospital_3, [general_wakeup, ho3_greeting, ho3_goodbye, general_rest]).

sessionOrder([hospital_1, hospital_2, hospital_3]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Settings			                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Use of GUI.
useGui(true).
% When GUI is used this userId and these localVariables are ignored.
% When no GUI is uses, these variables need to be specified.
setUserId('999').
setSessionId(1).
setBasePosture('Sit').
addLocalVariable(first_name, "Bobby").

% Button to pause and resume the robot during the interaction
setPauseButton('MiddleTactilTouched').

% The eventFailSafe is a backup timer that clears all waitingFor attributes and continues the interaction
% Useful if functionality of naoqi is buggy and the right events are not returned.
evenFailSafeActive(false).
