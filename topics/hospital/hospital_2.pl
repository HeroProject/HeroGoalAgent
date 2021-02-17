%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      HOSPITAL STUDY	                   %%%
%%%     	Conversation topics for session 2	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Greeting    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho2_greeting, s1, say).
text(ho2_greeting,  s1, "Hoi %first_name%, wat fijn om je weer te zien.").
next(ho2_greeting,  s1, "true",  s2).

state(ho2_greeting, s2, say).
text(ho2_greeting,  s2, "Er staat vandaag iets leuks op het programma, vind ik zelf.").
next(ho2_greeting,  s2, "true",  s3).

state(ho2_greeting, s3, say).
text(ho2_greeting,  s3, "Bij het vertellen van verhalen, maak ik graag creatieve bewegingen.").
next(ho2_greeting,  s3, "true",  s4).

state(ho2_greeting, s4, say).
text(ho2_greeting,  s4, "Ook kan ik geluidjes maken, en zet ik graag mijn lampjes in om een licht show te maken.").
next(ho2_greeting,  s4, "true",  s5).

state(ho2_greeting, s5, say).
text(ho2_greeting,  s5, "Kijk maar eens, nu zit ik in een race auto.").
next(ho2_greeting,  s5, "true",  s6).

state(ho2_greeting, s6, say).
audio(ho2_greeting, s6, server, 'resources/sounds/racecar.wav').
play_motion_file(ho2_greeting, s6, "resources/gestures/racecar.xml").
start_led_anim(ho2_greeting, s6, "all", "alternate", ["oranje", "paars"], 1000).
next(ho2_greeting,  s6, "true",  s7).

state(ho2_greeting, s7, say).
text(ho2_greeting,  s7, "Gaaf hè?").
stop_led_anim(ho2_greeting, s7).
go_to_base_posture(ho2_greeting, s7).
next(ho2_greeting,  s7, "true",  s8).

state(ho2_greeting, s8, say).
text(ho2_greeting,  s8, "Alleen heb ik nog niet overal de juiste bewegingen, geluidjes, en licht shows voor.").
next(ho2_greeting,  s8, "true",  s9).

