%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           Topics for a co-creation conversation	   %%%
%%%			    ZOO				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introduction    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_intro, s1, say).
text(co_zoo_intro,  s1, "Ik vertel graag over dingen die ik heb meegemaakt.").
next(co_zoo_intro,  s1, "true",  s2).

state(co_zoo_intro, s2, say).
text(co_zoo_intro,  s2, "Ik vind het leuk om daar verhaaltjes over te vertellen.").
next(co_zoo_intro,  s2, "true",  s3).

state(co_zoo_intro, s3, say).
text(co_zoo_intro,  s3, "Zo was ik laatst in de dierentuin met mijn robotvriendjes. \pau=300\ ").
next(co_zoo_intro,  s3, "true",  s4).

state(co_zoo_intro, s4, say).
text(co_zoo_intro,  s4, "Het was een fijne zonnige dag.").
leds(co_zoo_intro, s4, ['FaceLeds', 'ChestLeds'], ['Yellow', 'Yellow']).
next(co_zoo_intro,  s4, "true",  s5).

state(co_zoo_intro, s5, say).
text(co_zoo_intro,  s5, "We kregen een rondleiding van de dierenverzorger.").
leds(co_zoo_intro, s5, ['FaceLeds', 'ChestLeds'], ['White', 'White']).
next(co_zoo_intro,  s5, "true",  s6).

state(co_zoo_intro, s6, say).
text(co_zoo_intro,  s6, "We zijn langs de apen en de zebra's gelopen. \pau=300\ ").
next(co_zoo_intro,  s6, "true",  s7).

state(co_zoo_intro, s7, question).
stateConfig(co_zoo_intro, s7, [type=input, context='answer_favorite_animal', options=['hond', 'kat', 'olifant', 'tijger', 'paard', 'alpaca']]).
text(co_zoo_intro, s7, "Wat is eigenlijk jouw lievelingsdier?").
next(co_zoo_intro, s7, 'success', s8).
next(co_zoo_intro, s7, 'fail', s8f).

state(co_zoo_intro, s8, question).
stateConfig(co_zoo_intro, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_intro, s8, "Leuk! Wat vind je zo leuk aan een %co_zoo_intro_s7%?").
next(co_zoo_intro, s8, 'success', s9).
next(co_zoo_intro, s8, 'fail', s9f).

state(co_zoo_intro, s8f, question).
stateConfig(co_zoo_intro, s8f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_intro, s8f, "Leuk! Wat vind je daar zo leuk aan?").
next(co_zoo_intro, s8f, 'success', s9f).
next(co_zoo_intro, s8f, 'fail', s9ff).

state(co_zoo_intro, s9, say).
text(co_zoo_intro,  s9, "Een %co_zoo_intro_s7% is dus een terechte favoriet.").

state(co_zoo_intro, s9f, say).
text(co_zoo_intro,  s9f, "Een terechte favoriet.").

state(co_zoo_intro, s9ff, say).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Elephants - Gesture		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_zoo_elephant, s1, say).
text(co_zoo_elephant,  s1, "Een van mijn lievelingsdieren zijn olifanten.").
next(co_zoo_elephant,  s1, "true",  s2).

state(co_zoo_elephant, s2, say).
text(co_zoo_elephant,  s2, "Ik vind het gaaf dat ze zo groot zijn.").
next(co_zoo_elephant,  s2, "true",  s3).

state(co_zoo_elephant, s3, say).
text(co_zoo_elephant,  s3, "En ik vind hun slurf zo leuk.").
next(co_zoo_elephant,  s3, "true",  s4).

state(co_zoo_elephant, s4, say).
text(co_zoo_elephant,  s4, "Vooral als ze er mee toeteren.").
next(co_zoo_elephant,  s4, "true",  s5).

state(co_zoo_elephant, s5, say).
text(co_zoo_elephant,  s5, "Daar zou ik nou een leuk gebaar voor willen hebben.").
next(co_zoo_elephant,  s5, "true",  s6).

state(co_zoo_elephant, s6, question).
stateConfig(co_zoo_elephant, s6, [type = branch, context = "involvement_selection", options = ['maken', 'downloaden'], defaultAnswer='downloaden',
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_zoo_elephant, s8], [co_zoo_elephant, s20]]]).
text(co_zoo_elephant, s6, "Wil jij die zelf maken of zal ik wat bewegingen downloaden?").
next(co_zoo_elephant, s6, "success", s7).
next(co_zoo_elephant, s6, "fail", s6f).

state(co_zoo_elephant, s7, say).
text(co_zoo_elephant,  s7, "Oke we gaan het %co_zoo_elephant_s6%.").
next(co_zoo_elephant,  s7, "true",  s8).

state(co_zoo_elephant, s6f, say).
text(co_zoo_elephant, s6f, "Weet je wat? Ik download gewoon wat bewegingen.").
next(co_zoo_elephant, s6f, 'true', s8).

state(co_zoo_elephant, s8, branchingPoint).
next(co_zoo_elephant, s8, "maken", s8maken).
next(co_zoo_elephant, s8, "downloaden", s8downloaden).
next(co_zoo_elephant, s8, "fail", s8downloaden).

%%%%%%%%%%%%%% Create gesture %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_elephant, s8maken, say).
text(co_zoo_elephant,  s8maken, "Als je klaar bent om te beginnen, kun je mijn linker teen indrukken.").
leds(co_zoo_elephant,  s8maken, ["RightFootLeds"], ["groen"]).
stateConfig(co_zoo_elephant, s8maken, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_zoo_elephant,  s8maken, "true",  s8maken2).

state(co_zoo_elephant, s8maken2, say).
text(co_zoo_elephant,  s8maken2, "Pak mijn armen maar vast.").
leds(co_zoo_elephant,  s8maken2, ["RightFootLeds"], ["wit"]).
stateConfig(co_zoo_elephant, s8maken2, [noAnimation="true"]).
set_stiffness(co_zoo_elephant, s8maken2, ['RArm', 'LArm'], 0).
next(co_zoo_elephant,  s8maken2, "true",  s9maken).

state(co_zoo_elephant, s9maken, say).
audio(co_zoo_elephant, s9maken, server, "resources/sounds/ready_to_record_gesture.wav").
next(co_zoo_elephant,  s9maken, "true",  s10maken).

state(co_zoo_elephant, s10maken, say).
start_motion_recording(co_zoo_elephant, s10maken, ['RArm', 'LArm']).
stateConfig(co_zoo_elephant, s10maken, [waitTimer=7]).
next(co_zoo_elephant,  s10maken, "true",  s11maken).

state(co_zoo_elephant, s11maken, say).
text(co_zoo_elephant,  s11maken, "3. 2. 1. Klaar.").
stateConfig(co_zoo_elephant, s11maken, [noAnimation="true"]).
next(co_zoo_elephant,  s11maken, "true",  s12maken).

state(co_zoo_elephant, s12maken, say).
stop_motion_recording(co_zoo_elephant, s12maken, ['RArm', 'LArm']).
stateConfig(co_zoo_elephant, s12maken, [noAnimation="true"]).
next(co_zoo_elephant,  s12maken, "true",  s13maken).

state(co_zoo_elephant, s13maken, say).
text(co_zoo_elephant,  s13maken, "Het is heel leuk geworden.").
next(co_zoo_elephant,  s13maken, "true",  s14).

%%%%%%%%%%%%%% Download gesture %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_elephant, s8downloaden, say).
text(co_zoo_elephant,  s8downloaden, "Ik ben nu twee gebaren aan het downloaden.").
start_led_anim(co_zoo_elephant, s8downloaden, "eyes", "rotate", ["purple"], 500).
stateConfig(co_zoo_elephant, s8downloaden, [waitTimer=1500]).
next(co_zoo_elephant,  s8downloaden, "true",  s9downloaden).

state(co_zoo_elephant, s9downloaden, say).
text(co_zoo_elephant,  s9downloaden, "Klaar. Dit is optie 1").
stop_led_anim(co_zoo_elephant, s9downloaden).
next(co_zoo_elephant,  s9downloaden, "true",  s9downloadeno1).

