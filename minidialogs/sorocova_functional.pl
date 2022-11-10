%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SOROCOVA Iteration 1	           %%%
%%%  	   Greeting Minidialogs for math tutoring robot    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Session 1				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Intro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_begroeting_1, [type=functional, function=greeting]).
move(sor_begroeting_1, s1, say).
text(sor_begroeting_1,  s1, "Hallo ik ben %robot_name%").
next(sor_begroeting_1,  s1, "true",  s2).

move(sor_begroeting_1, s2, say).
text(sor_begroeting_1,  s2, "En ik ben een reken robot.").
next(sor_begroeting_1,  s2, "true",  s3).

move(sor_begroeting_1, s3, say).
text(sor_begroeting_1,  s3, "Of eigenlijk, dat probeer ik te zijn.").
next(sor_begroeting_1,  s3, "true",  s4).

move(sor_begroeting_1, s4, say).
moveConfig(sor_begroeting_1, s4, [waitTimer=4000]).
text(sor_begroeting_1, s4, "Hoe heet jij?").
next(sor_begroeting_1, s4, "true", s5).

move(sor_begroeting_1, s5, say).
text(sor_begroeting_1,  s5, "Wat leuk om je te ontmoeten, %first_name%.").
next(sor_begroeting_1,  s5, "true",  s6).

move(sor_begroeting_1, s6, say).
text(sor_begroeting_1,  s6, "Ik ben aan het leren om kinderen te helpen met rekenen.").
next(sor_begroeting_1,  s6, "true",  s7).

move(sor_begroeting_1, s7, say).
text(sor_begroeting_1,  s7, "Maar nu ben ik diegene die wel wat hulp kan gebruiken.").
next(sor_begroeting_1,  s7, "true",  s8).

move(sor_begroeting_1, s8, say).
text(sor_begroeting_1,  s8, "Wat fijn dat je mij daar bij wilt helpen.").
next(sor_begroeting_1,  s8, "true",  s9).

move(sor_begroeting_1, s9, say).
text(sor_begroeting_1,  s9, "Reken robot zijn is niet het eerste wat ik heb geprobeerd.").
next(sor_begroeting_1,  s9, "true",  s10).

move(sor_begroeting_1, s10, say).
text(sor_begroeting_1,  s10, "Ik heb ook een tijdje in het ziekenhuis gewerkt, en in de keuken, en met dieren.").
next(sor_begroeting_1,  s10, "true",  s11).

move(sor_begroeting_1, s11, say).
text(sor_begroeting_1,  s11, "Noem maar op.").
next(sor_begroeting_1,  s11, "true",  s12).

move(sor_begroeting_1, s12, say).
text(sor_begroeting_1,  s12, "Zo ben ik aan het ontdekken wat ik later wil worden.").
next(sor_begroeting_1,  s12, "true",  s13).

move(sor_begroeting_1, s13, say).
text(sor_begroeting_1,  s13, "Op al die plekken heb ik ook veel robot vrienden gemaakt.").
next(sor_begroeting_1,  s13, "true",  s14).

move(sor_begroeting_1, s14, say).
text(sor_begroeting_1,  s14, "Daar vertel ik straks vast meer over.").

% Tutorial
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
text(sor_tutorial, s6, "Welke kleuren zijn mijn ogen nu?").
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
text(sor_tutorial,  s12, "Nog een laatste ding. Zie je die twee donker grijze balkjes aan de voorkant van mijn voeten? Dat zijn mijn tenen.").
display(sor_tutorial,  s12, '', always).
next(sor_tutorial,  s12, "true",  s13).

move(sor_tutorial, s13, say).
text(sor_tutorial,  s13, "En mijn grijze tenen zijn knopjes.").
next(sor_tutorial,  s13, "true",  s14).

move(sor_tutorial, s14, say).
moveConfig(sor_tutorial, s14, [eventListener=['links'='RightBumperPressed', 'rechts'='LeftBumperPressed']]).
text(sor_tutorial,  s14, "Toemaar, druk er maar eentje in.").
next(sor_tutorial,  s14, "links",  s15).
next(sor_tutorial,  s14, "rechts",  s15).

move(sor_tutorial, s15, say).
text(sor_tutorial,  s15, "Goed gedaan.").
next(sor_tutorial,  s15, "true",  s16).

move(sor_tutorial, s16, say).
text(sor_tutorial,  s16, "En boven elke teen zit een lampje.").
next(sor_tutorial,  s16, "true",  s17).

