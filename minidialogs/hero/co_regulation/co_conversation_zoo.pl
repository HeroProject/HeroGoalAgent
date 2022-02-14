%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           minidialogs for a co-creation conversation   %%%
%%%			    ZOO				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introduction    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_zoo_intro, s1, say).
text(co_zoo_intro,  s1, "Ik vertel graag over dingen die ik heb meegemaakt.").
next(co_zoo_intro,  s1, "true",  s2).

move(co_zoo_intro, s2, say).
text(co_zoo_intro,  s2, "Ik vind het leuk om daar verhaaltjes over te vertellen.").
next(co_zoo_intro,  s2, "true",  s3).

move(co_zoo_intro, s3, say).
text(co_zoo_intro,  s3, "Zo was ik laatst in de dierentuin met mijn robotvriendjes. \pau=300\ ").
next(co_zoo_intro,  s3, "true",  s4).

move(co_zoo_intro, s4, say).
text(co_zoo_intro,  s4, "Het was een fijne zonnige dag.").
leds(co_zoo_intro,  s4, direct, ['FaceLeds', 'ChestLeds'], ['Yellow', 'Yellow']).
next(co_zoo_intro,  s4, "true",  s5).

move(co_zoo_intro, s5, say).
text(co_zoo_intro,  s5, "We kregen een rondleiding van de dierenverzorger.").
leds(co_zoo_intro,  s5, reset).
next(co_zoo_intro,  s5, "true",  s6).

move(co_zoo_intro, s6, say).
text(co_zoo_intro,  s6, "We zijn langs de apen en de zebra's gelopen. \pau=300\ ").
next(co_zoo_intro,  s6, "true",  s7).

move(co_zoo_intro, s7, question).
moveConfig(co_zoo_intro, s7, [type=input, context='answer_favorite_animal', inputModality=[speech=2]]).
text(co_zoo_intro, s7, "Wat is eigenlijk jouw lievelingsdier?").
next(co_zoo_intro, s7, 'success', s8).
next(co_zoo_intro, s7, 'fail', s8f).

move(co_zoo_intro, s8, question).
moveConfig(co_zoo_intro, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_intro, s8, "Leuk! Wat vind je zo leuk aan een %co_zoo_intro_s7%?").
next(co_zoo_intro, s8, 'success', s9).
next(co_zoo_intro, s8, 'fail', s9f).

move(co_zoo_intro, s8f, question).
moveConfig(co_zoo_intro, s8f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_intro, s8f, "Leuk! Wat vind je daar zo leuk aan?").
next(co_zoo_intro, s8f, 'success', s9f).
next(co_zoo_intro, s8f, 'fail', s9ff).

move(co_zoo_intro, s9, say).
text(co_zoo_intro,  s9, "Een %co_zoo_intro_s7% is dus een terechte favoriet.").

move(co_zoo_intro, s9f, say).
text(co_zoo_intro,  s9f, "Een terechte favoriet.").

move(co_zoo_intro, s9ff, say).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Elephants - Gesture		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_zoo_elephant_create, s1, say).
text(co_zoo_elephant_create,  s1, "Een van mijn lievelingsdieren zijn olifanten.").
next(co_zoo_elephant_create,  s1, "true",  s2).

move(co_zoo_elephant_create, s2, say).
text(co_zoo_elephant_create,  s2, "Ik vind het gaaf dat ze zo groot zijn.").
next(co_zoo_elephant_create,  s2, "true",  s3).

move(co_zoo_elephant_create, s3, say).
text(co_zoo_elephant_create,  s3, "En ik vind hun slurf zo leuk.").
next(co_zoo_elephant_create,  s3, "true",  s4).

move(co_zoo_elephant_create, s4, say).
text(co_zoo_elephant_create,  s4, "Vooral als ze er mee toeteren.").
next(co_zoo_elephant_create,  s4, "true",  s5).

move(co_zoo_elephant_create, s5, say).
text(co_zoo_elephant_create,  s5, "Daar zou ik nou een leuk gebaar voor willen hebben.").
next(co_zoo_elephant_create,  s5, "true",  s6).

move(co_zoo_elephant_create, s6, say).
prepare_motion_anim(co_zoo_elephant_create, s6).
moveConfig(co_zoo_elephant_create, s6, [umVariable=co_zoo_motion_elephant,
				 option1='resources/gestures/elephant1.json',
				 option2='resources/gestures/elephant2.json']).

%%%%%%%%%%%%%% Afspelen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_zoo_elephant_play, s14, say).
text(co_zoo_elephant_play,  s14, "Laat ik verder gaan met mijn verhaal.").
next(co_zoo_elephant_play,  s14, "true",  s15).

move(co_zoo_elephant_play, s15, say).
text(co_zoo_elephant_play,  s15, "Waar was ik gebleven?").
next(co_zoo_elephant_play,  s15, "true",  s16).

move(co_zoo_elephant_play, s16, say).
text(co_zoo_elephant_play,  s16, "Oh ja, in de dierentuin gingen we eindelijk naar het verblijf van de olifanten.").
next(co_zoo_elephant_play,  s16, "true",  s17).