state(co_zoo_elephant, s9downloadeno1, say).
play_motion_file(co_zoo_elephant, s9downloadeno1, "resources/gestures/elephant1.xml").
next(co_zoo_elephant, s9downloadeno1, "true", s10downloaden).

state(co_zoo_elephant, s10downloaden, say).
text(co_zoo_elephant,  s10downloaden, "En dit is optie 2").
next(co_zoo_elephant,  s10downloaden, "true",  s10downloadeno2).

state(co_zoo_elephant, s10downloadeno2, say).
play_motion_file(co_zoo_elephant, s10downloadeno2, "resources/gestures/elephant2.xml").
next(co_zoo_elephant, s10downloadeno2, "true", s11downloaden).

state(co_zoo_elephant, s11downloaden, question).
stateConfig(co_zoo_elephant, s11downloaden, [type = branch, context = "involvement_who_picks_option", options = ['uitzoeken', 'ik maak keuze'], defaultAnswer='uitzoeken',
branchIntents=['uitzoeken' = 'involvement_child_picks', 'ik maak keuze' = 'involvement_robot_picks'], branchingPoints=[[co_zoo_elephant, s12downloaden], [co_zoo_elephant, s20downloaden]]]).
text(co_zoo_elephant, s11downloaden, "Wil jij de beste optie uitzoeken of zal ik gewoon kiezen?").
next(co_zoo_elephant, s11downloaden, "success", s12downloaden).
next(co_zoo_elephant, s11downloaden, "fail", s11downloadenf).

state(co_zoo_elephant, s11downloadenf, say).
text(co_zoo_elephant,  s11downloadenf, "Het lijkt me beter als jij kiest.").
next(co_zoo_elephant,  s11downloadenf, "true",  s12downloaden).

state(co_zoo_elephant, s12downloaden, branchingPoint).
next(co_zoo_elephant, s12downloaden, "uitzoeken", s13kindkiest).
next(co_zoo_elephant, s12downloaden, "ik maak keuze", s13robotkiest).
next(co_zoo_elephant, s12downloaden, "fail", s13kindkiest).

state(co_zoo_elephant, s13kindkiest, question).
stateConfig(co_zoo_elephant, s13kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_zoo_elephant, s20kindkiest]]]).
text(co_zoo_elephant, s13kindkiest, "Wil je de eerste of de tweede beweging?").
next(co_zoo_elephant, s13kindkiest, "success", s14kindkiest).
next(co_zoo_elephant, s13kindkiest, "fail", s13kindkiestf).

state(co_zoo_elephant, s13kindkiestf, say).
text(co_zoo_elephant,  s13kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_zoo_elephant,  s13kindkiestf, "true",  s14).

state(co_zoo_elephant, s14kindkiest, say).
text(co_zoo_elephant,  s14kindkiest, "Goede keuze.").
next(co_zoo_elephant,  s14kindkiest, "true",  s14).

state(co_zoo_elephant, s13robotkiest, say).
text(co_zoo_elephant,  s13robotkiest, "De eerste vond ik het leukst. Dus die heb ik gekozen.").
next(co_zoo_elephant,  s13robotkiest, "true",  s14).

%%%%%%%%%%%%%% Afspelen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_elephant, s14, say).
text(co_zoo_elephant,  s14, "Laat ik verder gaan met mijn verhaal.").
next(co_zoo_elephant,  s14, "true",  s15).

state(co_zoo_elephant, s15, say).
text(co_zoo_elephant,  s15, "Waar was ik gebleven?").
next(co_zoo_elephant,  s15, "true",  s16).

state(co_zoo_elephant, s16, say).
text(co_zoo_elephant,  s16, "Oh ja, in de dierentuin gingen we eindelijk naar het verblijf van de olifanten.").
next(co_zoo_elephant,  s16, "true",  s17).

state(co_zoo_elephant, s17, say).
text(co_zoo_elephant,  s17, "De olifanten waren aan het drinken bij het watertje.").
next(co_zoo_elephant,  s17, "true",  s18).

state(co_zoo_elephant, s18, say).
text(co_zoo_elephant,  s18, "De kleine olifantjes sproeien elkaar nat.").
next(co_zoo_elephant,  s18, "true",  s19).

state(co_zoo_elephant, s19, say).
text(co_zoo_elephant,  s19, "Ze toeterden met hun slurf van plezier.").
next(co_zoo_elephant,  s19, "true",  s20).

state(co_zoo_elephant, s20, branchingPoint).
next(co_zoo_elephant, s20, "maken", s20maken).
next(co_zoo_elephant, s20, "downloaden", s20downloaden).
next(co_zoo_elephant, s20, "fail", s20downloaden).

state(co_zoo_elephant, s20maken, say).
play_motion(co_zoo_elephant, s20maken, co_zoo_elephant_s12maken).
audio(co_zoo_elephant, s20maken, server, "resources/sounds/elephant.wav").
next(co_zoo_elephant, s20maken, "true", s21).

state(co_zoo_elephant, s20downloaden, branchingPoint).
next(co_zoo_elephant, s20downloaden, "uitzoeken", s20kindkiest).
next(co_zoo_elephant, s20downloaden, "ik maak keuze", s20eerste).
next(co_zoo_elephant, s20downloaden, "fail", s20kindkiest).

state(co_zoo_elephant, s20kindkiest, branchingPoint).
next(co_zoo_elephant, s20kindkiest, "eerste", s20eerste).
next(co_zoo_elephant, s20kindkiest, "tweede", s20tweede).
next(co_zoo_elephant, s20kindkiest, "fail", s20eerste).

state(co_zoo_elephant, s20eerste, say).
play_motion_file(co_zoo_elephant, s20eerste, "resources/gestures/elephant1.xml").
audio(co_zoo_elephant, s20eerste, server, "resources/sounds/elephant.wav").
next(co_zoo_elephant, s20eerste, "true", s21).

state(co_zoo_elephant, s20tweede, say).
play_motion_file(co_zoo_elephant, s20tweede, "resources/gestures/elephant2.xml").
audio(co_zoo_elephant, s20tweede, server, "resources/sounds/elephant.wav").
next(co_zoo_elephant, s20tweede, "true", s21).

state(co_zoo_elephant, s21, say).
text(co_zoo_elephant,  s21, "Leuk hè").
next(co_zoo_elephant,  s21, "true",  s22).

state(co_zoo_elephant, s22, say).
text(co_zoo_elephant,  s22, "We kijken in ieder geval vol verwondering").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Elephants - Gesture	Baseline                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_zoo_elephant_baseline, s1, say).
text(co_zoo_elephant_baseline,  s1, "Een van mijn lievelingsdieren zijn olifanten.").
next(co_zoo_elephant_baseline,  s1, "true",  s2).

state(co_zoo_elephant_baseline, s2, say).
text(co_zoo_elephant_baseline,  s2, "Ik vind het gaaf dat ze zo groot zijn.").
next(co_zoo_elephant_baseline,  s2, "true",  s3).

state(co_zoo_elephant_baseline, s3, say).
text(co_zoo_elephant_baseline,  s3, "En ik vind hun slurf zo leuk.").
next(co_zoo_elephant_baseline,  s3, "true",  s4).

state(co_zoo_elephant_baseline, s4, say).
text(co_zoo_elephant_baseline,  s4, "Vooral als ze er mee toeteren.").
next(co_zoo_elephant_baseline,  s4, "true",  s5).

state(co_zoo_elephant_baseline, s5, say).
text(co_zoo_elephant_baseline,  s5, "Daar zou ik nou een leuk gebaar voor willen hebben.").
next(co_zoo_elephant_baseline,  s5, "true",  s6).

state(co_zoo_elephant_baseline, s6, say).
text(co_zoo_elephant_baseline,  s6, "Ik ben nu twee gebaren aan het downloaden.").
start_led_anim(co_zoo_elephant_baseline, s6, "eyes", "rotate", ["purple"], 500).
stateConfig(co_zoo_elephant_baseline, s6, [waitTimer=1500]).
next(co_zoo_elephant_baseline,  s6, "true",  s7).