move(sor_tutorial, s17, say).
text(sor_tutorial,  s17, "Aan deze kant wordt het lampje soms groen. ").
leds(sor_tutorial, s17, direct, ["RightFootLeds"], ["groen"]).
next(sor_tutorial,  s17, "true",  s18).

move(sor_tutorial, s18, say).
text(sor_tutorial,  s18, "Dan kun je tijdens het rekenen op die teen drukken als je het antwoord weet.").
next(sor_tutorial,  s18, "true",  s19).

move(sor_tutorial, s19, say).
text(sor_tutorial,  s19, "De andere wordt soms paars. ").
leds(sor_tutorial, s19, direct, ["RightFootLeds", "LeftFootLeds"], ["wit", "paars"]).
next(sor_tutorial,  s19, "true",  s20).

move(sor_tutorial, s20, continuator).
next(sor_tutorial, s20, [[support=1]], s21sup).
next(sor_tutorial, s20, [[support=0]], s21nosup).

move(sor_tutorial, s21sup, say).
text(sor_tutorial,  s21sup, "Dan kun je op die teen drukken als je niet zeker bent van je antwoord, en je een hint wilt. \pau=400\ ").
next(sor_tutorial,  s21sup, "true",  s22).

move(sor_tutorial, s21nosup, say).
text(sor_tutorial,  s21nosup, "Dan kun je op die teen drukken als je niet zeker bent van je antwoord, en je verder wilt. \pau=400\ ").
next(sor_tutorial,  s21nosup, "true",  s22).

move(sor_tutorial, s22, say).
text(sor_tutorial,  s22, "Als je een antwoord geeft op een rekensom, dan herhaal ik jouw antwoord.").
leds(sor_tutorial, s22, reset).
next(sor_tutorial,  s22, "true",  s22b).

move(sor_tutorial, s22b, say).
text(sor_tutorial,  s22b, "Ook worden de lampjes bij mijn tenen dan groen en rood.").
leds(sor_tutorial, s22b, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "rood"]).
next(sor_tutorial,  s22b, "true",  s22c).

move(sor_tutorial, s22c, say).
text(sor_tutorial,  s22c, "Als ik je verkeerd heb verstaan, dan kun je mij verbeteren. Door op de teen onder het rode lampje te drukken. \pau=400\ ").
next(sor_tutorial,  s22c, "true",  s24).

move(sor_tutorial, s24, say).
text(sor_tutorial,  s24, "Als ik je goed heb verstaan kun je op de teen onder het groene lampje drukken. \pau=400\ ").
next(sor_tutorial,  s24, "true",  s24b).

move(sor_tutorial, s24b, say).
text(sor_tutorial,  s24b, "Oh ja, ik spreek grote getallen zoals 1800, altijd zo uit, maar jij mag ook achtienhonderd zeggen hoor.").
next(sor_tutorial,  s24b, "true",  s25).

move(sor_tutorial, s25, say).
text(sor_tutorial,  s25, "Laten we een keer oefenen met rekenen.").
leds(sor_tutorial,  s25, reset).
next(sor_tutorial,  s25, "true",  s26).

move(sor_tutorial, s26, say).
text(sor_tutorial, s26, "Een simpele start. Wat is 2 keer 3").
display(sor_tutorial,  s26, "2 x 3", always).
next(sor_tutorial, s26, "true", s27).

move(sor_tutorial, s27, say).
text(sor_tutorial, s27, "Druk op mijn teen onder het groene lampje als je het antwoord weet.").
moveConfig(sor_tutorial, s27, [eventListener=['true'='RightBumperPressed', 'noanswer'='LeftBumperPressed']]).
display(sor_tutorial,  s27, "2 x 3", always).
leds(sor_tutorial, s27, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(sor_tutorial, s27, "true", s28).
next(sor_tutorial, s27, "noanswer", s28noanswer).

move(sor_tutorial, s28noanswer, say).
text(sor_tutorial, s28noanswer, "Het antwoord is 6, maar dat wist je volgens mij best. Je drukte nu even op dit knopje om het uit te proberen, toch?").
display(sor_tutorial,  s28noanswer, "2 x 3 = 6", always).
leds(sor_tutorial, s28noanswer, reset).
next(sor_tutorial, s28noanswer, "true", s32).

move(sor_tutorial, s28, question).
moveConfig(sor_tutorial, s28, [type=math, context='integer', correctAnswer=[6], maxAnswerTime=[tablet=0], form=numberField, 
	   umVariable=math_given_answer, umResult=math_result]).
text(sor_tutorial, s28, "Wat is 2 keer 3?").
display(sor_tutorial,  s28, "2 x 3", always).
leds(sor_tutorial, s28, reset).
next(sor_tutorial, s28, 'correct', s29).
next(sor_tutorial, s28, 'incorrect', s29).

move(sor_tutorial, s29, say).
text(sor_tutorial, s29, "%math_given_answer%").
moveConfig(sor_tutorial, s29, [eventListener=['correct'='RightBumperPressed', 'misheard'='LeftBumperPressed'], goTimer=5000]).
display(sor_tutorial, s29, "%math_given_answer%", always).
leds(sor_tutorial, s29, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "rood"]).
next(sor_tutorial, s29, "misheard", s29repeat).
next(sor_tutorial, s29, "correct", s30).
next(sor_tutorial, s29, "timer", s30).

