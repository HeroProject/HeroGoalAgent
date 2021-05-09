%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SESSION DESIGN                       %%%
%%% Session templates, multi-session design, settings	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Session templates		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%% Tests %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functionalities
sessionDesign(testing_complete, [general_wakeup, test_chocolate, test_color, test_party, test_party2, test_color2, test_sound, test_sound2, test_animation, test_leds, test_leds_anim, test_posture, test_motion, test_motion_file, general_rest]).
sessionDesign(testing_short, [general_wakeup, test_first_session, general_rest]).
sessionDesign(testing_stop_led, [general_wakeup, test_stop_led, general_rest]).

% Multi session
sessionDesign(getting_acquainted, [general_wakeup, ga_intro, ga_prac_speech, ga_prac_touch, ga_bridge, ga_sports, general_rest]).
sessionDesign(test_session_1, [general_wakeup, test_first_session, general_rest]).
sessionDesign(test_session_2, [general_wakeup, test_second_session, general_rest]).
sessionDesign(test_session_3, [general_wakeup, test_motion_co_a, test_motion_co_b, general_rest]).
sessionDesign(test_session_4, [general_wakeup, test_motion_2, general_rest]).
sessionDesign(test_session_5, [general_wakeup, test_session_sound_1a, test_session_sound_1b, general_rest]).
sessionDesign(test_session_6, [general_wakeup, test_session_sound_2, general_rest]).
sessionDesign(test_session_7, [general_wakeup, test_session_led_1a, test_session_led_1b, general_rest]).
sessionDesign(test_session_8, [general_wakeup, test_session_led_2, general_rest]).

%%%%%%%%%%%%%% Robotstories %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%sessionDesign(robotstories_test, [general_wakeup, [topic=beroep], robospelen_1_intro, dagdromen_sport, [thread=robospelen], [thread=robospelen], [topic=beroep], general_rest]).
%sessionDesign(robotstories_test1, [general_wakeup, dagdromen_sport, general_rest]).
%sessionDesign(robotstories_test2, [general_wakeup, [theme='_chitchat'], general_rest]).

%sessionDesign(robotstories_test1, [general_wakeup, robospelen_1_intro, general_rest]).
%sessionDesign(robotstories_test2, [general_wakeup, dagdromen_sport, [thread=robospelen], [thread=robospelen], general_rest]).
%sessionDesign(robotstories_test2, [general_wakeup, dagdromen_sport, [thread=robospelen], [thread=robospelen], general_rest]).

sessionDesign(robotstories_1, [general_wakeup, youtubefilmpjes_jungle, general_rest]).
%sessionDesign(robotstories_1, [general_wakeup, robospelen_3_coach, doei_secret_handshake_1, general_rest]).
%sessionDesign(robotstories_2, [general_wakeup, begroeting_leuke_dag_gehad, robospelen_4_ingeschreven, lievelingsdier, [thread=dromen], robospelen_5_info, [theme=robospelen_ronde], [theme=verschillen_robot_mens], robospelen_6_info_vervolg, general_rest]).
sessionDesign(robotstories_3, [general_wakeup, [theme=lievelings], robospelen_7_oefenopdracht, [theme=personalia], [thread=dromen], [theme=verschillen_robot_mens], robospelen_8_moeilijk, general_rest]).
sessionDesign(robotstories_4, [general_wakeup, robospelen_9_vuur, [theme=natuur], [thread=dromen], [theme=youtubefilmpjes], robospelen_10_gebreken, general_rest]).
sessionDesign(robotstories_5, [general_wakeup, [theme=youtubefilmpjes], robospelen_11_bijna, [thread=dromen], [theme=personalia], robospelen_12_peptalk, general_rest]).
sessionDesign(robotstories_6, [general_wakeup, [theme=personalia], conclusie, [theme='_chitchat'], robospelen_14_bedankt, general_rest]).
sessionDesign(robotstories_7, [general_wakeup, ruimterobots, superkracht, lievelingseten, youtubefilmpjes_jungle, general_rest]).



%%%%%%%%%%%%%% Co-creation user study %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Experimental condition
sessionDesign(co_creation, [general_wakeup, 
co_intro, co_tutorial_speech, co_tutorial_touch, co_tutorial_gesture, co_tutorial_sound, co_tutorial_lights, co_invol, co_tutorial_question,
co_zoo_intro, co_zoo_elephant, co_zoo_lion, co_zoo_dolphin, co_zoo_dolphin_showtime, 
co_handshake, co_handshake_gesture, co_handshake_sound, co_handshake_led, co_handshake_ceremonie,
general_rest]).

% Control / baseline condition
sessionDesign(co_creation_baseline, [general_wakeup, 
co_intro, co_invol_baseline, co_tutorial_speech, co_tutorial_touch,
co_zoo_intro, co_zoo_elephant_baseline, co_zoo_lion_baseline, co_zoo_dolphin_baseline, 
co_handshake, co_handshake_gesture_baseline, co_handshake_sound_baseline, co_handshake_led_baseline, co_handshake_ceremonie,
general_rest]).

%%%%%%%%%%%%%% Hospital user study %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sessionDesign(hospital_1, [general_wakeup, ho1_greeting, ho1_tutorial_speech, ho1_tutorial_touch, ho1_tutorial_question, ho1_animals, ho1_food, ho1_beroep, ho1_sports, ho1_continue, ho1_colors, ho1_family, ho1_goodbye, general_rest]).
sessionDesign(hospital_2, [general_wakeup, ho2_greeting, ho2_tutorial, ho2_tutorial_2, ho2_story_selection, ho2_goodbye, general_rest]).
sessionDesign(hospital_3, [general_wakeup, ho3_greeting, ho3_goodbye, general_rest]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Multi-session design	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Test suite
multiSessionDesign([testing_short]).
%multiSessionDesign([test_session_1, test_session_2, test_session_3, test_session_4, test_session_5, test_session_6, test_session_7, test_session_8]).

% Hospital study
%multiSessionDesign([hospital_1, hospital_2, hospital_3]).

% Robotstories
%multiSessionDesign([robotstories_1, robotstories_2, robotstories_3, robotstories_4, robotstories_5, robotstories_6]).
%multiSessionDesign([robotstories_test1, robotstories_test2]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Settings			                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Use of GUI.
useGui(false).
% When GUI is used this userId and these localVariables are ignored.
% When no GUI is uses, these variables need to be specified.
setUserId('999').
setSessionId(1).
setContinueSession(false).
setBasePosture('Stand').
addLocalVariable(first_name, "Dennis").

% Use of memory
useMemory(true).

% Button to pause and resume the robot during the interaction
setPauseButton('MiddleTactilTouched').
% The eventFailSafe is a backup timer that clears all waitingFor attributes and continues the interaction
% Useful if functionality of naoqi is buggy and the right events are not returned.
evenFailSafeActive(false).
% Record the interaction
recordInteractionActive(false).