state(ho2_greeting, s9, say).
text(ho2_greeting,  s9, "Maar daar mag jij mij bij helpen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Co-creation tutorial		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho2_tutorial, s1, say).
text(ho2_tutorial,  s1, "Laat ik eerst uitleggen hoe het werkt.").
next(ho2_tutorial,  s1, "true",  s2).

state(ho2_tutorial, s2, say).
text(ho2_tutorial,  s2, "Ik heb een aantal verhalen die ik de volgende keer kan vertellen.").
next(ho2_tutorial,  s2, "true",  s3).

state(ho2_tutorial, s3, say).
text(ho2_tutorial,  s3, "Alleen die verhalen zijn nog niet helemaal af.").
next(ho2_tutorial,  s3, "true",  s4).

state(ho2_tutorial, s4, say).
text(ho2_tutorial,  s4, "Ik heb nog een aantal bewegingen, geluidjes, en licht shows nodig.").
next(ho2_tutorial,  s4, "true",  s5).

state(ho2_tutorial, s5, say).
text(ho2_tutorial,  s5, "Ik kan natuurlijk wat geluidjes, en zo, downloaden.").
next(ho2_tutorial,  s5, "true",  s6).

state(ho2_tutorial, s6, say).
text(ho2_tutorial,  s6, "Maar ik denk dat jij het misschien ook wel leuk vind om die met mij zelf te maken.").
next(ho2_tutorial,  s6, "true",  s7).

state(ho2_tutorial, s7, say).
text(ho2_tutorial,  s7, "Bij elk geluidje, beweging en licht show mag jij kiezen of we het zelf gaan maken, of dat ik wat opties moet downloaden.").
next(ho2_tutorial,  s7, "true",  s8).

state(ho2_tutorial, s8, say).
text(ho2_tutorial,  s8, "Als je kiest voor downloaden dan laat ik steeds twee opties zien of horen, en dan mag jij kiezen welke je de beste vind.").
next(ho2_tutorial,  s8, "true",  s9).

state(ho2_tutorial, s9, say).
text(ho2_tutorial,  s9, "Ik heb bijvoorbeeld deze twee liedjes gedownload.").
next(ho2_tutorial,  s9, "true",  s10).

state(ho2_tutorial, s10, say).
text(ho2_tutorial,  s10, "Dit is de eerste").
next(ho2_tutorial,  s10, "true", s11).

state(ho2_tutorial, s11, say).
audio(ho2_tutorial, s11, server, "resources/sounds/disco.wav").
next(ho2_tutorial,  s11, "true", s12).

state(ho2_tutorial, s12, say).
text(ho2_tutorial,  s12, "En dit is de tweede").
next(ho2_tutorial,  s12, "true", s13).

state(ho2_tutorial, s13, say).
audio(ho2_tutorial, s13, server, "resources/sounds/outro.wav").
next(ho2_tutorial,  s13, "true", s14).

state(ho2_tutorial, s14, question).
stateConfig(ho2_tutorial, s14, [type = branch, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'robot kiest'],
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two', 'robot kiest' = 'involvement_robot_picks'], branchingPoints=[[ho2_tutorial, s15]]]).
text(ho2_tutorial, s14, "Vind je het eerste of tweede liedje leuker, of zal ik kiezen?").
next(ho2_tutorial, s14, "success", s15).
next(ho2_tutorial, s14, "fail", s14f).

state(ho2_tutorial, s14f, say).
text(ho2_tutorial,  s14f, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(ho2_tutorial,  s14f, "true",  s15).

state(ho2_tutorial, s15, branchingPoint).
next(ho2_tutorial, s15, "eerste", s16eerste).
next(ho2_tutorial, s15, "tweede", s16tweede).
next(ho2_tutorial, s15, "robot kiest", s16robot).
next(ho2_tutorial, s15, "fail", s16tweede).

state(ho2_tutorial, s16eerste, say).
text(ho2_tutorial,  s16eerste, "Het eerste, goede keuze.").
save_sound(ho2_tutorial, s16eerste, sound_koelkast_song, "resources/sounds/disco.wav").
next(ho2_tutorial,  s16eerste, "true",  s17).

state(ho2_tutorial, s16tweede, say).
text(ho2_tutorial,  s16tweede, "Het tweede, goede keuze.").
save_sound(ho2_tutorial, s16tweede, sound_koelkast_song, "resources/sounds/outro.wav").
next(ho2_tutorial,  s16tweede, "true",  s17).

state(ho2_tutorial, s16robot, say).
text(ho2_tutorial,  s16robot, "De tweede vond ik het leukst dus die heb ik gekozen.").
save_sound(ho2_tutorial, s16robot, sound_koelkast_song, "resources/sounds/outro.wav").
next(ho2_tutorial,  s16robot, "true",  s17).

state(ho2_tutorial, s17, say).
text(ho2_tutorial,  s17, "Het kan ook leuk zijn om zelf geluidjes te maken.").
next(ho2_tutorial,  s17, "true",  s18).

state(ho2_tutorial, s18, say).
text(ho2_tutorial,  s18, "Die kun je dan inspreken en dan neem ik dat op. Dat opgenomen geluidje kan ik later weer afspelen.").
next(ho2_tutorial,  s18, "true",  s19).

state(ho2_tutorial, s19, say).
text(ho2_tutorial,  s19, "Laten we om te oefenen het geluid van een piepende muis maken. Dan kun je bijvoorbeeld piep piep piep zeggen.").
next(ho2_tutorial,  s19, "true",  s20).

state(ho2_tutorial, s20, say).
text(ho2_tutorial,  s20, "Druk op mijn linker teen als je er klaar voor bent. Dan zal ik af tellen en jouw geluidje opnemen.").
leds(ho2_tutorial,  s20, ["RightFootLeds"], ["groen"]).
stateConfig(ho2_tutorial, s20, [next='RightBumperPressed']).
next(ho2_tutorial,  s20, "true",  s21).

state(ho2_tutorial, s21, say).
leds(ho2_tutorial,  s21, ["RightFootLeds"], ["wit"]).
text(ho2_tutorial,  s21, "Piep als een muis in 3, 2, 1.").
next(ho2_tutorial,  s21, "true",  s22).

state(ho2_tutorial, s22, audioInput).
stateConfig(ho2_tutorial, s22, [recordTime=3000, umVariable=sound_mouse]).
next(ho2_tutorial, s22, "true", s23).

state(ho2_tutorial, s23, say).
text(ho2_tutorial,  s23, "Top gedaan.").
next(ho2_tutorial,  s23, "true",  s24).

state(ho2_tutorial, s24, say).
text(ho2_tutorial,  s24, "Zo klinkt het geluidseffect nu.").
next(ho2_tutorial,  s24, "true",  s25).

state(ho2_tutorial, s25, say).
audio(ho2_tutorial, s25, recorded, sound_mouse).
next(ho2_tutorial,  s25, "true",  s26).

state(ho2_tutorial, s26, say).
text(ho2_tutorial,  s26, "Mooi, dit komt later goed van pas.").
next(ho2_tutorial,  s26, "true",  s27).

state(ho2_tutorial, s27, say).
text(ho2_tutorial,  s27, "Bewegingen zijn ook leuk om zelf te maken.").
next(ho2_tutorial,  s27, "true",  s28).

state(ho2_tutorial, s28, say).
text(ho2_tutorial,  s28, "Je mag straks mijn armen vastpakken en rond bewegen.").
next(ho2_tutorial,  s28, "true",  s29).

state(ho2_tutorial, s29, say).
text(ho2_tutorial,  s29, "Ik zal dan de bewegingen die je met mijn armen maakt zo precies mogelijk proberen te onthouden").
next(ho2_tutorial,  s29, "true",  s30).

state(ho2_tutorial, s30, say).
text(ho2_tutorial,  s30, "Laten we dat een keertje oefenen.").
next(ho2_tutorial,  s30, "true",  s31).

state(ho2_tutorial, s31, say).
text(ho2_tutorial,  s31, "Ik wil wel een feestelijke beweging hebben.").
next(ho2_tutorial,  s31, "true",  s32).

state(ho2_tutorial, s32, say).
text(ho2_tutorial,  s32, "Ik zal aftellen aan het begin en aan het einde van de beweging.").
next(ho2_tutorial,  s32, "true",  s33).

state(ho2_tutorial, s33, say).
text(ho2_tutorial,  s33, "Als je er klaar voor bent kun je op mijn rechter teen drukken en mijn armen vast pakken.").
leds(ho2_tutorial,  s33, ["RightFootLeds"], ["groen"]).
stateConfig(ho2_tutorial, s33, [next='RightBumperPressed']).
set_stiffness(ho2_tutorial, s33, ['RArm', 'LArm'], 0).
next(ho2_tutorial,  s33, "true",  s34).

state(ho2_tutorial, s34, say).
leds(ho2_tutorial,  s34, ["RightFootLeds"], ["wit"]).
text(ho2_tutorial, s34, "3. 2. 1. Start.").
next(ho2_tutorial,  s34, "true",  s35).

state(ho2_tutorial, s35, say).
start_motion_recording(ho2_tutorial, s35, ['RArm', 'LArm']).
stateConfig(ho2_tutorial, s35, [waitTimer=5000]).
next(ho2_tutorial,  s35, "true",  s36).

state(ho2_tutorial, s36, say).
text(ho2_tutorial,  s36, "3. 2. 1. Klaar.").
stateConfig(ho2_tutorial, s36, [noAnimation="true"]).
next(ho2_tutorial,  s36, "true",  s37).

state(ho2_tutorial, s37, say).
stop_motion_recording(ho2_tutorial, s37, ['RArm', 'LArm']).
stateConfig(ho2_tutorial, s37, [noAnimation="true", umVariable=motion_feest]).
next(ho2_tutorial,  s37, "true",  s38).

state(ho2_tutorial, s38, say).
go_to_base_posture(ho2_tutorial, s38).
text(ho2_tutorial,  s38, "Het is heel mooi geworden. Dit heb ik er van onthouden.").
next(ho2_tutorial,  s38, "true",  s39).

state(ho2_tutorial, s39, say).
play_motion(ho2_tutorial, s39, motion_feest).
next(ho2_tutorial, s39, "true", s40).

state(ho2_tutorial, s40, say).
go_to_base_posture(ho2_tutorial, s40).
text(ho2_tutorial, s40, "Gaaf hè").
next(ho2_tutorial,  s40, "true",  s41).

state(ho2_tutorial, s41, say).
text(ho2_tutorial,  s41, "Dan hebben we tot slot de lichtshow.").
next(ho2_tutorial,  s41, "true",  s42).

state(ho2_tutorial, s42, say).
text(ho2_tutorial,  s42, "Ik kan mijn ogen, buik, en voeten van kleur veranderen.").
leds(ho2_tutorial,  s42, ["FaceLeds", "ChestLeds", "FeetLeds"], ["paars", "oranje", "rood"]).
next(ho2_tutorial,  s42, "true",  s43).

state(ho2_tutorial, s43, say).
text(ho2_tutorial,  s43, "Leuk hè. Verder kan ik er ook een animatie aan toe voegen.").
next(ho2_tutorial,  s43, "true",  s44).

state(ho2_tutorial, s44, say).
text(ho2_tutorial,  s44, "Ik kan de lichtjes laten knipperen.").
start_led_anim(ho2_tutorial, s44, "all", "blink", ["paars", "oranje", "groen"], 500).
stateConfig(ho2_tutorial, s44, [waitTimer=1500]).
next(ho2_tutorial,  s44, "true",  s45).

state(ho2_tutorial, s45, say).
stop_led_anim(ho2_tutorial, s45).
next(ho2_tutorial,  s45, "true",  s46).

state(ho2_tutorial, s46, say).
text(ho2_tutorial,  s46, "of de lichtjes heen en weer laten gaan.").
start_led_anim(ho2_tutorial, s46, "all", "alternate", ["red", "blue"], 500).
stateConfig(ho2_tutorial, s46, [waitTimer=1500]).
next(ho2_tutorial,  s46, "true",  s47).

state(ho2_tutorial, s47, say).
stop_led_anim(ho2_tutorial, s47).
text(ho2_tutorial,  s47, "Bij het maken van een lichtshow kun je kiezen of je een animatie, zoals knipperen, wilt, of dat je de lampjes in mijn ogen, buik, en voeten gewoon wilt inkleuren.").
next(ho2_tutorial,  s47, "true",  s48).

state(ho2_tutorial, s48, say).
text(ho2_tutorial,  s48, "Laten we dat een keertje oefenen.").
next(ho2_tutorial,  s48, "true",  s49).

state(ho2_tutorial, s49, say).
text(ho2_tutorial,  s49, "Laten een feestelijke licht show maken").
prepare_led_anim(ho2_tutorial, s49).
stateConfig(ho2_tutorial, s49, [umVariable=led_show_feest]).

state(ho2_tutorial_2, s1, say).
text(ho2_tutorial_2,  s1, "Laten we eens kijken wat je er van gemaakt hebt.").
next(ho2_tutorial_2,  s1, "true",  s2).

state(ho2_tutorial_2, s2, say).
text(ho2_tutorial_2,  s2, "Wauw, dit is gaaf.").
play_led_anim(ho2_tutorial_2,  s2, led_show_feest).
stateConfig(ho2_tutorial_2, s2, [waitTimer=1500]).
next(ho2_tutorial_2,  s2, "true",  s3).

state(ho2_tutorial_2, s3, say).
text(ho2_tutorial_2, s3, "Goed gedaan %first_name%").
stop_led_anim(ho2_tutorial_2, s3).

state(ho2_tutorial_2, s3, say).
text(ho2_tutorial_2,  s3, "Zo nu heb ik alles wel uitgelegd.").
next(ho2_tutorial_2,  s3, "true",  s4).

state(ho2_tutorial_2, s4, question).
stateConfig(ho2_tutorial_2, s4, [type=yesno, context='answer_yesno']).
text(ho2_tutorial_2, s4, "Heb je hier nog vragen over?").
next(ho2_tutorial_2, s4, 'answer_yes', s5y).
next(ho2_tutorial_2, s4, 'answer_no', s5n).
next(ho2_tutorial_2, s4, 'answer_dontknow', s5y).
next(ho2_tutorial_2, s4, 'fail', s5y).

state(ho2_tutorial_2, s5y, say).
text(ho2_tutorial_2, s5y, "Kelly, kun jij %first_name% even helpen.").
stateConfig(ho2_tutorial_2, s5y, [next='FrontTactilTouched']).
next(ho2_tutorial_2,  s5y, "true",  s6).

state(ho2_tutorial_2, s5n, say).
text(ho2_tutorial_2,  s5n, "Top!").
next(ho2_tutorial_2,  s5n, "true",  s6).

state(ho2_tutorial_2, s6, say).
text(ho2_tutorial_2, s6, "Laten we verder gaan met het maken van leuke creatieve dingen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Co-creation				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(ho2_creation_1, s1, say).
text(ho2_creation_1,  s1, "Ik ben nog op zoek naar een knal geluid.").
next(ho2_creation_1,  s1, "true",  s2).

state(ho2_creation_1, s2, say).
prepare_sound_anim(ho2_creation_1, s2).
stateConfig(ho2_creation_1, s2, [umVariable=sound_knal,
				 option1='resources/sounds/door_slam1.wav',
				 option2='resources/sounds/door_slam2.wav',
				 recordTime=2500]).

state(ho2_creation_2, s1, say).
text(ho2_creation_2,  s1, "Top, laten we het even testen.").
next(ho2_creation_2,  s1, "true",  s2).

state(ho2_creation_2, s2, say).
text(ho2_creation_2,  s2, "Laatst was ik te laat op school, ik probeerde heel stilletjes het klas lokaal binnen te sluipen.").
next(ho2_creation_2,  s2, "true",  s3).

state(ho2_creation_2, s3, say).
audio(ho2_creation_2, s3, recorded, sound_knal).
next(ho2_creation_2,  s3, "true",  s4).

state(ho2_creation_2, s4, say).
text(ho2_creation_2,  s4, "Ik was tegen de deur opgelopen. Al mijn robot vriendjes lachen natuurlijk.").
next(ho2_creation_2,  s4, "true",  s5).

state(ho2_creation_2, s5, say).
text(ho2_creation_2,  s5, "Het geluidje werkte uitstekend!").
next(ho2_creation_2,  s5, "true",  s6).

state(ho2_creation_2, s6, say).
text(ho2_creation_2,  s6, "Laten we verder gaan.").
next(ho2_creation_2,  s6, "true",  s7).

state(ho2_creation_2, s7, say).
text(ho2_creation_2,  s7, "Ik zou nog wel een leuke olifanten beweging willen hebben.").
next(ho2_creation_2,  s7, "true",  s8).

state(ho2_creation_2, s8, say).
prepare_motion_anim(ho2_creation_2, s8).
stateConfig(ho2_creation_2, s8, [umVariable=motion_elephant,
				 option1='resources/gestures/elephant1.json',
				 option2='resources/gestures/elephant2.json']).

state(ho2_creation_3, s1, say).
text(ho2_creation_3,  s1, "Ben heel benieuwd of het een beetje werkt.").
next(ho2_creation_3,  s1, "true",  s2).

state(ho2_creation_3, s2, say).
text(ho2_creation_3,  s2, "De olifanten waren aan het drinken bij het watertje.").
next(ho2_creation_3,  s2, "true",  s3).

state(ho2_creation_3, s3, say).
text(ho2_creation_3,  s3, "De kleine olifantjes sproeien elkaar nat.").
next(ho2_creation_3,  s3, "true",  s4).

state(ho2_creation_3, s4, say).
text(ho2_creation_3,  s4, "Ze toeterden met hun slurf van plezier.").
next(ho2_creation_3,  s4, "true",  s5).

state(ho2_creation_3, s5, say).
play_motion(ho2_creation_3, s5, motion_elephant).
audio(ho2_creation_3, s5, server, "resources/sounds/elephant.wav").
next(ho2_creation_3, s5, "true", s6).

state(ho2_creation_3, s6, say).
text(ho2_creation_3,  s6, "Ja, dit is precies wat ik zocht!").
next(ho2_creation_3,  s6, "true",  s7).

state(ho2_creation_3, s7, say).
text(ho2_creation_3,  s7, "Door naar het heelal. ").
next(ho2_creation_3,  s7, "true",  s8).

state(ho2_creation_3, s8, say).
text(ho2_creation_3,  s8, "Daarvoor kan ik wel het geluid van een raket gebruiken.").
next(ho2_creation_3,  s8, "true",  s9).

state(ho2_creation_3, s9, say).
prepare_sound_anim(ho2_creation_3, s9).
stateConfig(ho2_creation_3, s9, [umVariable=sound_raket,
				 option1='resources/sounds/rocket1.wav',
				 option2='resources/sounds/rocket2.wav',
				 recordTime=3000]).

state(ho2_creation_4, s1, say).
text(ho2_creation_4,  s1, "Daar gaan we, houd je vast").
next(ho2_creation_4,  s1, "true",  s2).

state(ho2_creation_4, s2, say).
audio(ho2_creation_4, s2, recorded, sound_raket).
next(ho2_creation_4, s2, "true",  s3).

state(ho2_creation_4, s3, say).
text(ho2_creation_4,  s3, "We vliegen door de ruimte.").
next(ho2_creation_4,  s3, "true",  s4).

state(ho2_creation_4, s4, say).
text(ho2_creation_4,  s4, "De volgende op mijn lijstje is een lichtshow").
next(ho2_creation_4,  s4, "true",  s5).

state(ho2_creation_4, s5, say).
text(ho2_creation_4,  s5, "Ik wil graag eentje die boosheid uitdrukt.").
next(ho2_creation_4,  s5, "true",  s6).

state(ho2_creation_4, s6, say).
prepare_led_anim(ho2_creation_4, s6).
stateConfig(ho2_creation_4, s6, [ umVariable=led_show_boosheid,
				  option1=["all", "blink", ["rood", "oranje", "geel"], 500],
				  option2=[["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["rood", "oranje", "rood"], 0]]).

state(ho2_creation_5, s1, say).
text(ho2_creation_5,  s1, "Laten we eens kijken of ik een beetje boos kan doen.").
next(ho2_creation_5,  s1, "true",  s2).

state(ho2_creation_5, s2, say).
play_led_anim(ho2_creation_5,  s2, led_show_boosheid).
next(ho2_creation_5, s2, "true", s3).

state(ho2_creation_5, s3, say).
text(ho2_creation_5, s3, "gerur rur rur, ik ben boos").
next(ho2_creation_5, s3, "true", s4).

state(ho2_creation_5, s4, say).
text(ho2_creation_5, s4, "Net echt toch? Mooi gemaakt.").
stop_led_anim(ho2_creation_5, s4).
next(ho2_creation_5,  s4, "true",  s5).

state(ho2_creation_5, s5, say).
text(ho2_creation_5,  s5, "Weetje wat ik nog echt mis?").
next(ho2_creation_5,  s5, "true",  s6).

state(ho2_creation_5, s6, say).
text(ho2_creation_5,  s6, "Een goede zwaai beweging.").
prepare_motion_anim(ho2_creation_5, s6).
stateConfig(ho2_creation_5, s6, [umVariable=motion_zwaai,
				 option1='resources/gestures/wave1.json',
				 option2='resources/gestures/wave2.json']).

state(ho2_creation_6, s1, say).
text(ho2_creation_6,  s1, "Laten we testen.").
next(ho2_creation_6,  s1, "true",  s2).

state(ho2_creation_6, s2, say).
text(ho2_creation_6,  s2, "Dag sinterklaasje, dahaag").
play_motion(ho2_creation_6, s2, motion_zwaai).
next(ho2_creation_6,  s2, "true",  s3).

state(ho2_creation_6, s3, say).
text(ho2_creation_6, s3, "Werkt heel goed vind je niet?").
next(ho2_creation_6, s3, "true", s4).

state(ho2_creation_6, s4, say).
text(ho2_creation_6,  s4, "Nog twee te gaan.").
next(ho2_creation_6,  s4, "true",  s5).

state(ho2_creation_6, s5, question).
stateConfig(ho2_creation_6, s5, [type=yesno, context='answer_yesno']).
text(ho2_creation_6, s5, "Of wil je al stoppen?").
next(ho2_creation_6, s5, 'answer_yes', s6y).
next(ho2_creation_6, s5, 'answer_no', s6n).
next(ho2_creation_6, s5, 'answer_dontknow', s6d).
next(ho2_creation_6, s5, 'fail', s6n).

state(ho2_creation_6, s6y, say).
text(ho2_creation_6,  s6y, "Helemaal prima.").
next(ho2_creation_6,  s6y, "true",  s7yd).

state(ho2_creation_6, s6d, say).
text(ho2_creation_6,  s6d, "Weet je wat, laten we gewoon af gaan ronden voor vandaag.").
next(ho2_creation_6,  s6d, "true",  s7yd).

state(ho2_creation_6, s7yd, say).
text(ho2_creation_6,  s7yd, "Die twee laatste vul ik zelf wel in. Ontzettend bedankt voor je hulp. Het was zeker waardevol.").
remove_topic(ho2_creation_6,  s7yd, [ho2_creation_7, ho2_creation_8]).

state(ho2_creation_6, s6n, say).
text(ho2_creation_6,  s6n, "Top, laten we verder gaan.").
next(ho2_creation_6,  s6n, "true",  s7).

state(ho2_creation_6, s7, say).
text(ho2_creation_6,  s7, "Ik kan een blaas of stoom geluid goed gebruiken.").
prepare_sound_anim(ho2_creation_6, s7).
stateConfig(ho2_creation_6, s7, [umVariable=sound_stoom,
				 option1='resources/sounds/steam_hiss1.wav',
				 option2='resources/sounds/steam_hiss2.wav',
				 recordTime=2500]).

state(ho2_creation_7, s1, say).
text(ho2_creation_7,  s1, "Gisteren was ik een worst aan het braden.").
next(ho2_creation_7,  s1, "true",  s2).

state(ho2_creation_7, s2, say).
text(ho2_creation_7,  s2, "De worst sisste op de barbecue.").
audio(ho2_creation_7, s2, recorded, sound_stoom).
next(ho2_creation_7, s2, "true",  s3).

state(ho2_creation_7, s3, say).
text(ho2_creation_7, s3, "Jammer dat ik geen geuren kan verspreiden, anders had je nu lekkere barbecue geur kunnen ruiken.").
next(ho2_creation_7, s3, "true", s4).

state(ho2_creation_7, s4, say).
text(ho2_creation_7,  s4, "Goed geluid trouwens").
next(ho2_creation_7,  s4, "true",  s5).

state(ho2_creation_7, s5, say).
text(ho2_creation_7,  s5, "Sommige robots kunnen de kamer scannen, en daarmee leuke feitjes ontdekken over de voorwerpen en mensen in de kamer.").
next(ho2_creation_7,  s5, "true",  s6).

state(ho2_creation_7, s6, say).
text(ho2_creation_7,  s6, "Ik kan alleen doen als of.").
next(ho2_creation_7,  s6, "true",  s7).

state(ho2_creation_7, s7, say).
text(ho2_creation_7,  s7, "Om te doen als of kan ik wel een licht show gebruiken. Eentje waarmee ik net kan doen alsof ik de kamer aan het scannen ben.").
next(ho2_creation_7,  s7, "true",  s8).

state(ho2_creation_7, s8, say).
prepare_led_anim(ho2_creation_7, s8).
stateConfig(ho2_creation_7, s8, [	umVariable=led_show_scanning,
					option1=["all", "alternate", ["blauw", "turquoise"], 500],
					option2=["all", "blink", ["geel", "turquoise", "cyaan"], 500]]).

state(ho2_creation_8, s1, say).
text(ho2_creation_8,  s1, "Laat ik mijn nieuwe robot super kracht gelijk uitproberen.").
next(ho2_creation_8,  s1, "true",  s2).

state(ho2_creation_8, s2, say).
text(ho2_creation_8,  s2, "Ik ga je scannen.").
next(ho2_creation_8,  s2, "true",  s3).

state(ho2_creation_8, s3, say).
play_led_anim(ho2_creation_8,  s3, led_show_scanning).
audio(ho2_creation_8, s3, server, 'resources/sounds/zooming.wav').
next(ho2_creation_8, s3, "true",  s4).

state(ho2_creation_8, s4, say).
stop_led_anim(ho2_creation_8, s4).
text(ho2_creation_8,  s4, "Mijn scan zegt dat je %first_name% heet en houd van").
next(ho2_creation_8,  s4, "true",  s5).

state(ho2_creation_8, s5, say).
text(ho2_creation_8,  s5, "Ik ben maar een beetje aan het geinen, dat had je me namelijk zelf vertelt").
next(ho2_creation_8,  s5, "true",  s6).

state(ho2_creation_8, s6, say).
text(ho2_creation_8,  s6, "Dat was alles wat ik nodig had.").
next(ho2_creation_8,  s6, "true",  s7).

state(ho2_creation_8, s7, say).
text(ho2_creation_8,  s7, "Ontzettend bedankt voor je hulp. Het was zeker waardevol.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Goodbye				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho2_goodbye, s1, say).
text(ho2_goodbye,  s1, "Zo dat was het weer voor vandaag.").
next(ho2_goodbye,  s1, "true",  s2).

state(ho2_goodbye, s2, say).
text(ho2_goodbye,  s2, "Het was een lekker creatief gebeuren.").
next(ho2_goodbye,  s2, "true",  s3).

state(ho2_goodbye, s3, question).
stateConfig(ho2_goodbye, s3, [type=yesno, context='answer_yesno']).
text(ho2_goodbye, s3, "Vond je het leuk om de gebaren, geluiden, en licht shows te maken?").
next(ho2_goodbye, s3, 'answer_yes', s4y).
next(ho2_goodbye, s3, 'answer_no', s4n).
next(ho2_goodbye, s3, 'answer_dontknow', s4d).
next(ho2_goodbye, s3, 'fail', s5y).

state(ho2_goodbye, s4y, say).
text(ho2_goodbye,  s4y, "Leuk om te horen, altijd leuk om creatief bezig te zijn.").
next(ho2_goodbye,  s4y, "true",  s5y).

state(ho2_goodbye, s4d, say).
text(ho2_goodbye,  s4d, "Ook prima.").
next(ho2_goodbye,  s4d, "true",  s4n).

state(ho2_goodbye, s4n, question).
stateConfig(ho2_goodbye, s4n, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho2_goodbye, s4n, "Wat vond je er niet zo leuk aan?").
next(ho2_goodbye, s4n, 'success', s5n).
next(ho2_goodbye, s4n, 'fail', s7).

state(ho2_goodbye, s5n, say).
text(ho2_goodbye,  s5n, "Bedankt, ik ga mijn best doen om dat te verbeteren.").
next(ho2_goodbye,  s5n, "true",  s7).

state(ho2_goodbye, s5y, question).
stateConfig(ho2_goodbye, s5y, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho2_goodbye, s5y, "Wat vond je het leukste om te doen?").
next(ho2_goodbye, s5y, 'success', s6y).
next(ho2_goodbye, s5y, 'fail', s7).

state(ho2_goodbye, s6y, say).
text(ho2_goodbye,  s6y, "Dat was ook leuk!").
next(ho2_goodbye,  s6y, "true",  s7).

state(ho2_goodbye, s7, say).
text(ho2_goodbye,  s7, "Ik kijk er naar uit om alle creaties te gaan gebruiken volgende keer!").
next(ho2_goodbye,  s7, "true",  s8).

state(ho2_goodbye, s8, say).
text(ho2_goodbye,  s8, "Tot dan %first_name%, doei doei \pau=300\ ").