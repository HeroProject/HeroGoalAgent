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
text(ho2_greeting,  s3, "Volgens mij had ik al vertelt dat ik het leuk vind om verhaaltjes te vertellen.").
next(ho2_greeting,  s3, "true",  s4).

state(ho2_greeting, s4, say).
text(ho2_greeting,  s4, "Maar wat ik nog niet had vertelt is dat ik, bij het verhalen vertellen, graag creatieve bewegingen maak.").
next(ho2_greeting,  s4, "true",  s5).

state(ho2_greeting, s5, say).
text(ho2_greeting,  s5, "Ook maak ik graag geluidjes, en kan ik mijn lampjes inzetten om een licht show te maken.").
next(ho2_greeting,  s5, "true",  s6).

state(ho2_greeting, s6, say).
text(ho2_greeting,  s6, "Kijk maar eens, nu zit ik in een race auto.").
next(ho2_greeting,  s6, "true",  s7).

state(ho2_greeting, s7, say).
audio(ho2_greeting, s7, file, 'resources/sounds/racecar.wav').
anim(ho2_greeting, s7, file, "resources/gestures/racecar.xml").
leds(ho2_greeting, s7, direct, "all", "alternate", ["oranje", "paars"], 1000).
next(ho2_greeting,  s7, "true",  s8).

state(ho2_greeting, s8, say).
text(ho2_greeting,  s8, "Gaaf hè?").
leds(ho2_greeting, s8, reset).
go_to_posture(ho2_greeting, s8).
next(ho2_greeting,  s8, "true",  s9).

state(ho2_greeting, s9, say).
text(ho2_greeting,  s9, "Alleen heb ik nog niet overal de juiste bewegingen, geluidjes, en licht shows voor.").
next(ho2_greeting,  s9, "true",  s10).

state(ho2_greeting, s10, say).
text(ho2_greeting,  s10, "Het leuke van vandaag is, jij mag mij helpen die creaties te maken.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Co-creation tutorial		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho2_tutorial, s1, say).
text(ho2_tutorial,  s1, "Laat ik eerst uitleggen hoe het werkt.").
next(ho2_tutorial,  s1, "true",  s2).

state(ho2_tutorial, s2, say).
text(ho2_tutorial,  s2, "Ik kan natuurlijk wat geluidjes, en zo, downloaden.").
next(ho2_tutorial,  s2, "true",  s3).

state(ho2_tutorial, s3, say).
text(ho2_tutorial,  s3, "Maar ik denk dat jij het misschien ook wel leuk vind om die met mij zelf te maken.").
next(ho2_tutorial,  s3, "true",  s4).

state(ho2_tutorial, s4, say).
text(ho2_tutorial,  s4, "Bij elk geluidje, beweging en licht show mag jij kiezen of we het zelf gaan maken, of dat ik wat opties moet downloaden.").
next(ho2_tutorial,  s4, "true",  s5).

state(ho2_tutorial, s5, say).
text(ho2_tutorial,  s5, "Als je kiest voor downloaden dan laat ik steeds twee opties zien of horen, en dan mag jij kiezen welke je de beste vind.").
next(ho2_tutorial,  s5, "true",  s6).

state(ho2_tutorial, s6, say).
text(ho2_tutorial,  s6, "In mijn verhaaltjes komen vaak feestjes voor.").
next(ho2_tutorial,  s6, "true",  s7).

state(ho2_tutorial, s7, say).
text(ho2_tutorial,  s7, "Dat kunnen we mooi gebruiken om even mee te oefenen.").
next(ho2_tutorial,  s7, "true",  s8).

state(ho2_tutorial, s8, say).
text(ho2_tutorial,  s8, "Ik heb twee liedjes gedownload.").
next(ho2_tutorial,  s8, "true",  s9).

state(ho2_tutorial, s9, say).
text(ho2_tutorial,  s9, "Mag jij zo kiezen welke je het beste vind passen bij een feestje.").
next(ho2_tutorial,  s9, "true",  s10).

state(ho2_tutorial, s10, say).
text(ho2_tutorial,  s10, "Dit is de eerste").
next(ho2_tutorial,  s10, "true", s11).

state(ho2_tutorial, s11, say).
audio(ho2_tutorial, s11, file, "resources/sounds/tiktok1.wav").
next(ho2_tutorial,  s11, "true", s12).

state(ho2_tutorial, s12, say).
text(ho2_tutorial,  s12, "En dit is de tweede").
next(ho2_tutorial,  s12, "true", s13).

state(ho2_tutorial, s13, say).
audio(ho2_tutorial, s13, file, "resources/sounds/tiktok2.wav").
next(ho2_tutorial,  s13, "true", s14).

state(ho2_tutorial, s14, question).
stateConfig(ho2_tutorial, s14, [type = input, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'hero']]).
text(ho2_tutorial, s14, "Vind je het eerste of tweede liedje leuker, of zal ik kiezen?").
next(ho2_tutorial, s14, "success", s15).
next(ho2_tutorial, s14, "fail", s14f).

