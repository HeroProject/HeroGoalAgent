%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		       SESSION DESIGN                      %%%
%%% 							   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%session(getting_acquainted, [general_wakeup, ga_intro, ga_prac_speech, ga_prac_touch, ga_bridge, ga_sports, general_rest]).
session(getting_acquainted, [general_wakeup, ga_bridge, ga_sports, general_rest]).
session(test_session_2, [general_wakeup, test_second_session, general_rest]).

sessionOrder([getting_acquainted, test_session_2]).
userId('1').