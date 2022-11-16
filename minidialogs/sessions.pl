%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SESSION DESIGN                       %%%
%%% 	  Session templates and multi-session design	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Session templates		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
multiSessionDesign(bieb, [bieb_1]).
sessionDesign(bieb_1, [general_wakeup, bieb_begroeting, robospelen_1_intro, robospelen_3_coach, lievelingseten, robospelen_6_gedachtelezen, bieb_handshake_maken, bieb_doei, general_rest]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test Suite			                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
multiSessionDesign(test_short, [testing_short]).

sessionDesign(testing_complete, [general_wakeup, test_chocolate, test_color, test_color2, test_sound, test_sound2, test_animation, test_leds, test_leds_anim, test_posture, test_motion, test_motion_file, general_rest]).
sessionDesign(testing_short, [general_wakeup, test_color, general_rest]).
sessionDesign(testing_stop_led, [general_wakeup, test_stop_led, general_rest]).
sessionDesign(testing_short_pepper, [general_wakeup_pepper, test_color, general_rest_pepper]).