state(co_zoo_elephant_baseline, s7, say).
text(co_zoo_elephant_baseline,  s7, "Klaar. Dit is optie 1").
stop_led_anim(co_zoo_elephant_baseline, s7).
next(co_zoo_elephant_baseline,  s7, "true",  s8).

state(co_zoo_elephant_baseline, s8, say).
play_motion_file(co_zoo_elephant_baseline, s8, "resources/gestures/elephant1.xml").
next(co_zoo_elephant_baseline, s8, "true", s9).

state(co_zoo_elephant_baseline, s9, say).
text(co_zoo_elephant_baseline,  s9, "En dit is optie 2").
next(co_zoo_elephant_baseline,  s9, "true",  s10).

state(co_zoo_elephant_baseline, s10, say).
play_motion_file(co_zoo_elephant_baseline, s10, "resources/gestures/elephant2.xml").
next(co_zoo_elephant_baseline, s10, "true", s11).

state(co_zoo_elephant_baseline, s11, question).
stateConfig(co_zoo_elephant_baseline, s11, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_zoo_elephant_baseline, s20]]]).
text(co_zoo_elephant_baseline, s11, "Wil je de eerste of de tweede beweging?").
next(co_zoo_elephant_baseline, s11, "success", s12).
next(co_zoo_elephant_baseline, s11, "fail", s11f).

state(co_zoo_elephant_baseline, s11f, say).
text(co_zoo_elephant_baseline,  s11f, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_zoo_elephant_baseline,  s11f, "true",  s14).

state(co_zoo_elephant_baseline, s12, say).
text(co_zoo_elephant_baseline,  s12, "Goede keuze.").
next(co_zoo_elephant_baseline,  s12, "true",  s14).

state(co_zoo_elephant_baseline, s14, say).
text(co_zoo_elephant_baseline,  s14, "Laat ik verder gaan met mijn verhaal.").
next(co_zoo_elephant_baseline,  s14, "true",  s15).

state(co_zoo_elephant_baseline, s15, say).
text(co_zoo_elephant_baseline,  s15, "Waar was ik gebleven?").
next(co_zoo_elephant_baseline,  s15, "true",  s16).

state(co_zoo_elephant_baseline, s16, say).
text(co_zoo_elephant_baseline,  s16, "Oh ja, in de dierentuin gingen we eindelijk naar het verblijf van de olifanten.").
next(co_zoo_elephant_baseline,  s16, "true",  s17).

state(co_zoo_elephant_baseline, s17, say).
text(co_zoo_elephant_baseline,  s17, "De olifanten waren aan het drinken bij het watertje.").
next(co_zoo_elephant_baseline,  s17, "true",  s18).

state(co_zoo_elephant_baseline, s18, say).
text(co_zoo_elephant_baseline,  s18, "De kleine olifantjes sproeien elkaar nat.").
next(co_zoo_elephant_baseline,  s18, "true",  s19).

state(co_zoo_elephant_baseline, s19, say).
text(co_zoo_elephant_baseline,  s19, "Ze toeterden met hun slurf van plezier.").
next(co_zoo_elephant_baseline,  s19, "true",  s20).

state(co_zoo_elephant_baseline, s20, branchingPoint).
next(co_zoo_elephant_baseline, s20, "eerste", s21eerste).
next(co_zoo_elephant_baseline, s20, "tweede", s21tweede).
next(co_zoo_elephant_baseline, s20, "fail", s21eerste).

state(co_zoo_elephant_baseline, s21eerste, say).
play_motion_file(co_zoo_elephant_baseline, s21eerste, "resources/gestures/elephant1.xml").
audio(co_zoo_elephant_baseline, s21eerste, server, "resources/sounds/elephant.wav").
next(co_zoo_elephant_baseline, s21eerste, "true", s22).

state(co_zoo_elephant_baseline, s21tweede, say).
play_motion_file(co_zoo_elephant_baseline, s21tweede, "resources/gestures/elephant2.xml").
audio(co_zoo_elephant_baseline, s21tweede, server, "resources/sounds/elephant.wav").
next(co_zoo_elephant_baseline, s21tweede, "true", s22).

state(co_zoo_elephant_baseline, s22, say).
text(co_zoo_elephant_baseline,  s22, "Leuk hè").
next(co_zoo_elephant_baseline,  s22, "true",  s23).

state(co_zoo_elephant_baseline, s23, say).
text(co_zoo_elephant_baseline,  s23, "We kijken in ieder geval vol verwondering").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Lion / tiger - Sound effect		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_lion, s1, say).
text(co_zoo_lion,  s1, "Na de olifanten gingen we naar de leeuwen en tijgers. \pau=300\ ").
next(co_zoo_lion,  s1, "true",  s2).

state(co_zoo_lion, s2, question).
stateConfig(co_zoo_lion, s2, [type=input, context='answer_favorite_animal', options=['leeuw', 'tijger'], defaultAnswer="leeuw"]).
text(co_zoo_lion, s2, "Vind jij de leeuw of de tijger leuker?").
next(co_zoo_lion, s2, 'success', s3).
next(co_zoo_lion, s2, 'fail', s3f).

state(co_zoo_lion, s3, question).
stateConfig(co_zoo_lion, s3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_lion, s3, "Wat vind jij leuk aan een %co_zoo_lion_s2%?").
next(co_zoo_lion, s3, 'success', s4).
next(co_zoo_lion, s3, 'fail', s4).

state(co_zoo_lion, s3f, question).
stateConfig(co_zoo_lion, s3f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_lion, s3f, "Wat vind jij daar leuker aan?").
next(co_zoo_lion, s3f, 'success', s4).
next(co_zoo_lion, s3f, 'fail', s4).

state(co_zoo_lion, s4, say).
text(co_zoo_lion,  s4, "Dat snap ik helemaal.").
next(co_zoo_lion,  s4, "true",  s5).

state(co_zoo_lion, s5, say).
text(co_zoo_lion,  s5, "Ik mis trouwens nog een leuk geluid voor een brullende %co_zoo_lion_s2%.").
next(co_zoo_lion,  s5, "true",  s6).

state(co_zoo_lion, s6, question).
stateConfig(co_zoo_lion, s6, [type = branch, context = "involvement_selection", options = ['maken', 'downloaden'], defaultAnswer='downloaden',
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_zoo_lion, s8], [co_zoo_lion, s20]]]).
text(co_zoo_lion, s6, "Wil jij die zelf maken of zal ik wat geluiden downloaden?").
next(co_zoo_lion, s6, "success", s7).
next(co_zoo_lion, s6, "fail", s6f).

state(co_zoo_lion, s7, say).
text(co_zoo_lion,  s7, "Oke we gaan het %co_zoo_lion_s6%.").
next(co_zoo_lion,  s7, "true",  s8).

state(co_zoo_lion, s6f, say).
text(co_zoo_lion, s6f, "Weet je wat? Ik download gewoon wat geluiden.").
next(co_zoo_lion, s6f, 'true', s8).

state(co_zoo_lion, s8, branchingPoint).
next(co_zoo_lion, s8, "maken", s8maken).
next(co_zoo_lion, s8, "downloaden", s8downloaden).
next(co_zoo_lion, s8, "fail", s8downloaden).

%%%%%%%%%%%%%% Create sound %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_zoo_lion, s8maken, say).
text(co_zoo_lion,  s8maken, "Brul als een %co_zoo_lion_s2% in 3, 2, 1.").
next(co_zoo_lion,  s8maken, "true",  s9maken).

state(co_zoo_lion, s9maken, audioInput).
stateConfig(co_zoo_lion, s9maken, [recordTime=3000]).
next(co_zoo_lion, s9maken, "true", s10maken).

state(co_zoo_lion, s10maken, say).
text(co_zoo_lion,  s10maken, "Gaaf zeg! Dat kan ik zo goed bruiken.").
next(co_zoo_lion,  s10maken, "true",  s16).

%%%%%%%%%%%%%% Download sound %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_lion, s8downloaden, say).
text(co_zoo_lion,  s8downloaden, "Ik ben nu twee geluiden aan het downloaden.").
start_led_anim(co_zoo_lion, s8downloaden, "eyes", "rotate", ["purple"], 500).
stateConfig(co_zoo_lion, s8downloaden, [waitTimer=1500]).
next(co_zoo_lion,  s8downloaden, "true",  s9downloaden).