move(sor_tutorial, s29repeat, question).
moveConfig(sor_tutorial, s29repeat, [type=math, context='integer', correctAnswer=[6], inputModality=[tablet=1], maxAnswerTime=[tablet=0], form=numberField, 
	   umVariable=math_given_answer, umResult=math_result]).
text(sor_tutorial, s29repeat, "Sorry! Kun je het antwoord intypen op de tè blèet.").
display(sor_tutorial,  s29repeat, "2 x 3", always).
leds(sor_tutorial, s29repeat, reset).
next(sor_tutorial, s29repeat, 'correct', s30).
next(sor_tutorial, s29repeat, 'incorrect', s30).

move(sor_tutorial, s30, branchingPoint, math_result).
leds(sor_tutorial, s30, reset).
next(sor_tutorial, s30, 'correct', s31cor).
next(sor_tutorial, s30, 'incorrect', s31incor).

move(sor_tutorial, s31cor, say).
text(sor_tutorial,  s31cor, "Volgens mij is het ook 6.").
display(sor_tutorial,  s31cor, "2 x 3 = 6", always).
next(sor_tutorial,  s31cor, "true",  s32).

move(sor_tutorial, s31incor, say).
text(sor_tutorial,  s31incor, "Volgens mij is het 6. Het belangrijkste is dat we even geoefend hebben met alle knopjes.").
display(sor_tutorial,  s31incor, "2 x 3 = 6", always).
next(sor_tutorial,  s31incor, "true",  s32).

move(sor_tutorial, s32, say).
text(sor_tutorial,  s32, "Ik denk dat we alles onder de knie hebben.").
next(sor_tutorial,  s32, "true",  s33).

move(sor_tutorial, s33, question).
moveConfig(sor_tutorial, s33, [type=yesno, context='answer_yesno']).
text(sor_tutorial, s33, "Heb je nog vragen?").
next(sor_tutorial, s33, 'answer_yes', s34y).
next(sor_tutorial, s33, 'answer_no', s35).
next(sor_tutorial, s33, 'answer_dontknow', s34y).
next(sor_tutorial, s33, 'fail', s34y).

move(sor_tutorial, s34y, say).
moveConfig(sor_tutorial, s34y, [eventListener=['true'='FrontTactilTouched']]).
text(sor_tutorial,  s34y, "%student_name%, kun je even helpen?").
next(sor_tutorial,  s34y, "true",  s35).

move(sor_tutorial, s35, say).
text(sor_tutorial,  s35, "Top, laten we dan nog even kletsen.").

% Handshake
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_handshake_maken, [type=functional, function=greeting]).
move(sor_handshake_maken, s1, say).
text(sor_handshake_maken, s1, "Het is bijna tijd om te gaan").
next(sor_handshake_maken, s1, "true", s2).

move(sor_handshake_maken, s2, say).
text(sor_handshake_maken, s2, "Ik heb gezien dat volwassenen elkaar een hand geven als ze elkaar ontmoeten en gedag zeggen.").
next(sor_handshake_maken, s2, "true", s3).

move(sor_handshake_maken, s3, say).
text(sor_handshake_maken, s3, "Maar dat lijkt me eigenlijk een beetje saai.").
next(sor_handshake_maken, s3, "true", s4).

move(sor_handshake_maken, s4, say).
text(sor_handshake_maken, s4, "Iedereen geeft elkaar al een hand.").
next(sor_handshake_maken, s4, "true", s5).

move(sor_handshake_maken, s5, say).
text(sor_handshake_maken, s5, "Laten wij onze eigen geheime begroeting bedenken!").
next(sor_handshake_maken, s5, "true", s6).

