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
sessionDesign(testing_short, [general_wakeup, test_sound, general_rest]).
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
sessionDesign(robotstories_test, [general_wakeup, robospelen_10_peptalk, general_rest]).
%sessionDesign(robotstories_test1, [general_wakeup, dagdromen_sport, general_rest]).
%sessionDesign(robotstories_test2, [general_wakeup, [theme='_chitchat'], general_rest]).

sessionDesign(robotstories_memory_1, [general_wakeup, eerste_begroeting, tutorial_spraak, tutorial_touch, tutorial_check, robospelen_1_intro, dagdromen_sport, hero_kan_dromen, dagdromen_beroep, [thread=robospelen], [thread=robospelen], secret_handshake_maken, doei_1, general_rest]).
sessionDesign(robotstories_memory_2, [general_wakeup, begroeting_leuke_dag_gehad, [thread=robospelen], lievelingsdier, [thread=dromen], [thread=robospelen], [thread=robospelen], draadjesschool, [thread=robospelen], doei_2, general_rest]).
sessionDesign(robotstories_memory_3, [general_wakeup, begroeting_leuke_dag_gehad, binaire_getallen, [theme=dier], lievelingseten, [thread=robospelen], lievelingskleur, doei_3, general_rest]).
sessionDesign(robotstories_memory_4, [general_wakeup, begroeting_4, [topic=eten], [thread=robospelen], robotkleren, [thread=dromen], youtubefilmpjes, [thread=robospelen], doei_4, general_rest]).
sessionDesign(robotstories_memory_5, [general_wakeup, begroeting_5, [thread=robospelen], [theme=youtubefilmpjes], [thread=dromen], robot_willen_zijn, [thread=robospelen], doei_5, general_rest]).

sessionDesign(robotstories_control_1, [general_wakeup, eerste_begroeting, tutorial_spraak, tutorial_touch, tutorial_check, robospelen_1_intro, dagdromen_sport, hero_kan_dromen, dagdromen_beroep, robospelen_2_springen, robospelen_3_coach, secret_handshake_maken, doei_1, general_rest]).
sessionDesign(robotstories_control_2, [general_wakeup, begroeting_leuke_dag_gehad, robospelen_4_ingeschreven, lievelingsdier, droom_op_bestelling, robospelen_5_info, robospelen_6_gedachtelezen, draadjesschool, robospelen_7_info_vervolg, doei_2, general_rest]).
sessionDesign(robotstories_control_3, [general_wakeup, begroeting_leuke_dag_gehad, binaire_getallen, lievelingsdier_control, lievelingseten, robospelen_8_oefenopdracht, lievelingskleur, doei_3, general_rest]).
sessionDesign(robotstories_control_4, [general_wakeup, begroeting_4, plaats_in_de_natuur, robospelen_9_bijna, robotkleren, robospelen_droom, youtubefilmpjes, robospelen_10_peptalk, doei_4, general_rest]).
sessionDesign(robotstories_control_5, [general_wakeup, begroeting_5, robospelen_11_tweede, superkracht, dromen_conclusie, robot_willen_zijn, robospelen_12_bedankt, doei_5, general_rest]).

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
%multiSessionDesign([testing_short]).
%multiSessionDesign([test_session_1, test_session_2, test_session_3, test_session_4, test_session_5, test_session_6, test_session_7, test_session_8]).

% Hospital study
%multiSessionDesign([hospital_1, hospital_2, hospital_3]).

% Robotstories
%multiSessionDesign([robotstories_1, robotstories_2, robotstories_3, robotstories_4, robotstories_5, robotstories_6]).
%multiSessionDesign([robotstories_test, robotstories_test, robotstories_test, robotstories_test, robotstories_test]).
%multiSessionDesign([robotstories_memory_1, robotstories_memory_2, robotstories_memory_3, robotstories_memory_4, robotstories_memory_5, robotstories_memory_6]).
%multiSessionDesign([robotstories_control_1, robotstories_control_2, robotstories_control_3, robotstories_control_4, robotstories_control_5, robotstories_control_6]).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Settings			                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Use of GUI.
useGui(false).
% When GUI is used this userId and these localVariables are ignored.
% When no GUI is uses, these variables need to be specified.
setContinueSession(false).
setBasePosture('Stand').

% Experimental settings
setUserId('998'). % user id
setSessionId(4). % session id
useMemory(true). % condition


multiSessionDesign([robotstories_memory_1, robotstories_memory_2, robotstories_memory_3, robotstories_memory_4, robotstories_memory_5]).
%multiSessionDesign([robotstories_control_1, robotstories_control_2, robotstories_control_3, robotstories_control_4, robotstories_control_5]).

addLocalVariable(first_name, "Elvira"). % name empty for condition 'false'
% Record the interaction
recordInteractionActive(false).

% Button to pause and resume the robot during the interaction
setPauseButton('MiddleTactilTouched').
% The eventFailSafe is a backup timer that clears all waitingFor attributes and continues the interaction
% Useful if functionality of naoqi is buggy and the right events are not returned.
evenFailSafeActive(false).