state(co_zoo_lion, s9downloaden, branchingPoint).
stateConfig(co_zoo_lion, s9downloaden, [branchDecider=entity, branchSource=co_zoo_lion_s2]).
stop_led_anim(co_zoo_lion, s9downloaden).
next(co_zoo_lion, s9downloaden, "leeuw", s10leeuw).
next(co_zoo_lion, s9downloaden, "tijger", s10tijger).
next(co_zoo_lion, s9downloaden, "fail", s10leeuw).

state(co_zoo_lion, s10leeuw, say).
text(co_zoo_lion,  s10leeuw, "Klaar. Dit is de eerste").
next(co_zoo_lion,  s10leeuw, "true", s10leeuwo1).

state(co_zoo_lion, s10leeuwo1, say).
audio(co_zoo_lion, s10leeuwo1, server, "resources/sounds/lion1.wav").
next(co_zoo_lion,  s10leeuwo1, "true", s11leeuw).

state(co_zoo_lion, s11leeuw, say).
text(co_zoo_lion,  s11leeuw, "En dit is de tweede").
next(co_zoo_lion,  s11leeuw, "true", s11leeuwo2).

state(co_zoo_lion, s11leeuwo2, say).
audio(co_zoo_lion, s11leeuwo2, server, "resources/sounds/lion2.wav").
next(co_zoo_lion,  s11leeuwo2, "true", s12downloaden).

state(co_zoo_lion, s10tijger, say).
text(co_zoo_lion,  s10tijger, "Klaar. Dit is de eerste").
next(co_zoo_lion,  s10tijger, "true", s10tijgero1).

state(co_zoo_lion, s10tijgero1, say).
audio(co_zoo_lion, s10tijgero1, server, "resources/sounds/tiger1.wav").
next(co_zoo_lion,  s10tijgero1, "true", s11tijger).

state(co_zoo_lion, s11tijger, say).
text(co_zoo_lion,  s11tijger, "En dit is de tweede").
next(co_zoo_lion,  s11tijger, "true", s11tijgero2).

state(co_zoo_lion, s11tijgero2, say).
audio(co_zoo_lion, s11tijgero2, server, "resources/sounds/tiger2.wav").
next(co_zoo_lion,  s11tijgero2, "true", s12downloaden).

state(co_zoo_lion, s12downloaden, question).
stateConfig(co_zoo_lion, s12downloaden, [type = branch, context = "involvement_who_picks_option", options = ['uitzoeken', 'ik maak keuze'], defaultAnswer='uitzoeken',
branchIntents=['uitzoeken' = 'involvement_child_picks', 'ik maak keuze' = 'involvement_robot_picks'], branchingPoints=[[co_zoo_lion, s13downloaden], [co_zoo_lion, s20downloaden]]]).
text(co_zoo_lion, s12downloaden, "Wil jij de beste optie uitzoeken of zal ik gewoon kiezen?").
next(co_zoo_lion, s12downloaden, "success", s13downloaden).
next(co_zoo_lion, s12downloaden, "fail", s12downloadenf).

state(co_zoo_lion, s12downloadenf, say).
text(co_zoo_lion,  s12downloadenf, "Het lijkt me beter als jij kiest.").
next(co_zoo_lion,  s12downloadenf, "true",  s13downloaden).

state(co_zoo_lion, s13downloaden, branchingPoint).
next(co_zoo_lion, s13downloaden, "uitzoeken", s14kindkiest).
next(co_zoo_lion, s13downloaden, "ik maak keuze", s14robotkiest).
next(co_zoo_lion, s13downloaden, "fail", s14kindkiest).

state(co_zoo_lion, s14kindkiest, question).
stateConfig(co_zoo_lion, s14kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_zoo_lion, s20leeuw], [co_zoo_lion, s20tijger]]]).
text(co_zoo_lion, s14kindkiest, "Welke vind je leuker, het eerste of het tweede geluid?").
next(co_zoo_lion, s14kindkiest, "success", s15kindkiest).
next(co_zoo_lion, s14kindkiest, "fail", s14kindkiestf).

state(co_zoo_lion, s14kindkiestf, say).
text(co_zoo_lion,  s14kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_zoo_lion,  s14kindkiestf, "true", s16).

state(co_zoo_lion, s15kindkiest, say).
text(co_zoo_lion,  s15kindkiest, "Goede keuze.").
next(co_zoo_lion,  s15kindkiest, "true",  s16).

state(co_zoo_lion, s14robotkiest, say).
text(co_zoo_lion,  s14robotkiest, "Prima! Ik vind de eerste het leukste, dus dan kies ik die.").
next(co_zoo_lion,  s14robotkiest, "true",  s16).

%%%%%%%%%%%%%% Afspelen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_lion, s16, say).
text(co_zoo_lion,  s16, "Laat ik weer verder gaan met mijn verhaal. Ik was dus bij het verblijf van de %co_zoo_lion_s2%.").
next(co_zoo_lion,  s16, "true",  s17).

state(co_zoo_lion, s17, say).
text(co_zoo_lion,  s17, "En ik keek links en ik keek rechts.").
next(co_zoo_lion,  s17, "true",  s18).

state(co_zoo_lion, s18, say).
text(co_zoo_lion,  s18, "Maar er was geen %co_zoo_lion_s2% te zien.").
next(co_zoo_lion,  s18, "true",  s19).

state(co_zoo_lion, s19, say).
text(co_zoo_lion,  s19, "Tot ik opeens dit hoorde.").
next(co_zoo_lion,  s19, "true",  s20).

state(co_zoo_lion, s20, branchingPoint).
next(co_zoo_lion, s20, "maken", s20maken).
next(co_zoo_lion, s20, "downloaden", s20downloaden).
next(co_zoo_lion, s20, "fail", s20downloaden).

state(co_zoo_lion, s20maken, say).
audio(co_zoo_lion, s20maken, recorded, [co_zoo_lion, s9maken]).
next(co_zoo_lion, s20maken, "true", s21).

state(co_zoo_lion, s20downloaden, branchingPoint).
next(co_zoo_lion, s20downloaden, "uitzoeken", s20kindkiest).
next(co_zoo_lion, s20downloaden, "ik maak keuze", s20robotkiest).
next(co_zoo_lion, s20downloaden, "fail", s20kindkiest).

state(co_zoo_lion, s20kindkiest, branchingPoint).
stateConfig(co_zoo_lion, s20kindkiest, [branchDecider=entity, branchSource=co_zoo_lion_s2]).
next(co_zoo_lion, s20kindkiest, "leeuw", s20leeuw).
next(co_zoo_lion, s20kindkiest, "tijger", s20tijger).
next(co_zoo_lion, s20kindkiest, "fail", s20leeuw).

state(co_zoo_lion, s20robotkiest, branchingPoint).
stateConfig(co_zoo_lion, s20robotkiest, [branchDecider=entity, branchSource=co_zoo_lion_s2]).
next(co_zoo_lion, s20robotkiest, "leeuw", s20leeuweerste).
next(co_zoo_lion, s20robotkiest, "tijger", s20tijgereerste).
next(co_zoo_lion, s20robotkiest, "fail", s20leeuweerste).

state(co_zoo_lion, s20leeuw, branchingPoint).
next(co_zoo_lion, s20leeuw, "eerste", s20leeuweerste).
next(co_zoo_lion, s20leeuw, "tweede", s20leeuwtweede).
next(co_zoo_lion, s20leeuw, "fail", s20leeuweerste).

state(co_zoo_lion, s20leeuweerste, say).
audio(co_zoo_lion, s20leeuweerste, server, "resources/sounds/lion1.wav").
next(co_zoo_lion, s20leeuweerste, "true", s21).

state(co_zoo_lion, s20leeuwtweede, say).
audio(co_zoo_lion, s20leeuwtweede, server, "resources/sounds/lion2.wav").
next(co_zoo_lion, s20leeuwtweede, "true", s21).