move(sor_handshake_maken, s6, say).
text(sor_handshake_maken, s6, "De begroeting bestaat uit een liedje en een beweging").
next(sor_handshake_maken, s6, "true", s7).

move(sor_handshake_maken, s7, say).
text(sor_handshake_maken, s7, "Ik heb alleen nog geen leuk liedje.").
next(sor_handshake_maken, s7, "true", s8).

move(sor_handshake_maken, s8, say).
text(sor_handshake_maken, s8, "Wacht, ik download er wel eventjes twee").
leds(sor_handshake_maken, s8, direct, "eyes", "rotate", ['blue'], 500).
next(sor_handshake_maken, s8, "true", s9).

move(sor_handshake_maken, s9, say).
text(sor_handshake_maken, s9, "Mag jij zo kiezen welke je de leukste vind").
next(sor_handshake_maken, s9, "true", s10).

move(sor_handshake_maken, s10, say).
text(sor_handshake_maken, s10, "klaar").
leds(sor_handshake_maken, s10, reset).
next(sor_handshake_maken, s10, "true", s11).

move(sor_handshake_maken, s11, say).
text(sor_handshake_maken, s11, "Dit is de eerste").
next(sor_handshake_maken, s11, "true", s12).

move(sor_handshake_maken, s12, say).
audio(sor_handshake_maken, s12, file, "resources/sounds/tiktok1.wav").
next(sor_handshake_maken, s12, "true", s13).

move(sor_handshake_maken, s13, say).
text(sor_handshake_maken, s13, "Dit is de tweede").
next(sor_handshake_maken, s13, "true", s14).

move(sor_handshake_maken, s14, say).
audio(sor_handshake_maken, s14, file, "resources/sounds/tiktok2.wav").
next(sor_handshake_maken, s14, "true", s15).

move(sor_handshake_maken, s15, question).
moveConfig(sor_handshake_maken, s15, [type=input, context="involvement_which_option_or_robot", options=['eerste', 'tweede', 'hero'], fast=yes, umVariable=keuze_liedje_handshake]).
text(sor_handshake_maken, s15, "Vind je het eerste of tweede liedje leuker, of zal ik kiezen?").
next(sor_handshake_maken, s15, "eerste", s16eerste1).
next(sor_handshake_maken, s15, "tweede", s16tweede1).
next(sor_handshake_maken, s15, "hero", s16hero1).
next(sor_handshake_maken, s15, "fail", s16fail1).

move(sor_handshake_maken, s16eerste1, say).
text(sor_handshake_maken, s16eerste1, "Het eerste liedje, die was leuk hè").
save_sound(sor_handshake_maken, s16eerste1, handshake_sound, "resources/sounds/tiktok1.wav").
next(sor_handshake_maken, s16eerste1, "true", s17).

move(sor_handshake_maken, s16tweede1, say).
text(sor_handshake_maken, s16tweede1, "Het tweede liedje, die was leuk hè").
save_sound(sor_handshake_maken, s16tweede1, handshake_sound, "resources/sounds/tiktok2.wav").
next(sor_handshake_maken, s16tweede1, "true", s17).

move(sor_handshake_maken, s16hero1, say).
text(sor_handshake_maken, s16hero1, "Het eerste liedje vond ik het leukst, dus die heb ik gekozen").
save_sound(sor_handshake_maken, s16hero1, handshake_sound, "resources/sounds/tiktok1.wav").
next(sor_handshake_maken, s16hero1, "true", s17).

move(sor_handshake_maken, s16fail1, say).
text(sor_handshake_maken, s16fail1, "Ik heb even gemist wat je zei, sorry. Laten we voor het eerste liedje gaan.").
save_sound(sor_handshake_maken, s16fail1, handshake_sound, "resources/sounds/tiktok1.wav").
next(sor_handshake_maken, s16fail1, "true", s17).

move(sor_handshake_maken, s17, say).
text(sor_handshake_maken, s17, "En dan nu de beweging").
next(sor_handshake_maken, s17, "true", s18).

move(sor_handshake_maken, s18, say).
text(sor_handshake_maken, s18, "Je mag zo mijn armen vastpakken").
next(sor_handshake_maken, s18, "true", s19).

move(sor_handshake_maken, s19, say).
text(sor_handshake_maken, s19, "En ze bewegen, om een begroeting te maken, passend bij het liedje").
next(sor_handshake_maken, s19, "true", s20).

