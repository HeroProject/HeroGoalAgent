%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SESSION DESIGN                       %%%
%%% 	  Session templates and multi-session design	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Session templates		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sessionDesign(sorocova_pilot_1, [general_wakeup, sor_intro, sor_tutorial, sor_test_full, general_rest]).
sessionDesign(sorocova_pilot_2, [general_wakeup, general_rest]).

sessionDesign(sorocova_test_1, [general_wakeup, sor_tutorial, general_rest]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Multi-session design	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

multiSessionDesign(sorocova_pilot, [sorocova_pilot_1, sorocova_pilot_2]).

multiSessionDesign(sorocova_test, [sorocova_test_1]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test Suite			                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%% Session Design %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functionalities
sessionDesign(testing_complete, [general_wakeup, test_chocolate, test_color, test_color2, test_sound, test_sound2, test_animation, test_leds, test_leds_anim, test_posture, test_motion, test_motion_file, general_rest]).
sessionDesign(testing_short, [general_wakeup, test_color2, general_rest]).
sessionDesign(testing_stop_led, [general_wakeup, test_stop_led, general_rest]).
sessionDesign(testing_short_pepper, [general_wakeup_pepper, test_color, general_rest_pepper]).

% Multi session
sessionDesign(test_session_1, [general_wakeup, test_first_session, general_rest]).
sessionDesign(test_session_2, [general_wakeup, test_second_session, general_rest]).
sessionDesign(test_session_3, [general_wakeup, test_motion_co_a, test_motion_co_b, general_rest]).
sessionDesign(test_session_4, [general_wakeup, test_motion_2, general_rest]).
sessionDesign(test_session_5, [general_wakeup, test_session_sound_1a, test_session_sound_1b, general_rest]).
sessionDesign(test_session_6, [general_wakeup, test_session_sound_2, general_rest]).
sessionDesign(test_session_7, [general_wakeup, test_session_led_1a, test_session_led_1b, general_rest]).
sessionDesign(test_session_8, [general_wakeup, test_session_led_2, general_rest]).

%%%%%%%%%%%%%% Multi-session design %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
multiSessionDesign(test_short, [testing_short]).
multiSessionDesign(test_short_pepper, [testing_short_pepper]).
multiSessionDesign(test_multi_session, [test_session_1, test_session_2, test_session_3, test_session_4, test_session_5, test_session_6, test_session_7, test_session_8]).
