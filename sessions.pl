%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SESSION DESIGN                       %%%
%%% 							   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%session(getting_acquainted, [general_wakeup, ga_intro, ga_prac_speech, ga_prac_touch, ga_bridge, ga_sports, general_rest]).
%session(test_session_2, [general_wakeup, test_second_session, general_rest]).
%sessionOrder([getting_acquainted, test_session_2]).
%multiSession(false).

%session(testing, [general_wakeup, test_chocolate, test_color, test_party, test_party2, test_color2, test_sound, test_sound2, test_animation, test_leds, test_posture, test_motion, general_rest]).
%session(testing, [general_wakeup, test_color2, general_rest]).
%sessionOrder([testing]).
%multiSession(false).

% Session management
%session(co_creation, [general_wakeup, co_intro, co_tutorial_speech, co_tutorial_touch, co_tutorial_sound, co_tutorial_gesture, general_rest]).
session(co_creation, [general_wakeup, co_tutorial_light, general_rest]).
session(co_creation_baseline, [general_wakeup, co_intro, co_tutorial_speech, co_tutorial_touch, general_rest]).
sessionOrder([co_creation]).
multiSession(false).

% Experimental settings
userId('1').
localVariable(first_name, "Bobbie").