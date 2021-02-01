%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           Topics for a co-creation conversation	   %%%
%%%			    ZOO				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introduction    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(rs_intro, s1, say).
text(rs_intro,  s1, "Hallo. Mijn naam is Hero.").
next(rs_intro,  s1, "true",  s2).

state(rs_intro, s2, question).
stateConfig(rs_intro, s2, [type=openend, context='answer_open', inputModality=[speech=1], maxAnswerTime=[speechopenend=3000]]).
text(rs_intro, s2, "Hoe heet jij?").
next(rs_intro, s2, 'success', s3).
next(rs_intro, s2, 'fail', s4).

state(rs_intro, s3, say).
text(rs_intro,  s3, "%first_name%, wat een mooie naam! Ik denk niet dat ik ooit iemand heb ontmoet die zo heet. Denk ik.").
next(rs_intro,  s3, "true",  s4).

state(rs_intro, s4, say).
text(rs_intro,  s4, "Mijn naam is Hero.").
next(rs_intro,  s4, "true",  s5).

state(rs_intro, s5, question).
stateConfig(rs_intro, s5, [type=yesno, context='answer_yesno']).
text(rs_intro, s5, "Of had ik dat al gezegd?").
next(rs_intro, s5, 'answer_yes', s6y).
next(rs_intro, s5, 'answer_no', s6n).
next(rs_intro, s5, 'answer_dontknow', s6n).
next(rs_intro, s5, 'fail', s6n).

state(rs_intro, s6y, say).
text(rs_intro,  s6y, "O sorry. Nee precies ja. Dat had ik al gezegd.").
next(rs_intro,  s6y, "true",  s7).

state(rs_intro, s6n, say).
text(rs_intro,  s6n, "O sorry. Soms ben ik een beetje vergeetachtig.").
next(rs_intro,  s6n, "true",  s7).

state(rs_intro, s7, say).
text(rs_intro,  s7, "Hero dus. Dat ben ik. Hero. ").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Thread 1, sequence 1	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(rs_thread_1_seq_1, s1, say).
text(rs_thread_1_seq_1,  s1, "Sorry dat ik zo veel praat! Het is gewoon.").
next(rs_thread_1_seq_1,  s1, "true",  s1b).

state(rs_thread_1_seq_1, s1b, say).
text(rs_thread_1_seq_1,  s1b, "Ik ben een beetje zee, zee, zenuwachtig.").
anim(rs_thread_1_seq_1, s1b, "nervous/behavior_1").
next(rs_thread_1_seq_1,  s1b, "true",  s2).