move(co_zoo_elephant_play, s17, say).
text(co_zoo_elephant_play,  s17, "De olifanten waren aan het drinken bij het watertje.").
next(co_zoo_elephant_play,  s17, "true",  s18).

move(co_zoo_elephant_play, s18, say).
text(co_zoo_elephant_play,  s18, "De kleine olifantjes sproeien elkaar nat.").
next(co_zoo_elephant_play,  s18, "true",  s19).

move(co_zoo_elephant_play, s19, say).
text(co_zoo_elephant_play,  s19, "Ze toeterden met hun slurf van plezier.").
next(co_zoo_elephant_play,  s19, "true",  s20).

move(co_zoo_elephant_play, s20, say).
anim(co_zoo_elephant_play, s20, id, co_zoo_motion_elephant).
audio(co_zoo_elephant_play, s20, file, 'resources/sounds/elephant.wav').
next(co_zoo_elephant_play, s20, "true", s21).

move(co_zoo_elephant_play, s21, say).
text(co_zoo_elephant_play,  s21, "Leuk hè").
next(co_zoo_elephant_play,  s21, "true",  s22).

move(co_zoo_elephant_play, s22, say).
text(co_zoo_elephant_play,  s22, "We kijken in ieder geval vol verwondering").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Elephants - Gesture	Baseline                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_zoo_elephant_baseline, s1, say).
text(co_zoo_elephant_baseline,  s1, "Een van mijn lievelingsdieren zijn olifanten.").
next(co_zoo_elephant_baseline,  s1, "true",  s2).

move(co_zoo_elephant_baseline, s2, say).
text(co_zoo_elephant_baseline,  s2, "Ik vind het gaaf dat ze zo groot zijn.").
next(co_zoo_elephant_baseline,  s2, "true",  s3).

move(co_zoo_elephant_baseline, s3, say).
text(co_zoo_elephant_baseline,  s3, "En ik vind hun slurf zo leuk.").
next(co_zoo_elephant_baseline,  s3, "true",  s4).

move(co_zoo_elephant_baseline, s4, say).
text(co_zoo_elephant_baseline,  s4, "Vooral als ze er mee toeteren.").
next(co_zoo_elephant_baseline,  s4, "true",  s5).

move(co_zoo_elephant_baseline, s5, say).
text(co_zoo_elephant_baseline,  s5, "Daar zou ik nou een leuk gebaar voor willen hebben.").
next(co_zoo_elephant_baseline,  s5, "true",  s6).

move(co_zoo_elephant_baseline, s6, say).
text(co_zoo_elephant_baseline,  s6, "Ik ben nu twee gebaren aan het downloaden.").
leds(co_zoo_elephant_baseline, s6, direct, "eyes", "rotate", ["purple"], 500).
moveConfig(co_zoo_elephant_baseline, s6, [waitTimer=1500]).
next(co_zoo_elephant_baseline,  s6, "true",  s7).

move(co_zoo_elephant_baseline, s7, say).
text(co_zoo_elephant_baseline,  s7, "Klaar. Dit is optie 1").
leds(co_zoo_elephant_baseline, s7, reset).
next(co_zoo_elephant_baseline,  s7, "true",  s8).

move(co_zoo_elephant_baseline, s8, say).
anim(co_zoo_elephant_baseline, s8, file, "resources/gestures/elephant1.json").
next(co_zoo_elephant_baseline, s8, "true", s9).

move(co_zoo_elephant_baseline, s9, say).
text(co_zoo_elephant_baseline,  s9, "En dit is optie 2").
next(co_zoo_elephant_baseline,  s9, "true",  s10).

move(co_zoo_elephant_baseline, s10, say).
anim(co_zoo_elephant_baseline, s10, file, "resources/gestures/elephant2.json").
next(co_zoo_elephant_baseline, s10, "true", s11).

move(co_zoo_elephant_baseline, s11, question).
moveConfig(co_zoo_elephant_baseline, s11, [type=input, context="involvement_which_option", options=['eerste', 'tweede'], defaultAnswer='eerste']).
text(co_zoo_elephant_baseline, s11, "Wil je de eerste of de tweede beweging?").
next(co_zoo_elephant_baseline, s11, "success", s12).
next(co_zoo_elephant_baseline, s11, "fail", s11f).

move(co_zoo_elephant_baseline, s11f, say).
text(co_zoo_elephant_baseline,  s11f, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_zoo_elephant_baseline,  s11f, "true",  s14).

move(co_zoo_elephant_baseline, s12, say).
text(co_zoo_elephant_baseline,  s12, "Goede keuze.").
next(co_zoo_elephant_baseline,  s12, "true",  s14).

move(co_zoo_elephant_baseline, s14, say).
text(co_zoo_elephant_baseline,  s14, "Laat ik verder gaan met mijn verhaal.").
next(co_zoo_elephant_baseline,  s14, "true",  s15).

move(co_zoo_elephant_baseline, s15, say).
text(co_zoo_elephant_baseline,  s15, "Waar was ik gebleven?").
next(co_zoo_elephant_baseline,  s15, "true",  s16).

move(co_zoo_elephant_baseline, s16, say).
text(co_zoo_elephant_baseline,  s16, "Oh ja, in de dierentuin gingen we eindelijk naar het verblijf van de olifanten.").
next(co_zoo_elephant_baseline,  s16, "true",  s17).