state(co_zoo_lion, s20tijger, branchingPoint).
next(co_zoo_lion, s20tijger, "eerste", s20tijgereerste).
next(co_zoo_lion, s20tijger, "tweede", s20tijgertweede).
next(co_zoo_lion, s20tijger, "fail", s20tijgereerste).

state(co_zoo_lion, s20tijgereerste, say).
audio(co_zoo_lion, s20tijgereerste, server, "resources/sounds/tiger1.wav").
next(co_zoo_lion, s20tijgereerste, "true", s21).

state(co_zoo_lion, s20tijgertweede, say).
audio(co_zoo_lion, s20tijgertweede, server, "resources/sounds/tiger2.wav").
next(co_zoo_lion, s20tijgertweede, "true", s21).

state(co_zoo_lion, s21, say).
text(co_zoo_lion,  s21, "Daar is de %co_zoo_lion_s2%!").
next(co_zoo_lion,  s21, "true",  s22).

state(co_zoo_lion, s22, say).
text(co_zoo_lion,  s22, "Ze was naar ons toe geslopen.").
next(co_zoo_lion,  s22, "true",  s23).

state(co_zoo_lion, s23, say).
text(co_zoo_lion,  s23, "Ze was net zo nieuwsgierig naar ons, als wij naar haar.").
next(co_zoo_lion,  s23, "true",  s24).

state(co_zoo_lion, s24, say).
text(co_zoo_lion,  s24, "Ik vond het heel spannend, maar ook heel gaaf.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Lion / tiger - Sound effect	Baseline                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_lion_baseline, s1, say).
text(co_zoo_lion_baseline,  s1, "Na de olifanten gingen we naar de leeuwen en tijgers. \pau=300\ ").
next(co_zoo_lion_baseline,  s1, "true",  s2).

state(co_zoo_lion_baseline, s2, question).
stateConfig(co_zoo_lion_baseline, s2, [type=input, context='answer_favorite_animal', options=['leeuw', 'tijger'], defaultAnswer="leeuw"]).
text(co_zoo_lion_baseline, s2, "Vind jij de leeuw of de tijger leuker?").
next(co_zoo_lion_baseline, s2, 'success', s3).
next(co_zoo_lion_baseline, s2, 'fail', s3f).

state(co_zoo_lion_baseline, s3, question).
stateConfig(co_zoo_lion_baseline, s3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_lion_baseline, s3, "Wat vind jij leuk aan een %co_zoo_lion_baseline_s2%?").
next(co_zoo_lion_baseline, s3, 'success', s4).
next(co_zoo_lion_baseline, s3, 'fail', s4).

state(co_zoo_lion_baseline, s3f, question).
stateConfig(co_zoo_lion_baseline, s3f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_lion_baseline, s3f, "Wat vind jij daar leuker aan?").
next(co_zoo_lion_baseline, s3f, 'success', s4).
next(co_zoo_lion_baseline, s3f, 'fail', s4).

state(co_zoo_lion_baseline, s4, say).
text(co_zoo_lion_baseline,  s4, "Dat snap ik helemaal.").
next(co_zoo_lion_baseline,  s4, "true",  s5).

state(co_zoo_lion_baseline, s5, say).
text(co_zoo_lion_baseline,  s5, "Ik mis trouwens nog een leuk geluid voor een brullende %co_zoo_lion_baseline_s2%.").
next(co_zoo_lion_baseline,  s5, "true",  s6).

state(co_zoo_lion_baseline, s6, say).
text(co_zoo_lion_baseline,  s6, "Ik ben nu twee geluiden aan het downloaden.").
start_led_anim(co_zoo_lion_baseline, s6, "eyes", "rotate", ["purple"], 500).
stateConfig(co_zoo_lion_baseline, s6, [waitTimer=1500]).
next(co_zoo_lion_baseline,  s6, "true",  s7).

state(co_zoo_lion_baseline, s7, branchingPoint).
stateConfig(co_zoo_lion_baseline, s7, [branchDecider=entity, branchSource=co_zoo_lion_baseline_s2]).
stop_led_anim(co_zoo_lion_baseline, s7).
next(co_zoo_lion_baseline, s7, "leeuw", s10leeuw).
next(co_zoo_lion_baseline, s7, "tijger", s10tijger).
next(co_zoo_lion_baseline, s7, "fail", s10leeuw).

state(co_zoo_lion_baseline, s10leeuw, say).
text(co_zoo_lion_baseline,  s10leeuw, "Klaar. Dit is de eerste").
next(co_zoo_lion_baseline,  s10leeuw, "true", s10leeuwo1).

state(co_zoo_lion_baseline, s10leeuwo1, say).
audio(co_zoo_lion_baseline, s10leeuwo1, server, "resources/sounds/lion1.wav").
next(co_zoo_lion_baseline,  s10leeuwo1, "true", s11leeuw).

state(co_zoo_lion_baseline, s11leeuw, say).
text(co_zoo_lion_baseline,  s11leeuw, "En dit is de tweede").
next(co_zoo_lion_baseline,  s11leeuw, "true", s11leeuwo2).

state(co_zoo_lion_baseline, s11leeuwo2, say).
audio(co_zoo_lion_baseline, s11leeuwo2, server, "resources/sounds/lion2.wav").
next(co_zoo_lion_baseline,  s11leeuwo2, "true", s12).

state(co_zoo_lion_baseline, s10tijger, say).
text(co_zoo_lion_baseline,  s10tijger, "Klaar. Dit is de eerste").
next(co_zoo_lion_baseline,  s10tijger, "true", s10tijgero1).

state(co_zoo_lion_baseline, s10tijgero1, say).
audio(co_zoo_lion_baseline, s10tijgero1, server, "resources/sounds/tiger1.wav").
next(co_zoo_lion_baseline,  s10tijgero1, "true", s11tijger).

state(co_zoo_lion_baseline, s11tijger, say).
text(co_zoo_lion_baseline,  s11tijger, "En dit is de tweede").
next(co_zoo_lion_baseline,  s11tijger, "true", s11tijgero2).

state(co_zoo_lion_baseline, s11tijgero2, say).
audio(co_zoo_lion_baseline, s11tijgero2, server, "resources/sounds/tiger2.wav").
next(co_zoo_lion_baseline,  s11tijgero2, "true", s12).

state(co_zoo_lion_baseline, s12, question).
stateConfig(co_zoo_lion_baseline, s12, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='eerste',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_zoo_lion_baseline, s20leeuw], [co_zoo_lion_baseline, s20tijger]]]).
text(co_zoo_lion_baseline, s12, "Welke vind je leuker, het eerste of het tweede geluid?").
next(co_zoo_lion_baseline, s12, "success", s13).
next(co_zoo_lion_baseline, s12, "fail", s12f).

state(co_zoo_lion_baseline, s12f, say).
text(co_zoo_lion_baseline,  s12f, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_zoo_lion_baseline,  s12f, "true", s16).

state(co_zoo_lion_baseline, s13, say).
text(co_zoo_lion_baseline,  s13, "Goede keuze.").
next(co_zoo_lion_baseline,  s13, "true",  s16).

state(co_zoo_lion_baseline, s16, say).
text(co_zoo_lion_baseline,  s16, "Laat ik weer verder gaan met mijn verhaal. Ik was dus bij het verblijf van de %co_zoo_lion_baseline_s2%.").
next(co_zoo_lion_baseline,  s16, "true",  s17).

state(co_zoo_lion_baseline, s17, say).
text(co_zoo_lion_baseline,  s17, "En ik keek links en ik keek rechts.").
next(co_zoo_lion_baseline,  s17, "true",  s18).

state(co_zoo_lion_baseline, s18, say).
text(co_zoo_lion_baseline,  s18, "Maar er was geen %co_zoo_lion_baseline_s2% te zien.").
next(co_zoo_lion_baseline,  s18, "true",  s19).

state(co_zoo_lion_baseline, s19, say).
text(co_zoo_lion_baseline,  s19, "Tot ik opeens dit hoorde.").
next(co_zoo_lion_baseline,  s19, "true",  s20).