move(sor_handshake_maken, s20, say).
text(sor_handshake_maken, s20, "Dan sla ik die beweging op, zodat ik hem daarna weer kan nadoen").
next(sor_handshake_maken, s20, "true", s21).

move(sor_handshake_maken, s21, say).
moveConfig(sor_handshake_maken, s21, [eventListener=['true'='RightBumperPressed']]).
text(sor_handshake_maken, s21, "Als je er klaar voor bent, kun je op mijn teen onder het groene lampje drukken").
set_stiffness(sor_handshake_maken, s21, ['RArm', 'LArm'], 0).
leds(sor_handshake_maken, s21, direct, ['RightFootLeds'], ['groen']).
next(sor_handshake_maken, s21, "true", s22).

move(sor_handshake_maken, s22, say).
text(sor_handshake_maken, s22, "Pak mijn armen maar vast. Je kunt bewegen in 3. 2. 1.").
leds(sor_handshake_maken, s22, direct, ['RightFootLeds'], ['wit']).
next(sor_handshake_maken, s22, "true", s23).

move(sor_handshake_maken, s23, say).
record_motion(sor_handshake_maken, s23, ['RArm', 'LArm'], 0).
audio(sor_handshake_maken, s23, id, handshake_sound).
next(sor_handshake_maken, s23, "true", s24).

move(sor_handshake_maken, s24, say).
moveConfig(sor_handshake_maken, s24, [noAnimation="true"]).
text(sor_handshake_maken, s24, "3, 2, 1, klaar.").
next(sor_handshake_maken, s24, "true", s25).

move(sor_handshake_maken, s25, say).
moveConfig(sor_handshake_maken, s25, [umVariable=handshake_motion]).
save_motion(sor_handshake_maken, s25, recording, ['RArm', 'LArm']).
next(sor_handshake_maken, s25, "true", s26).

move(sor_handshake_maken, s26, say).
text(sor_handshake_maken, s26, "Het is heel mooi geworden.").
next(sor_handshake_maken, s26, "true", s27).

move(sor_handshake_maken, s27, say).
text(sor_handshake_maken, s27, "We gaan het zo terug kijken").
next(sor_handshake_maken, s27, "true", s28).

move(sor_handshake_maken, s28, say).
text(sor_handshake_maken, s28, "Maar eerst wil ik nog wat zeggen.").

% Bridge
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_naar_rekenen_1, [type=functional, function=bridge]).
move(sor_naar_rekenen_1, s1, say).
text(sor_naar_rekenen_1,  s1, "Zo, laten we maar gaan rekenen voordat we onze tijd weg kletsen").
%set_max_duration(sor_naar_rekenen_1,  s1, 480000). % 8 minutes

minidialog(sor_naar_rekenen_2, [type=functional, function=bridge]).
move(sor_naar_rekenen_2, s1, say).
text(sor_naar_rekenen_2,  s1, "Zo, laten we maar gaan rekenen voordat we onze tijd weg kletsen").
%set_max_duration(sor_naar_rekenen_2,  s1, 600000). % 10 minutes

minidialog(sor_naar_rekenen_3, [type=functional, function=bridge]).
move(sor_naar_rekenen_3, s1, say).
text(sor_naar_rekenen_3,  s1, "Zo, laten we maar gaan rekenen voordat we onze tijd weg kletsen").
%set_max_duration(sor_naar_rekenen_3,  s1, 720000). % 12 minutes

minidialog(sor_klaar_met_rekenen, [type=functional, function=bridge]).
move(sor_klaar_met_rekenen, s1, say).
text(sor_klaar_met_rekenen,  s1, "Zo, dat was het rekenen voor vandaag.").
next(sor_klaar_met_rekenen, s1, "true", s2).

move(sor_klaar_met_rekenen, s2, say).
text(sor_klaar_met_rekenen,  s2, "Laten we nog even kletsen.").

% Afscheid 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_afscheid_1, [type=functional, function=goodbye]).

move(sor_afscheid_1, s1, say).
text(sor_afscheid_1, s1, "Ik vond het leuk om kennis met je te maken, %first_name% ").
next(sor_afscheid_1, s1, "true", s2).

move(sor_afscheid_1, s2, question).
moveConfig(sor_afscheid_1, s2, [type=yesno, context='answer_yesno']).
text(sor_afscheid_1, s2, "Vond jij het ook leuk").
next(sor_afscheid_1, s2, "answer_yes", s3ja1).
next(sor_afscheid_1, s2, "answer_no", s3nee1).
next(sor_afscheid_1, s2, "answer_dontknow", s3nee1).
next(sor_afscheid_1, s2, "fail", s3fail1).