move(co_zoo_elephant_baseline, s17, say).
text(co_zoo_elephant_baseline,  s17, "De olifanten waren aan het drinken bij het watertje.").
next(co_zoo_elephant_baseline,  s17, "true",  s18).

move(co_zoo_elephant_baseline, s18, say).
text(co_zoo_elephant_baseline,  s18, "De kleine olifantjes sproeien elkaar nat.").
next(co_zoo_elephant_baseline,  s18, "true",  s19).

move(co_zoo_elephant_baseline, s19, say).
text(co_zoo_elephant_baseline,  s19, "Ze toeterden met hun slurf van plezier.").
next(co_zoo_elephant_baseline,  s19, "true",  s20).

move(co_zoo_elephant_baseline, s20, branchingPoint, co_zoo_elephant_baseline_s11).
next(co_zoo_elephant_baseline, s20, "eerste", s21eerste).
next(co_zoo_elephant_baseline, s20, "tweede", s21tweede).
next(co_zoo_elephant_baseline, s20, "fail", s21eerste).

move(co_zoo_elephant_baseline, s21eerste, say).
anim(co_zoo_elephant_baseline, s21eerste, file, "resources/gestures/elephant1.json").
audio(co_zoo_elephant_baseline, s21eerste, file, "resources/sounds/elephant.wav").
next(co_zoo_elephant_baseline, s21eerste, "true", s22).

move(co_zoo_elephant_baseline, s21tweede, say).
anim(co_zoo_elephant_baseline, s21tweede, file, "resources/gestures/elephant2.json").
audio(co_zoo_elephant_baseline, s21tweede, file, "resources/sounds/elephant.wav").
next(co_zoo_elephant_baseline, s21tweede, "true", s22).

move(co_zoo_elephant_baseline, s22, say).
text(co_zoo_elephant_baseline,  s22, "Leuk hè").
next(co_zoo_elephant_baseline,  s22, "true",  s23).

move(co_zoo_elephant_baseline, s23, say).
text(co_zoo_elephant_baseline,  s23, "We kijken in ieder geval vol verwondering").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Lion / tiger - Sound effect		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_zoo_lion_create, s1, say).
text(co_zoo_lion_create,  s1, "Na de olifanten gingen we naar de leeuwen en tijgers. \pau=300\ ").
next(co_zoo_lion_create,  s1, "true",  s2).

move(co_zoo_lion_create, s2, question).
moveConfig(co_zoo_lion_create, s2, [type=input, context='answer_favorite_animal', options=['leeuw', 'tijger'], defaultAnswer="leeuw"]).
text(co_zoo_lion_create, s2, "Vind jij de leeuw of de tijger leuker?").
next(co_zoo_lion_create, s2, 'success', s3).
next(co_zoo_lion_create, s2, 'fail', s3f).

move(co_zoo_lion_create, s3, question).
moveConfig(co_zoo_lion_create, s3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_lion_create, s3, "Wat vind jij leuk aan een %co_zoo_lion_create_s2%?").
next(co_zoo_lion_create, s3, 'success', s4).
next(co_zoo_lion_create, s3, 'fail', s4).

move(co_zoo_lion_create, s3f, question).
moveConfig(co_zoo_lion_create, s3f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_lion_create, s3f, "Wat vind jij daar leuker aan?").
next(co_zoo_lion_create, s3f, 'success', s4).
next(co_zoo_lion_create, s3f, 'fail', s4).

move(co_zoo_lion_create, s4, say).
text(co_zoo_lion_create,  s4, "Dat snap ik helemaal.").
next(co_zoo_lion_create,  s4, "true",  s5).

move(co_zoo_lion_create, s5, say).
text(co_zoo_lion_create,  s5, "Ik mis trouwens nog een leuk geluid voor een brullende %co_zoo_lion_create_s2%.").
next(co_zoo_lion_create,  s5, "true",  s6).

move(co_zoo_lion_create, s6, branchingPoint, co_zoo_lion_create_s2).
next(co_zoo_lion_create, s6, "leeuw", s7leeuw).
next(co_zoo_lion_create, s6, "tijger", s7tijger).
next(co_zoo_lion_create, s6, "fail", s7leeuw).

move(co_zoo_lion_create, s7leeuw, say).
prepare_motion_anim(co_zoo_lion_create, s7leeuw).
moveConfig(co_zoo_lion_create, s7leeuw, [umVariable=co_zoo_sound_lion_or_tiger,
				 option1='resources/sounds/lion1.wav',
				 option2='resources/sounds/lion2.wav']).
				 
move(co_zoo_lion_create, s7tijger, say).
prepare_motion_anim(co_zoo_lion_create, s7tijger).
moveConfig(co_zoo_lion_create, s7tijger, [umVariable=co_zoo_sound_lion_or_tiger,
				 option1='resources/sounds/tiger1.wav',
				 option2='resources/sounds/tiger2.wav']).