state(co_zoo_lion_baseline, s20, branchingPoint).
stateConfig(co_zoo_lion_baseline, s20, [branchDecider=entity, branchSource=co_zoo_lion_baseline_s2]).
next(co_zoo_lion_baseline, s20, "leeuw", s20leeuw).
next(co_zoo_lion_baseline, s20, "tijger", s20tijger).
next(co_zoo_lion_baseline, s20, "fail", s20leeuw).

state(co_zoo_lion_baseline, s20leeuw, branchingPoint).
next(co_zoo_lion_baseline, s20leeuw, "eerste", s20leeuweerste).
next(co_zoo_lion_baseline, s20leeuw, "tweede", s20leeuwtweede).
next(co_zoo_lion_baseline, s20leeuw, "fail", s20leeuweerste).

state(co_zoo_lion_baseline, s20leeuweerste, say).
audio(co_zoo_lion_baseline, s20leeuweerste, server, "resources/sounds/lion1.wav").
next(co_zoo_lion_baseline, s20leeuweerste, "true", s21).

state(co_zoo_lion_baseline, s20leeuwtweede, say).
audio(co_zoo_lion_baseline, s20leeuwtweede, server, "resources/sounds/lion2.wav").
next(co_zoo_lion_baseline, s20leeuwtweede, "true", s21).

state(co_zoo_lion_baseline, s20tijger, branchingPoint).
next(co_zoo_lion_baseline, s20tijger, "eerste", s20tijgereerste).
next(co_zoo_lion_baseline, s20tijger, "tweede", s20tijgertweede).
next(co_zoo_lion_baseline, s20tijger, "fail", s20tijgereerste).

state(co_zoo_lion_baseline, s20tijgereerste, say).
audio(co_zoo_lion_baseline, s20tijgereerste, server, "resources/sounds/tiger1.wav").
next(co_zoo_lion_baseline, s20tijgereerste, "true", s21).

state(co_zoo_lion_baseline, s20tijgertweede, say).
audio(co_zoo_lion_baseline, s20tijgertweede, server, "resources/sounds/tiger2.wav").
next(co_zoo_lion_baseline, s20tijgertweede, "true", s21).

state(co_zoo_lion_baseline, s21, say).
text(co_zoo_lion_baseline,  s21, "Daar is de %co_zoo_lion_baseline_s2%!").
next(co_zoo_lion_baseline,  s21, "true",  s22).

state(co_zoo_lion_baseline, s22, say).
text(co_zoo_lion_baseline,  s22, "Ze was naar ons toe geslopen.").
next(co_zoo_lion_baseline,  s22, "true",  s23).

state(co_zoo_lion_baseline, s23, say).
text(co_zoo_lion_baseline,  s23, "Ze was net zo nieuwsgierig naar ons, als wij naar haar.").
next(co_zoo_lion_baseline,  s23, "true",  s24).

state(co_zoo_lion_baseline, s24, say).
text(co_zoo_lion_baseline,  s24, "Ik vond het heel spannend, maar ook heel gaaf.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Dolphin - Light animation		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_zoo_dolphin, s1, say).
text(co_zoo_dolphin,  s1, "Het was tijd om door te lopen.").
next(co_zoo_dolphin,  s1, "true",  s2).

state(co_zoo_dolphin, s2, say).
text(co_zoo_dolphin,  s2, "We gingen door naar het aquarium.").
next(co_zoo_dolphin,  s2, "true",  s3).

state(co_zoo_dolphin, s3, question).
stateConfig(co_zoo_dolphin, s3, [type=input, context='answer_favorite_animal', options=['haai', 'walvis', 'dolfijn', 'vis', 'zeehond'], defaultAnswer="haai"]).
text(co_zoo_dolphin, s3, "Welk waterdier vind jij het leukst?").
next(co_zoo_dolphin, s3, 'success', s4).
next(co_zoo_dolphin, s3, 'fail', s4f).

state(co_zoo_dolphin, s4, question).
stateConfig(co_zoo_dolphin, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_dolphin, s4, "Wat vind jij leuk aan een %co_zoo_dolphin_s3%?").
next(co_zoo_dolphin, s4, 'success', s5).
next(co_zoo_dolphin, s4, 'fail', s5).

state(co_zoo_dolphin, s4f, question).
stateConfig(co_zoo_dolphin, s4f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_dolphin, s4f, "Wat vind jij daar zo leuk aan?").
next(co_zoo_dolphin, s4f, 'success', s5).
next(co_zoo_dolphin, s4f, 'fail', s5).

state(co_zoo_dolphin, s5, say).
text(co_zoo_dolphin,  s5, "Dat vind ik er ook leuk aan!").
next(co_zoo_dolphin,  s5, "true",  s6).

state(co_zoo_dolphin, s6, say).
text(co_zoo_dolphin,  s6, "In het aquarium heb ik heel wat kleurrijke vissen voorbij zien komen.").
next(co_zoo_dolphin,  s6, "true",  s7).

state(co_zoo_dolphin, s7, say).
text(co_zoo_dolphin,  s7, "Ook zo'n oranje Nemo vis. Clownvisjes, zo heten ze eigenlijk.").
next(co_zoo_dolphin,  s7, "true",  s8).

state(co_zoo_dolphin, s8, say).
text(co_zoo_dolphin,  s8, "We gingen door naar de dolfijnen show.").
next(co_zoo_dolphin,  s8, "true",  s9).

state(co_zoo_dolphin, s9, say).
text(co_zoo_dolphin,  s9, "Er zat een heuze licht show bij.").
next(co_zoo_dolphin,  s9, "true",  s10).

state(co_zoo_dolphin, s10, say).
text(co_zoo_dolphin,  s10, "Dat wil ik graag nadoen met mijn lichtjes.").
next(co_zoo_dolphin,  s10, "true",  s11).

state(co_zoo_dolphin, s11, question).
stateConfig(co_zoo_dolphin, s11, [type = branch, context = "involvement_selection", options = ['maken', 'downloaden'], defaultAnswer='downloaden',
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_zoo_dolphin, s13], [co_zoo_dolphin_showtime, s6]]]).
text(co_zoo_dolphin, s11, "Wil jij die voor mij maken of zal ik wat licht animaties downloaden?").
next(co_zoo_dolphin, s11, "success", s12).
next(co_zoo_dolphin, s11, "fail", s11f).

state(co_zoo_dolphin, s12, say).
text(co_zoo_dolphin,  s12, "Oke we gaan het %co_zoo_dolphin_s11%.").
next(co_zoo_dolphin,  s12, "true",  s13).

state(co_zoo_dolphin, s11f, say).
text(co_zoo_dolphin, s11f, "Weet je wat? Ik download gewoon wat licht animaties.").
next(co_zoo_dolphin, s11f, 'true', s13).

state(co_zoo_dolphin, s13, branchingPoint).
next(co_zoo_dolphin, s13, "maken", s14maken).
next(co_zoo_dolphin, s13, "downloaden", s14downloaden).
next(co_zoo_dolphin, s13, "fail", s14downloaden).

%%%%%%%%%%%%%% Create light animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_zoo_dolphin, s14maken, say).
prepare_led_anim(co_zoo_dolphin, s14maken).

%%%%%%%%%%%%%% Download light animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_dolphin, s14downloaden, say).
text(co_zoo_dolphin,  s14downloaden, "Ik ben nu twee licht animaties aan het downloaden.").
start_led_anim(co_zoo_dolphin, s14downloaden, "eyes", "rotate", ["purple"], 500).
stateConfig(co_zoo_dolphin, s14downloaden, [waitTimer=1500]).
next(co_zoo_dolphin,  s14downloaden, "true",  s15downloaden).

state(co_zoo_dolphin, s15downloaden, say).
text(co_zoo_dolphin,  s15downloaden, "Klaar. Dit is optie 1").
stop_led_anim(co_zoo_dolphin, s15downloaden).
next(co_zoo_dolphin,  s15downloaden, "true",  s15downloadeno1).