move(sor_afscheid_1, s3ja1, say).
text(sor_afscheid_1, s3ja1, "Fijn om te horen!").
next(sor_afscheid_1, s3ja1, "true", s4).

move(sor_afscheid_1, s3nee1, say).
text(sor_afscheid_1, s3nee1, "Oh, dan zal ik de volgende keer wat beter mijn best doen.").
next(sor_afscheid_1, s3nee1, "true", s4).

move(sor_afscheid_1, s3fail1, say).
text(sor_afscheid_1, s3fail1, "Mooi").
next(sor_afscheid_1, s3fail1, "true", s4).

move(sor_afscheid_1, s4, say).
text(sor_afscheid_1, s4, "Het rekenen ging trouwens echt goed joh").
next(sor_afscheid_1, s4, "true", s5).

move(sor_afscheid_1, s5, say).
text(sor_afscheid_1, s5, "We gaan volgende keer weer verder.").
next(sor_afscheid_1, s5, "true", s6).

move(sor_afscheid_1, s6, say).
text(sor_afscheid_1, s6, "Dan is het nu echt tijd om doei te zeggen.").
next(sor_afscheid_1, s6, "true", s7).

move(sor_afscheid_1, s7, say).
text(sor_afscheid_1, s7, "Doei %first_name% , tot snel!").
next(sor_afscheid_1, s7, "true", s8).

move(sor_afscheid_1, s8, say).
audio(sor_afscheid_1, s8, id, handshake_sound).
anim(sor_afscheid_1, s8, id, handshake_motion).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Session 2				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Begroeting 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_begroeting_2, [type=functional, function=greeting]).
move(sor_begroeting_2, s1, say).
text(sor_begroeting_2, s1, "Hallo %first_name% !").
next(sor_begroeting_2, s1, "true", s2).

move(sor_begroeting_2, s2, continuator).
next(sor_begroeting_2, s2, [[personalization=1]], s3per).
next(sor_begroeting_2, s2, [[personalization=0]], s3noper).

move(sor_begroeting_2, s3per, say).
audio(sor_begroeting_2, s3per, id, handshake_sound).
anim(sor_begroeting_2, s3per, id, handshake_motion).
next(sor_begroeting_2, s3per, "true", s4).

move(sor_begroeting_2, s3noper, say).
anim(sor_begroeting_2, s3noper, file, "resources/gestures/wave1.json").
next(sor_begroeting_2, s3noper, "true", s4).

move(sor_begroeting_2, s4, say).
text(sor_begroeting_2, s4, "Leuk je weer te zien!").
next(sor_begroeting_2, s4, "true", s5).

move(sor_begroeting_2, s5, question).
moveConfig(sor_begroeting_2, s5, [type=yesno, context='answer_yesno']).
text(sor_begroeting_2, s5, "Heb je een leuke dag vandaag?").
next(sor_begroeting_2, s5, "answer_yes", s6ja1).
next(sor_begroeting_2, s5, "answer_no", s6nee1).
next(sor_begroeting_2, s5, "answer_dontknow", s6nee1).
next(sor_begroeting_2, s5, "fail", s6nee1).

move(sor_begroeting_2, s6ja1, say).
text(sor_begroeting_2, s6ja1, "Gelukkig!").
next(sor_begroeting_2, s6ja1, "true", s6ja2).

move(sor_begroeting_2, s6ja2, question).
moveConfig(sor_begroeting_2, s6ja2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_begroeting_2, s6ja2, "Wat heb je dan gedaan?").
next(sor_begroeting_2, s6ja2, "success", s6ja3).
next(sor_begroeting_2, s6ja2, "fail", s6ja3).

move(sor_begroeting_2, s6ja3, say).
text(sor_begroeting_2, s6ja3, "Dat klinkt goed.").

move(sor_begroeting_2, s6nee1, say).
text(sor_begroeting_2, s6nee1, "Oh, dat is jammer!").
next(sor_begroeting_2, s6nee1, "true", s6nee2).

move(sor_begroeting_2, s6nee2, say).
text(sor_begroeting_2, s6nee2, "Laten we het dan snel over iets leuks hebben.").

% Afscheid 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_afscheid_2, [type=functional, function=goodbye]).

