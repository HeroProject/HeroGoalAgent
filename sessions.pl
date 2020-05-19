%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      MULTI-SESSION DESIGN                 %%%
%%% 							   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%session(getting_acquainted, [general_wakeup, ga_intro, ga_prac_speech, ga_prac_touch, ga_bridge, ga_sports, general_rest]).
session(getting_acquainted, [general_wakeup, ga_bridge, ga_sports, general_rest]).
session(test_session_2, [general_wakeup, test_second_session, general_rest]).
session(testing, [general_wakeup, test_chocolate, test_color, test_party, test_party2, test_color2, test_sound, test_emotion, test_sound2, test_animation, test_leds, test_posture, general_rest]).

%sessionOrder([getting_acquainted, test_session_2]).
sessionOrder([testing]).
userId('1').