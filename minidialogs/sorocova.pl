%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SOROCOVA Iteration 1	           %%%
%%%  		Mini-dialogs for math tutoring robot       %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Pilot				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Sessie 1
% Introductie
minidialog(sor_pilot_intro, [type=functional, function=intro]).
move(sor_pilot_intro, s1, say).
text(sor_pilot_intro,  s1, "Hallo ik ben Hero").
next(sor_pilot_intro,  s1, "true",  s2).

move(sor_pilot_intro, s2, say).
text(sor_pilot_intro,  s2, "Wat fijn dat jullie er zijn.").
next(sor_pilot_intro,  s2, "true",  s5).

move(sor_pilot_intro, s5, say).
text(sor_pilot_intro,  s5, "Ik ben een reken robot.").
next(sor_pilot_intro,  s5, "true",  s6).

move(sor_pilot_intro, s6, say).
text(sor_pilot_intro,  s6, "Of eigenlijk, dat probeer ik te zijn.").
next(sor_pilot_intro,  s6, "true",  s7).

move(sor_pilot_intro, s7, say).
text(sor_pilot_intro,  s7, "Ik ben aan het leren om kinderen te helpen met rekenen.").
next(sor_pilot_intro,  s7, "true",  s8).

move(sor_pilot_intro, s8, say).
text(sor_pilot_intro,  s8, "Maar nu ben ik diegene die wel wat hulp kan gebruiken.").
next(sor_pilot_intro,  s8, "true",  s9).

move(sor_pilot_intro, s9, say).
text(sor_pilot_intro,  s9, "Wat fijn dat jullie mij daar bij wilen helpen.").

% Tutorial
minidialog(sor_tutorial, [type=functional, function=tutorial]).
move(sor_tutorial, s1, say).
text(sor_tutorial,  s1, "Ik zal eerst uitleggen hoe je met mij kunt praten.").
next(sor_tutorial,  s1, "true",  s2).

move(sor_tutorial, s2, say).
text(sor_tutorial,  s2, "Ik kan je alleen verstaan, nadat ik een vraag heb gesteld. \pau=400\ ").
next(sor_tutorial,  s2, "true",  s3).

move(sor_tutorial, s3, say).
text(sor_tutorial,  s3, "Als je antwoord geeft doe dat dan luid en duidelijk.").
next(sor_tutorial,  s3, "true",  s4).

move(sor_tutorial, s4, say).
text(sor_tutorial,  s4, "En wees niet te snel, anders mis ik het misschien. \pau=500\ ").
next(sor_tutorial,  s4, "true",  s5).

move(sor_tutorial, s5, say).
text(sor_tutorial,  s5, "Laten we dat een keer oefenen.").
next(sor_tutorial,  s5, "true",  s6).

move(sor_tutorial, s6, question).
moveConfig(sor_tutorial, s6, [type=quiz, context='color', inputModality=[speech=2], options=['blauw'], correctAnswer=['blauw']]).
leds(sor_tutorial, s6, direct, ["FaceLeds"], ["blauw"]).
text(sor_tutorial, s6, "Welke kleuren hebben mijn ogen nu?").
next(sor_tutorial, s6, 'correct', s6cor).
next(sor_tutorial, s6, 'incorrect', s6incor).
next(sor_tutorial, s6, 'fail', s6f).

move(sor_tutorial, s6cor, say).
text(sor_tutorial,  s6cor, "Goed gezien en goed geantwoord.").
next(sor_tutorial,  s6cor, "true",  s7).

move(sor_tutorial, s6incor, say).
text(sor_tutorial,  s6incor, "Ik wou dat mijn ogen %sor_tutorial_s6% waren. Het belangrijkste is dat ik je goed kon verstaan.").
next(sor_tutorial,  s6incor, "true",  s7).

move(sor_tutorial, s6f, say).
text(sor_tutorial,  s6f, "Denk er aan niet te snel antwoord te geven. En lekker luid en duidelijk te praten.").
next(sor_tutorial,  s6f, "true",  s7).

move(sor_tutorial, s7, say).
text(sor_tutorial,  s7, "Soms versta ik het niet goed.").
leds(sor_tutorial,  s7, reset).
next(sor_tutorial,  s7, "true",  s8).

move(sor_tutorial, s8, say).
text(sor_tutorial,  s8, "Dan kun je mijn tè blèet gebruiken om een antwoord door te geven. \pau=500\ ").
next(sor_tutorial,  s8, "true",  s9).