state(ho2_tutorial, s14f, say).
text(ho2_tutorial,  s14f, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(ho2_tutorial,  s14f, "true",  s15).

state(ho2_tutorial, s15, branchingPoint, ho2_tutorial_s14).
next(ho2_tutorial, s15, "eerste", s16eerste).
next(ho2_tutorial, s15, "tweede", s16tweede).
next(ho2_tutorial, s15, "hero", s16robot).
next(ho2_tutorial, s15, "fail", s16tweede).

state(ho2_tutorial, s16eerste, say).
text(ho2_tutorial,  s16eerste, "Het eerste, die was leuk hè").
save_sound(ho2_tutorial, s16eerste, sound_koelkast_song, "resources/sounds/tiktok1.wav").
next(ho2_tutorial,  s16eerste, "true",  s17).

state(ho2_tutorial, s16tweede, say).
text(ho2_tutorial,  s16tweede, "Het tweede, die was leuk hè.").
save_sound(ho2_tutorial, s16tweede, sound_koelkast_song, "resources/sounds/tiktok2.wav").
next(ho2_tutorial,  s16tweede, "true",  s17).

state(ho2_tutorial, s16robot, say).
text(ho2_tutorial,  s16robot, "De tweede vond ik het leukst dus die heb ik gekozen.").
save_sound(ho2_tutorial, s16robot, sound_koelkast_song, "resources/sounds/tiktok2.wav").
next(ho2_tutorial,  s16robot, "true",  s17).

state(ho2_tutorial, s17, say).
text(ho2_tutorial,  s17, "Het kan ook leuk zijn om zelf geluidjes te maken.").
next(ho2_tutorial,  s17, "true",  s18).

state(ho2_tutorial, s18, say).
text(ho2_tutorial,  s18, "Die kun je dan inspreken en dan neem ik dat op. Dat opgenomen geluidje kan ik later weer afspelen.").
next(ho2_tutorial,  s18, "true",  s19).

state(ho2_tutorial, s19, say).
text(ho2_tutorial,  s19, "Na een goed liedje hoort natuurlijk, een applaus.").
next(ho2_tutorial,  s19, "true",  s20a).

state(ho2_tutorial, s20a, say).
text(ho2_tutorial,  s20a, "Ik zal zo aftellen en dan kun je daarna applaudiseren. Door bijvoorbeeld te klappen of juichen.").
next(ho2_tutorial,  s20a, "true",  s20).

state(ho2_tutorial, s20, say).
text(ho2_tutorial,  s20, "Als je er klaar voor bent dan kun je tegen mijn linker teen drukken.").
leds(ho2_tutorial,  s20, direct, ["RightFootLeds"], ["groen"]).
stateConfig(ho2_tutorial, s20, [next='RightBumperPressed']).
next(ho2_tutorial,  s20, "true",  s21).

state(ho2_tutorial, s21, say).
leds(ho2_tutorial,  s21, direct, ["RightFootLeds"], ["wit"]).
text(ho2_tutorial,  s21, "Applaudisseer in 3, 2, 1.").
next(ho2_tutorial,  s21, "true",  s22).

state(ho2_tutorial, s22, audioInput).
stateConfig(ho2_tutorial, s22, [recordTime=3000, umVariable=sound_applaus]).
next(ho2_tutorial, s22, "true", s23).

state(ho2_tutorial, s23, say).
text(ho2_tutorial,  s23, "Top gedaan.").
next(ho2_tutorial,  s23, "true",  s24).

state(ho2_tutorial, s24, say).
text(ho2_tutorial,  s24, "Zo klinkt het geluidseffect nu.").
next(ho2_tutorial,  s24, "true",  s25).

state(ho2_tutorial, s25, say).
audio(ho2_tutorial, s25, id, sound_applaus).
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
text(ho2_tutorial,  s29, "Ik zal dan de bewegingen die je met mijn armen maakt zo precies mogelijk nadoen.").
next(ho2_tutorial,  s29, "true",  s30).

state(ho2_tutorial, s30, say).
text(ho2_tutorial,  s30, "Laten we dat een keertje oefenen.").
next(ho2_tutorial,  s30, "true",  s31).

state(ho2_tutorial, s31, say).
text(ho2_tutorial,  s31, "Laten we een dansje maken bij het liedje dat je net hebt gekozen.").
next(ho2_tutorial,  s31, "true",  s32).

state(ho2_tutorial, s32, say).
text(ho2_tutorial,  s32, "Ik zal aftellen aan het begin en aan het einde van het dansje.").
next(ho2_tutorial,  s32, "true",  s33).

state(ho2_tutorial, s33, say).
text(ho2_tutorial,  s33, "Als je er klaar voor bent kun je tegen mijn linker teen drukken en mijn armen vast pakken.").
leds(ho2_tutorial,  s33, direct, ["RightFootLeds"], ["groen"]).
stateConfig(ho2_tutorial, s33, [next='RightBumperPressed']).
set_stiffness(ho2_tutorial, s33, ['RArm', 'LArm'], 0).
next(ho2_tutorial,  s33, "true",  s34).

state(ho2_tutorial, s34, say).
leds(ho2_tutorial,  s34, direct, ["RightFootLeds"], ["wit"]).
text(ho2_tutorial, s34, "3. 2. 1.").
next(ho2_tutorial,  s34, "true",  s35).

state(ho2_tutorial, s35, say).
record_motion(ho2_tutorial, s35, ['RArm', 'LArm'], 0).
audio(ho2_tutorial, s35, id, sound_koelkast_song).
next(ho2_tutorial,  s35, "true",  s36).

state(ho2_tutorial, s36, say).
text(ho2_tutorial,  s36, "3, 2, 1, Klaar.").
stateConfig(ho2_tutorial, s36, [noAnimation="true"]).
next(ho2_tutorial,  s36, "true",  s37).

state(ho2_tutorial, s37, say).
save_motion(ho2_tutorial, s37, recording, ['RArm', 'LArm']).
stateConfig(ho2_tutorial, s37, [noAnimation="true", umVariable=motion_feest]).
next(ho2_tutorial,  s37, "true",  s38).

state(ho2_tutorial, s38, say).
go_to_posture(ho2_tutorial, s38).
text(ho2_tutorial,  s38, "Het is heel mooi geworden. Dat gaan we zo terug kijken.").
next(ho2_tutorial,  s38, "true",  s41).

state(ho2_tutorial, s41, say).
text(ho2_tutorial,  s41, "Maar eerst gaan we een licht show maken").
next(ho2_tutorial,  s41, "true",  s42).

state(ho2_tutorial, s42, say).
text(ho2_tutorial,  s42, "Ik kan namelijk mijn ogen, buik, en voeten van kleur veranderen.").
leds(ho2_tutorial,  s42, direct, ["FaceLeds", "ChestLeds", "FeetLeds"], ["paars", "oranje", "rood"]).
next(ho2_tutorial,  s42, "true",  s43).

state(ho2_tutorial, s43, say).
text(ho2_tutorial,  s43, "Leuk hè. Verder kan ik er ook een animatie aan toe voegen.").
next(ho2_tutorial,  s43, "true",  s44).

state(ho2_tutorial, s44, say).
text(ho2_tutorial,  s44, "Ik kan de lichtjes laten knipperen.").
leds(ho2_tutorial, s44, direct, "all", "blink", ["paars", "oranje", "groen"], 500).
stateConfig(ho2_tutorial, s44, [waitTimer=1500]).
next(ho2_tutorial,  s44, "true",  s45).

state(ho2_tutorial, s45, say).
leds(ho2_tutorial, s45, reset).
next(ho2_tutorial,  s45, "true",  s46).

state(ho2_tutorial, s46, say).
text(ho2_tutorial,  s46, "of de lichtjes heen en weer laten gaan.").
leds(ho2_tutorial, s46, direct, "all", "alternate", ["red", "blue"], 500).
stateConfig(ho2_tutorial, s46, [waitTimer=1500]).
next(ho2_tutorial,  s46, "true",  s47).

state(ho2_tutorial, s47, say).
leds(ho2_tutorial, s47, reset).
text(ho2_tutorial,  s47, "Bij het maken van een lichtshow kun je kiezen of je een animatie, zoals knipperen, wilt, of dat je de lampjes gewoon wilt inkleuren.").
next(ho2_tutorial,  s47, "true",  s48).

state(ho2_tutorial, s48, say).
text(ho2_tutorial,  s48, "Laten we dat een keertje oefenen.").
next(ho2_tutorial,  s48, "true",  s49).

state(ho2_tutorial, s49, say).
text(ho2_tutorial,  s49, "We hebben nu een liedje en een dansje bij het feestje. Tijd voor een passende licht show.").
prepare_led_anim(ho2_tutorial, s49).
stateConfig(ho2_tutorial, s49, [umVariable=led_show_feest]).

state(ho2_tutorial_2, s1, say).
text(ho2_tutorial_2,  s1, "Tijd voor een feestje!").
next(ho2_tutorial_2,  s1, "true",  s2).

state(ho2_tutorial_2, s2, say).
leds(ho2_tutorial_2,  s2, id, led_show_feest).
anim(ho2_tutorial_2, s2, id, motion_feest).
audio(ho2_tutorial_2, s2, id, sound_koelkast_song).
next(ho2_tutorial_2,  s2, "true",  s3).

state(ho2_tutorial_2, s3, say).
text(ho2_tutorial_2, s3, "Wauw, dit is gaaf. Goed gedaan %first_name%").
leds(ho2_tutorial_2, s3, reset).
go_to_posture(ho2_tutorial_2, s3).
audio(ho2_tutorial_2, s3, id, sound_applaus).
next(ho2_tutorial_2,  s3, "true",  s3b).

state(ho2_tutorial_2, s3b, say).
text(ho2_tutorial_2,  s3b, "Zo nu heb ik alles wel uitgelegd.").
next(ho2_tutorial_2,  s3b, "true",  s4).

state(ho2_tutorial_2, s4, question).
stateConfig(ho2_tutorial_2, s4, [type=yesno, context='answer_yesno']).
text(ho2_tutorial_2, s4, "Heb je hier nog vragen over?").
next(ho2_tutorial_2, s4, 'answer_yes', s5y).
next(ho2_tutorial_2, s4, 'answer_no', s6).
next(ho2_tutorial_2, s4, 'answer_dontknow', s5y).
next(ho2_tutorial_2, s4, 'fail', s5y).

state(ho2_tutorial_2, s5y, say).
text(ho2_tutorial_2, s5y, "Kelly, kun jij %first_name% even helpen.").
stateConfig(ho2_tutorial_2, s5y, [next='FrontTactilTouched']).
next(ho2_tutorial_2,  s5y, "true",  s6).

state(ho2_tutorial_2, s6, say).
text(ho2_tutorial_2,  s6, "Top!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Story selection			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho2_story_selection, s1, say).
text(ho2_story_selection,  s1, "Nu weet je hoe je leuke geluidjes, bewegingen, en licht shows kan maken.").
next(ho2_story_selection,  s1, "true",  s2).

state(ho2_story_selection, s2, say).
text(ho2_story_selection,  s2, "De volgende keer zal ik een verhaal vertellen over mijn vorige baaantjes.").
next(ho2_story_selection,  s2, "true",  s3).

state(ho2_story_selection, s3, say).
text(ho2_story_selection,  s3, "Ik ben een tijdje een slimme koelkast geweest.").
next(ho2_story_selection,  s3, "true",  s4).

state(ho2_story_selection, s4, say).
text(ho2_story_selection,  s4, "Ook heb ik een eventjes gewerkt als graafmachine.").
next(ho2_story_selection,  s4, "true",  s5).

state(ho2_story_selection, s5, say).
text(ho2_story_selection,  s5, "Toch wilde ik wat anders. \pau=300\ ").
next(ho2_story_selection,  s5, "true",  s6).

state(ho2_story_selection, s6, say).
text(ho2_story_selection,  s6, "Ik heb even getwijfeld of ik net zoals jij, %beroep% wilde worden.").
next(ho2_story_selection,  s6, "true",  s7).

state(ho2_story_selection, s7, say).
text(ho2_story_selection,  s7, "Maar ik ben nu heel blij dat ik een robot vriendje mag worden. \pau=300\ ").
next(ho2_story_selection,  s7, "true",  s8).

state(ho2_story_selection, s8, say).
text(ho2_story_selection,  s8, "Maar ik vertel graag over al mijn avontuuuren als koelkast en graafmachine.").
next(ho2_story_selection,  s8, "true",  s9).

state(ho2_story_selection, s9, question).
stateConfig(ho2_story_selection, s9, [type=input, context='choose_story', options= ["koelkast", "graafmachine"], umVariable=ho2_story_choice]).
text(ho2_story_selection, s9, "Wil jij de volgende keer horen over mijn avontuur als koelkast of als graafmachine?").
next(ho2_story_selection, s9, 'success', s10).
next(ho2_story_selection, s9, 'fail', s9f).

state(ho2_story_selection, s9f, say).
text(ho2_story_selection,  s9f, "Dat ging niet helemaal goed, maar dat is niet erg. Laat ik gewoon over mijn tijd als koelkast vertellen.").
next(ho2_story_selection,  s9f, "true",  s10).

state(ho2_story_selection, s10, branchingPoint, ho2_story_choice).
next(ho2_story_selection, s10, "koelkast", s10koelkast).
next(ho2_story_selection, s10, "graafmachine", s10graafmachine).
next(ho2_story_selection, s10, "fail", s10koelkast).

state(ho2_story_selection, s10koelkast, say).
text(ho2_story_selection,  s10koelkast, "Koelkast, leuk!").
insert_topic(ho2_story_selection, s10koelkast, ho2_koelkast_4).
insert_topic(ho2_story_selection, s10koelkast, ho2_koelkast_3).
insert_topic(ho2_story_selection, s10koelkast, ho2_koelkast_2).
insert_topic(ho2_story_selection, s10koelkast, ho2_koelkast_1).
insert_topic(ho2_story_selection, s10koelkast, ho2_koelkast).
stateConfig(ho2_story_selection, s10koelkast, [loadUserModel="true"]).

state(ho2_story_selection, s10graafmachine, say).
text(ho2_story_selection,  s10graafmachine, "Graafmachine, leuk!").
insert_topic(ho2_story_selection, s10graafmachine, ho2_graafmachine_4).
insert_topic(ho2_story_selection, s10graafmachine, ho2_graafmachine_3).
insert_topic(ho2_story_selection, s10graafmachine, ho2_graafmachine_2).
insert_topic(ho2_story_selection, s10graafmachine, ho2_graafmachine_1).
insert_topic(ho2_story_selection, s10graafmachine, ho2_graafmachine).
stateConfig(ho2_story_selection, s10graafmachine, [loadUserModel="true"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Koelkast				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho2_koelkast, s1, say).
text(ho2_koelkast,  s1, "Voor het verhaal van mij als koelkast heb ik nog 1 geluidje, 1 beweging, en 1 licht show nodig.").
next(ho2_koelkast, s1, 'success', s2).

state(ho2_koelkast, s2, say).
text(ho2_koelkast,  s2, "Laten we die gaan maken").

state(ho2_koelkast_1, s1, say).
text(ho2_koelkast_1,  s1, "Laten we beginnen bij het geluidje.").
next(ho2_koelkast_1,  s1, "true",  s2).

state(ho2_koelkast_1, s2, say).
text(ho2_koelkast_1,  s2, "In het verhaal wordt een deur goed dicht geslagen. Daar kan ik wel een knal voor gebruiken.").
next(ho2_koelkast_1,  s2, "true",  s3).

state(ho2_koelkast_1, s3, say).
prepare_sound_anim(ho2_koelkast_1, s3).
stateConfig(ho2_koelkast_1, s3, [umVariable=sound_knal,
				 option1='resources/sounds/door_slam1.wav',
				 option2='resources/sounds/door_slam2.wav',
				 recordTime=2500]).

state(ho2_koelkast_2, s1, say).
text(ho2_koelkast_2,  s1, "Top, laten we het even testen.").
next(ho2_koelkast_2,  s1, "true",  s2).

state(ho2_koelkast_2, s2, say).
text(ho2_koelkast_2,  s2, "Laatst was ik te laat op school, ik probeerde heel stilletjes het klas lokaal binnen te sluipen.").
next(ho2_koelkast_2,  s2, "true",  s3).

state(ho2_koelkast_2, s3, say).
audio(ho2_koelkast_2, s3, id, sound_knal).
next(ho2_koelkast_2,  s3, "true",  s4).

state(ho2_koelkast_2, s4, say).
text(ho2_koelkast_2,  s4, "Ik was tegen de deur opgelopen. Al mijn robot vriendjes lachen natuurlijk.").
next(ho2_koelkast_2,  s4, "true",  s5).

state(ho2_koelkast_2, s5, say).
text(ho2_koelkast_2,  s5, "Het goede nieuws is, het geluidje werkte uitstekend!").
next(ho2_koelkast_2,  s5, "true",  s6).

state(ho2_koelkast_2, s6, say).
text(ho2_koelkast_2,  s6, "Laten we verder gaan.").
next(ho2_koelkast_2,  s6, "true",  s7).

state(ho2_koelkast_2, s7, say).
text(ho2_koelkast_2,  s7, "Geloof het of niet, in het verhaal komt ook een potje tennis voorbij. Daar wil ik wel graag een leuke beweging voor.").
next(ho2_koelkast_2,  s7, "true",  s8).

state(ho2_koelkast_2, s8, say).
prepare_motion_anim(ho2_koelkast_2, s8).
stateConfig(ho2_koelkast_2, s8, [umVariable=motion_tennis,
				 option1='resources/gestures/tennis1.json',
				 option2='resources/gestures/tennis2.json']).

state(ho2_koelkast_3, s1, say).
text(ho2_koelkast_3,  s1, "Deze tennis beweging heb ik van je geleerd.").
next(ho2_koelkast_3,  s1, "true",  s2).

state(ho2_koelkast_3, s2, say).
anim(ho2_koelkast_3, s2, id, motion_tennis).
audio(ho2_koelkast_3, s2, file, "resources/sounds/tennis.wav").
next(ho2_koelkast_3, s2, "true", s3).

state(ho2_koelkast_3, s3, say).
go_to_posture(ho2_koelkast_3, s3).
text(ho2_koelkast_3,  s3, "Daar kan ik wel een goede bal mee slaan, al zeg ik het zelf.").
next(ho2_koelkast_3,  s3, "true",  s4).

state(ho2_koelkast_3, s4, say).
text(ho2_koelkast_3,  s4, "Dan hebben we tot slot alleen nog een licht show nodig.").
next(ho2_koelkast_3,  s4, "true",  s5).

state(ho2_koelkast_3, s5, say).
text(ho2_koelkast_3,  s5, "In het verhaal gaan de inwoners van de koelkast allemaal door elkaar praten.").
next(ho2_koelkast_3,  s5, "true",  s6).

state(ho2_koelkast_3, s6, say).
text(ho2_koelkast_3,  s6, "En daar wordt ik een beetje duizelig van.").
next(ho2_koelkast_3,  s6, "true",  s7).

state(ho2_koelkast_3, s7, say).
text(ho2_koelkast_3,  s7, "Ik wil wel graag een licht show die mijn duizeligheid uitdrukt.").
next(ho2_koelkast_3,  s7, "true",  s8).

state(ho2_koelkast_3, s8, say).
prepare_led_anim(ho2_koelkast_3, s8).
stateConfig(ho2_koelkast_3, s8, [ umVariable=led_show_duizeligheid,
				  option1=["all", "alternate", ["blauw", "geel"], 500],
				  option2=[["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["paars", "oranje", "paars"], 0]]).

state(ho2_koelkast_4, s1, say).
text(ho2_koelkast_4,  s1, "Even uitproberen.").
leds(ho2_koelkast_4,  s1, id, led_show_duizeligheid).
next(ho2_koelkast_4,  s1, "true",  s2).

state(ho2_koelkast_4, s2, say).
text(ho2_koelkast_4,  s2, "Ziet er goed uit, goed gedaan.").
next(ho2_koelkast_4,  s2, "true",  s3).

state(ho2_koelkast_4, s3, say).
leds(ho2_koelkast_4, s3, reset).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Graafmachine			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho2_graafmachine, s1, say).
text(ho2_graafmachine,  s1, "Voor het verhaal over mij als graafmachine heb ik nog 1 geluidje, 1 beweging, en 1 licht show nodig.").
%stateConfig(ho2_graafmachine, s1, [loadUserModel="true"]).
next(ho2_graafmachine, s1, 'success', s2).

state(ho2_graafmachine, s2, say).
text(ho2_graafmachine,  s2, "Laten we die gaan maken").

state(ho2_graafmachine_1, s1, say).
text(ho2_graafmachine_1,  s1, "Laten we beginnen bij het geluidje.").
next(ho2_graafmachine_1,  s1, "true",  s2).

state(ho2_graafmachine_1, s2, say).
text(ho2_graafmachine_1,  s2, "Grappig genoeg komen er piepende muizen in voor. Daar kan ik wel een geluidje voor gebruiken").
next(ho2_graafmachine_1,  s2, "true",  s3).

state(ho2_graafmachine_1, s3, say).
prepare_sound_anim(ho2_graafmachine_1, s3).
stateConfig(ho2_graafmachine_1, s3, [umVariable=sound_mouse,
				 option1='resources/sounds/mouse_squak.wav',
				 option2='resources/sounds/mouse_beep.wav',
				 recordTime=2500]).
				 
state(ho2_graafmachine_2, s1, say).
text(ho2_graafmachine_2,  s1, "Top, laten we er nog even naar luisteren").
next(ho2_graafmachine_2,  s1, "true",  s2).

state(ho2_graafmachine_2, s2, say).
audio(ho2_graafmachine_2, s2, id, sound_mouse).
next(ho2_graafmachine_2,  s2, "true",  s3).

state(ho2_graafmachine_2, s3, say).
text(ho2_graafmachine_2,  s3, "Heel goed, %first_name%").
next(ho2_graafmachine_2,  s3, "true",  s4).

state(ho2_graafmachine_2, s4, say).
text(ho2_graafmachine_2,  s4, "Laten we verder gaan.").
next(ho2_graafmachine_2,  s4, "true",  s5).

state(ho2_graafmachine_2, s5, say).
text(ho2_graafmachine_2,  s5, "In het verhaal komt een van mijn favoriete dieren voor, een olifant.").
next(ho2_graafmachine_2,  s5, "true",  s6).

state(ho2_graafmachine_2, s6, say).
text(ho2_graafmachine_2,  s6, "Ik kan nog een olifantenbeweging gebruiken.").
next(ho2_graafmachine_2,  s6, "true",  s7).

state(ho2_graafmachine_2, s7, say).
prepare_motion_anim(ho2_graafmachine_2, s7).
stateConfig(ho2_graafmachine_2, s7, [umVariable=motion_elephant,
				 option1='resources/gestures/elephant1.json',
				 option2='resources/gestures/elephant2.json']).

state(ho2_graafmachine_3, s1, say).
text(ho2_graafmachine_3,  s1, "Laten we de beweging eens uitproberen tijdens een kort verhaaltje.").
next(ho2_graafmachine_3,  s1, "true",  s2).

state(ho2_graafmachine_3, s2, say).
text(ho2_graafmachine_3,  s2, "Er was eens een kudde olifanten.").
next(ho2_graafmachine_3,  s2, "true",  s3).

state(ho2_graafmachine_3, s3, say).
text(ho2_graafmachine_3,  s3, "Ze waren aan het drinken bij een watertje.").
next(ho2_graafmachine_3,  s3, "true",  s4).

state(ho2_graafmachine_3, s4, say).
text(ho2_graafmachine_3,  s4, "De kleine olifantjes sproeien elkaar nat.").
next(ho2_graafmachine_3,  s4, "true",  s5).

state(ho2_graafmachine_3, s5, say).
text(ho2_graafmachine_3,  s5, "Ze toeterden met hun slurf van plezier.").
next(ho2_graafmachine_3,  s5, "true",  s6).

state(ho2_graafmachine_3, s6, say).
anim(ho2_graafmachine_3, s6, id, motion_elephant).
audio(ho2_graafmachine_3, s6, file, "resources/sounds/elephant.wav").
next(ho2_graafmachine_3, s6, "true", s7).

state(ho2_graafmachine_3, s7, say).
go_to_posture(ho2_graafmachine_3, s7).
text(ho2_graafmachine_3,  s7, "Ja, dit is precies wat ik zocht! Test geslaagd").
next(ho2_graafmachine_3,  s7, "true",  s8).

state(ho2_graafmachine_3, s8, say).
text(ho2_graafmachine_3,  s8, "De volgende creatie op mijn lijstje is een lichtshow").
next(ho2_graafmachine_3,  s8, "true",  s9).

state(ho2_graafmachine_3, s9, say).
text(ho2_graafmachine_3,  s9, "Ik wil graag eentje die boosheid uitdrukt.").
next(ho2_graafmachine_3,  s9, "true",  s10).

state(ho2_graafmachine_3, s10, say).
prepare_led_anim(ho2_graafmachine_3, s10).
stateConfig(ho2_graafmachine_3, s10, [ umVariable=led_show_boosheid,
				  option1=["all", "blink", ["rood", "oranje", "geel"], 500],
				  option2=[["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["rood", "oranje", "rood"], 0]]).

state(ho2_graafmachine_4, s1, say).
text(ho2_graafmachine_4,  s1, "Laten we eens kijken of ik een beetje boos kan doen.").
next(ho2_graafmachine_4,  s1, "true",  s2).

state(ho2_graafmachine_4, s2, say).
leds(ho2_graafmachine_4,  s2, id, led_show_boosheid).
next(ho2_graafmachine_4, s2, "true", s3).

state(ho2_graafmachine_4, s3, say).
text(ho2_graafmachine_4, s3, "gerur rur rur, ik ben boos").
next(ho2_graafmachine_4, s3, "true", s4).

state(ho2_graafmachine_4, s4, say).
text(ho2_graafmachine_4, s4, "Net echt toch? Mooi gemaakt.").
leds(ho2_graafmachine_4, s4, reset).

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
text(ho2_goodbye,  s4y, "Leuk om te horen, altijd fijn om creatief bezig te zijn.").
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
anim(ho2_goodbye, s8, file, "resources/gestures/wave1.json").
text(ho2_goodbye,  s8, "Tot dan %first_name%, doei doei \pau=300\ ").
next(ho2_goodbye,  s8, "true",  s9).

state(ho2_goodbye, s9, say).
go_to_posture(ho2_goodbye, s9).