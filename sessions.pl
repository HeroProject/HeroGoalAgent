%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SESSION DESIGN                       %%%
%%% 							   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%% Tests %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functionalities
session(testing_complete, [general_wakeup, test_chocolate, test_color, test_party, test_party2, test_color2, test_sound, test_sound2, test_animation, test_leds, test_leds_anim, test_posture, test_motion, test_motion_file, general_rest]).
session(testing_short, [general_wakeup, test_color, general_rest]).
session(testing_stop_led, [general_wakeup, test_stop_led, general_rest]).
session(lenin, [lenin]).

% Multi session
session(getting_acquainted, [general_wakeup, ga_intro, ga_prac_speech, ga_prac_touch, ga_bridge, ga_sports, general_rest]).
session(test_session_1, [general_wakeup, test_first_session, general_rest]).
session(test_session_2, [general_wakeup, test_second_session, general_rest]).
session(test_session_3, [general_wakeup, test_motion_co_a, test_motion_co_b, general_rest]).
session(test_session_4, [general_wakeup, test_motion_2, general_rest]).
session(test_session_5, [general_wakeup, test_session_sound_1a, test_session_sound_1b, general_rest]).
session(test_session_6, [general_wakeup, test_session_sound_2, general_rest]).
session(test_session_7, [general_wakeup, test_session_led_1a, test_session_led_1b, general_rest]).
session(test_session_8, [general_wakeup, test_session_led_2, general_rest]).

% Co-creation
session(co_creation_short, [general_wakeup, co_intro, general_rest]).

session(co_creation_baseline_reset, [general_wakeup, 
co_zoo_intro, co_zoo_elephant_baseline, co_zoo_lion_baseline, co_zoo_dolphin_baseline, 
co_handshake, co_handshake_gesture_baseline, co_handshake_sound_baseline, co_handshake_led_baseline, co_handshake_ceremonie,
general_rest]).

% Robotstories
session(robotstories_test, [general_wakeup, rs_intro, rs_thread_1_seq_1, general_rest]).
session(robotstories_session_1, [general_wakeup, eerste_begroeting_secret_handshake, robospelen_1_intro, dagdromen_sport, 
hero_kan_dromen, dagdromen_beroep, robospelen_2_sport, robospelen_3_coach, doei_secret_handshake_1, general_rest]).

%%%%%%%%%%%%%% Co-creation user study %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Experimental condition
session(co_creation, [general_wakeup, 
co_intro, co_tutorial_speech, co_tutorial_touch, co_tutorial_gesture, co_tutorial_sound, co_tutorial_lights, co_invol, co_tutorial_question,
co_zoo_intro, co_zoo_elephant, co_zoo_lion, co_zoo_dolphin, co_zoo_dolphin_showtime, 
co_handshake, co_handshake_gesture, co_handshake_sound, co_handshake_led, co_handshake_ceremonie,
general_rest]).

% Control / baseline condition
session(co_creation_baseline, [general_wakeup, 
co_intro, co_invol_baseline, co_tutorial_speech, co_tutorial_touch,
co_zoo_intro, co_zoo_elephant_baseline, co_zoo_lion_baseline, co_zoo_dolphin_baseline, 
co_handshake, co_handshake_gesture_baseline, co_handshake_sound_baseline, co_handshake_led_baseline, co_handshake_ceremonie,
general_rest]).

%%%%%%%%%%%%%% Hospital user study %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
session(hospital_1, [general_wakeup, ho1_greeting, ho1_tutorial_speech, ho1_tutorial_touch, ho1_tutorial_question, ho1_animals, ho1_food, ho1_beroep, ho1_sports, ho1_continue, ho1_colors, ho1_family, ho1_goodbye, general_rest]).
session(hospital_2, [general_wakeup, ho2_greeting, ho2_tutorial, ho2_tutorial_2, ho2_story_selection, ho2_goodbye, general_rest]).
session(hospital_3, [general_wakeup, ho3_greeting, ho3_goodbye, general_rest]).

%%%%%%%%%%%%%% Interactieve slaapquiz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
session(slaapquiz, [general_wakeup, intro, algemeen, activiteiten, routine, pauze1, slaapkamer, piekeren, pauze2, bewegen, etendrinken, afsluiting, general_rest]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Settings			                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Use of GUI.
useGui(false).
% When GUI is used this userId and these localVariables are ignored.
% When no GUI is used, these variables need to be specified.
setUserId('999').
setSessionId(1).
setBasePosture('Sit').
addLocalVariable(first_name, "Samuel").

% Button to pause and resume the robot during the interaction
setPauseButton('MiddleTactilTouched').

% The eventFailSafe is a backup timer that clears all waitingFor attributes and continues the interaction
% Useful if functionality of naoqi is buggy and the right events are not returned.
evenFailSafeActive(false).

% Session details.
sessionOrder([slaapquiz]).
%sessionOrder([hospital_1, hospital_2, hospital_3]).
%sessionOrder([test_session_1, test_session_2, test_session_3, test_session_4, test_session_5, test_session_6, test_session_7, test_session_8]).
%sessionOrder([testing_short]).