state(co_zoo_dolphin, s15downloadeno1, say).
start_led_anim(co_zoo_dolphin, s15downloadeno1, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
stateConfig(co_zoo_dolphin, s15downloadeno1, [waitTimer=3000]).
next(co_zoo_dolphin, s15downloadeno1, "true", s16downloaden).

state(co_zoo_dolphin, s16downloaden, say).
text(co_zoo_dolphin,  s16downloaden, "En dit is optie 2").
stop_led_anim(co_zoo_dolphin, s16downloaden).
next(co_zoo_dolphin,  s16downloaden, "true",  s16downloadeno2).

state(co_zoo_dolphin, s16downloadeno2, say).
start_led_anim(co_zoo_dolphin, s16downloadeno2, "all", "alternate", ["blauw", "oranje"], 500).
stateConfig(co_zoo_dolphin, s16downloadeno2, [waitTimer=3000]).
next(co_zoo_dolphin, s16downloadeno2, "true", s17downloaden).

state(co_zoo_dolphin, s17downloaden, question).
stateConfig(co_zoo_dolphin, s17downloaden, [type = branch, context = "involvement_who_picks_option", options = ['uitzoeken', 'ik maak keuze'], defaultAnswer='uitzoeken',
branchIntents=['uitzoeken' = 'involvement_child_picks', 'ik maak keuze' = 'involvement_robot_picks'], branchingPoints=[[co_zoo_dolphin, s18downloaden], [co_zoo_dolphin_showtime, s7downloaden]]]).
text(co_zoo_dolphin, s17downloaden, "Wil jij de beste optie uitzoeken of zal ik gewoon kiezen?").
stop_led_anim(co_zoo_dolphin, s17downloaden).
next(co_zoo_dolphin, s17downloaden, "success", s18downloaden).
next(co_zoo_dolphin, s17downloaden, "fail", s17downloadenf).

state(co_zoo_dolphin, s17downloadenf, say).
text(co_zoo_dolphin,  s17downloadenf, "Het lijkt me beter als jij kiest.").
next(co_zoo_dolphin,  s17downloadenf, "true",  s18downloaden).

state(co_zoo_dolphin, s18downloaden, branchingPoint).
next(co_zoo_dolphin, s18downloaden, "uitzoeken", s19kindkiest).
next(co_zoo_dolphin, s18downloaden, "ik maak keuze", s19robotkiest).
next(co_zoo_dolphin, s18downloaden, "fail", s19kindkiest).

state(co_zoo_dolphin, s19kindkiest, question).
stateConfig(co_zoo_dolphin, s19kindkiest, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='tweede',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_zoo_dolphin_showtime, s7kindkiest]]]).
text(co_zoo_dolphin, s19kindkiest, "Wil je de eerste of de tweede licht show?").
next(co_zoo_dolphin, s19kindkiest, "success", s20kindkiest).
next(co_zoo_dolphin, s19kindkiest, "fail", s19kindkiestf).

state(co_zoo_dolphin, s19kindkiestf, say).
text(co_zoo_dolphin,  s19kindkiestf, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").

state(co_zoo_dolphin, s20kindkiest, say).
text(co_zoo_dolphin,  s20kindkiest, "Goede keuze.").

state(co_zoo_dolphin, s19robotkiest, say).
text(co_zoo_dolphin,  s19robotkiest, "De tweede vond ik het leukst. Dus die heb ik gekozen.").

%%%%%%%%%%%%%% Play light animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_dolphin_showtime, s1, say).
text(co_zoo_dolphin_showtime,  s1, "Dit gaat leuk worden!").
next(co_zoo_dolphin_showtime,  s1, "true", s2).

state(co_zoo_dolphin_showtime, s2, say).
text(co_zoo_dolphin_showtime,  s2, "Terug naar de dolfijnen show.").
next(co_zoo_dolphin_showtime,  s2, "true", s3).

state(co_zoo_dolphin_showtime, s3, say).
text(co_zoo_dolphin_showtime,  s3, "Terwijl de lichtshow in volle vaart bezig was.").
next(co_zoo_dolphin_showtime,  s3, "true", s4).

state(co_zoo_dolphin_showtime, s4, say).
text(co_zoo_dolphin_showtime,  s4, "Sprongen de dolfijnen soepel en krachtig uit het water.").
next(co_zoo_dolphin_showtime,  s4, "true", s5).

state(co_zoo_dolphin_showtime, s5, say).
text(co_zoo_dolphin_showtime,  s5, "Ze maakte de ene salto na de andere.").
next(co_zoo_dolphin_showtime,  s5, "true", s6).

state(co_zoo_dolphin_showtime, s6, branchingPoint).
next(co_zoo_dolphin_showtime, s6, "maken", s7maken).
next(co_zoo_dolphin_showtime, s6, "downloaden", s7downloaden).
next(co_zoo_dolphin_showtime, s6, "fail", s7downloaden).

state(co_zoo_dolphin_showtime, s7maken, say).
audio(co_zoo_dolphin_showtime, s7maken, server, "resources/sounds/dolphin_show.wav").
play_led_anim(co_zoo_dolphin_showtime,  s7maken, co_zoo_dolphin_s14maken).
next(co_zoo_dolphin_showtime,  s7maken, "true",  s8).

state(co_zoo_dolphin_showtime, s7downloaden, branchingPoint).
next(co_zoo_dolphin_showtime, s7downloaden, "uitzoeken", s7kindkiest).
next(co_zoo_dolphin_showtime, s7downloaden, "ik maak keuze", s7tweede).
next(co_zoo_dolphin_showtime, s7downloaden, "fail", s7kindkiest).

state(co_zoo_dolphin_showtime, s7kindkiest, branchingPoint).
next(co_zoo_dolphin_showtime, s7kindkiest, "eerste", s7eerste).
next(co_zoo_dolphin_showtime, s7kindkiest, "tweede", s7tweede).
next(co_zoo_dolphin_showtime, s7kindkiest, "fail", s7tweede).

