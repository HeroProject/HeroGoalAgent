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
text(rs_thread_1_seq_1,  s1b, "Ik ben een beetje zze zze ze ze zenuwachtig.").
anim(rs_thread_1_seq_1, s1b, "nervous/behavior_1").
next(rs_thread_1_seq_1,  s1b, "true",  s2).

state(rs_thread_1_seq_1, s2, question).
stateConfig(rs_thread_1_seq_1, s2, [type=openend, context='answer_open', inputModality=[speech=1], maxAnswerTime=[speechopenend=3000]]).
text(rs_thread_1_seq_1, s2, "Je weet hoe er Olympische Spelen zijn voor mensen, toch, De grote wedstrijd met de verschillende sporten?").
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

state(rs_thread_1_seq_1, s7, say).
text(rs_thread_1_seq_1,  s7, "wie er het beleefdst is en wie de meeste mensen kan helpen oversteken, en wie er de bal het verste gooien, zo, dat was ver!").
anim(rs_thread_1_seq_1, s7, "throw_ball_excited/behavior_1").
next(rs_thread_1_seq_1,  s7, "true",  s9).

state(rs_thread_1_seq_1, s9, say).
text(rs_thread_1_seq_1,  s9, "Ik kan helemaal niet zo goed schoppen.").
next(rs_thread_1_seq_1,  s9, "true",  s10).

state(rs_thread_1_seq_1, s10, say).
text(rs_thread_1_seq_1,  s10, "De vorige keer dat ik het moest doen viel ik zo hard op mijn kont.").
next(rs_thread_1_seq_1,  s10, "true",  s11).

state(rs_thread_1_seq_1, s11, say).
text(rs_thread_1_seq_1,  s11, "dat al mijn lichtjes eruit sprongen").
start_led_anim(rs_thread_1_seq_1, s11, "eyes", "blink", ["turquoise", "blauw"], 1500).
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
text(rs_thread_1_seq_1,  s16y, "Cool!").
next(rs_thread_1_seq_1,  s16y, "true",  s17y).

state(rs_thread_1_seq_1, s17y, question).
stateConfig(rs_thread_1_seq_1, s17y, [type=openend, context='answer_open', inputModality=[speech=1], maxAnswerTime=[speechopenend=5000]]).
text(rs_thread_1_seq_1, s17y, " Waarin dan?").
next(rs_thread_1_seq_1, s17y, 'success', s18).
next(rs_thread_1_seq_1, s17y, 'fail', s18n).

state(rs_thread_1_seq_1, s16n, question).
stateConfig(rs_thread_1_seq_1, s16n, [type=yesno, context='answer_yesno']).
text(rs_thread_1_seq_1, s16n, "Heb jij weleens aan een wedstrijd mee gedaan?").
next(rs_thread_1_seq_1, s16n, 'answer_yes', s18).
next(rs_thread_1_seq_1, s16n, 'answer_no', s18n).
next(rs_thread_1_seq_1, s16n, 'answer_dontknow', s18n).
next(rs_thread_1_seq_1, s16n, 'fail', s18n).

state(rs_thread_1_seq_1, s18, say).
text(rs_thread_1_seq_1,  s18, "Echt?! Lijkt me super, moeilijk. Dan kun je me vast helpen met de robo spelen.").
next(rs_thread_1_seq_1,  s18, "true",  s19).

state(rs_thread_1_seq_1, s18n, say).
text(rs_thread_1_seq_1,  s18n, "Geef niet. Je kunt me vast goed helpen met de robo spelen.").
next(rs_thread_1_seq_1,  s18n, "true",  s19).

state(rs_thread_1_seq_1, s19, say).
text(rs_thread_1_seq_1,  s19, "Ik krijg straks allerlei verschillende opdrachten.").
next(rs_thread_1_seq_1,  s19, "true",  s20).

state(rs_thread_1_seq_1, s20, say).
text(rs_thread_1_seq_1,  s20, "Een zin vertalen, het grappigste dansje doen.").
next(rs_thread_1_seq_1,  s20, "true",  s21).

state(rs_thread_1_seq_1, s21, say).
text(rs_thread_1_seq_1,  s21, "En jij moet me helpen oefenen!").
next(rs_thread_1_seq_1,  s21, "true",  s22).

state(rs_thread_1_seq_1, s22, say).
text(rs_thread_1_seq_1,  s22, "Want oefenen baart kunst.").
next(rs_thread_1_seq_1,  s22, "true",  s23).

state(rs_thread_1_seq_1, s23, say).
text(rs_thread_1_seq_1,  s23, "Dat zeggen volwassenen toch?").
next(rs_thread_1_seq_1,  s23, "true",  s24).

state(rs_thread_1_seq_1, s24, say).
text(rs_thread_1_seq_1,  s24, "Oefenen baart kunst.").
next(rs_thread_1_seq_1,  s24, "true",  s25).