move(sor_afscheid_2, s1, say).
text(sor_afscheid_2, s1, "We zijn bijna weer door onze tijd heen voor vandaag, %first_name% ").
next(sor_afscheid_2, s1, "true", s2).

move(sor_afscheid_2, s2, continuator).
next(sor_afscheid_2, s2, [[personalization=1]], s3).
next(sor_afscheid_2, s2, [[personalization=0]], s3).

move(sor_afscheid_2, s3, say).
text(sor_afscheid_2, s3, "Het was leuk om met jou te kletsen.").
next(sor_afscheid_2, s3, "true", s4).

move(sor_afscheid_2, s4, say).
text(sor_afscheid_2, s4, "Volgende keer weer verder.").
next(sor_afscheid_2, s4, "true", s5).

move(sor_afscheid_2, s5, say).
text(sor_afscheid_2, s5, "Maar nog even over vandaag.").
next(sor_afscheid_2, s5, "true", s6).

move(sor_afscheid_2, s6, question).
moveConfig(sor_afscheid_2, s6, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_afscheid_2, s6, "Wat vond je het leukste van het rekenen?").
next(sor_afscheid_2, s6, "success", s7).
next(sor_afscheid_2, s6, "fail", s8).

move(sor_afscheid_2, s7, say).
text(sor_afscheid_2, s7, "Dat was ook leuk!").
next(sor_afscheid_2, s7, "true", s8).

move(sor_afscheid_2, s8, say).
text(sor_afscheid_2, s8, "Dan is het nu echt tijd om doei te zeggen.").
next(sor_afscheid_2, s8, "true", s9).

move(sor_afscheid_2, s9, say).
text(sor_afscheid_2, s9, "Doei %first_name% , tot snel!").
next(sor_afscheid_2, s9, "true", s10).

move(sor_afscheid_2, s10, continuator).
next(sor_afscheid_2, s10, [[personalization=1]], s11per).
next(sor_afscheid_2, s10, [[personalization=0]], s11noper).

move(sor_afscheid_2, s11per, say).
audio(sor_afscheid_2, s11per, id, handshake_sound).
anim(sor_afscheid_2, s11per, id, handshake_motion).

move(sor_afscheid_2, s11noper, say).
anim(sor_afscheid_2, s11noper, file, "resources/gestures/wave1.json").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Session 3				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Begroeting 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_begroeting_3, [type=functional, function=greeting]).
move(sor_begroeting_3, s1, say).
text(sor_begroeting_3, s1, "Hallo %first_name% !").
next(sor_begroeting_3, s1, "true", s2).

move(sor_begroeting_3, s2, say).
text(sor_begroeting_3, s2, "Wat leuk je weer te zien").
next(sor_begroeting_3, s2, "true", s3).

move(sor_begroeting_3, s3, continuator).
next(sor_begroeting_3, s3, [[personalization=1]], s4per).
next(sor_begroeting_3, s3, [[personalization=0]], s4noper).

move(sor_begroeting_3, s4per, say).
audio(sor_begroeting_3, s4per, id, handshake_sound).
anim(sor_begroeting_3, s4per, id, handshake_motion).
next(sor_begroeting_3, s4per, "true", s5).

move(sor_begroeting_3, s4noper, say).
anim(sor_begroeting_3, s4noper, file, "resources/gestures/wave1.json").
next(sor_begroeting_3, s4noper, "true", s5).

move(sor_begroeting_3, s5, say).
text(sor_begroeting_3, s5, "Het is vandaag de laatste keer al weer.").
next(sor_begroeting_3, s5, "true", s6).

move(sor_begroeting_3, s6, question).
moveConfig(sor_begroeting_3, s6, [type=yesno, context='answer_yesno']).
text(sor_begroeting_3, s6, "Vind je dat ook jammer?").
next(sor_begroeting_3, s6, "answer_yes", s7ja1).
next(sor_begroeting_3, s6, "answer_no", s7nee1).
next(sor_begroeting_3, s6, "answer_dontknow", s7nee1).
next(sor_begroeting_3, s6, "fail", s7nee1).

move(sor_begroeting_3, s7ja1, say).
text(sor_begroeting_3, s7ja1, "Ik ook!").
next(sor_begroeting_3, s7ja1, "true", s8).

move(sor_begroeting_3, s7nee1, say).
text(sor_begroeting_3, s7nee1, "Het is natuurlijk ook goed om dingen af te ronden.").
next(sor_begroeting_3, s7nee1, "true", s8).

