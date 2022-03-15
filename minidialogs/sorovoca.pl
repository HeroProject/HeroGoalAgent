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
display(sor_tutorial,  s10, '').
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
text(sor_tutorial,  s21, "Top, laten we gaan rekenen.").

% Kletspraat


% Rekenen 8 min

% Afronding

%% Sessie 2
% Vragen

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Testing				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(sor_test_full, s1, say).
text(sor_test_full, s1, "Een robotvriend van mij is stalhulp.").
next(sor_test_full, s1, "true", s2).

move(sor_test_full, s2, say).
text(sor_test_full, s2, "Hij moet de paarden tellen.").
math_generate(sor_test_full, s2).
next(sor_test_full, s2, "true", s3).

move(sor_test_full, s3, say).
text(sor_test_full, s3, "Er zijn %math_left% stallen. En in elke stal zitten %math_right% paarden.").
next(sor_test_full, s3, "true", s4).

move(sor_test_full, s4, say).
text(sor_test_full, s4, "Hoeveel paarden zijn er in totaal?").
next(sor_test_full, s4, "true", s5).

move(sor_test_full, s5, say).
text(sor_test_full, s5, "We moeten dus uitrekenen hoeveel %math_left% keer %math_right% is.").
display(sor_test_full, s5, "%math_left% x %math_right%", always).
next(sor_test_full, s5, "true", s6).

move(sor_test_full, s6, say).
text(sor_test_full, s6, "Druk op mijn teen als je het antwoord weet.").
moveConfig(sor_test_full, s6, [eventListener=['true'='RightBumperPressed', 'fail'='LeftBumperPressed'], goTimer=120000]).
display(sor_test_full, s6, "%math_left% x %math_right%", always).
leds(sor_test_full, s6, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(sor_test_full, s6, "true", s7).
next(sor_test_full, s6, "fail", s8f).
next(sor_test_full, s6, "timer", s8f).

move(sor_test_full, s7, question).
moveConfig(sor_test_full, s7, [type=quiz, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField]).
text(sor_test_full, s7, "Wat is %math_left% keer %math_right%?").
display(sor_test_full, s7, "%math_left% x %math_right%", always).
leds(sor_test_full, s7, reset).
next(sor_test_full, s7, 'correct', s8cor).
next(sor_test_full, s7, 'incorrect', s8incor).
next(sor_test_full, s7, 'fail', s8f).

move(sor_test_full, s8cor, say).
text(sor_test_full, s8cor, "Ja klopt!").

move(sor_test_full, s8incor, say).
text(sor_test_full, s8incor, "Helaas. Het moest %math_answer% zijn.").

move(sor_test_full, s8f, say).
text(sor_test_full, s8f, "Zal ik het maar verklappen? Het is %math_answer%.").
leds(sor_test_full, s8f, reset).