state(rs_thread_1_seq_1, s2, question).
stateConfig(rs_thread_1_seq_1, s2, [type=openend, context='answer_open', inputModality=[speech=1], maxAnswerTime=[speechopenend=3000]]).
text(rs_thread_1_seq_1, s2, "Je weet hoe er Olympische Spelen zijn voor mensen, toch, De grote wedstrijd met de verschillende sporten?
").
next(rs_thread_1_seq_1, s2, 'success', s3).
next(rs_thread_1_seq_1, s2, 'fail', s3).

state(rs_thread_1_seq_1, s3, say).
text(rs_thread_1_seq_1,  s3, "Voor robots is er ook zo iets! We noemen het de Robo-Spelen, en de eerste prijs is een supergrote memory chip en wel honderd batterijen.").
next(rs_thread_1_seq_1,  s3, "true",  s3b).

state(rs_thread_1_seq_1, s3b, say).
text(rs_thread_1_seq_1, s3b, "Maar die win je alleen als je de allerbeste robot bent. En daarvoor moet je eerst tegen alle andere robots vechten.").
next(rs_thread_1_seq_1,  s3b, "true",  s3c).

state(rs_thread_1_seq_1, s3c, say).
text(rs_thread_1_seq_1,  s3c, "In allemaal verschillende wedstrijden. Zoals wie het hoogst kan springen en wie het best kan stofzuigen.").
next(rs_thread_1_seq_1,  s3c, "true",  s4).

state(rs_thread_1_seq_1, s4, say).
audio(rs_thread_1_seq_1, s4, server, "resources/sounds/vacuum2.wav").
start_led_anim(rs_thread_1_seq_1, s4, "eyes", "rotate", ["green"], 500).
next(rs_thread_1_seq_1,  s4, "true",  s5).

state(rs_thread_1_seq_1, s5, say).
stop_led_anim(rs_thread_1_seq_1, s5).
text(rs_thread_1_seq_1,  s5, "en wie het best origami kan vouwen").
anim(rs_thread_1_seq_1, s5, "wiggle_fingers/behavior_1").
next(rs_thread_1_seq_1,  s5, "true",  s7).

state(rs_thread_1_seq_1, s6, say).
anim(rs_thread_1_seq_1, s6, "wiggle_fingers/behavior_1").
next(rs_thread_1_seq_1,  s6, "true",  s7).

state(rs_thread_1_seq_1, s7, say).
text(rs_thread_1_seq_1,  s7, "wie er het beleefdst is en wie de meeste mensen kan helpen oversteken, en wie er kan voetballen, zo, goaaal").
%anim(rs_thread_1_seq_1, s7, "throw_ball_excited/behavior_1").
next(rs_thread_1_seq_1,  s7, "true",  s8).

state(rs_thread_1_seq_1, s8, say).
anim(rs_thread_1_seq_1, s8, "throw_ball_excited/behavior_1").
next(rs_thread_1_seq_1,  s8, "true",  s9).

state(rs_thread_1_seq_1, s9, say).
text(rs_thread_1_seq_1,  s9, "Ik kan helemaal niet zo goed schoppen.").
next(rs_thread_1_seq_1,  s9, "true",  s10).

state(rs_thread_1_seq_1, s10, say).
text(rs_thread_1_seq_1,  s10, "De vorige keer dat ik het moest doen viel ik zo hard op mijn kont.").
next(rs_thread_1_seq_1,  s10, "true",  s11).

state(rs_thread_1_seq_1, s11, say).
text(rs_thread_1_seq_1,  s11, "dat al mijn lichtjes eruit sprongen").
start_led_anim(rs_thread_1_seq_1, s11, "eyes", "blink", ["turquoise", "donkerblauw"], 1500).
next(rs_thread_1_seq_1,  s11, "true",  s12).

state(rs_thread_1_seq_1, s12, say).
stop_led_anim(rs_thread_1_seq_1, s12).
text(rs_thread_1_seq_1,  s12, "Er is ook een onderdeel broodroosteren, maar").
next(rs_thread_1_seq_1,  s12, "true",  s13).

state(rs_thread_1_seq_1, s13, say).
text(rs_thread_1_seq_1,  s13, "Ik heb helemaal geen gleuven hier.").
anim(rs_thread_1_seq_1, s13, "point_to_stomach/behavior_1").
next(rs_thread_1_seq_1,  s13, "true",  s14).

state(rs_thread_1_seq_1, s14, say).
text(rs_thread_1_seq_1,  s14, "Dus ik moet nog veel oefenen voor de Robospelen er zijn!").
next(rs_thread_1_seq_1,  s14, "true",  s15).

state(rs_thread_1_seq_1, s15, question).
stateConfig(rs_thread_1_seq_1, s15, [type=yesno, context='answer_yesno']).
text(rs_thread_1_seq_1, s15, "Heb jij weleens aan een wedstrijd mee gedaan?").
next(rs_thread_1_seq_1, s15, 'answer_yes', s16y).
next(rs_thread_1_seq_1, s15, 'answer_no', s16n).
next(rs_thread_1_seq_1, s15, 'answer_dontknow', s16n).
next(rs_thread_1_seq_1, s15, 'fail', s16n).

state(rs_thread_1_seq_1, s16y, say).
text(rs_thread_1_seq_1,  s16y, "Cool! Waarin dan?").
%next(rs_intro,  s16y, "true",  s7).

state(rs_thread_1_seq_1, s16n, say).
text(rs_thread_1_seq_1,  s16n, "Een toets dan? Heb je weleens een toets gemaakt? Voor school of voor iets anders?").
%next(rs_intro,  s6n, "true",  s7).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Thread 2, sequence 1	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(rs_thread_2_seq_1, s1, say).
text(rs_thread_2_seq_1,  s1, "Weet je wat bizar is?").
next(rs_thread_2_seq_1,  s1, "true",  s2).

state(rs_thread_2_seq_1, s2, say).
text(rs_thread_2_seq_1,  s2, "Vannacht toen ik uit stond").
next(rs_thread_2_seq_1,  s2, "true",  s3).

state(rs_thread_2_seq_1, s3, say).
text(rs_thread_2_seq_1,  s3, "Geen stroom kreeg en geen licht gaf").
next(rs_thread_2_seq_1,  s3, "true",  s4).

state(rs_thread_2_seq_1, s4, say).
text(rs_thread_2_seq_1,  s4, "Leek het alsof ik ergens was").
next(rs_thread_2_seq_1,  s4, "true",  s5).

state(rs_thread_2_seq_1, s5, say).
text(rs_thread_2_seq_1,  s5, "Waar ik nog nooit eerder was").
next(rs_thread_2_seq_1,  s5, "true",  s6).

state(rs_thread_2_seq_1, s6, say).
text(rs_thread_2_seq_1,  s6, "Maar ik was er niet echt").
next(rs_thread_2_seq_1,  s6, "true",  s7).

state(rs_thread_2_seq_1, s7, say).
text(rs_thread_2_seq_1,  s7, "Want dat kan nog niet echt").
next(rs_thread_2_seq_1,  s7, "true",  s8).

state(rs_thread_2_seq_1, s8, say).
text(rs_thread_2_seq_1,  s8, "Maar ik was er wel in mijn hoofd").
next(rs_thread_2_seq_1,  s8, "true",  s9).

state(rs_thread_2_seq_1, s9, say).
text(rs_thread_2_seq_1,  s9, "Ik droomde dat ik op een leeg grasveld stond").
next(rs_thread_2_seq_1,  s9, "true",  s10).

state(rs_thread_2_seq_1, s10, say).
text(rs_thread_2_seq_1,  s10, "Ik droomde wel maar er gebeurde niets").
next(rs_thread_2_seq_1,  s10, "true",  s11).

state(rs_thread_2_seq_1, s11, say).
text(rs_thread_2_seq_1,  s11, "Ik zou graag willen dat er iets zou gebeuren").
next(rs_thread_2_seq_1,  s11, "true",  s12).

state(rs_thread_2_seq_1, s12, say).
%Add gesture
next(rs_thread_2_seq_1,  s12, "true",  s13).

state(rs_thread_2_seq_1, s13, say).
text(rs_thread_2_seq_1,  s13, "Misschien kan jij mij helpen een keer te dromen").
next(rs_thread_2_seq_1,  s13, "true",  s14).

state(rs_thread_2_seq_1, s14, say).
text(rs_thread_2_seq_1,  s14, "Zodat wanneer ik slaap").
next(rs_thread_2_seq_1,  s14, "true",  s15).

state(rs_thread_2_seq_1, s15, say).
text(rs_thread_2_seq_1,  s15, "Ik echt een keer iets meemaak").
next(rs_thread_2_seq_1,  s15, "true",  s16).

state(rs_thread_2_seq_1, s16, question).
stateConfig(rs_thread_2_seq_1, s16, [type=yesno, context='answer_yesno']).
text(rs_thread_2_seq_1, s16, "Wil jij mij een van jouw dromen vertellen?").
next(rs_thread_2_seq_1, s16, 'answer_yes', s17y).
next(rs_thread_2_seq_1, s16, 'answer_no', s17n).
next(rs_thread_2_seq_1, s16, 'answer_dontknow', s17n).
next(rs_thread_2_seq_1, s16, 'fail', s17n).

state(rs_thread_1_seq_1, s17y, question).
stateConfig(rs_thread_1_seq_1, s17y, [type=openend, context='answer_open', inputModality=[speech=1], maxAnswerTime=[speechopenend=3000]]).
text(rs_thread_1_seq_1, s17y, "Leuk! Ik luister.").
next(rs_thread_1_seq_1, s17y, 'success', s18).
next(rs_thread_1_seq_1, s17y, 'fail', s18).

state(rs_thread_2_seq_1, s17n, say).
text(rs_thread_2_seq_1,  s17n, "Geeft niets. Dan maken we samen een droom").
next(rs_thread_2_seq_1,  s17n, "true",  s18).

state(rs_thread_2_seq_1, s18, say).
text(rs_thread_2_seq_1,  s18, "In een droom kan dus echt vanalles.").
next(rs_thread_2_seq_1,  s18, "true",  s19).

state(rs_thread_2_seq_1, s19, say).
text(rs_thread_2_seq_1,  s19, "Ik zou wel").
next(rs_thread_2_seq_1,  s19, "true",  s20).

state(rs_thread_2_seq_1, s20, say).
text(rs_thread_2_seq_1,  s20, "Snel willen vliegen").
leds(rs_thread_2_seq_1,  s20, ['FaceLeds', 'ChestLeds'], ['Green', 'Green']).
next(rs_thread_2_seq_1,  s20, "true",  s21).

state(rs_thread_2_seq_1, s21, say).
text(rs_thread_2_seq_1,  s21, "Of waterdicht kunnen zwemmen").
leds(rs_thread_2_seq_1,  s21, ['FaceLeds', 'ChestLeds'], ['Blue', 'Blue']).
next(rs_thread_2_seq_1,  s21, "true",  s22).

state(rs_thread_2_seq_1, s22, say).
text(rs_thread_2_seq_1,  s22, "Of randendsnel racen").
leds(rs_thread_2_seq_1,  s22, ['FaceLeds', 'ChestLeds'], ['Yellow', 'Yellow']).
next(rs_thread_2_seq_1,  s22, "true",  s23).

state(co_zoo_intro, s7, question).
stateConfig(co_zoo_intro, s7, [type=input, context='answer_favorite_animal', inputModality=[speech=2]]).
text(co_zoo_intro, s7, "Wat is eigenlijk jouw lievelingsdier?").
next(co_zoo_intro, s7, 'success', s8).
next(co_zoo_intro, s7, 'fail', s8f).