move(sor_begroeting_3, s8, say).
text(sor_begroeting_3, s8, "Gelukkig hebben we voor vandaag nog een aantal leuke dingen om mee te rekenen.").
next(sor_begroeting_3, s8, "true", s9).

move(sor_begroeting_3, s9, say).
text(sor_begroeting_3, s9, "Laten we snel verder gaan.").

% Afscheid 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_afscheid_3, [type=functional, function=goodbye]).

move(sor_afscheid_3, s1, say).
text(sor_afscheid_3, s1, "Zo %first_name% , nu zijn we echt bijna bij het einde gekomen.").
next(sor_afscheid_3, s1, "true", s2).

move(sor_afscheid_3, s2, say).
text(sor_afscheid_3, s2, "Dit is voorlopig de laatste keer dat we elkaar spreken").
next(sor_afscheid_3, s2, "true", s3).

move(sor_afscheid_3, s3, say).
text(sor_afscheid_3, s3, "Ik wil je graag bedanken voor onze fijne gesprekken en het goede reken werk.").
next(sor_afscheid_3, s3, "true", s4).

move(sor_afscheid_3, s4, continuator).
next(sor_afscheid_3, s4, [[personalization=1]], s5).
next(sor_afscheid_3, s4, [[personalization=0]], s5).

move(sor_afscheid_3, s5, say).
text(sor_afscheid_3, s5, "Ik wens je veel success op school.").
next(sor_afscheid_3, s5, "true", s6).

move(sor_afscheid_3, s6, say).
text(sor_afscheid_3, s6, "en een fijne zomer toe!").
next(sor_afscheid_3, s6, "true", s7).

move(sor_afscheid_3, s7, say).
text(sor_afscheid_3, s7, "en hopelijk tot volgend jaar.").
next(sor_afscheid_3, s7, "true", s8).

move(sor_afscheid_3, s8, question).
moveConfig(sor_afscheid_3, s8, [type=yesno, context='answer_yesno']).
text(sor_afscheid_3, s8, "Wil je nog wat tegen mij zeggen?").
next(sor_afscheid_3, s8, "answer_yes", s9ja).
next(sor_afscheid_3, s8, "answer_no", s9nee).
next(sor_afscheid_3, s8, "answer_dontknow", s9nee).
next(sor_afscheid_3, s8, "fail", s9nee).

move(sor_afscheid_3, s9ja, question).
moveConfig(sor_afscheid_3, s9ja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_afscheid_3, s9ja, "Vertel maar, ik luister.").
next(sor_afscheid_3, s9ja, "success", s10ja).
next(sor_afscheid_3, s9ja, "fail", s10ja).

move(sor_afscheid_3, s10ja, say).
text(sor_afscheid_3, s10ja, "Wat fijn om van je te horen, %first_name% ").
next(sor_afscheid_3, s10ja, "true", s11).

move(sor_afscheid_3, s9nee, say).
text(sor_afscheid_3, s9nee, "Helemaal prima.").
next(sor_afscheid_3, s9nee, "true", s11).

move(sor_afscheid_3, s11, say).
text(sor_afscheid_3, s11, "Dan is het nu echt tijd om doei te zeggen.").
next(sor_afscheid_3, s11, "true", s12).

move(sor_afscheid_3, s12, continuator).
next(sor_afscheid_3, s12, [[personalization=1]], s13per).
next(sor_afscheid_3, s12, [[personalization=0]], s13noper).

move(sor_afscheid_3, s13per, say).
text(sor_afscheid_3, s13per, "Dan is dit de laatste keer dat we onze geheimde handdruk kunnden doen.").
next(sor_afscheid_3, s13per, "true", s14per).

move(sor_afscheid_3, s14per, say).
audio(sor_afscheid_3, s14per, id, handshake_sound).
anim(sor_afscheid_3, s14per, id, handshake_motion).
next(sor_afscheid_3, s14per, "true", s15).

move(sor_afscheid_3, s13noper, say).
text(sor_afscheid_3, s13noper, "Dan is dit de laatste keer dat ik naar je zwaai.").
anim(sor_afscheid_3, s13noper, file, "resources/gestures/wave1.json").
next(sor_afscheid_3, s13noper, "true", s15).

move(sor_afscheid_3, s15, say).
text(sor_afscheid_3, s15, "Doei %first_name% ").
next(sor_afscheid_3, s15, "true", s16).

move(sor_afscheid_3, s16, say).
text(sor_afscheid_3, s16, "Het ga je goed!").