state(rs_thread_1_seq_1, s25, say).
text(rs_thread_1_seq_1,  s25, "Ik weet niet wat dat betekent: baart.").
next(rs_thread_1_seq_1,  s25, "true",  s26).

state(rs_thread_1_seq_1, s26, say).
text(rs_thread_1_seq_1,  s26, "Een baard zit toch op je gezicht?").
next(rs_thread_1_seq_1,  s26, "true",  s27).

state(rs_thread_1_seq_1, s27, say).
text(rs_thread_1_seq_1,  s27, "Het is jammer dat je niet mee kan kijken als ik straks aan de echt Robospelen mee ga doen.").
next(rs_thread_1_seq_1,  s27, "true",  s28).

state(rs_thread_1_seq_1, s28, say).
text(rs_thread_1_seq_1,  s28, "Die is namelijk digitaal, en jij hebt geen internetaansluiting aan je lichaam, toch?").
next(rs_thread_1_seq_1,  s28, "true",  s29).

state(rs_thread_1_seq_1, s29, say).
text(rs_thread_1_seq_1,  s29, "Die van mij zit hier, achterop mijn hoofd!").
anim(rs_thread_1_seq_1, s29, "point_to_ethernet_port/behavior_1").

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
text(rs_thread_2_seq_1,  s4, "Leek het alsof ik ergens was.").
next(rs_thread_2_seq_1,  s4, "true",  s5).

state(rs_thread_2_seq_1, s5, say).
text(rs_thread_2_seq_1,  s5, "Waar ik nog nooit eerder was.").
next(rs_thread_2_seq_1,  s5, "true",  s6).

state(rs_thread_2_seq_1, s6, say).
text(rs_thread_2_seq_1,  s6, "Maar ik was er niet echt.").
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
anim(rs_thread_2_seq_1, s12, "shoulder_shrug/behavior_1").
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

state(rs_thread_2_seq_1, s17y, question).
stateConfig(rs_thread_2_seq_1, s17y, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_thread_2_seq_1, s17y, "Leuk! Ik luister.").
next(rs_thread_2_seq_1, s17y, 'success', s18).
next(rs_thread_2_seq_1, s17y, 'fail', s18).

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
text(rs_thread_2_seq_1,  s20, "hoog willen vliegen").
leds(rs_thread_2_seq_1,  s20, ['FaceLeds', 'ChestLeds'], ['green', 'green']).
next(rs_thread_2_seq_1,  s20, "true",  s21).

state(rs_thread_2_seq_1, s21, say).
text(rs_thread_2_seq_1,  s21, "Of waterdicht kunnen zwemmen").
leds(rs_thread_2_seq_1,  s21, ['FaceLeds', 'ChestLeds'], ['blue', 'blue']).
next(rs_thread_2_seq_1,  s21, "true",  s22).

state(rs_thread_2_seq_1, s22, say).
text(rs_thread_2_seq_1,  s22, "Of razendsnel racen. Kies maar.").
leds(rs_thread_2_seq_1,  s22, ['FaceLeds', 'ChestLeds'], ['yellow', 'yellow']).
next(rs_thread_2_seq_1,  s22, "true",  s23).

state(rs_thread_2_seq_1, s23, question).
stateConfig(rs_thread_2_seq_1, s23, [type=input, context='answer_rs_thread_2_vzr', options=['vliegen', 'zwemmen', 'racen'], defaultAnswer="vliegen"]).
text(rs_thread_2_seq_1, s23, "Waar zou ik over moeten dromen? Vliegen, zwemmen, of racen?").
start_led_anim(rs_thread_2_seq_1, s23, "all", "blink", ["green", "blue", "yellow"], 500).
next(rs_thread_2_seq_1, s23, 'success', s24).
next(rs_thread_2_seq_1, s23, 'fail', s24f).

state(rs_thread_2_seq_1, s24, branchingPoint).
stateConfig(rs_thread_2_seq_1, s24, [branchDecider=entity, branchSource=rs_thread_2_seq_1_s23]).
stop_led_anim(rs_thread_2_seq_1, s24).
next(rs_thread_2_seq_1, s24, "vliegen", s25vliegen).
next(rs_thread_2_seq_1, s24, "zwemmen", s25zwemmen).
next(rs_thread_2_seq_1, s24, "racen", s25racen).
next(rs_thread_2_seq_1, s24, "fail", s24f).

state(rs_thread_2_seq_1, s24f, say).
text(rs_thread_2_seq_1,  s24f, "Zullen we voor vliegen gaan. Altijd al willen doen.").
stop_led_anim(rs_thread_2_seq_1, s24f).
next(rs_thread_2_seq_1,  s24f, "true",  s25vliegen).