state(co_zoo_dolphin_showtime, s7eerste, say).
audio(co_zoo_dolphin_showtime, s7eerste, server, "resources/sounds/dolphin_show.wav").
start_led_anim(co_zoo_dolphin_showtime, s7eerste, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
next(co_zoo_dolphin_showtime,  s7eerste, "true",  s8).

state(co_zoo_dolphin_showtime, s7tweede, say).
audio(co_zoo_dolphin_showtime, s7tweede, server, "resources/sounds/dolphin_show.wav").
start_led_anim(co_zoo_dolphin_showtime, s7tweede, "all", "alternate", ["blauw", "oranje"], 500).
next(co_zoo_dolphin_showtime,  s7tweede, "true",  s8).

state(co_zoo_dolphin_showtime, s8, say).
text(co_zoo_dolphin_showtime,  s8, "Dat was echt fantastisch.").
stop_led_anim(co_zoo_dolphin_showtime, s8).
next(co_zoo_dolphin_showtime,  s8, "true", s9).

state(co_zoo_dolphin_showtime, s9, say).
text(co_zoo_dolphin_showtime,  s9, "Na de dolfijnen show hebben we nog een frietje gegeten.").
next(co_zoo_dolphin_showtime,  s9, "true", s10).

state(co_zoo_dolphin_showtime, s10, say).
text(co_zoo_dolphin_showtime,  s10, "en daarna zijn we naar huis gegaan.").
next(co_zoo_dolphin_showtime,  s10, "true", s11).

state(co_zoo_dolphin_showtime, s11, say).
text(co_zoo_dolphin_showtime,  s11, "Dit was mijn dag in de dierentuin.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Dolphin - Light animation Baseline	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_zoo_dolphin_baseline, s1, say).
text(co_zoo_dolphin_baseline,  s1, "Het was tijd om door te lopen.").
next(co_zoo_dolphin_baseline,  s1, "true",  s2).

state(co_zoo_dolphin_baseline, s2, say).
text(co_zoo_dolphin_baseline,  s2, "We gingen door naar het aquarium.").
next(co_zoo_dolphin_baseline,  s2, "true",  s3).

state(co_zoo_dolphin_baseline, s3, question).
stateConfig(co_zoo_dolphin_baseline, s3, [type=input, context='answer_favorite_animal', options=['haai', 'walvis', 'dolfijn', 'vis', 'zeehond'], defaultAnswer="haai"]).
text(co_zoo_dolphin_baseline, s3, "Welk waterdier vind jij het leukst?").
next(co_zoo_dolphin_baseline, s3, 'success', s4).
next(co_zoo_dolphin_baseline, s3, 'fail', s4f).

state(co_zoo_dolphin_baseline, s4, question).
stateConfig(co_zoo_dolphin_baseline, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_dolphin_baseline, s4, "Wat vind jij leuk aan een %co_zoo_dolphin_baseline_s3%?").
next(co_zoo_dolphin_baseline, s4, 'success', s5).
next(co_zoo_dolphin_baseline, s4, 'fail', s5).

state(co_zoo_dolphin_baseline, s4f, question).
stateConfig(co_zoo_dolphin_baseline, s4f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_dolphin_baseline, s4f, "Wat vind jij daar zo leuk aan?").
next(co_zoo_dolphin_baseline, s4f, 'success', s5).
next(co_zoo_dolphin_baseline, s4f, 'fail', s5).

state(co_zoo_dolphin_baseline, s5, say).
text(co_zoo_dolphin_baseline,  s5, "Dat vind ik er ook leuk aan!").
next(co_zoo_dolphin_baseline,  s5, "true",  s6).

state(co_zoo_dolphin_baseline, s6, say).
text(co_zoo_dolphin_baseline,  s6, "In het aquarium heb ik heel wat kleurrijke vissen voorbij zien komen.").
next(co_zoo_dolphin_baseline,  s6, "true",  s7).

state(co_zoo_dolphin_baseline, s7, say).
text(co_zoo_dolphin_baseline,  s7, "Ook zo'n oranje Nemo vis. Clownvisjes, zo heten ze eigenlijk.").
next(co_zoo_dolphin_baseline,  s7, "true",  s8).

state(co_zoo_dolphin_baseline, s8, say).
text(co_zoo_dolphin_baseline,  s8, "We gingen door naar de dolfijnen show.").
next(co_zoo_dolphin_baseline,  s8, "true",  s9).

state(co_zoo_dolphin_baseline, s9, say).
text(co_zoo_dolphin_baseline,  s9, "Er zat een heuze licht show bij.").
next(co_zoo_dolphin_baseline,  s9, "true",  s10).

state(co_zoo_dolphin_baseline, s10, say).
text(co_zoo_dolphin_baseline,  s10, "Dat wil ik graag nadoen met mijn lichtjes.").
next(co_zoo_dolphin_baseline,  s10, "true",  s11).

state(co_zoo_dolphin_baseline, s11, say).
text(co_zoo_dolphin_baseline,  s11, "Ik ben nu twee licht animaties aan het downloaden.").
start_led_anim(co_zoo_dolphin_baseline, s11, "eyes", "rotate", ["purple"], 500).
stateConfig(co_zoo_dolphin_baseline, s11, [waitTimer=1500]).
next(co_zoo_dolphin_baseline,  s11, "true",  s12).

state(co_zoo_dolphin_baseline, s12, say).
text(co_zoo_dolphin_baseline,  s12, "Klaar. Dit is optie 1").
stop_led_anim(co_zoo_dolphin_baseline, s12).
next(co_zoo_dolphin_baseline,  s12, "true",  s13).

state(co_zoo_dolphin_baseline, s13, say).
start_led_anim(co_zoo_dolphin_baseline, s13, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
stateConfig(co_zoo_dolphin_baseline, s13, [waitTimer=3000]).
next(co_zoo_dolphin_baseline, s13, "true", s14).

state(co_zoo_dolphin_baseline, s14, say).
text(co_zoo_dolphin_baseline,  s14, "En dit is optie 2").
stop_led_anim(co_zoo_dolphin_baseline, s14).
next(co_zoo_dolphin_baseline,  s14, "true",  s15).

state(co_zoo_dolphin_baseline, s15, say).
start_led_anim(co_zoo_dolphin_baseline, s15, "all", "alternate", ["blauw", "oranje"], 500).
stateConfig(co_zoo_dolphin_baseline, s15, [waitTimer=3000]).
next(co_zoo_dolphin_baseline, s15, "true", s16).

state(co_zoo_dolphin_baseline, s16, question).
stateConfig(co_zoo_dolphin_baseline, s16, [type = branch, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='tweede',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two'], branchingPoints=[[co_zoo_dolphin_baseline, s23]]]).
stop_led_anim(co_zoo_dolphin_baseline, s16).
text(co_zoo_dolphin_baseline, s16, "Wil je de eerste of de tweede licht show?").
next(co_zoo_dolphin_baseline, s16, "success", s17).
next(co_zoo_dolphin_baseline, s16, "fail", s16f).

state(co_zoo_dolphin_baseline, s16f, say).
text(co_zoo_dolphin_baseline,  s16f, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_zoo_dolphin_baseline,  s16f, "true",  s18).

state(co_zoo_dolphin_baseline, s17, say).
text(co_zoco_zoo_dolphin_baseline_dolphin,  s17, "Goede keuze.").
next(co_zoo_dolphin_baseline,  s17, "true",  s18).

state(co_zoo_dolphin_baseline, s18, say).
text(co_zoo_dolphin_baseline,  s18, "Dit gaat leuk worden!").
next(co_zoo_dolphin_baseline,  s18, "true", s19).

state(co_zoo_dolphin_baseline, s19, say).
text(co_zoo_dolphin_baseline,  s19, "Terug naar de dolfijnen show.").
next(co_zoo_dolphin_baseline,  s19, "true", s20).

state(co_zoo_dolphin_baseline, s20, say).
text(co_zoo_dolphin_baseline,  s20, "Terwijl de lichtshow in volle vaart bezig was.").
next(co_zoo_dolphin_baseline,  s20, "true", s21).

state(co_zoo_dolphin_baseline, s21, say).
text(co_zoo_dolphin_baseline,  s21, "Sprongen de dolfijnen soepel en krachtig uit het water.").
next(co_zoo_dolphin_baseline,  s21, "true", s22).

state(co_zoo_dolphin_baseline, s22, say).
text(co_zoo_dolphin_baseline,  s22, "Ze maakte de ene salto na de andere.").
next(co_zoo_dolphin_baseline,  s22, "true", s23).

state(co_zoo_dolphin_baseline, s23, branchingPoint).
next(co_zoo_dolphin_baseline, s23, "eerste", s24eerste).
next(co_zoo_dolphin_baseline, s23, "tweede", s24tweede).
next(co_zoo_dolphin_baseline, s23, "fail", s24tweede).

state(co_zoo_dolphin_baseline, s24eerste, say).
audio(co_zoo_dolphin_baseline, s24eerste, server, "resources/sounds/dolphin_show.wav").
start_led_anim(co_zoo_dolphin_baseline, s24eerste, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
next(co_zoo_dolphin_baseline,  s24eerste, "true",  s25).

state(co_zoo_dolphin_baseline, s24tweede, say).
audio(co_zoo_dolphin_baseline, s24tweede, server, "resources/sounds/dolphin_show.wav").
start_led_anim(co_zoo_dolphin_baseline, s24tweede, "all", "alternate", ["blauw", "oranje"], 500).
next(co_zoo_dolphin_baseline,  s24tweede, "true",  s25).

state(co_zoo_dolphin_baseline, s25, say).
text(co_zoo_dolphin_baseline,  s25, "Dat was echt fantastisch.").
stop_led_anim(co_zoo_dolphin_baseline, s25).
next(co_zoo_dolphin_baseline,  s25, "true", s26).

state(co_zoo_dolphin_baseline, s26, say).
text(co_zoo_dolphin_baseline,  s26, "Na de dolfijnen show hebben we nog een frietje gegeten.").
next(co_zoo_dolphin_baseline,  s26, "true", s27).

state(co_zoo_dolphin_baseline, s27, say).
text(co_zoo_dolphin_baseline,  s27, "en daarna zijn we naar huis gegaan.").
next(co_zoo_dolphin_baseline,  s27, "true", s28).

state(co_zoo_dolphin_baseline, s28, say).
text(co_zoo_dolphin_baseline,  s28, "Dit was mijn dag in de dierentuin.").