move(sor_tutorial, s9, question).
moveConfig(sor_tutorial, s9, [type=input, inputModality=[tablet=1], maxAnswerTime=[tablet=0], form=numberField, umVariable=leeftijd]).
text(sor_tutorial, s9, "Zou je voor mij je leeftijd kunnen invullen op de tè blèet?").
display(sor_tutorial, s9, "Hou oud ben je?", always).
next(sor_tutorial, s9, 'success', s10).
next(sor_tutorial, s9, 'fail', s12).

move(sor_tutorial, s10, say).
text(sor_tutorial,  s10, "Wat een mooie leeftijd.").
display(sor_tutorial,  s10, '', always).
next(sor_tutorial,  s10, "true",  s11).

move(sor_tutorial, s11, say).
text(sor_tutorial,  s11, "Ik ben zelf 4 jaar oud, maar in mensen jaren is dat ook ongeveer %leeftijd%. \pau=500\ ").
next(sor_tutorial,  s11, "true",  s12).

move(sor_tutorial, s12, say).
text(sor_tutorial,  s12, "Het laatste ding om te weten is dat mijn twee grijze tenen knopjes zijn.").
display(sor_tutorial,  s12, '').
next(sor_tutorial,  s12, "true",  s13).

move(sor_tutorial, s13, say).
text(sor_tutorial,  s13, "Als je dadelijk aan het rekenen gaat wacht ik elke keer tot je klaar bent. \pau=400\ ").
next(sor_tutorial,  s13, "true",  s14).