state(rs_thread_2_seq_1, s25vliegen, say).
text(rs_thread_2_seq_1,  s25vliegen, "Vliegen! Te gek").
leds(rs_thread_2_seq_1,  s25vliegen, ['FaceLeds', 'ChestLeds'], ['green', 'green']).
next(rs_thread_2_seq_1,  s25vliegen, "true",  s26vliegen).

state(rs_thread_2_seq_1, s26vliegen, question).
stateConfig(rs_thread_2_seq_1, s26vliegen, [type=input, context='answer_rs_thread_2_snel_of_langzaam', options=['snel', 'langzaam'], defaultAnswer="snel"]).
text(rs_thread_2_seq_1, s26vliegen, "Zal ik snel of langzaam vliegen?").
next(rs_thread_2_seq_1, s26vliegen, 'success', s27vliegen).
next(rs_thread_2_seq_1, s26vliegen, 'fail', s27vliegenf).

state(rs_thread_2_seq_1, s27vliegen, branchingPoint).
stateConfig(rs_thread_2_seq_1, s27vliegen, [branchDecider=entity, branchSource=rs_thread_2_seq_1_s26vliegen]).
next(rs_thread_2_seq_1, s27vliegen, "snel", s28vliegensnel).
next(rs_thread_2_seq_1, s27vliegen, "langzaam", s28vliegenlangzaam).
next(rs_thread_2_seq_1, s27vliegen, "fail", s27vliegenf).

state(rs_thread_2_seq_1, s27vliegenf, say).
text(rs_thread_2_seq_1,  s27vliegenf, "Ik heb zin in snel.").
next(rs_thread_2_seq_1,  s27vliegenf, "true",  s28vliegensnel).

state(rs_thread_2_seq_1, s28vliegensnel, say).
text(rs_thread_2_seq_1,  s28vliegensnel, "Ja! Snel! Snel! Snel!").
next(rs_thread_2_seq_1,  s28vliegensnel, "true",  s29vliegen).

state(rs_thread_2_seq_1, s28vliegenlangzaam, say).
text(rs_thread_2_seq_1,  s28vliegenlangzaam, "Rustig aan, tijd zat. Genieten van het uitzicht.").
next(rs_thread_2_seq_1,  s28vliegenlangzaam, "true",  s29vliegen).

state(rs_thread_2_seq_1, s29vliegen, question).
stateConfig(rs_thread_2_seq_1, s29vliegen, [type=input, context='answer_land', inputModality=[speech=2]]).
text(rs_thread_2_seq_1, s29vliegen, "En naar welk land zal ik %rs_thread_2_seq_1_s26vliegen% vliegen?").
next(rs_thread_2_seq_1, s29vliegen, 'success', s30).
next(rs_thread_2_seq_1, s29vliegen, 'fail', s30).

state(rs_thread_2_seq_1, s25zwemmen, say).
text(rs_thread_2_seq_1,  s25zwemmen, "Zwemmen! Bizar. Kletsnat.").
leds(rs_thread_2_seq_1,  s25zwemmen, ['FaceLeds', 'ChestLeds'], ['blue', 'blue']).
next(rs_thread_2_seq_1,  s25zwemmen, "true",  s26zwemmen).

state(rs_thread_2_seq_1, s26zwemmen, question).
stateConfig(rs_thread_2_seq_1, s26zwemmen, [type=input, context='answer_rs_thread_2_snel_of_langzaam', options=['snel', 'langzaam'], defaultAnswer="snel"]).
text(rs_thread_2_seq_1, s26zwemmen, "Zal ik snel of langzaam zwemmen?").
next(rs_thread_2_seq_1, s26zwemmen, 'success', s27zwemmen).
next(rs_thread_2_seq_1, s26zwemmen, 'fail', s27zwemmenf).

state(rs_thread_2_seq_1, s27zwemmen, branchingPoint).
stateConfig(rs_thread_2_seq_1, s27zwemmen, [branchDecider=entity, branchSource=rs_thread_2_seq_1_s26zwemmen]).
next(rs_thread_2_seq_1, s27zwemmen, "snel", s28zwemmensnel).
next(rs_thread_2_seq_1, s27zwemmen, "langzaam", s28zwemmenlangzaam).
next(rs_thread_2_seq_1, s27zwemmen, "fail", s27zwemmenf).

state(rs_thread_2_seq_1, s27zwemmenf, say).
text(rs_thread_2_seq_1,  s27zwemmenf, "Ik heb zin in snel.").
next(rs_thread_2_seq_1,  s27zwemmenf, "true",  s28zwemmensnel).

state(rs_thread_2_seq_1, s28zwemmensnel, say).
text(rs_thread_2_seq_1,  s28zwemmensnel, "Ja! Speedboot Hero!").
next(rs_thread_2_seq_1,  s28zwemmensnel, "true",  s29zwemmen).

