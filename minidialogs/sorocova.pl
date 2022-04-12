%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SOROCOVA Iteration 1	           %%%
%%%  		Mini-dialogs for math tutoring robot       %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Pilot				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Sessie 1
% Introductie
move(sor_intro, s1, say).
text(sor_intro,  s1, "Hallo ik ben Hero").
next(sor_intro,  s1, "true",  s2).

move(sor_intro, s2, say).
text(sor_intro,  s2, "Wat fijn dat jij er bent.").
next(sor_intro,  s2, "true",  s3).

move(sor_intro, s3, say).
moveConfig(sor_intro, s3, [waitTimer=4000]).
text(sor_intro,  s3, "Hoe heet jij?").
next(sor_intro,  s3, "true",  s4).

move(sor_intro, s4, say).
text(sor_intro,  s4, "Wat leuk om je te ontmoeten, %first_name%. \pau=400\ ").
next(sor_intro,  s4, "true",  s5).

move(sor_intro, s5, say).
text(sor_intro,  s5, "Ik ben een reken robot.").
next(sor_intro,  s5, "true",  s6).

move(sor_intro, s6, say).
text(sor_intro,  s6, "Of eigenlijk, dat probeer ik te zijn.").
next(sor_intro,  s6, "true",  s7).

move(sor_intro, s7, say).
text(sor_intro,  s7, "Ik ben aan het leren om kinderen te helpen met rekenen.").
next(sor_intro,  s7, "true",  s8).

move(sor_intro, s8, say).
text(sor_intro,  s8, "Maar nu ben ik diegene die wel wat hulp kan gebruiken.").
next(sor_intro,  s8, "true",  s9).

move(sor_intro, s9, say).
text(sor_intro,  s9, "Wat fijn dat jij mij daar bij wilt helpen.").

% Tutorial
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
text(sor_tutorial, s19, "Heb je nog vragen?").
next(sor_tutorial, s19, 'answer_yes', s20y).
next(sor_tutorial, s19, 'answer_no', s21).
next(sor_tutorial, s19, 'answer_dontknow', s20y).
next(sor_tutorial, s19, 'fail', s20y).

move(sor_tutorial, s20y, say).
moveConfig(sor_tutorial, s20y, [eventListener=['true'='FrontTactilTouched']]).
text(sor_tutorial,  s20y, "Kunnen jullie %first_name% even helpen?").
next(sor_tutorial,  s20y, "true",  s21).

move(sor_tutorial, s21, say).
text(sor_tutorial,  s21, "Top, laten we voor het rekenen nog even kletsen.").

% Kletspraat
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
moveConfig(sor_kletsen_dier, s8, [type=input, context="animals", options=['hond', 'kat', 'dolfijn', 'leeuw', 'vogel'], fast=yes, umVariable='lievelingsdier']).
text(sor_kletsen_dier, s8, "Wat is jouw lievelingsdier?").
next(sor_kletsen_dier, s8, "success", s9).
next(sor_kletsen_dier, s8, "fail", s10).

move(sor_kletsen_dier, s9, say).
text(sor_kletsen_dier,  s9, "%lievelingsdier%, wat gaaf zeg!").
next(sor_kletsen_dier,  s9, "true",  s10).

move(sor_kletsen_dier, s10, question).
moveConfig(sor_kletsen_dier, s10, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_kletsen_dier, s10, "Wat vind jij daar zo leuk aan?").
next(sor_kletsen_dier, s10, "success", s11).
next(sor_kletsen_dier, s10, "fail", s11).

move(sor_kletsen_dier, s11, say).
text(sor_kletsen_dier, s11, "Nu snap ik het helemaal.").

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
moveConfig(sor_kletsen_lievelingseten, s6, [type=input, context="lievelingseten_met_p", options=['pizza', 'pasta', 'pannenkoeken', 'poffertjes', 'patat'], fast=yes, umVariable=lievelingseten_met_p]).
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

% Rekenen 8 min
move(sor_rekenen_1, s1, say).
text(sor_rekenen_1,  s1, "Zo, laten we maar gaan rekenen voordat we onze tijd weg kletsen").
next(sor_rekenen_1,  s1, "true",  s2).