move(sor_tutorial, s14, say).
text(sor_tutorial,  s14, "Je kunt mij laten weten dat je de som hebt uitgerekend, door op mijn teen te drukken onder het groene lampje. \pau=400\ ").
leds(sor_tutorial, s14, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(sor_tutorial,  s14, "true",  s15).

move(sor_tutorial, s15, say).
text(sor_tutorial,  s15, "Als je er niet uit komt dan kun je op mijn teen drukken onder het paarse lampje. \pau=400\ ").
next(sor_tutorial,  s15, "true",  s16).

move(sor_tutorial, s16, say).
moveConfig(sor_tutorial, s16, [eventListener=['groen'='RightBumperPressed', 'paars'='LeftBumperPressed']]).
text(sor_tutorial,  s16, "Laten we dat even oefenen. Druk maar op 1 van mijn tenen.").
next(sor_tutorial,  s16, "groen",  s17).
next(sor_tutorial,  s16, "paars",  s17).

move(sor_tutorial, s17, say).
text(sor_tutorial,  s17, "Goed gedaan.").
leds(sor_tutorial,  s17, reset).
next(sor_tutorial,  s17, "true",  s18).

move(sor_tutorial, s18, say).
text(sor_tutorial,  s18, "Volgens mij hebben we nu alles onder de knie.").
next(sor_tutorial,  s18, "true",  s19).

move(sor_tutorial, s19, question).
moveConfig(sor_tutorial, s19, [type=yesno, context='answer_yesno']).
text(sor_tutorial, s19, "Hebben jullie nog vragen?").
next(sor_tutorial, s19, 'answer_yes', s20y).
next(sor_tutorial, s19, 'answer_no', s21).
next(sor_tutorial, s19, 'answer_dontknow', s20y).
next(sor_tutorial, s19, 'fail', s20y).

move(sor_tutorial, s20y, say).
moveConfig(sor_tutorial, s20y, [eventListener=['true'='FrontTactilTouched']]).
text(sor_tutorial,  s20y, "Mike, kun je even helpen?").
next(sor_tutorial,  s20y, "true",  s21).

move(sor_tutorial, s21, say).
text(sor_tutorial,  s21, "Top, laten we voor het rekenen nog even kletsen.").
set_max_duration(sor_tutorial,  s21, 480000, 30000). % 8 minutes

% Kletspraat
minidialog(sor_kletsen_dier, [type=chitchat, theme=kletsen, topic=dier]).
move(sor_kletsen_dier, s1, say).
text(sor_kletsen_dier,  s1, "Zo weet ik dat veel kinderen dieren erg leuk vinden.").
next(sor_kletsen_dier,  s1, "true",  s2).

move(sor_kletsen_dier, s2, say).
text(sor_kletsen_dier,  s2, "Mijn lievelingsdier is een schaap.").
next(sor_kletsen_dier,  s2, "true",  s3).

move(sor_kletsen_dier, s3, say).
text(sor_kletsen_dier,  s3, "Ze zijn zo lekker zacht.").
next(sor_kletsen_dier,  s3, "true",  s5).

move(sor_kletsen_dier, s5, say).
text(sor_kletsen_dier,  s5, "Zo heb ik afgelopen weekend nog een lammetje geadopteerd.").
next(sor_kletsen_dier,  s5, "true",  s6).

move(sor_kletsen_dier, s6, say).
text(sor_kletsen_dier,  s6, "Die blijft gewoon bij zijn mama in de stal.").
next(sor_kletsen_dier,  s6, "true",  s7).

move(sor_kletsen_dier, s7, say).
text(sor_kletsen_dier,  s7, "Ik mag af en toe op bezoek.").
next(sor_kletsen_dier,  s7, "true",  s8).

move(sor_kletsen_dier, s8, question).
moveConfig(sor_kletsen_dier, s8, [type=input, context="animals", options=['hond', 'kat', 'koe', 'paard', 'schaap'], fast=yes, umVariable='lievelingsdier', topics=[success=['dier', '_answer']]]).
text(sor_kletsen_dier, s8, "Wat is jouw lievelingsdier?").
next(sor_kletsen_dier, s8, "success", s9).
next(sor_kletsen_dier, s8, "fail", s10).

move(sor_kletsen_dier, s9, say).
text(sor_kletsen_dier,  s9, "Een %lievelingsdier%, wat gaaf zeg!").
next(sor_kletsen_dier,  s9, "true",  s10).

move(sor_kletsen_dier, s10, question).
moveConfig(sor_kletsen_dier, s10, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_kletsen_dier, s10, "Wat vind jij daar zo leuk aan?").
next(sor_kletsen_dier, s10, "success", s11).
next(sor_kletsen_dier, s10, "fail", s11).

move(sor_kletsen_dier, s11, say).
text(sor_kletsen_dier, s11, "Nu snap ik het helemaal.").

minidialog(sor_kletsen_lievelingseten, [type=chitchat, theme=kletsen, topic=eten]).
move(sor_kletsen_lievelingseten, s1, say).
text(sor_kletsen_lievelingseten, s1, "En, weet je wat?").
next(sor_kletsen_lievelingseten, s1, "true", s2).

move(sor_kletsen_lievelingseten, s2, say).
text(sor_kletsen_lievelingseten, s2, "Ik heb namelijk nog iets bijzonders ontdekt!").
next(sor_kletsen_lievelingseten, s2, "true", s3).

move(sor_kletsen_lievelingseten, s3, say).
text(sor_kletsen_lievelingseten, s3, "Heel veel, eten, dat heel veel kinderen heel lekker vinden").
next(sor_kletsen_lievelingseten, s3, "true", s4).

move(sor_kletsen_lievelingseten, s4, say).
text(sor_kletsen_lievelingseten, s4, "begint met een P!").
next(sor_kletsen_lievelingseten, s4, "true", s5).

move(sor_kletsen_lievelingseten, s5, say).
text(sor_kletsen_lievelingseten, s5, "Zoals: pizza, pasta, pannenkoeken, poffertjes, en patat.").
next(sor_kletsen_lievelingseten, s5, "true", s6).

move(sor_kletsen_lievelingseten, s6, question).
moveConfig(sor_kletsen_lievelingseten, s6, [type=input, context="lievelingseten_met_p", options=['pizza', 'pasta', 'pannenkoeken', 'poffertjes', 'patat'], fast=yes, umVariable=lievelingseten_met_p, topics=[success=[eten, '_answer']]]).
text(sor_kletsen_lievelingseten, s6, "Welke P vind jij de allerlekkerste P?").
next(sor_kletsen_lievelingseten, s6, "pizza", s7pizza1).
next(sor_kletsen_lievelingseten, s6, "pasta", s7pasta1).
next(sor_kletsen_lievelingseten, s6, "pannenkoeken", s7pannenkoeken1).
next(sor_kletsen_lievelingseten, s6, "poffertjes", s7poffertjes1).
next(sor_kletsen_lievelingseten, s6, "patat", s7patat1).
next(sor_kletsen_lievelingseten, s6, "fail", s7fail_lievelingseten_met_p1).
next(sor_kletsen_lievelingseten, s6, "_others", s7fail_lievelingseten_met_p1).

move(sor_kletsen_lievelingseten, s7pizza1, say).
text(sor_kletsen_lievelingseten, s7pizza1, "Pizza! Pizza! Ooooh pizza!").
next(sor_kletsen_lievelingseten, s7pizza1, "true", s7pizza2).

move(sor_kletsen_lievelingseten, s7pizza2, question).
moveConfig(sor_kletsen_lievelingseten, s7pizza2, [type=yesno, context='answer_yesno', umVariable=pizza_sliert]).
text(sor_kletsen_lievelingseten, s7pizza2, "Heb je ook wel eens dat de kaas zo erg gesmolten is, dat er een hele sliert tussen je mond en je pizzapunt hangt als je een hap neemt?").
next(sor_kletsen_lievelingseten, s7pizza2, "answer_yes", s7wel_pizza_sliert1).
next(sor_kletsen_lievelingseten, s7pizza2, "answer_dontknow", s7wel_pizza_sliert1).
next(sor_kletsen_lievelingseten, s7pizza2, "fail", s7wel_pizza_sliert1).
next(sor_kletsen_lievelingseten, s7pizza2, "answer_no", s7wel_pizza_sliert1).

move(sor_kletsen_lievelingseten, s7wel_pizza_sliert1, say).
text(sor_kletsen_lievelingseten, s7wel_pizza_sliert1, "Sommige mensen vinden dat er vies uit zien, maar ik niet!").
next(sor_kletsen_lievelingseten, s7wel_pizza_sliert1, "true", s7wel_pizza_sliert2).

move(sor_kletsen_lievelingseten, s7wel_pizza_sliert2, say).
text(sor_kletsen_lievelingseten, s7wel_pizza_sliert2, "Zo'n sliert lijkt op het allerbeste snoer waar ik stroom door krijg.").
next(sor_kletsen_lievelingseten, s7wel_pizza_sliert2, "true", s7wel_pizza_sliert3).

move(sor_kletsen_lievelingseten, s7wel_pizza_sliert3, say).
text(sor_kletsen_lievelingseten, s7wel_pizza_sliert3, "En mamma mia!").
next(sor_kletsen_lievelingseten, s7wel_pizza_sliert3, "true", s7wel_pizza_sliert4).

move(sor_kletsen_lievelingseten, s7wel_pizza_sliert4, say).
text(sor_kletsen_lievelingseten, s7wel_pizza_sliert4, "Als zo'n sliert voor jou proeft zoals stroom voor mij.").
next(sor_kletsen_lievelingseten, s7wel_pizza_sliert4, "true", s7wel_pizza_sliert5).

move(sor_kletsen_lievelingseten, s7wel_pizza_sliert5, say).
text(sor_kletsen_lievelingseten, s7wel_pizza_sliert5, "dan kan zo'n sliert alleen maar bewijs voor een superpizza zijn!").
next(sor_kletsen_lievelingseten, s7wel_pizza_sliert5, "true", s8).

move(sor_kletsen_lievelingseten, s7pasta1, say).
text(sor_kletsen_lievelingseten, s7pasta1, "Fantastico!").
next(sor_kletsen_lievelingseten, s7pasta1, "true", s7pasta2).

move(sor_kletsen_lievelingseten, s7pasta2, say).
text(sor_kletsen_lievelingseten, s7pasta2, "Dat is Italiaans voor geweldig!").
next(sor_kletsen_lievelingseten, s7pasta2, "true", s7pasta3).

move(sor_kletsen_lievelingseten, s7pasta3, say).
text(sor_kletsen_lievelingseten, s7pasta3, "Dat heb ik geleerd van Italiaanse robots die pasta maken.").
next(sor_kletsen_lievelingseten, s7pasta3, "true", s7pasta4).

move(sor_kletsen_lievelingseten, s7pasta4, say).
text(sor_kletsen_lievelingseten, s7pasta4, "Robots kunnen natuurlijk geen pasta eten,").
next(sor_kletsen_lievelingseten, s7pasta4, "true", s7pasta5).

move(sor_kletsen_lievelingseten, s7pasta5, say).
text(sor_kletsen_lievelingseten, s7pasta5, "maar al die verschillende vormpjes vinden wij te gek!").
next(sor_kletsen_lievelingseten, s7pasta5, "true", s8).

move(sor_kletsen_lievelingseten, s7pannenkoeken1, say).
text(sor_kletsen_lievelingseten, s7pannenkoeken1, "Pannenkoeken lijken mij ook heel lekker!").
next(sor_kletsen_lievelingseten, s7pannenkoeken1, "true", s7pannenkoeken2).

move(sor_kletsen_lievelingseten, s7pannenkoeken2, say).
text(sor_kletsen_lievelingseten, s7pannenkoeken2, "Ik heb gezien dat jullie daar stroop op doen.").
next(sor_kletsen_lievelingseten, s7pannenkoeken2, "true", s7pannenkoeken3).

move(sor_kletsen_lievelingseten, s7pannenkoeken3, say).
text(sor_kletsen_lievelingseten, s7pannenkoeken3, "Dat lijkt wel een beetje op motorolie!").
next(sor_kletsen_lievelingseten, s7pannenkoeken3, "true", s7pannenkoeken4).

move(sor_kletsen_lievelingseten, s7pannenkoeken4, say).
text(sor_kletsen_lievelingseten, s7pannenkoeken4, "In de toekomst komen er vast pannenkoekenhuizen voor mensen en robots samen.").
next(sor_kletsen_lievelingseten, s7pannenkoeken4, "true", s7pannenkoeken5).

move(sor_kletsen_lievelingseten, s7pannenkoeken5, say).
text(sor_kletsen_lievelingseten, s7pannenkoeken5, "Daar hebben ze dan pannenkoeken met stroop voor jou").
next(sor_kletsen_lievelingseten, s7pannenkoeken5, "true", s7pannenkoeken6).

move(sor_kletsen_lievelingseten, s7pannenkoeken6, say).
text(sor_kletsen_lievelingseten, s7pannenkoeken6, "en harde schijven met motorolie voor mij!").
next(sor_kletsen_lievelingseten, s7pannenkoeken6, "true", s8).

move(sor_kletsen_lievelingseten, s7poffertjes1, say).
text(sor_kletsen_lievelingseten, s7poffertjes1, "Poffertjes vind ik er ook lekker uit zien!").
next(sor_kletsen_lievelingseten, s7poffertjes1, "true", s7poffertjes2).

move(sor_kletsen_lievelingseten, s7poffertjes2, say).
text(sor_kletsen_lievelingseten, s7poffertjes2, "En het woord klinkt ook heel lekker.").
next(sor_kletsen_lievelingseten, s7poffertjes2, "true", s7poffertjes3).

move(sor_kletsen_lievelingseten, s7poffertjes3, say).
text(sor_kletsen_lievelingseten, s7poffertjes3, "Pof pof poffertje!").
next(sor_kletsen_lievelingseten, s7poffertjes3, "true", s7poffertjes4).

move(sor_kletsen_lievelingseten, s7poffertjes4, say).
text(sor_kletsen_lievelingseten, s7poffertjes4, "En het rijmt op wat jij bent als je heel veel poffertjes krijgt").
next(sor_kletsen_lievelingseten, s7poffertjes4, "true", s7poffertjes5).

move(sor_kletsen_lievelingseten, s7poffertjes5, say).
text(sor_kletsen_lievelingseten, s7poffertjes5, "dan ben je een echt boffertje!").
next(sor_kletsen_lievelingseten, s7poffertjes5, "true", s8).

move(sor_kletsen_lievelingseten, s7patat1, say).
text(sor_kletsen_lievelingseten, s7patat1, "Als ik een mens was, zou ik dat ook de lekkerste P vinden!").
next(sor_kletsen_lievelingseten, s7patat1, "true", s7patat2).

move(sor_kletsen_lievelingseten, s7patat2, say).
text(sor_kletsen_lievelingseten, s7patat2, "Ik vind vooral de frituurpan leuk.").
next(sor_kletsen_lievelingseten, s7patat2, "true", s7patat3).

move(sor_kletsen_lievelingseten, s7patat3, say).
text(sor_kletsen_lievelingseten, s7patat3, "Die lijkt op het badje met olie waar ik soms even in wordt gelegd.").
next(sor_kletsen_lievelingseten, s7patat3, "true", s7patat4).

move(sor_kletsen_lievelingseten, s7patat4, say).
text(sor_kletsen_lievelingseten, s7patat4, "Dat helpt als ik een beetje vastgeroest ben.").
next(sor_kletsen_lievelingseten, s7patat4, "true", s7patat5).

move(sor_kletsen_lievelingseten, s7patat5, say).
text(sor_kletsen_lievelingseten, s7patat5, "Misschien mag ik de volgende keer wel in de frituurpan zwemmen!").
next(sor_kletsen_lievelingseten, s7patat5, "true", s7patat6).

move(sor_kletsen_lievelingseten, s7patat6, say).
text(sor_kletsen_lievelingseten, s7patat6, "Maar die moet dan wel uitstaan natuurlijk.").
next(sor_kletsen_lievelingseten, s7patat6, "true", s7patat7).

move(sor_kletsen_lievelingseten, s7patat7, say).
text(sor_kletsen_lievelingseten, s7patat7, "anders kom ik eruit als een Hero-kroket!").
next(sor_kletsen_lievelingseten, s7patat7, "true", s8).

move(sor_kletsen_lievelingseten, s8, question).
moveConfig(sor_kletsen_lievelingseten, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_kletsen_lievelingseten, s8, "Wat vind jij eigenlijk lekker aan %lievelingseten_met_p%?").
next(sor_kletsen_lievelingseten, s8, "success", s9).
next(sor_kletsen_lievelingseten, s8, "fail", s9).

move(sor_kletsen_lievelingseten, s9, say).
text(sor_kletsen_lievelingseten, s9, "Zo dat klinkt goed.").
next(sor_kletsen_lievelingseten, s9, "true", s10).

move(sor_kletsen_lievelingseten, s10, say).
text(sor_kletsen_lievelingseten, s10, "Ik hoop dat er snel een robot variant komt van %lievelingseten_met_p%.").

minidialog(sor_naar_rekenen, [type=functional, function=bridge]).
move(sor_naar_rekenen, s1, say).
text(sor_naar_rekenen,  s1, "Zo, laten we maar gaan rekenen voordat we onze tijd weg kletsen").

%%%%%%%%%%%%%%%
%%% REKENEN %%%
%%%%%%%%%%%%%%%

% Lievelingsdier
minidialog(sor_test_paard, [type=chitchat, theme=math, topic=paard]).
move(sor_test_paard, s1, continuator).
next(sor_test_paard, s1, [[umVariable=lievelingsdier, filter=green, values=["paard"]], [personalization=1]], s2perpaard).
next(sor_test_paard, s1, [[umVariable=lievelingsdier, filter=red, values=["paard"]], [personalization=1]], s2peranders).
next(sor_test_paard, s1, [[personalization=0]], s2noper).
next(sor_test_paard, s1, "true", s3).

move(sor_test_paard, s2perpaard, say).
text(sor_test_paard, s2perpaard, "Weetje wat toevallig is, ik mocht een tijdje jouw lievelingsdieren paarden verzorgen.").
next(sor_test_paard, s2perpaard, "true", s3).

move(sor_test_paard, s2peranders, say).
text(sor_test_paard, s2peranders, "Het is geen %lievelingsdier%, maar paarden zijn ook leuk. Ik mocht ze een tijdje verzorgen.").
next(sor_test_paard, s2peranders, "true", s3).

move(sor_test_paard, s2noper, say).
text(sor_test_paard, s2noper, "Ik heb een tijdje paarden verzorgd.").
next(sor_test_paard, s2noper, "true", s3).

move(sor_test_paard, s3, say).
text(sor_test_paard, s3, "Er waren %math_right% stallen. En in elke stal zaten %math_left% paarden.").
next(sor_test_paard, s3, "true", s4).

move(sor_test_paard, s4, say).
text(sor_test_paard, s4, "Hoeveel paarden moest ik in totaal verzorgen?").
insert_minidialog(sor_test_paard, s4, math_next).
insert_minidialog(sor_test_paard, s4, math_dialog).

minidialog(sor_test_koe, [type=chitchat, theme=math, topic=koe]).
move(sor_test_koe, s1, continuator).
next(sor_test_koe, s1, [[umVariable=lievelingsdier, filter=green, values=["koe"]], [personalization=1]], s2perpaard).
next(sor_test_koe, s1, [[umVariable=lievelingsdier, filter=red, values=["koe"]], [personalization=1]], s2peranders).
next(sor_test_koe, s1, [[personalization=0]], s2noper).
next(sor_test_koe, s1, "true", s3).

move(sor_test_koe, s2perpaard, say).
text(sor_test_koe, s2perpaard, "Weetje wat toevallig is, ik mocht een tijdje jouw lievelingsdieren koeien verzorgen.").
next(sor_test_koe, s2perpaard, "true", s3).

move(sor_test_koe, s2peranders, say).
text(sor_test_koe, s2peranders, "Het is geen %lievelingsdier%, maar koeien zijn ook leuk. Ik mocht ze een tijdje verzorgen.").
next(sor_test_koe, s2peranders, "true", s3).

move(sor_test_koe, s2noper, say).
text(sor_test_koe, s2noper, "Ik heb een tijdje koeien verzorgd.").
next(sor_test_koe, s2noper, "true", s3).

move(sor_test_koe, s3, say).
text(sor_test_koe, s3, "Er zijn %math_right% stallen. En in elke stal zitten %math_left% koeien.").
next(sor_test_koe, s3, "true", s4).

move(sor_test_koe, s4, say).
text(sor_test_koe, s4, "Hoeveel koeien zijn er in totaal?").
insert_minidialog(sor_test_koe, s4, math_next).
insert_minidialog(sor_test_koe, s4, math_dialog).

minidialog(sor_test_schaap, [type=chitchat, theme=math, topic=schaap]).
move(sor_test_schaap, s1, continuator).
next(sor_test_schaap, s1, [[umVariable=lievelingsdier, filter=green, values=["schaap"]], [personalization=1]], s2perpaard).
next(sor_test_schaap, s1, [[umVariable=lievelingsdier, filter=red, values=["schaap"]], [personalization=1]], s2peranders).
next(sor_test_schaap, s1, [[personalization=0]], s2noper).
next(sor_test_schaap, s1, "true", s3).

move(sor_test_schaap, s2perpaard, say).
text(sor_test_schaap, s2perpaard, "Weetje wat toevallig is, ik mocht een tijdje jouw lievelingsdieren koeien verzorgen.").
next(sor_test_schaap, s2perpaard, "true", s3).

move(sor_test_schaap, s2peranders, say).
text(sor_test_schaap, s2peranders, "Het is geen %lievelingsdier%, maar koeien zijn ook leuk. Ik mocht ze een tijdje verzorgen.").
next(sor_test_schaap, s2peranders, "true", s3).

move(sor_test_schaap, s2noper, say).
text(sor_test_schaap, s2noper, "Ik heb een tijdje koeien verzorgd.").
next(sor_test_schaap, s2noper, "true", s3).

move(sor_test_schaap, s3, say).
text(sor_test_schaap, s3, "Er zijn %math_left% stallen. En in elke stal zitten %math_right% schapen.").
next(sor_test_schaap, s3, "true", s4).

move(sor_test_schaap, s4, say).
text(sor_test_schaap, s4, "Hoeveel schapen zijn er in totaal?").
insert_minidialog(sor_test_schaap, s4, math_next).
insert_minidialog(sor_test_schaap, s4, math_dialog).

minidialog(sor_dieren_voer, [type=chitchat, theme=math, topic=dieren_voer]).
move(sor_dieren_voer, s1, say).
text(sor_dieren_voer,  s1, "Een %lievelingsdier% moet ook eten natuurlijk.").
next(sor_dieren_voer,  s1, "true",  s2).

move(sor_dieren_voer, s2, say).
text(sor_dieren_voer,  s2, "Daarvoor heeft mijn robot vriend heel wat zakken voer gekocht.").
next(sor_dieren_voer,  s2, "true",  s3).

move(sor_dieren_voer, s3, say).
text(sor_dieren_voer, s3, "Er zijn %math_left% zakken. En in elke zak zit %math_right% kilo voer.").
next(sor_dieren_voer, s3, "true", s4).

move(sor_dieren_voer, s4, say).
text(sor_dieren_voer, s4, "Hoeveel kilo voer is dat in totaal?").
insert_minidialog(sor_dieren_voer, s4, math_next).
insert_minidialog(sor_dieren_voer, s4, math_dialog).

% Eten: koken
minidialog(sor_eten_koken, [type=chitchat, theme=math, topic=eten]).
move(sor_eten_koken, s1, say).
text(sor_eten_koken,  s1, "Ik heb ook een tijdje gewerkt als robot kok in een restaurant.").
math_generate(sor_eten_koken, s1).
next(sor_eten_koken,  s1, "true",  s2).

move(sor_eten_koken, s2, say).
text(sor_eten_koken, s2, "En %lievelingseten_met_p% staat op het menu.").
next(sor_eten_koken, s2, "true", s3).

move(sor_eten_koken, s3, say).
text(sor_eten_koken, s3, "De robot chef heeft %math_left% gasten en maakt voor elke gast %math_right% %lievelingseten_met_p%.").
next(sor_eten_koken, s3, "true", s4).

move(sor_eten_koken, s4, say).
text(sor_eten_koken, s4, "Hoeveel %lievelingseten_met_p% maakt de robot chef in totaal?").
insert_minidialog(sor_eten_koken, s4, math_next).
insert_minidialog(sor_eten_koken, s4, math_dialog).

% Eten: afwassen
minidialog(sor_eten_afwassen, [type=chitchat, theme=math, topic=eten]).
dependencies(sor_eten_afwassen, [[[sor_eten_koken, user_model, 0]]]).

move(sor_eten_afwassen, s1, say).
text(sor_eten_afwassen,  s1, "Na al het koken komt de afwas.").
math_generate(sor_eten_afwassen, s1).
next(sor_eten_afwassen,  s1, "true",  s2).

move(sor_eten_afwassen, s2, say).
text(sor_eten_afwassen, s2, "Aan het einde van de avond zijn er %math_left% stapels vuile borden en elke stapel bestaat uit %math_right% borden.").
next(sor_eten_afwassen, s2, "true", s3).

move(sor_eten_afwassen, s3, say).
text(sor_eten_afwassen, s3, "Hoeveel borden moeten er afgewassen worden?").
insert_minidialog(sor_eten_afwassen, s3, math_next).
insert_minidialog(sor_eten_afwassen, s3, math_dialog).

% Afscheid
minidialog(sor_ses2_afscheid, [type=functional, function=goodbye]).
move(sor_ses2_afscheid, s1, say).
text(sor_ses2_afscheid,  s1, "Nou dat was het weer.").
next(sor_ses2_afscheid,  s1, "true",  s2).

move(sor_ses2_afscheid, s2, say).
text(sor_ses2_afscheid,  s2, "Ik vond het erg leuk en ik heb veel van jullie geleerd.").
next(sor_ses2_afscheid,  s2, "true",  s3).

move(sor_ses2_afscheid, s3, say).
text(sor_ses2_afscheid,  s3, "Heel erg bedankt voor je hulp.").
next(sor_ses2_afscheid,  s3, "true",  s4).

move(sor_ses2_afscheid, s4, question).
moveConfig(sor_ses2_afscheid, s4, [type=yesno, context='yesno']).
text(sor_ses2_afscheid, s4, "Vonden jullie het ook leuk?").
next(sor_ses2_afscheid, s4, 'answer_yes', s5y).
next(sor_ses2_afscheid, s4, 'answer_no', s5n).
next(sor_ses2_afscheid, s4, 'answer_dontknow', s5f).
next(sor_ses2_afscheid, s4, 'fail', s5f).

move(sor_ses2_afscheid, s5y, say).
text(sor_ses2_afscheid,  s5y, "Wat fijn om te horen!").
next(sor_ses2_afscheid,  s5y, "true",  s6).

move(sor_ses2_afscheid, s5n, say).
text(sor_ses2_afscheid,  s5n, "Jammer om te horen, ik zal mijn beste doen om het leuker te maken.").
next(sor_ses2_afscheid,  s5n, "true",  s6).

move(sor_ses2_afscheid, s5f, say).
text(sor_ses2_afscheid,  s5f, "Dank jullie wel.").
next(sor_ses2_afscheid,  s5f, "true",  s6).

move(sor_ses2_afscheid, s6, say).
text(sor_ses2_afscheid,  s6, "Doei doei.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Testing				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_test_intro, [type=functional, function=intro]).
move(sor_test_intro, s1, say).
text(sor_test_intro,  s1, "Laten we kennismaken").
next(sor_test_intro, s1, "true", s2).

move(sor_test_intro, s2, question).
moveConfig(sor_test_intro, s2, [type=input, context="animals", options=['hond', 'kat', 'koe', 'paard', 'schaap'], fast=yes, umVariable='lievelingsdier', topics=[success=['dier', '_answer']]]).
text(sor_test_intro, s2, "Wat is jouw lievelingsdier?").
next(sor_test_intro, s2, "success", s3).
next(sor_test_intro, s2, "fail", s3f).

move(sor_test_intro, s3, say).
text(sor_test_intro,  s3, "Wat leuk dat een %lievelingsdier% je lievelingsdier is.").
next(sor_test_intro, s3, "true", s4).

move(sor_test_intro, s3f, say).
text(sor_test_intro,  s3f, "Oke").
next(sor_test_intro, s3f, "true", s4).

move(sor_test_intro, s4, say).
text(sor_test_intro,  s4, "Laten we gaan rekenen").
set_max_duration(sor_test_intro,  s4, 480000, 30000). % 8 minutes