%%%%%%%%%%%%%% Afspelen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_zoo_lion_play, s16, say).
text(co_zoo_lion_play,  s16, "Laat ik weer verder gaan met mijn verhaal. Ik was dus bij het verblijf van de %co_zoo_lion_create_s2%.").
next(co_zoo_lion_play,  s16, "true",  s17).

move(co_zoo_lion_play, s17, say).
text(co_zoo_lion_play,  s17, "En ik keek links en ik keek rechts.").
next(co_zoo_lion_play,  s17, "true",  s18).

move(co_zoo_lion_play, s18, say).
text(co_zoo_lion_play,  s18, "Maar er was geen %co_zoo_lion_create_s2% te zien.").
next(co_zoo_lion_play,  s18, "true",  s19).

move(co_zoo_lion_play, s19, say).
text(co_zoo_lion_play,  s19, "Tot ik opeens dit hoorde.").
next(co_zoo_lion_play,  s19, "true",  s20).

move(co_zoo_lion_play, s20, say).
audio(co_zoo_lion_play, s20, id, co_zoo_sound_lion_or_tiger).
next(co_zoo_lion_play, s20, "true", s21).

move(co_zoo_lion_play, s21, say).
text(co_zoo_lion_play,  s21, "Daar is de %co_zoo_lion_create_s2%!").
next(co_zoo_lion_play,  s21, "true",  s22).

move(co_zoo_lion_play, s22, say).
text(co_zoo_lion_play,  s22, "Ze was naar ons toe geslopen.").
next(co_zoo_lion_play,  s22, "true",  s23).

move(co_zoo_lion_play, s23, say).
text(co_zoo_lion_play,  s23, "Ze was net zo nieuwsgierig naar ons, als wij naar haar.").
next(co_zoo_lion_play,  s23, "true",  s24).