move(sor_rekenen_1, s2, say).
text(sor_rekenen_1,  s2, "Weet je wat toevallig is?").
next(sor_rekenen_1,  s2, "true",  s3).

move(sor_rekenen_1, s3, say).
text(sor_rekenen_1,  s3, "Een robot vriendje zorgt namelijk voor jouw lievelingsdier, %lievelingsdier%").
next(sor_rekenen_1,  s3, "true",  s4).

move(sor_rekenen_1, s4, say).
text(sor_rekenen_1,  s4, "Niet 1, maar heel veel.").
math_generate(sor_rekenen_1, s4).
next(sor_rekenen_1,  s4, "true",  s5).

move(sor_rekenen_1, s5, say).
text(sor_rekenen_1, s5, "Er zijn %math_left% verblijven. En in elk verblijf zit %math_right% keer een %lievelingsdier%.").
next(sor_rekenen_1, s5, "true", s6).

move(sor_rekenen_1, s6, say).
text(sor_rekenen_1, s6, "Hoeveel zijn er in totaal?").
next(sor_rekenen_1, s6, "true", s7).

move(sor_rekenen_1, s7, say).
text(sor_rekenen_1, s7, "We moeten dus uitrekenen hoeveel %math_left% keer %math_right% is.").
display(sor_rekenen_1, s7, "%math_left% x %math_right%", always).
next(sor_rekenen_1, s7, "true", s8).

