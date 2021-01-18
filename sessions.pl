%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SESSION DESIGN                       %%%
%%% 							   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introduction    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%% Tests %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functionalities
session(testing_complete, [general_wakeup, test_chocolate, test_color, test_party, test_party2, test_color2, test_sound, test_sound2, test_animation, test_leds, test_leds_anim, test_posture, test_motion, general_rest]).
session(testing_short, [general_wakeup, test_sound, general_rest]).
session(testing_stop_led, [general_wakeup, test_stop_led, general_rest]).
session(lenin, [lenin]).

% Multi session
session(getting_acquainted, [general_wakeup, ga_intro, ga_prac_speech, ga_prac_touch, ga_bridge, ga_sports, general_rest]).
session(test_session_2, [general_wakeup, test_second_session, general_rest]).

% Co-creation
session(co_creation_short, [general_wakeup, co_intro, general_rest]).

session(co_creation_baseline_reset, [general_wakeup, 
co_zoo_intro, co_zoo_elephant_baseline, co_zoo_lion_baseline, co_zoo_dolphin_baseline, 
co_handshake, co_handshake_gesture_baseline, co_handshake_sound_baseline, co_handshake_led_baseline, co_handshake_ceremonie,
general_rest]).


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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Settings			                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
userId('999').
localVariable(first_name, "Bobbie"). 
sessionOrder([co_creation_short]).
multiSession(false).