move(co_zoo_lion_play, s24, say).
text(co_zoo_lion_play,  s24, "Ik vond het heel spannend, maar ook heel gaaf.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Lion / tiger - Sound effect	Baseline                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_zoo_lion_baseline, s1, say).
text(co_zoo_lion_baseline,  s1, "Na de olifanten gingen we naar de leeuwen en tijgers. \pau=300\ ").
next(co_zoo_lion_baseline,  s1, "true",  s2).

move(co_zoo_lion_baseline, s2, question).
moveConfig(co_zoo_lion_baseline, s2, [type=input, context='answer_favorite_animal', options=['leeuw', 'tijger'], defaultAnswer="leeuw"]).
text(co_zoo_lion_baseline, s2, "Vind jij de leeuw of de tijger leuker?").
next(co_zoo_lion_baseline, s2, 'success', s3).
next(co_zoo_lion_baseline, s2, 'fail', s3f).

move(co_zoo_lion_baseline, s3, question).
moveConfig(co_zoo_lion_baseline, s3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_lion_baseline, s3, "Wat vind jij leuk aan een %co_zoo_lion_baseline_s2%?").
next(co_zoo_lion_baseline, s3, 'success', s4).
next(co_zoo_lion_baseline, s3, 'fail', s4).

move(co_zoo_lion_baseline, s3f, question).
moveConfig(co_zoo_lion_baseline, s3f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_lion_baseline, s3f, "Wat vind jij daar leuker aan?").
next(co_zoo_lion_baseline, s3f, 'success', s4).
next(co_zoo_lion_baseline, s3f, 'fail', s4).

move(co_zoo_lion_baseline, s4, say).
text(co_zoo_lion_baseline,  s4, "Dat snap ik helemaal.").
next(co_zoo_lion_baseline,  s4, "true",  s5).

move(co_zoo_lion_baseline, s5, say).
text(co_zoo_lion_baseline,  s5, "Ik mis trouwens nog een leuk geluid voor een brullende %co_zoo_lion_baseline_s2%.").
next(co_zoo_lion_baseline,  s5, "true",  s6).

move(co_zoo_lion_baseline, s6, say).
text(co_zoo_lion_baseline,  s6, "Ik ben nu twee geluiden aan het downloaden.").
leds(co_zoo_lion_baseline, s6, direct, "eyes", "rotate", ["purple"], 500).
moveConfig(co_zoo_lion_baseline, s6, [waitTimer=1500]).
next(co_zoo_lion_baseline,  s6, "true",  s7).

move(co_zoo_lion_baseline, s7, branchingPoint, co_zoo_lion_baseline_s2).
leds(co_zoo_lion_baseline, s7, reset).
next(co_zoo_lion_baseline, s7, "leeuw", s10leeuw).
next(co_zoo_lion_baseline, s7, "tijger", s10tijger).
next(co_zoo_lion_baseline, s7, "fail", s10leeuw).

move(co_zoo_lion_baseline, s10leeuw, say).
text(co_zoo_lion_baseline,  s10leeuw, "Klaar. Dit is de eerste").
next(co_zoo_lion_baseline,  s10leeuw, "true", s10leeuwo1).

move(co_zoo_lion_baseline, s10leeuwo1, say).
audio(co_zoo_lion_baseline, s10leeuwo1, file, "resources/sounds/lion1.wav").
next(co_zoo_lion_baseline,  s10leeuwo1, "true", s11leeuw).

move(co_zoo_lion_baseline, s11leeuw, say).
text(co_zoo_lion_baseline,  s11leeuw, "En dit is de tweede").
next(co_zoo_lion_baseline,  s11leeuw, "true", s11leeuwo2).

move(co_zoo_lion_baseline, s11leeuwo2, say).
audio(co_zoo_lion_baseline, s11leeuwo2, file, "resources/sounds/lion2.wav").
next(co_zoo_lion_baseline,  s11leeuwo2, "true", s12).

move(co_zoo_lion_baseline, s10tijger, say).
text(co_zoo_lion_baseline,  s10tijger, "Klaar. Dit is de eerste").
next(co_zoo_lion_baseline,  s10tijger, "true", s10tijgero1).

move(co_zoo_lion_baseline, s10tijgero1, say).
audio(co_zoo_lion_baseline, s10tijgero1, file, "resources/sounds/tiger1.wav").
next(co_zoo_lion_baseline,  s10tijgero1, "true", s11tijger).

move(co_zoo_lion_baseline, s11tijger, say).
text(co_zoo_lion_baseline,  s11tijger, "En dit is de tweede").
next(co_zoo_lion_baseline,  s11tijger, "true", s11tijgero2).

move(co_zoo_lion_baseline, s11tijgero2, say).
audio(co_zoo_lion_baseline, s11tijgero2, file, "resources/sounds/tiger2.wav").
next(co_zoo_lion_baseline,  s11tijgero2, "true", s12).

move(co_zoo_lion_baseline, s12, question).
moveConfig(co_zoo_lion_baseline, s12, [type=input, context="involvement_which_option", options=['eerste', 'tweede'], defaultAnswer='eerste']).
text(co_zoo_lion_baseline, s12, "Welke vind je leuker, het eerste of het tweede geluid?").
next(co_zoo_lion_baseline, s12, "success", s13).
next(co_zoo_lion_baseline, s12, "fail", s12f).

move(co_zoo_lion_baseline, s12f, say).
text(co_zoo_lion_baseline,  s12f, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_zoo_lion_baseline,  s12f, "true", s16).

move(co_zoo_lion_baseline, s13, say).
text(co_zoo_lion_baseline,  s13, "Goede keuze.").
next(co_zoo_lion_baseline,  s13, "true",  s16).

move(co_zoo_lion_baseline, s16, say).
text(co_zoo_lion_baseline,  s16, "Laat ik weer verder gaan met mijn verhaal. Ik was dus bij het verblijf van de %co_zoo_lion_baseline_s2%.").
next(co_zoo_lion_baseline,  s16, "true",  s17).

move(co_zoo_lion_baseline, s17, say).
text(co_zoo_lion_baseline,  s17, "En ik keek links en ik keek rechts.").
next(co_zoo_lion_baseline,  s17, "true",  s18).

move(co_zoo_lion_baseline, s18, say).
text(co_zoo_lion_baseline,  s18, "Maar er was geen %co_zoo_lion_baseline_s2% te zien.").
next(co_zoo_lion_baseline,  s18, "true",  s19).

move(co_zoo_lion_baseline, s19, say).
text(co_zoo_lion_baseline,  s19, "Tot ik opeens dit hoorde.").
next(co_zoo_lion_baseline,  s19, "true",  s20).

move(co_zoo_lion_baseline, s20, branchingPoint, co_zoo_lion_baseline_s2).
next(co_zoo_lion_baseline, s20, "leeuw", s20leeuw).
next(co_zoo_lion_baseline, s20, "tijger", s20tijger).
next(co_zoo_lion_baseline, s20, "fail", s20leeuw).

move(co_zoo_lion_baseline, s20leeuw, branchingPoint, co_zoo_lion_baseline_s12).
next(co_zoo_lion_baseline, s20leeuw, "eerste", s20leeuweerste).
next(co_zoo_lion_baseline, s20leeuw, "tweede", s20leeuwtweede).
next(co_zoo_lion_baseline, s20leeuw, "fail", s20leeuweerste).

move(co_zoo_lion_baseline, s20leeuweerste, say).
audio(co_zoo_lion_baseline, s20leeuweerste, file, "resources/sounds/lion1.wav").
next(co_zoo_lion_baseline, s20leeuweerste, "true", s21).

move(co_zoo_lion_baseline, s20leeuwtweede, say).
audio(co_zoo_lion_baseline, s20leeuwtweede, file, "resources/sounds/lion2.wav").
next(co_zoo_lion_baseline, s20leeuwtweede, "true", s21).

move(co_zoo_lion_baseline, s20tijger, branchingPoint, co_zoo_lion_baseline_s12).
next(co_zoo_lion_baseline, s20tijger, "eerste", s20tijgereerste).
next(co_zoo_lion_baseline, s20tijger, "tweede", s20tijgertweede).
next(co_zoo_lion_baseline, s20tijger, "fail", s20tijgereerste).

move(co_zoo_lion_baseline, s20tijgereerste, say).
audio(co_zoo_lion_baseline, s20tijgereerste, file, "resources/sounds/tiger1.wav").
next(co_zoo_lion_baseline, s20tijgereerste, "true", s21).

move(co_zoo_lion_baseline, s20tijgertweede, say).
audio(co_zoo_lion_baseline, s20tijgertweede, file, "resources/sounds/tiger2.wav").
next(co_zoo_lion_baseline, s20tijgertweede, "true", s21).

move(co_zoo_lion_baseline, s21, say).
text(co_zoo_lion_baseline,  s21, "Daar is de %co_zoo_lion_baseline_s2%!").
next(co_zoo_lion_baseline,  s21, "true",  s22).

move(co_zoo_lion_baseline, s22, say).
text(co_zoo_lion_baseline,  s22, "Ze was naar ons toe geslopen.").
next(co_zoo_lion_baseline,  s22, "true",  s23).

move(co_zoo_lion_baseline, s23, say).
text(co_zoo_lion_baseline,  s23, "Ze was net zo nieuwsgierig naar ons, als wij naar haar.").
next(co_zoo_lion_baseline,  s23, "true",  s24).

move(co_zoo_lion_baseline, s24, say).
text(co_zoo_lion_baseline,  s24, "Ik vond het heel spannend, maar ook heel gaaf.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Dolphin - Light animation		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_zoo_dolphin_create, s1, say).
text(co_zoo_dolphin_create,  s1, "Het was tijd om door te lopen.").
next(co_zoo_dolphin_create,  s1, "true",  s2).

move(co_zoo_dolphin_create, s2, say).
text(co_zoo_dolphin_create,  s2, "We gingen door naar het aquarium.").
next(co_zoo_dolphin_create,  s2, "true",  s3).

move(co_zoo_dolphin_create, s3, question).
moveConfig(co_zoo_dolphin_create, s3, [type=input, context='answer_favorite_animal', inputModality=[speech=2]]).
text(co_zoo_dolphin_create, s3, "Welk waterdier vind jij het leukst?").
next(co_zoo_dolphin_create, s3, 'success', s4).
next(co_zoo_dolphin_create, s3, 'fail', s4f).

move(co_zoo_dolphin_create, s4, question).
moveConfig(co_zoo_dolphin_create, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_dolphin_create, s4, "Wat vind jij leuk aan een %co_zoo_dolphin_create_s3%?").
next(co_zoo_dolphin_create, s4, 'success', s5).
next(co_zoo_dolphin_create, s4, 'fail', s5).

move(co_zoo_dolphin_create, s4f, question).
moveConfig(co_zoo_dolphin_create, s4f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_dolphin_create, s4f, "Wat vind jij daar zo leuk aan?").
next(co_zoo_dolphin_create, s4f, 'success', s5).
next(co_zoo_dolphin_create, s4f, 'fail', s5).

move(co_zoo_dolphin_create, s5, say).
text(co_zoo_dolphin_create,  s5, "Dat vind ik er ook leuk aan!").
next(co_zoo_dolphin_create,  s5, "true",  s6).

move(co_zoo_dolphin_create, s6, say).
text(co_zoo_dolphin_create,  s6, "In het aquarium heb ik heel wat kleurrijke vissen voorbij zien komen.").
next(co_zoo_dolphin_create,  s6, "true",  s7).

move(co_zoo_dolphin_create, s7, say).
text(co_zoo_dolphin_create,  s7, "Ook zo'n oranje Nemo vis. Clownvisjes, zo heten ze eigenlijk.").
next(co_zoo_dolphin_create,  s7, "true",  s8).

move(co_zoo_dolphin_create, s8, say).
text(co_zoo_dolphin_create,  s8, "We gingen door naar de dolfijnen show.").
next(co_zoo_dolphin_create,  s8, "true",  s9).

move(co_zoo_dolphin_create, s9, say).
text(co_zoo_dolphin_create,  s9, "Er zat een heuze licht show bij.").
next(co_zoo_dolphin_create,  s9, "true",  s10).

move(co_zoo_dolphin_create, s10, say).
text(co_zoo_dolphin_create,  s10, "Dat wil ik graag nadoen met mijn lichtjes.").
next(co_zoo_dolphin_create,  s10, "true",  s11).

move(co_zoo_dolphin_create, s11, say).
prepare_motion_anim(co_zoo_dolphin_create, s11).
moveConfig(co_zoo_dolphin_create, s11, [umVariable=co_zoo_led_dolphin,
					option1=["all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500],
					option2=[["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["paars", "oranje", "rood"], 0]]).

%%%%%%%%%%%%%% Play light animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(co_zoo_dolphin_play, s1, say).
text(co_zoo_dolphin_play,  s1, "Dit gaat leuk worden!").
next(co_zoo_dolphin_play,  s1, "true", s2).

move(co_zoo_dolphin_play, s2, say).
text(co_zoo_dolphin_play,  s2, "Terug naar de dolfijnen show.").
next(co_zoo_dolphin_play,  s2, "true", s3).

move(co_zoo_dolphin_play, s3, say).
text(co_zoo_dolphin_play,  s3, "Terwijl de lichtshow in volle vaart bezig was.").
next(co_zoo_dolphin_play,  s3, "true", s4).

move(co_zoo_dolphin_play, s4, say).
text(co_zoo_dolphin_play,  s4, "Sprongen de dolfijnen soepel en krachtig uit het water.").
next(co_zoo_dolphin_play,  s4, "true", s5).

move(co_zoo_dolphin_play, s5, say).
text(co_zoo_dolphin_play,  s5, "Ze maakte de ene salto na de andere.").
next(co_zoo_dolphin_play,  s5, "true", s6).

move(co_zoo_dolphin_play, s7maken, say).
audio(co_zoo_dolphin_play, s7maken, file, "resources/sounds/dolphin_show.wav").
leds(co_zoo_dolphin_play,  s7maken, id, co_zoo_led_dolphin).
next(co_zoo_dolphin_play,  s7maken, "true",  s8).

move(co_zoo_dolphin_play, s8, say).
text(co_zoo_dolphin_play,  s8, "Dat was echt fantastisch.").
leds(co_zoo_dolphin_play, s8, reset).
next(co_zoo_dolphin_play,  s8, "true", s9).

move(co_zoo_dolphin_play, s9, say).
text(co_zoo_dolphin_play,  s9, "Na de dolfijnen show hebben we nog een frietje gegeten.").
next(co_zoo_dolphin_play,  s9, "true", s10).

move(co_zoo_dolphin_play, s10, say).
text(co_zoo_dolphin_play,  s10, "en daarna zijn we naar huis gegaan.").
next(co_zoo_dolphin_play,  s10, "true", s11).

move(co_zoo_dolphin_play, s11, say).
text(co_zoo_dolphin_play,  s11, "Dit was mijn dag in de dierentuin.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Dolphin - Light animation Baseline	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(co_zoo_dolphin_baseline, s1, say).
text(co_zoo_dolphin_baseline,  s1, "Het was tijd om door te lopen.").
next(co_zoo_dolphin_baseline,  s1, "true",  s2).

move(co_zoo_dolphin_baseline, s2, say).
text(co_zoo_dolphin_baseline,  s2, "We gingen door naar het aquarium.").
next(co_zoo_dolphin_baseline,  s2, "true",  s3).

move(co_zoo_dolphin_baseline, s3, question).
moveConfig(co_zoo_dolphin_baseline, s3, [type=input, context='answer_favorite_animal', options=['haai', 'walvis', 'dolfijn', 'vis', 'zeehond'], defaultAnswer="haai"]).
text(co_zoo_dolphin_baseline, s3, "Welk waterdier vind jij het leukst?").
next(co_zoo_dolphin_baseline, s3, 'success', s4).
next(co_zoo_dolphin_baseline, s3, 'fail', s4f).

move(co_zoo_dolphin_baseline, s4, question).
moveConfig(co_zoo_dolphin_baseline, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_dolphin_baseline, s4, "Wat vind jij leuk aan een %co_zoo_dolphin_baseline_s3%?").
next(co_zoo_dolphin_baseline, s4, 'success', s5).
next(co_zoo_dolphin_baseline, s4, 'fail', s5).

move(co_zoo_dolphin_baseline, s4f, question).
moveConfig(co_zoo_dolphin_baseline, s4f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_dolphin_baseline, s4f, "Wat vind jij daar zo leuk aan?").
next(co_zoo_dolphin_baseline, s4f, 'success', s5).
next(co_zoo_dolphin_baseline, s4f, 'fail', s5).

move(co_zoo_dolphin_baseline, s5, say).
text(co_zoo_dolphin_baseline,  s5, "Dat vind ik er ook leuk aan!").
next(co_zoo_dolphin_baseline,  s5, "true",  s6).

move(co_zoo_dolphin_baseline, s6, say).
text(co_zoo_dolphin_baseline,  s6, "In het aquarium heb ik heel wat kleurrijke vissen voorbij zien komen.").
next(co_zoo_dolphin_baseline,  s6, "true",  s7).

move(co_zoo_dolphin_baseline, s7, say).
text(co_zoo_dolphin_baseline,  s7, "Ook zo'n oranje Nemo vis. Clownvisjes, zo heten ze eigenlijk.").
next(co_zoo_dolphin_baseline,  s7, "true",  s8).

move(co_zoo_dolphin_baseline, s8, say).
text(co_zoo_dolphin_baseline,  s8, "We gingen door naar de dolfijnen show.").
next(co_zoo_dolphin_baseline,  s8, "true",  s9).

move(co_zoo_dolphin_baseline, s9, say).
text(co_zoo_dolphin_baseline,  s9, "Er zat een heuze licht show bij.").
next(co_zoo_dolphin_baseline,  s9, "true",  s10).

move(co_zoo_dolphin_baseline, s10, say).
text(co_zoo_dolphin_baseline,  s10, "Dat wil ik graag nadoen met mijn lichtjes.").
next(co_zoo_dolphin_baseline,  s10, "true",  s11).

move(co_zoo_dolphin_baseline, s11, say).
text(co_zoo_dolphin_baseline,  s11, "Ik ben nu twee licht animaties aan het downloaden.").
leds(co_zoo_dolphin_baseline, s11, direct, "eyes", "rotate", ["purple"], 500).
moveConfig(co_zoo_dolphin_baseline, s11, [waitTimer=1500]).
next(co_zoo_dolphin_baseline,  s11, "true",  s12).

move(co_zoo_dolphin_baseline, s12, say).
text(co_zoo_dolphin_baseline,  s12, "Klaar. Dit is optie 1").
leds(co_zoo_dolphin_baseline, s12, reset).
next(co_zoo_dolphin_baseline,  s12, "true",  s13).

move(co_zoo_dolphin_baseline, s13, say).
leds(co_zoo_dolphin_baseline, s13, direct, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
moveConfig(co_zoo_dolphin_baseline, s13, [waitTimer=3000]).
next(co_zoo_dolphin_baseline, s13, "true", s14).

move(co_zoo_dolphin_baseline, s14, say).
text(co_zoo_dolphin_baseline,  s14, "En dit is optie 2").
leds(co_zoo_dolphin_baseline, s14, reset).
next(co_zoo_dolphin_baseline,  s14, "true",  s15).

move(co_zoo_dolphin_baseline, s15, say).
leds(co_zoo_dolphin_baseline, s15, direct, "all", "alternate", ["blauw", "oranje"], 500).
moveConfig(co_zoo_dolphin_baseline, s15, [waitTimer=3000]).
next(co_zoo_dolphin_baseline, s15, "true", s16).

move(co_zoo_dolphin_baseline, s16, question).
moveConfig(co_zoo_dolphin_baseline, s16, [type=input, context = "involvement_which_option", options = ['eerste', 'tweede'], defaultAnswer='tweede']).
leds(co_zoo_dolphin_baseline, s16, reset).
text(co_zoo_dolphin_baseline, s16, "Wil je de eerste of de tweede licht show?").
next(co_zoo_dolphin_baseline, s16, "success", s17).
next(co_zoo_dolphin_baseline, s16, "fail", s16f).

move(co_zoo_dolphin_baseline, s16f, say).
text(co_zoo_dolphin_baseline,  s16f, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_zoo_dolphin_baseline,  s16f, "true",  s18).

move(co_zoo_dolphin_baseline, s17, say).
text(co_zoo_dolphin_baseline,  s17, "Goede keuze.").
next(co_zoo_dolphin_baseline,  s17, "true",  s18).

move(co_zoo_dolphin_baseline, s18, say).
text(co_zoo_dolphin_baseline,  s18, "Dit gaat leuk worden!").
next(co_zoo_dolphin_baseline,  s18, "true", s19).

move(co_zoo_dolphin_baseline, s19, say).
text(co_zoo_dolphin_baseline,  s19, "Terug naar de dolfijnen show.").
next(co_zoo_dolphin_baseline,  s19, "true", s20).

move(co_zoo_dolphin_baseline, s20, say).
text(co_zoo_dolphin_baseline,  s20, "Terwijl de lichtshow in volle vaart bezig was.").
next(co_zoo_dolphin_baseline,  s20, "true", s21).

move(co_zoo_dolphin_baseline, s21, say).
text(co_zoo_dolphin_baseline,  s21, "Sprongen de dolfijnen soepel en krachtig uit het water.").
next(co_zoo_dolphin_baseline,  s21, "true", s22).

move(co_zoo_dolphin_baseline, s22, say).
text(co_zoo_dolphin_baseline,  s22, "Ze maakte de ene salto na de andere.").
next(co_zoo_dolphin_baseline,  s22, "true", s23).

move(co_zoo_dolphin_baseline, s23, branchingPoint, co_zoo_dolphin_baseline_s16).
next(co_zoo_dolphin_baseline, s23, "eerste", s24eerste).
next(co_zoo_dolphin_baseline, s23, "tweede", s24tweede).
next(co_zoo_dolphin_baseline, s23, "fail", s24tweede).

move(co_zoo_dolphin_baseline, s24eerste, say).
audio(co_zoo_dolphin_baseline, s24eerste, file, "resources/sounds/dolphin_show.wav").
leds(co_zoo_dolphin_baseline, s24eerste, direct, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
next(co_zoo_dolphin_baseline,  s24eerste, "true",  s25).

move(co_zoo_dolphin_baseline, s24tweede, say).
audio(co_zoo_dolphin_baseline, s24tweede, file, "resources/sounds/dolphin_show.wav").
leds(co_zoo_dolphin_baseline, s24tweede, direct, "all", "alternate", ["blauw", "oranje"], 500).
next(co_zoo_dolphin_baseline,  s24tweede, "true",  s25).

move(co_zoo_dolphin_baseline, s25, say).
text(co_zoo_dolphin_baseline,  s25, "Dat was echt fantastisch.").
leds(co_zoo_dolphin_baseline, s25, reset).
next(co_zoo_dolphin_baseline,  s25, "true", s26).

move(co_zoo_dolphin_baseline, s26, say).
text(co_zoo_dolphin_baseline,  s26, "Na de dolfijnen show hebben we nog een frietje gegeten.").
next(co_zoo_dolphin_baseline,  s26, "true", s27).

move(co_zoo_dolphin_baseline, s27, say).
text(co_zoo_dolphin_baseline,  s27, "en daarna zijn we naar huis gegaan.").
next(co_zoo_dolphin_baseline,  s27, "true", s28).

move(co_zoo_dolphin_baseline, s28, say).
text(co_zoo_dolphin_baseline,  s28, "Dit was mijn dag in de dierentuin.").