move(sor_rekenen_1, s8, say).
text(sor_rekenen_1, s8, "Druk op mijn groene teen als je het antwoord weet.").
moveConfig(sor_rekenen_1, s8, [eventListener=['true'='RightBumperPressed', 'help'='LeftBumperPressed'], goTimer=120000]).
display(sor_rekenen_1, s8, "%math_left% x %math_right%", always).
leds(sor_rekenen_1, s8, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(sor_rekenen_1, s8, "true", s9).
next(sor_rekenen_1, s8, "help", s10f).
next(sor_rekenen_1, s8, "timer", s10f).

move(sor_rekenen_1, s9, question).
moveConfig(sor_rekenen_1, s9, [type=math, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField]).
text(sor_rekenen_1, s9, "Wat is %math_left% keer %math_right%?").
display(sor_rekenen_1, s9, "%math_left% x %math_right%", always).
leds(sor_rekenen_1, s9, reset).
next(sor_rekenen_1, s9, 'correct', s10cor).
next(sor_rekenen_1, s9, 'incorrect', s10incor).
next(sor_rekenen_1, s9, 'fail', s10f).

move(sor_rekenen_1, s10cor, say).
text(sor_rekenen_1, s10cor, "Helemaal goed, top gedaan.").
display(sor_rekenen_1,  s10cor, '', always).

move(sor_rekenen_1, s10incor, say).
text(sor_rekenen_1, s10incor, "We zijn er nog niet helemaal. Weet je wat? We gaan eerst verder met een andere som.").
display(sor_rekenen_1,  s10incor, '', always).


move(sor_rekenen_1, s10f, say).
text(sor_rekenen_1, s10f, "Oh ik weet het al! Het is %math_answer%.").
display(sor_rekenen_1,  s10f, '', always).
leds(sor_rekenen_1, s10f, reset).

% Rekenen 2
move(sor_rekenen_2, s1, say).
text(sor_rekenen_2,  s1, "Een %lievelingsdier% moet ook eten natuurlijk.").
next(sor_rekenen_2,  s1, "true",  s2).

move(sor_rekenen_2, s2, say).
text(sor_rekenen_2,  s2, "Daarvoor heeft mijn robot vriend heel wat zakken voer gekocht.").
math_generate(sor_rekenen_2, s2).
next(sor_rekenen_2,  s2, "true",  s5).

move(sor_rekenen_2, s5, say).
text(sor_rekenen_2, s5, "Er zijn %math_left% zakken. En in elke zak zit %math_right% kilo voer.").
next(sor_rekenen_2, s5, "true", s6).

move(sor_rekenen_2, s6, say).
text(sor_rekenen_2, s6, "Hoeveel kilo voer is dat in totaal?").
next(sor_rekenen_2, s6, "true", s7).

move(sor_rekenen_2, s7, say).
text(sor_rekenen_2, s7, "We moeten dus uitrekenen hoeveel %math_left% keer %math_right% is.").
display(sor_rekenen_2, s7, "%math_left% x %math_right%", always).
next(sor_rekenen_2, s7, "true", s8).

move(sor_rekenen_2, s8, say).
text(sor_rekenen_2, s8, "Druk op mijn teen als je het antwoord weet.").
moveConfig(sor_rekenen_2, s8, [eventListener=['true'='RightBumperPressed', 'help'='LeftBumperPressed'], goTimer=120000]).
display(sor_rekenen_2, s8, "%math_left% x %math_right%", always).
leds(sor_rekenen_2, s8, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(sor_rekenen_2, s8, "true", s9).
next(sor_rekenen_2, s8, "help", s10f).
next(sor_rekenen_2, s8, "timer", s10f).

move(sor_rekenen_2, s9, question).
moveConfig(sor_rekenen_2, s9, [type=quiz, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField]).
text(sor_rekenen_2, s9, "Wat is %math_left% keer %math_right%?").
display(sor_rekenen_2, s9, "%math_left% x %math_right%", always).
leds(sor_rekenen_2, s9, reset).
next(sor_rekenen_2, s9, 'correct', s10cor).
next(sor_rekenen_2, s9, 'incorrect', s10incor).
next(sor_rekenen_2, s9, 'fail', s10f).

move(sor_rekenen_2, s10cor, say).
text(sor_rekenen_2, s10cor, "Ja dat klopt helemaal!").
display(sor_rekenen_2,  s10cor, '', always).

move(sor_rekenen_2, s10incor, say).
text(sor_rekenen_2, s10incor, "We zijn er nog niet helemaal. Weet je wat? We gaan eerst verder met een andere som.").
display(sor_rekenen_2,  s10incor, '', always).

move(sor_rekenen_2, s10f, say).
text(sor_rekenen_2, s10f, "Oh ik weet het al! Het is %math_answer%.").
display(sor_rekenen_2,  s10f, '', always).
leds(sor_rekenen_2, s10f, reset).

% Rekenen 3
move(sor_rekenen_3, s1, say).
text(sor_rekenen_3,  s1, "Over kilo's gesproken.").
next(sor_rekenen_3,  s1, "true",  s2).

move(sor_rekenen_3, s2, say).
text(sor_rekenen_3,  s2, "Een andere robot vriend van mij is chef kok in een robot restaurant.").
math_generate(sor_rekenen_3, s2).
next(sor_rekenen_3,  s2, "true",  s3).

move(sor_rekenen_3, s3, say).
text(sor_rekenen_3, s3, "En %lievelingseten_met_p% staat op het menu.").
next(sor_rekenen_3, s3, "true", s5).

move(sor_rekenen_3, s5, say).
text(sor_rekenen_3, s5, "De robot chef heeft %math_left% gasten en maakt voor elke gast %math_right% %lievelingseten_met_p%.").
next(sor_rekenen_3, s5, "true", s6).

move(sor_rekenen_3, s6, say).
text(sor_rekenen_3, s6, "Hoeveel %lievelingseten_met_p% maakt de robot chef in totaal?").
next(sor_rekenen_3, s6, "true", s7).

move(sor_rekenen_3, s7, say).
text(sor_rekenen_3, s7, "We moeten dus uitrekenen hoeveel %math_left% keer %math_right% is.").
display(sor_rekenen_3, s7, "%math_left% x %math_right%", always).
next(sor_rekenen_3, s7, "true", s8).

move(sor_rekenen_3, s8, say).
text(sor_rekenen_3, s8, "Druk op mijn teen als je het antwoord weet.").
moveConfig(sor_rekenen_3, s8, [eventListener=['true'='RightBumperPressed', 'help'='LeftBumperPressed'], goTimer=120000]).
display(sor_rekenen_3, s8, "%math_left% x %math_right%", always).
leds(sor_rekenen_3, s8, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(sor_rekenen_3, s8, "true", s9).
next(sor_rekenen_3, s8, "help", s10f).
next(sor_rekenen_3, s8, "timer", s10f).

move(sor_rekenen_3, s9, question).
moveConfig(sor_rekenen_3, s9, [type=quiz, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField]).
text(sor_rekenen_3, s9, "Wat is %math_left% keer %math_right%?").
display(sor_rekenen_3, s9, "%math_left% x %math_right%", always).
leds(sor_rekenen_3, s9, reset).
next(sor_rekenen_3, s9, 'correct', s10cor).
next(sor_rekenen_3, s9, 'incorrect', s10incor).
next(sor_rekenen_3, s9, 'fail', s10f).

move(sor_rekenen_3, s10cor, say).
text(sor_rekenen_3, s10cor, "Ja! Inderdaad %math_answer% %lievelingseten_met_p%").
display(sor_rekenen_3,  s10cor, '', always).

move(sor_rekenen_3, s10incor, say).
text(sor_rekenen_3, s10incor, "We zijn er nog niet helemaal. Weet je wat? We gaan eerst verder met een andere som.").
display(sor_rekenen_3,  s10incor, '', always).

move(sor_rekenen_3, s10f, say).
text(sor_rekenen_3, s10f, "Oh ik weet het al! Het is %math_answer%.").
display(sor_rekenen_3,  s10f, '', always).
leds(sor_rekenen_3, s10f, reset).

% Rekenen 4
move(sor_rekenen_4, s1, say).
text(sor_rekenen_4,  s1, "Na al het koken komt de afwas.").
math_generate(sor_rekenen_4, s1).
next(sor_rekenen_4,  s1, "true",  s5).

move(sor_rekenen_4, s5, say).
text(sor_rekenen_4, s5, "Aan het einde van de avond zijn er %math_left% stapels vuile borden en elke stapel bestaat uit %math_right% borden.").
next(sor_rekenen_4, s5, "true", s6).

move(sor_rekenen_4, s6, say).
text(sor_rekenen_4, s6, "Hoeveel borden moeten er afgewassen worden?").
next(sor_rekenen_4, s6, "true", s7).

move(sor_rekenen_4, s7, say).
text(sor_rekenen_4, s7, "We moeten dus uitrekenen hoeveel %math_left% keer %math_right% is.").
display(sor_rekenen_4, s7, "%math_left% x %math_right%", always).
next(sor_rekenen_4, s7, "true", s8).

move(sor_rekenen_4, s8, say).
text(sor_rekenen_4, s8, "Druk op mijn teen als je het antwoord weet.").
moveConfig(sor_rekenen_4, s8, [eventListener=['true'='RightBumperPressed', 'help'='LeftBumperPressed'], goTimer=120000]).
display(sor_rekenen_4, s8, "%math_left% x %math_right%", always).
leds(sor_rekenen_4, s8, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(sor_rekenen_4, s8, "true", s9).
next(sor_rekenen_4, s8, "help", s10f).
next(sor_rekenen_4, s8, "timer", s10f).

move(sor_rekenen_4, s9, question).
moveConfig(sor_rekenen_4, s9, [type=quiz, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField]).
text(sor_rekenen_4, s9, "Wat is %math_left% keer %math_right%?").
display(sor_rekenen_4, s9, "%math_left% x %math_right%", always).
leds(sor_rekenen_4, s9, reset).
next(sor_rekenen_4, s9, 'correct', s10cor).
next(sor_rekenen_4, s9, 'incorrect', s10incor).
next(sor_rekenen_4, s9, 'fail', s10f).

move(sor_rekenen_4, s10cor, say).
text(sor_rekenen_4, s10cor, "Ja dat klopt helemaal!").
display(sor_rekenen_4,  s10cor, '', always).

move(sor_rekenen_4, s10incor, say).
text(sor_rekenen_4, s10incor, "We zijn er nog niet helemaal.").
display(sor_rekenen_4,  s10incor, '', always).

move(sor_rekenen_4, s10f, say).
text(sor_rekenen_4, s10f, "Oh ik weet het al! Het is %math_answer%.").
display(sor_rekenen_4,  s10f, '', always).
leds(sor_rekenen_4, s10f, reset).

% Afronding
move(sor_afronding, s1, say).
text(sor_afronding,  s1, "Zo, dat was het.").
next(sor_afronding,  s1, "true",  s2).

move(sor_afronding, s2, say).
text(sor_afronding,  s2, "Ik heb weer flink kunnen oefenen.").
next(sor_afronding,  s2, "true",  s3).

move(sor_afronding, s3, say).
text(sor_afronding,  s3, "Bedankt, %first_name%.").
next(sor_afronding,  s3, "true",  s4).

move(sor_afronding, s4, say).
text(sor_afronding,  s4, "De studenten hebben geloof ik wat vragen voor je.").
next(sor_afronding,  s4, "true",  s5).

move(sor_afronding, s5, say).
text(sor_afronding,  s5, "Maar als het goed is zie ik je straks weer.").
next(sor_afronding,  s5, "true",  s6).

move(sor_afronding, s6, say).
text(sor_afronding,  s6, "Dus tot straks!").

%% Sessie 2
% Intro
move(sor_ses2_intro, s1, say).
text(sor_ses2_intro,  s1, "Hoi %first_name%, daar ben je weer.").
next(sor_ses2_intro,  s1, "true",  s2).

move(sor_ses2_intro, s2, say).
text(sor_ses2_intro,  s2, "Ik had nog een paar vraagjes voor je.").
next(sor_ses2_intro,  s2, "true",  s3).

move(sor_ses2_intro, s3, say).
text(sor_ses2_intro,  s3, "Gewoon om te oefenen of ik je goed kan verstaan.").
next(sor_ses2_intro,  s3, "true",  s4).

move(sor_ses2_intro, s4, say).
text(sor_ses2_intro,  s4, "Hier komt de eerste.").

% Vragen
move(sor_test_artiesten, s1, question).
moveConfig(sor_test_artiesten, s1, [type=yesno, context='yesno']).
text(sor_test_artiesten, s1, "Luister je graag naar muziek?").
next(sor_test_artiesten, s1, 'answer_yes', s2y).
next(sor_test_artiesten, s1, 'answer_no', s2n).
next(sor_test_artiesten, s1, 'answer_dontknow', s2f).
next(sor_test_artiesten, s1, 'fail', s2f).

move(sor_test_artiesten, s2n, say).
text(sor_test_artiesten, s2n, "Ja ik ook niet, daar ben ik op het moment te druk voor.").

move(sor_test_artiesten, s2f, say).
text(sor_test_artiesten, s2f, "Oke.").

move(sor_test_artiesten, s2y, question).
moveConfig(sor_test_artiesten, s2y, [type=input, context="artiesten", options=['Nielson', 'Femke Meines', 'Nick en Simon', 'Mannes Bakker'], fast=yes, umVariable='artiesten_kind']).
text(sor_test_artiesten, s2y, "Wie is jouw favoriete ar tiest?").
display(sor_test_artiesten, s2y, "Wie is jouw favoriete artiest?").
next(sor_test_artiesten, s2y, "success", s3).
next(sor_test_artiesten, s2y, "fail", s3f).

move(sor_test_artiesten, s3, say).
text(sor_test_artiesten, s3, "Ik luister ook graag naar %artiesten_kind%").

move(sor_test_artiesten, s3f, say).
text(sor_test_artiesten, s3f, "Leuk, ik luister ook graag naar muziek.").

% Buitenspelen
move(sor_test_buitenspelen, s1, question).
moveConfig(sor_test_buitenspelen, s1, [type=yesno, context='yesno']).
text(sor_test_buitenspelen, s1, "En, speel je wel eens buiten?").
next(sor_test_buitenspelen, s1, 'answer_yes', s2y).
next(sor_test_buitenspelen, s1, 'answer_no', s2n).
next(sor_test_buitenspelen, s1, 'answer_dontknow', s2f).
next(sor_test_buitenspelen, s1, 'fail', s2f).

move(sor_test_buitenspelen, s2n, say).
text(sor_test_buitenspelen, s2n, "Nee, ik ook niet. Ik mag jammer genoeg niet buiten spelen, want dan ga ik misschien stuk.").

move(sor_test_buitenspelen, s2f, say).
text(sor_test_buitenspelen, s2f, "Oke").

move(sor_test_buitenspelen, s2y, say).
text(sor_test_buitenspelen,  s2y, "Ik hoor dat kinderen graag voetballen, tikkertje spelen en dat soort dingen.").
next(sor_test_buitenspelen,  s2y, "true",  s3).

move(sor_test_buitenspelen, s3, question).
moveConfig(sor_test_buitenspelen, s3, [type=input, context="buitenspellen", options=['tikkertje', 'verstoppertje', 'voetballen'], fast=yes, umVariable='buitenspel_kind']).
text(sor_test_buitenspelen, s3, "Wat speel jij graag met je vrienden buiten?").
next(sor_test_buitenspelen, s3, "success", s4).
next(sor_test_buitenspelen, s3, "fail", s4f).

move(sor_test_buitenspelen, s4, say).
text(sor_test_buitenspelen, s4, "Ik mag nog niet naar buiten. Maar als ik mag dan wil ik ook graag %buitenspel_kind% doen").

move(sor_test_buitenspelen, s4f, say).
text(sor_test_buitenspelen, s4f, "Leuk, ik mag nog niet buitenspelen.").

%Pokemon
move(sor_test_pokemon, s1, question).
moveConfig(sor_test_pokemon, s1, [type=yesno, context='yesno']).
text(sor_test_pokemon, s1, "En, Kijk of speel je wel eens pokemon?").
next(sor_test_pokemon, s1, 'answer_yes', s2y).
next(sor_test_pokemon, s1, 'answer_no', s2n).
next(sor_test_pokemon, s1, 'answer_dontknow', s2f).
next(sor_test_pokemon, s1, 'fail', s2f).

move(sor_test_pokemon, s2n, say).
text(sor_test_pokemon, s2n, "Ik ook niet. Ik ben nu vooral aan het rekenen.").

move(sor_test_pokemon, s2f, say).
text(sor_test_pokemon, s2f, "Oke").

move(sor_test_pokemon, s2y, question).
moveConfig(sor_test_pokemon, s2y, [type=input, context="pokemon", options=['charmander', 'pikachu', 'squirtle'], fast=yes, umVariable='pokemon_kind']).
text(sor_test_pokemon, s2y, "Welke pokemon vind jij het leukst?").
next(sor_test_pokemon, s2y, "success", s3).
next(sor_test_pokemon, s2y, "fail", s3f).

move(sor_test_pokemon, s3, say).
text(sor_test_pokemon, s3, "Ik vind %pokemon_kind% ook de leukste pokemon!").

move(sor_test_pokemon, s3f, say).
text(sor_test_pokemon, s3f, "Leuk, dat vind ik ook.").

% Afscheid
move(sor_ses2_afscheid, s1, say).
text(sor_ses2_afscheid,  s1, "Nou %first_name%, dat was het weer.").
next(sor_ses2_afscheid,  s1, "true",  s2).

move(sor_ses2_afscheid, s2, say).
text(sor_ses2_afscheid,  s2, "Ik vond het erg leuk en ik heb veel van je geleerd.").
next(sor_ses2_afscheid,  s2, "true",  s3).

move(sor_ses2_afscheid, s3, say).
text(sor_ses2_afscheid,  s3, "Heel erg bedankt voor je hulp.").
next(sor_ses2_afscheid,  s3, "true",  s4).

move(sor_ses2_afscheid, s4, question).
moveConfig(sor_ses2_afscheid, s4, [type=yesno, context='yesno']).
text(sor_ses2_afscheid, s4, "Vond jij het ook leuk?").
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
text(sor_ses2_afscheid,  s5f, "Dankjewel").
next(sor_ses2_afscheid,  s5f, "true",  s6).

move(sor_ses2_afscheid, s6, say).
text(sor_ses2_afscheid,  s6, "Doei doei.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Testing				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(sor_test_full, s1, say).
text(sor_test_full, s1, "Er zijn %math_left% stallen. En in elke stal zitten %math_right% paarden.").
next(sor_test_full, s1, "true", s2).

move(sor_test_full, s2, say).
text(sor_test_full, s2, "Hoeveel paarden zijn er in totaal?").
insert_minidialog(sor_test_full, s2, math_dialog).