state(rs_thread_2_seq_1, s28zwemmenlangzaam, say).
text(rs_thread_2_seq_1,  s28zwemmenlangzaam, "Rustig aan, tijd zat. Beetje snorkelen, je weet zelf.").
next(rs_thread_2_seq_1,  s28zwemmenlangzaam, "true",  s29zwemmen).

state(rs_thread_2_seq_1, s29zwemmen, question).
stateConfig(rs_thread_2_seq_1, s29zwemmen, [type=input, context='answer_land', inputModality=[speech=2]]).
text(rs_thread_2_seq_1, s29zwemmen, "En naar welk land zal ik %rs_thread_2_seq_1_s26zwemmen% zwemmen?").
next(rs_thread_2_seq_1, s29zwemmen, 'success', s30).
next(rs_thread_2_seq_1, s29zwemmen, 'fail', s30).

state(rs_thread_2_seq_1, s25racen, say).
text(rs_thread_2_seq_1,  s25racen, "Racen als een race-auto. Wielen aan mijn enkels en knieën.").
leds(rs_thread_2_seq_1,  s25racen, ['FaceLeds', 'ChestLeds'], ['yellow', 'yellow']).
next(rs_thread_2_seq_1,  s25racen, "true",  s26racen).

state(rs_thread_2_seq_1, s26racen, question).
stateConfig(rs_thread_2_seq_1, s26racen, [type=input, context='answer_rs_thread_2_snel_of_langzaam', options=['snel', 'langzaam'], defaultAnswer="snel"]).
text(rs_thread_2_seq_1, s26racen, "Zal ik snel of langzaam racen?").
next(rs_thread_2_seq_1, s26racen, 'success', s27racen).
next(rs_thread_2_seq_1, s26racen, 'fail', s27racenf).

state(rs_thread_2_seq_1, s27racen, branchingPoint).
stateConfig(rs_thread_2_seq_1, s27racen, [branchDecider=entity, branchSource=rs_thread_2_seq_1_s26racen]).
next(rs_thread_2_seq_1, s27racen, "snel", s28racensnel).
next(rs_thread_2_seq_1, s27racen, "langzaam", s28racenlangzaam).
next(rs_thread_2_seq_1, s27racen, "fail", s27racenf).

state(rs_thread_2_seq_1, s27racenf, say).
text(rs_thread_2_seq_1,  s27racenf, "Ik heb zin in snel.").
next(rs_thread_2_seq_1,  s27racenf, "true",  s28racensnel).

state(rs_thread_2_seq_1, s28racensnel, say).
text(rs_thread_2_seq_1,  s28racensnel, "Ja! Vol door de bocht. Bizar").
next(rs_thread_2_seq_1,  s28racensnel, "true",  s29racen).

state(rs_thread_2_seq_1, s28racenlangzaam, say).
text(rs_thread_2_seq_1,  s28racenlangzaam, "Ja precies. Kalm aan. Ik heb ook helemaal geen rijbewijs").
next(rs_thread_2_seq_1,  s28racenlangzaam, "true",  s29racen).

state(rs_thread_2_seq_1, s29racen, question).
stateConfig(rs_thread_2_seq_1, s29racen, [type=input, context='answer_land', inputModality=[speech=2]]).
text(rs_thread_2_seq_1, s29racen, "En naar welk land zal ik %rs_thread_2_seq_1_s26racen% racen?").
next(rs_thread_2_seq_1, s29racen, 'success', s30).
next(rs_thread_2_seq_1, s29racen, 'fail', s30).

state(rs_thread_2_seq_1, s30, question).
stateConfig(rs_thread_2_seq_1, s30, [type=openend, context='answer_open', inputModality=[speech=1]]).
leds(rs_thread_2_seq_1,  s30, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
text(rs_thread_2_seq_1, s30, "Wat zou ik daar allemaal kunnen doen? Wat zou jij gaan doen?").
next(rs_thread_2_seq_1, s30, 'success', s31).
next(rs_thread_2_seq_1, s30, 'fail', s31f).

state(rs_thread_2_seq_1, s31, say).
text(rs_thread_2_seq_1,  s31, "Wat een goed idee. Ik sla het gelijk op. seeving. seeving. Nog steeds seeving.").
next(rs_thread_2_seq_1,  s31, "true",  s32).

state(rs_thread_2_seq_1, s31f, say).
text(rs_thread_2_seq_1,  s31f, "Ik bedenk wel wat als ik aankom!").
next(rs_thread_2_seq_1,  s31f, "true",  s32).

state(rs_thread_2_seq_1, s32, say).
text(rs_thread_2_seq_1,  s32, "Ik hoop dat ik deze droom de volgende keer dromen kan en dat ik wakker wordt met een spannend avontuur in mijn hero hoofd").
