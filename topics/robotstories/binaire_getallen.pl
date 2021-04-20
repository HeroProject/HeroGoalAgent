state(binaire_getallen, s1, say).
text(binaire_getallen, s1, "Hee %first_name%  ik moet een robotrugnummer kiezen voor de Robospelen!").
next(binaire_getallen, s1, "true", s2).

state(binaire_getallen, s2, question).
stateConfig(binaire_getallen, s2, [type=yesno, context='answer_yesno']).
text(binaire_getallen, s2, "Heb jij een geluksgetal?").
next(binaire_getallen, s2, "answer_yes", s3ja1).
next(binaire_getallen, s2, "answer_no", s3nee1).
next(binaire_getallen, s2, "answer_dontknow", s3nee1).
next(binaire_getallen, s2, "fail", s3nee1).

state(binaire_getallen, s3ja1, say).
text(binaire_getallen, s3ja1, "Cool.").
next(binaire_getallen, s3ja1, "true", s3ja2).

state(binaire_getallen, s3ja2, question).
stateConfig(binaire_getallen, s3ja2, [type=input, context="integer", options=['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'], umVariable=robot_rugnummer]).
text(binaire_getallen, s3ja2, "Wat is jouw geluksgetal?").
next(binaire_getallen, s3ja2, "0", s3011).
next(binaire_getallen, s3ja2, "1", s3011).
next(binaire_getallen, s3ja2, "_others", s3waarom1).
next(binaire_getallen, s3ja2, "fail", s3fail1).

state(binaire_getallen, s3nee1, say).
text(binaire_getallen, s3nee1, "Misschien is het typisch iets voor robots om van cijfers te houden!").
anim(binaire_getallen, s3nee1, file, "resources/gestures/gesture_binaire_getallen_s3nee1_2.json").
next(binaire_getallen, s3nee1, "true", s3nee2).

state(binaire_getallen, s3nee2, question).
stateConfig(binaire_getallen, s3nee2, [type=input, context="integer", options=['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'], umVariable=robot_rugnummer]).
text(binaire_getallen, s3nee2, "Welk rugnummer zal ik nemen voor de robospelen?").
next(binaire_getallen, s3nee2, "0", s3011).
next(binaire_getallen, s3nee2, "1", s3011).
next(binaire_getallen, s3nee2, "_others", s3waarom1).
next(binaire_getallen, s3nee2, "fail", s3fail1).

state(binaire_getallen, s3011, say).
text(binaire_getallen, s3011, "Wat leuk! Dat is ook één van mijn geluksgetallen!").
next(binaire_getallen, s3011, "true", s3waarom1).

state(binaire_getallen, s3waarom1, question).
stateConfig(binaire_getallen, s3waarom1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(binaire_getallen, s3waarom1, "Waarom is %robot_rugnummer% jouw geluksgetal?").
anim(binaire_getallen, s3waarom1, file, "resources/gestures/gesture_binaire_getallen_s3waarom1_2.json").
next(binaire_getallen, s3waarom1, "success", s3waarom2).
next(binaire_getallen, s3waarom1, "fail", s3waarom2).

state(binaire_getallen, s3waarom2, say).
text(binaire_getallen, s3waarom2, "Zo te horen is %robot_rugnummer% inderdaad een goede keuze!").
next(binaire_getallen, s3waarom2, "true", s4).

state(binaire_getallen, s3fail1, say).
text(binaire_getallen, s3fail1, "Laten we gaan voor %robot_rugnummer% als rugnummer.").
next(binaire_getallen, s3fail1, "true", s4).

state(binaire_getallen, s4, say).
text(binaire_getallen, s4, "Ik heb er dus twee: nul en één.").
next(binaire_getallen, s4, "true", s5).

state(binaire_getallen, s5, say).
text(binaire_getallen, s5, "Voor robots zijn dat de allerbijzonderste getallen in de hele wereld.").
next(binaire_getallen, s5, "true", s6).

state(binaire_getallen, s6, say).
text(binaire_getallen, s6, "De één en de nul regelen samen alles wat ik denk, en hoor, en zie.").
next(binaire_getallen, s6, "true", s7).

state(binaire_getallen, s7, say).
text(binaire_getallen, s7, "Nul is uit, één is aan.").
next(binaire_getallen, s7, "true", s8).

state(binaire_getallen, s8, say).
text(binaire_getallen, s8, "Of eigenlijk, nul is nee, één is ja.").
next(binaire_getallen, s8, "true", s9).

state(binaire_getallen, s9, question).
stateConfig(binaire_getallen, s9, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(binaire_getallen, s9, "Vraag jij mij eens of ik Hero heet?").
anim(binaire_getallen, s9, file, "resources/gestures/gesture_binaire_getallen_s9_9.json").
next(binaire_getallen, s9, "success", s10hero1).
next(binaire_getallen, s9, "fail", s10fail1).

state(binaire_getallen, s10hero1, say).
text(binaire_getallen, s10hero1, "Ja! Ik heet Hero!").
anim(binaire_getallen, s10hero1, file, "resources/gestures/gesture_binaire_getallen_s10hero1_9.json").
next(binaire_getallen, s10hero1, "true", s10hero2).

state(binaire_getallen, s10hero2, say).
text(binaire_getallen, s10hero2, "Toen je dat net vroeg, stroomden je woorden zo, floep, mijn oren in, en daar werden ze heel veel nullen en enen achter elkaar.").
next(binaire_getallen, s10hero2, "true", s10hero3).

state(binaire_getallen, s10hero3, say).
text(binaire_getallen, s10hero3, "En die cijfers vragen dan aan de cijfers in mijn hersens: heet jij Hero?").
next(binaire_getallen, s10hero3, "true", s10hero4).

state(binaire_getallen, s10hero4, say).
text(binaire_getallen, s10hero4, "En dat is zo, dus dan zeggen mijn hersens: dikke vette één, en dan zeg ik Ja!").
anim(binaire_getallen, s10hero4, file, "resources/gestures/gesture_binaire_getallen_s10hero4_9.json").

state(binaire_getallen, s10fail1, say).
text(binaire_getallen, s10fail1, "Dat begreep ik niet helemaal, wat leuk!").
next(binaire_getallen, s10fail1, "true", s10fail2).

state(binaire_getallen, s10fail2, say).
text(binaire_getallen, s10fail2, "Als jij iets tegen mij zegt, stromen je woorden zo, floep, mijn oren in.").
next(binaire_getallen, s10fail2, "true", s10fail3).

state(binaire_getallen, s10fail3, say).
text(binaire_getallen, s10fail3, "Daar worden ze heel veel nullen en enen achter elkaar.").
next(binaire_getallen, s10fail3, "true", s10fail4).

state(binaire_getallen, s10fail4, say).
text(binaire_getallen, s10fail4, "En die cijfers vragen aan mijn hersens of ik snap wat je zegt.").
next(binaire_getallen, s10fail4, "true", s10fail5).

state(binaire_getallen, s10fail5, say).
text(binaire_getallen, s10fail5, "En als dat niet zo is, zeggen mijn hersens, nul!").
next(binaire_getallen, s10fail5, "true", s10fail6).

state(binaire_getallen, s10fail6, say).
text(binaire_getallen, s10fail6, "En dan weet ik dat ik nog heel veel van jou te leren heb.").
next(binaire_getallen, s10fail6, "true", s10fail7).

state(binaire_getallen, s10fail7, say).
text(binaire_getallen, s10fail7, "Daarom is nul een van mijn lievelingsgetallen!").

