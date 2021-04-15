%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      HOSPITAL STUDY	                   %%%
%%%     	Conversation topics for session 1	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Greeting    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(ho1_greeting, s1, say).
text(ho1_greeting,  s1, "Hallo! Ik ben Hero en ik ben een robot.").
next(ho1_greeting,  s1, "true",  s2).

state(ho1_greeting, s2, say).
stateConfig(ho1_greeting, s2, [waitTimer=3000]).
text(ho1_greeting, s2, "Hoe heet jij?").
next(ho1_greeting, s2, "true", s3).

state(ho1_greeting, s3, say).
text(ho1_greeting,  s3, "%first_name%, wat een mooie naam! Ik denk niet dat ik ooit iemand heb ontmoet die zo heet. Denk ik.").
next(ho1_greeting,  s3, "true",  s4).

state(ho1_greeting, s4, say).
text(ho1_greeting,  s4, "Laat ik eerst wat over mijzelf vertellen.").
next(ho1_greeting,  s4, "true",  s5).

state(ho1_greeting, s5, say).
text(ho1_greeting,  s5, "Ik doe een stage, hier in het Prinses Maxima centrum, als zorgrobot.").
next(ho1_greeting,  s5, "true",  s6).

state(ho1_greeting, s6, say).
text(ho1_greeting,  s6, "Dat betekent dat ik aan het leren ben om een robot vriendje te worden. \pau=300\ ").
next(ho1_greeting,  s6, "true",  s7).

state(ho1_greeting, s7, say).
text(ho1_greeting,  s7, "Ik moet nog veel oefenen, maar ik doe mijn best.").
next(ho1_greeting,  s7, "true",  s8).

state(ho1_greeting, s8, say).
text(ho1_greeting,  s8, "Wat fijn dat jij mij daarbij wilt helpen.").
next(ho1_greeting,  s8, "true",  s9).

state(ho1_greeting, s9, say).
text(ho1_greeting,  s9, "Ik vind het leuk om te kletsen en verhaaltjes te vertellen. \pau=300\ ").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Child-robot conversation tutorial                      %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Speech %%%
state(ho1_tutorial_speech, s1, say).
text(ho1_tutorial_speech,  s1, "Laat ik uitleggen hoe je met mij kunt praten.").
next(ho1_tutorial_speech, s1, "true", s2).

state(ho1_tutorial_speech, s2, say).
text(ho1_tutorial_speech,  s2, "Als ik een vraag stel, dan kun je na de piep").
next(ho1_tutorial_speech, s2, "true", s2b).

state(ho1_tutorial_speech, s2b, say).
text(ho1_tutorial_speech,  s2b, " \pau=300\ een antwoord geven.").
next(ho1_tutorial_speech, s2b, "true", s3).

state(ho1_tutorial_speech, s3, say).
text(ho1_tutorial_speech,  s3, "Het helpt als je dat een beetje luid, en duidelijk kan doen.").
next(ho1_tutorial_speech, s3, "true", s4).

state(ho1_tutorial_speech, s4, say).
text(ho1_tutorial_speech,  s4, "Laten we een keertje oefenen. Hier komt de eerste vraag.").
next(ho1_tutorial_speech,  s4, "true",  s5).

state(ho1_tutorial_speech, s5, question).
stateConfig(ho1_tutorial_speech, s5, [type=quiz, context='answer_color', correctAnswer=["blauw", "donkerblauw"], inputModality=[speech=3], additionalAttempt=true, fast=yes]).
leds(ho1_tutorial_speech, s5, direct, ["FaceLeds"], ["blauw"]).
text(ho1_tutorial_speech, s5, "Welke kleur hebben mijn ogen nu?").
next(ho1_tutorial_speech, s5, 'correct', s5cor).
next(ho1_tutorial_speech, s5, 'incorrect', s5incor).
next(ho1_tutorial_speech, s5, 'fail', s5f).

state(ho1_tutorial_speech, s5cor, say).
text(ho1_tutorial_speech,  s5cor, "Ze zijn inderdaad blauw. Goed gedaan!").
next(ho1_tutorial_speech,  s5cor, "true",  s6).

state(ho1_tutorial_speech, s5incor, say).
text(ho1_tutorial_speech,  s5incor, "Die kleur kunnen ze inderdaad worden, maar deze keer waren ze echt blauw. Je hebt wel op het juiste moment geantwoord en dat is het belangrijkste.").
next(ho1_tutorial_speech,  s5incor, "true",  s6).

state(ho1_tutorial_speech, s5f, say).
text(ho1_tutorial_speech,  s5f, "Dankjewel! Denk er aan om luid, en duidelijk, antwoord te geven.").
next(ho1_tutorial_speech,  s5f, "true",  s6).

state(ho1_tutorial_speech, s6, say).
leds(ho1_tutorial_speech, s6, direct, ["FaceLeds"], ["wit"]).

%%% Touch %%%
state(ho1_tutorial_touch, s1, say).
text(ho1_tutorial_touch,  s1, "Soms heb ik een beetje moeite om mensen te verstaan.").
next(ho1_tutorial_touch,  s1, "true",  s2).

state(ho1_tutorial_touch, s2, say).
text(ho1_tutorial_touch,  s2, "Dan zal ik de vraag gewoon opnieuw stellen. \pau=300\ ").
next(ho1_tutorial_touch,  s2, "true",  s3).

state(ho1_tutorial_touch, s3, say).
text(ho1_tutorial_touch,  s3, "Mocht ik het weer niet verstaan, dan heb ik een alternatief.").
next(ho1_tutorial_touch,  s3, "true",  s4).

state(ho1_tutorial_touch, s4, say).
text(ho1_tutorial_touch,  s4, "Je kunt dan antwoord geven via mijn grijze, tenen.").
next(ho1_tutorial_touch,  s4, "true",  s5).

state(ho1_tutorial_touch, s5, say).
text(ho1_tutorial_touch,  s5, "Dat zijn namelijk knopjes.").
next(ho1_tutorial_touch,  s5, "true", s6).

state(ho1_tutorial_touch, s6, say).
text(ho1_tutorial_touch,  s6, "Links, waar het lampje nu groen is, betekent ja \pau=400\ en rechts, waar het lampje nu rood is betekent nee").
leds(ho1_tutorial_touch,  s6, direct, ['LeftFootLeds', 'RightFootLeds'], ['red', 'green']).
next(ho1_tutorial_touch,  s6, "true",  s7).

state(ho1_tutorial_touch, s7, say).
text(ho1_tutorial_touch,  s7, "Laten we dat proberen. \pau=400\ ").
leds(ho1_tutorial_touch,  s7, direct, ['LeftFootLeds', 'RightFootLeds'], ['white', 'white']).
next(ho1_tutorial_touch,  s7, "true",  s8).

state(ho1_tutorial_touch, s8, question).
stateConfig(ho1_tutorial_touch, s8, [type=yesno, inputModality=[touch=3], maxAnswerTime=[touch=5000]]).
text(ho1_tutorial_touch, s8, "Hou je van chocola? Druk tegen mijn teen om je antwoord door te geven.").
next(ho1_tutorial_touch, s8, 'answer_yes', s9y).
next(ho1_tutorial_touch, s8, 'answer_no', s9n).
next(ho1_tutorial_touch, s8, 'fail', s9f).

state(ho1_tutorial_touch, s9y, say).
text(ho1_tutorial_touch, s9y, "Ik houd ook van chocola! Goed gedrukt trouwens.").
next(ho1_tutorial_touch, s9y, "true", s10).

state(ho1_tutorial_touch, s9n, say).
text(ho1_tutorial_touch, s9n, "Ik vind chocola ook vies! Goed gedrukt trouwens.").
next(ho1_tutorial_touch, s9n, "true", s10).

state(ho1_tutorial_touch, s9f, say).
text(ho1_tutorial_touch, s9f, "Ik vind het ook een lastige keuze. Kelly kun jij %first_name% even laten zien waar ze precies moet drukken?").
stateConfig(ho1_tutorial_touch, s9f, [next='FrontTactilTouched']).
next(ho1_tutorial_touch, s9f, "true", s10).

state(ho1_tutorial_touch, s10, say).
text(ho1_tutorial_touch,  s10, "Soms zal ik wat opties opnoemen. Dan kun je op de ja knop drukken als je jouw antwoord hoort.").
leds(ho1_tutorial_touch,  s10, direct, ['LeftFootLeds', 'RightFootLeds'], ['white', 'white']).
next(ho1_tutorial_touch,  s10, "true",  s11).

state(ho1_tutorial_touch, s11, say).
text(ho1_tutorial_touch,  s11, "Laten we dat ook even uitproberen. \pau=400\ ").
next(ho1_tutorial_touch,  s11, "true",  s12).

state(ho1_tutorial_touch, s12, question).
stateConfig(ho1_tutorial_touch, s12, [type=quiz, options=['paars', 'blauw', 'groen', 'oranje'], 
	correctAnswer=['groen'], inputModality=[touch=3]]).
leds(ho1_tutorial_touch, s12, direct, ["FaceLeds"], ["groen"]).
text(ho1_tutorial_touch, s12, "Welke kleur hebben mijn ogen nu? Druk op de ja knop als je het antwoord hoort.").
next(ho1_tutorial_touch, s12, 'correct', s13cor).
next(ho1_tutorial_touch, s12, 'incorrect', s13incor).
next(ho1_tutorial_touch, s12, 'fail', s14).

state(ho1_tutorial_touch, s13cor, say).
text(ho1_tutorial_touch, s13cor, "Jazeker! Ze zijn inderdaad groen.").
next(ho1_tutorial_touch,  s13cor, "true",  s14).

state(ho1_tutorial_touch, s13incor, say).
text(ho1_tutorial_touch, s13incor, "Die kleur kunnen ze inderdaad worden, maar deze keer waren ze echt groen.").
next(ho1_tutorial_touch,  s13incor, "true",  s14).

state(ho1_tutorial_touch, s13incor2, say).
text(ho1_tutorial_touch, s13incor2, "Mocht je te laat of te vroeg hebben gedrukt, alle antwoorden komen twee keer voorbij. Je kunt dan eventjes wachten met drukken tot jouw antwoord terug komt.").
next(ho1_tutorial_touch,  s13incor2, "true",  s14).

state(ho1_tutorial_touch, s14, say).
leds(ho1_tutorial_touch, s14, direct, ["FaceLeds"], ["wit"]).
text(ho1_tutorial_touch, s14, "Mocht jouw antwoord er niet tussen zitten, dan kun je eentje kiezen die het beste bij jou past.").

%%% Final questions %%%
state(ho1_tutorial_question, s1, say).
text(ho1_tutorial_question,  s1, "Zo nu heb ik alles wel uitgelegd.").
next(ho1_tutorial_question,  s1, "true",  s2).

state(ho1_tutorial_question, s2, question).
stateConfig(ho1_tutorial_question, s2, [type=yesno, context='answer_yesno']).
text(ho1_tutorial_question, s2, "Heb je hier nog vragen over?").
next(ho1_tutorial_question, s2, 'answer_yes', s2y).
next(ho1_tutorial_question, s2, 'answer_no', s2n).
next(ho1_tutorial_question, s2, 'answer_dontknow', s2y).
next(ho1_tutorial_question, s2, 'fail', s2y).

state(ho1_tutorial_question, s2y, say).
text(ho1_tutorial_question, s2y, "Kelly, kun jij %first_name% even helpen.").
stateConfig(ho1_tutorial_question, s2y, [next='FrontTactilTouched']).
next(ho1_tutorial_question,  s2y, "true",  s3).

state(ho1_tutorial_question, s2n, say).
text(ho1_tutorial_question,  s2n, "Top!").
next(ho1_tutorial_question,  s2n, "true",  s3).

state(ho1_tutorial_question, s3, say).
text(ho1_tutorial_question, s3, "Laten we verder gaan met onze kennismaking.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Getting acquainted conversation	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Animals %%%
state(ho1_animals, s1, say).
text(ho1_animals,  s1, "Ik ben erg benieuwd naar jou en wat voor dingen jij leuk vind.").
next(ho1_animals, s1, "true", s1a).

state(ho1_animals, s1a, say).
text(ho1_animals,  s1a, "Je zult er snel achter komen dat ik een echte klets kont ben.").
next(ho1_animals, s1a, "true", s1b).

state(ho1_animals, s1b, say).
text(ho1_animals,  s1b, "Laten we beginnen bij een van mijn favoriete onderwerpen, dieren.").
next(ho1_animals, s1b, "true", s2).

state(ho1_animals, s2, question).
stateConfig(ho1_animals, s2, [type=yesno, context='answer_yesno']).
text(ho1_animals, s2, "Heb jij eigenlijk een huisdier thuis?").
next(ho1_animals, s2, 'answer_yes', s3y).
next(ho1_animals, s2, 'answer_no', s3n).
next(ho1_animals, s2, 'answer_dontknow', s3n).
next(ho1_animals, s2, 'fail', s3n).

state(ho1_animals, s3y, say).
text(ho1_animals,  s3y, "Leuk zeg.").
next(ho1_animals, s3y, "true", s4y).

state(ho1_animals, s4y, question).
stateConfig(ho1_animals, s4y, [type=input, context='answer_favorite_animal', options= ["Hond", "Kat", "Konijn", "Cavia", "Hamster", "Vis", "Vogel"], umVariable=huisdier]).
text(ho1_animals, s4y, "Welke dan?").
next(ho1_animals, s4y, 'success', s5).
next(ho1_animals, s4y, 'fail', s5f).

state(ho1_animals, s3n, question).
stateConfig(ho1_animals, s3n, [type=input, context='answer_favorite_animal', options= ["Hond", "Kat", "Konijn", "Cavia", "Hamster", "Vis", "Vogel"], umVariable=huisdier]).
text(ho1_animals, s3n, "Welke huisdier lijkt je leuk om te hebben?").
next(ho1_animals, s3n, 'success', s5).
next(ho1_animals, s3n, 'fail', s7).

state(ho1_animals, s5, say).
text(ho1_animals,  s5, "Leuk! Ik zou ook heel graag een %huisdier% willen.").
next(ho1_animals, s5, "true", s6).

state(ho1_animals, s6, say).
text(ho1_animals,  s6, "Als ik er eentje zou mogen van mijn vader dan is het een robot %huisdier%, en geen echte \pau=150\ hehaheha.").
next(ho1_animals, s6, "true", s7).

state(ho1_animals, s7, say).
text(ho1_animals,  s7, "Als ik een wild dier als huisdier zou mogen dan zou ik gaan voor een adelaar.").
next(ho1_animals, s7, "true", s8).

state(ho1_animals, s8, say).
text(ho1_animals,  s8, "Het lijkt me erg gaaf om op haar rug, meee de wereld over te kunnen vliegen.").
next(ho1_animals, s8, "true", s9).

state(ho1_animals, s9, say).
text(ho1_animals,  s9, "En als jij een wild dier zou mogen kiezen om als huisdier te hebben, bijvoorbeeld uit de oceaan of de jungle.").
next(ho1_animals, s9, "true", s10).

state(ho1_animals, s10, question).
stateConfig(ho1_animals, s10, [type=input, context='answer_favorite_animal', options= ["Leeuw", "Dolfijn", "Tijger", "Gorilla", "Kangaroe", "Krokodil"], umVariable=wilddier]).
text(ho1_animals, s10, "Welk wild dier zou je dan kiezen?").
next(ho1_animals, s10, 'success', s11).
next(ho1_animals, s10, 'fail', s12f).

state(ho1_animals, s11, say).
text(ho1_animals,  s11, "%wilddier% is zo'n stoer beest. Goede keuze.").
next(ho1_animals, s11, "true", s12).

state(ho1_animals, s12, question).
stateConfig(ho1_animals, s12, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_animals, s12, "Wat vind je zo leuk aan een %wilddier%?").
next(ho1_animals, s12, 'success', s13).
next(ho1_animals, s12, 'fail', s13).

state(ho1_animals, s12f, question).
stateConfig(ho1_animals, s12f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_animals, s12f, "Wat vind je daar zo leuk aan?").
next(ho1_animals, s12f, 'success', s13).
next(ho1_animals, s12f, 'fail', s13).

state(ho1_animals, s13, say).
text(ho1_animals,  s13, "Leuk! Nu wil ik ook een %wilddier% als huisdier.").

%%% Food %%%
state(ho1_food, s1, say).
text(ho1_food,  s1, "Een ander onderwerp waar ik helemaal door gefasineerd ben is mensen eten.").
next(ho1_food,  s1, "true",  s2).

state(ho1_food, s2, say).
text(ho1_food,  s2, "Nee niet het opeten van mensen, maar het eten dat mensen eten.").
next(ho1_food,  s2, "true",  s3).

state(ho1_food, s3, say).
text(ho1_food,  s3, "Zelf eet ik alleen stroom, en dat is een beetje saai.").
next(ho1_food,  s3, "true",  s4).

state(ho1_food, s4, say).
text(ho1_food,  s4, "Vooral het fruit, dat jullie mensen eten, vind ik onwijs boeiend.").
next(ho1_food,  s4, "true",  s5).

state(ho1_food, s5, question).
stateConfig(ho1_food, s5, [type=input, context='answer_fruit', options= ["appel", "banaan", "aadbei", "manderijn", "druif", "kiwi"], umVariable=fruit, defaultAnswer="banaan"]).
text(ho1_food, s5, "Wat is jouw lievelings fruit?").
next(ho1_food, s5, 'success', s6).
next(ho1_food, s5, 'fail', s6f).

state(ho1_food, s6, question).
stateConfig(ho1_food, s6, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_food, s6, "Hoe smaakt een %fruit% eigenlijk?").
next(ho1_food, s6, 'success', s7).
next(ho1_food, s6, 'fail', s7).

state(ho1_food, s6f, question).
stateConfig(ho1_food, s6f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_food, s6f, "Hoe smaakt dat eigenlijk?").
next(ho1_food, s6f, 'success', s7f).
next(ho1_food, s6f, 'fail', s7f).

state(ho1_food, s7, say).
text(ho1_food,  s7, "Facinerend, echt waar. Ik vind de kleur van een %fruit% ook zo leuk.").
next(ho1_food,  s7, "true",  s8).

state(ho1_food, s7f, say).
text(ho1_food,  s7f, "Facinerend, echt waar. Ik vind de kleur ook zo leuk.").
next(ho1_food,  s7f, "true",  s8).

state(ho1_food, s8, say).
text(ho1_food,  s8, "Weetje wat nog meer van die grappige kleuren hebben?").
next(ho1_food,  s8, "true",  s9).

state(ho1_food, s9, say).
text(ho1_food,  s9, "Sausjes. Weetje wel, van die smurrie die jullie over de frietjes doen. ").
next(ho1_food,  s9, "true",  s10).

state(ho1_food, s10, question).
stateConfig(ho1_food, s10, [type=input, context='answer_saus', options= ["mayonaise", "ketchup", "curry", "joppie", "pindasaus", "appelmoes"], umVariable=saus, defaultAnswer="mayonaise"]).
text(ho1_food, s10, "Welke saus doe jij graag over jouw frietjes?").
next(ho1_food, s10, 'success', s11).
next(ho1_food, s10, 'fail', s11f).

state(ho1_food, s11, say).
text(ho1_food,  s11, "Het zegt veel over jou dat je %saus% op je frietjes doet. \pau=400\ ").
next(ho1_food,  s11, "true",  s12).

state(ho1_food, s11f, say).
text(ho1_food,  s11f, "Oke, oke.").
next(ho1_food,  s11f, "true",  s13).

state(ho1_food, s12, say).
text(ho1_food,  s12, "Geintje, ik weet helemaal niet of sausjes wat kunnen zeggen over mensen").

%%% Beroep %%%
state(ho1_beroep, s1, say).
text(ho1_beroep,  s1, "Weet je wel wat iets over iemand zegt?").
next(ho1_beroep,  s1, "true",  s2).

state(ho1_beroep, s2, say).
text(ho1_beroep,  s2, "Wat ze later willen worden.").
next(ho1_beroep,  s2, "true",  s3).

state(ho1_beroep, s3, say).
text(ho1_beroep,  s3, "Ik ben vorig jaar naar school gegaan om een slimme koelkast te worden.").
next(ho1_beroep,  s3, "true",  s4).

state(ho1_beroep, s4, say).
text(ho1_beroep,  s4, "En ik had een tijdje een bijbaantje als graafmachine.").
next(ho1_beroep,  s4, "true",  s5).

state(ho1_beroep, s5, say).
text(ho1_beroep,  s5, "Maar ik ben nu toch heel blij dat ik aan het leren ben om een robot vriendje te worden.").
next(ho1_beroep,  s5, "true",  s6).

state(ho1_beroep, s6, question).
stateConfig(ho1_beroep, s6, [type=input, context='answer_beroep', options= ["dokter", "politieagent", "uitvinder", "topsporter", "deejee"], umVariable=beroep, defaultAnswer="dokter"]).
text(ho1_beroep, s6, "Wat wil jij worden later?").
next(ho1_beroep, s6, 'success', s7).
next(ho1_beroep, s6, 'fail', s8).

state(ho1_beroep, s7, say).
text(ho1_beroep,  s7, "%beroep%, wat interessant.").
next(ho1_beroep,  s7, "true",  s8).

state(ho1_beroep, s8, question).
stateConfig(ho1_beroep, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_beroep, s8, "Waarom wil je dat worden?").
next(ho1_beroep, s8, 'success', s9).
next(ho1_beroep, s8, 'fail', s9).

state(ho1_beroep, s9, say).
text(ho1_beroep,  s9, "Gaaf zeg. Ik vind het heel goed bij jou passen.").

%%% Sport %%%
state(ho1_sports, s1, say).
text(ho1_sports,  s1, "Als robot dans en voetbal ik graag.").
next(ho1_sports, s1, "true", s2).

state(ho1_sports, s2, question).
stateConfig(ho1_sports, s2, [type=input, context='answer_sports', options=['voetbal', 'hockey', 'dansen', 'paard rijden'], umVariable=favo_sport]).
text(ho1_sports, s2, "Welke sport doe jij graag, %first_name%?").
next(ho1_sports, s2, 'success', s3).
next(ho1_sports, s2, 'fail', s5f).

state(ho1_sports, s3, say).
text(ho1_sports,  s3, "Wat gaaf zeg!").
next(ho1_sports, s3, "true", s4).

state(ho1_sports, s4, question).
stateConfig(ho1_sports, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_sports, s4, "Wat vind je zo leuk aan %favo_sport%?").
next(ho1_sports, s4, 'success', s5).
next(ho1_sports, s4, 'fail', s5f).

state(ho1_sports, s5, say).
text(ho1_sports,  s5, "%favo_sport% klinkt inderdaad erg leuk!").

state(ho1_sports, s5f, say).
text(ho1_sports,  s5f, "Oke").

%% continue?
state(ho1_continue, s1, say).
text(ho1_continue,  s1, "Ik heb nog twee vraagjes.").
next(ho1_continue, s1, "true", s2).

state(ho1_continue, s2, question).
stateConfig(ho1_continue, s2, [type=yesno, context='answer_yesno']).
text(ho1_continue, s2, "Of wil je nu al stoppen?").
next(ho1_continue, s2, 'answer_yes', s3y).
next(ho1_continue, s2, 'answer_no', s3n).
next(ho1_continue, s2, 'answer_dontknow', s3d).
next(ho1_continue, s2, 'fail', s3d).

state(ho1_continue, s3y, say).
text(ho1_continue,  s3y, "Dat is helemaal prima").
remove_topic(ho1_continue,  s3y, [ho1_family, ho1_sports]).

state(ho1_continue, s3n, say).
text(ho1_continue,  s3n, "Gezellig, laten we verder gaan").

state(ho1_continue, s3d, say).
text(ho1_continue,  s3d, "Weetje wat, laat ik ze toch nog even stellen.").

%%% Colors %%%
state(ho1_colors, s1, say).
text(ho1_colors,  s1, "Het woord kleuren is nu al een aantal keer gevallen.").
next(ho1_colors, s1, "true", s2).

state(ho1_colors, s2, question).
stateConfig(ho1_colors, s2, [type=yesno, context='answer_yesno']).
text(ho1_colors, s2, "Heb jij eigenlijk een lievelings kleur?").
next(ho1_colors, s2, 'answer_yes', s3).
next(ho1_colors, s2, 'answer_no', s2n).
next(ho1_colors, s2, 'answer_dontknow', s2n).
next(ho1_colors, s2, 'fail', s2n).

state(ho1_colors, s2n, say).
text(ho1_colors,  s2n, "Als je een kleur zou moeten kiezen.").
next(ho1_colors, s2n, "true", s3).

state(ho1_colors, s3, question).
stateConfig(ho1_colors, s3, [type=input, context='answer_color', options= ["Groen", "Paars", "Rood", "Roze", "Blauw", "Oranje", "Geel"], umVariable=fav_color]).
text(ho1_colors, s3, "Wat is dan jouw lievelings kleur?").
next(ho1_colors, s3, 'success', s4).
next(ho1_colors, s3, 'fail', s7).

state(ho1_colors, s4, say).
text(ho1_colors, s4, "Kijk, ik heb geprobeerd mijn buik lampje %fav_color% te maken. Het lukt niet altijd even goed.").
leds(ho1_colors, s4, direct, ["ChestLeds"], [fav_color]).
next(ho1_colors, s4, "true", s5).

state(ho1_colors, s5, question).
stateConfig(ho1_colors, s5, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_colors, s5, "Waar gebruik jij die kleur het meest?").
next(ho1_colors, s5, 'success', s6).
next(ho1_colors, s5, 'fail', s7).

state(ho1_colors, s6, question).
stateConfig(ho1_colors, s6, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_colors, s6, "Oh interessant! Vertel daar eens wat meer over?").
next(ho1_colors, s6, 'success', s7).
next(ho1_colors, s6, 'fail', s7).

state(ho1_colors, s7, say).
text(ho1_colors,  s7, "Wat gezellig dat je dit met me deelt %first_name%.").

%%% Family %%%
state(ho1_family, s1, say).
text(ho1_family,  s1, "Zal ik je een geheimpje vertellen?").
next(ho1_family,  s1, "true",  s2).

state(ho1_family, s2, say).
text(ho1_family,  s2, "De reden dat ik het zo veel over kleur heb, is dat ik zelf niet zo kleurrijk ben.").
next(ho1_family,  s2, "true",  s3).

state(ho1_family, s3, say).
text(ho1_family,  s3, "Ik heb broertjes en zusjes en die zijn rood, en blauw, en zelfs oranje.").
next(ho1_family,  s3, "true",  s4).

state(ho1_family, s4, say).
text(ho1_family,  s4, "Ik denk dat ik een beetje jaloers ben.").
next(ho1_family,  s4, "true",  s5).

state(ho1_family, s5, question).
stateConfig(ho1_family, s5, [type=yesno, context='answer_yesno']).
text(ho1_family, s5, "Heb jij broers of zussen?").
next(ho1_family, s5, 'answer_yes', s6y).
next(ho1_family, s5, 'answer_no', s6n).
next(ho1_family, s5, 'answer_dontknow', s7).
next(ho1_family, s5, 'fail', s7).

state(ho1_family, s6y, say).
text(ho1_family,  s6y, "Leuk zeg. Ondanks dat ik soms een beetje jaloers ben, houd ik wel heel veel van mijn broertjes en zusjes.").
next(ho1_family,  s6y, "true",  s7).

state(ho1_family, s6n, say).
text(ho1_family,  s6n, "Je mag er wel eetje van mij lenen hoor.").
next(ho1_family,  s6n, "true",  s7).

state(ho1_family, s7, question).
stateConfig(ho1_family, s7, [type=yesno, context='answer_yesno']).
text(ho1_family, s7, "Heb je een leuk verhaal over je familie die je wilt vertellen?").
next(ho1_family, s7, 'answer_yes', s8y).
next(ho1_family, s7, 'answer_no', s8n).
next(ho1_family, s7, 'answer_dontknow', s8n).
next(ho1_family, s7, 'fail', s8n).

state(ho1_family, s8y, question).
stateConfig(ho1_family, s8y, [type=openend, context='answer_open', inputModality=[speech=1], maxAnswerTime=[speechopenend=15000]]).
text(ho1_family, s8y, "Ben benieuwd, vertel maar.").
next(ho1_family, s8y, 'success', s9).
next(ho1_family, s8y, 'fail', s9).

state(ho1_family, s9, say).
text(ho1_family,  s9, "Wat leuk om te horen zeg. Laat ik ook een verhaal delen.").
next(ho1_family,  s9, "true",  s10).

state(ho1_family, s8n, say).
text(ho1_family,  s8n, "Helemaal prima. Ik heb nog wel een grappig verhaal.").
next(ho1_family,  s8n, "true",  s10).

state(ho1_family, s10, say).
text(ho1_family,  s10, "Ik heb met mijn familie eens mee gedaan aan een robot voetbal toernooi.").
next(ho1_family,  s10, "true",  s11).

state(ho1_family, s11, say).
text(ho1_family,  s11, "Het was echt een zootje ongeregeld, met veel vallen en opstaan.").
next(ho1_family,  s11, "true",  s12).

state(ho1_family, s12, say).
text(ho1_family,  s12, "Kijk maar eens op juw Tube, je kunt zoeken op WK robot voetbal.").
next(ho1_family,  s12, "true",  s13).

state(ho1_family, s13, say).
text(ho1_family,  s13, "Dan valt er heel wat te lachen. We hadden zelf ook de grootste lol.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Preview session 2			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TODO

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Goodbye				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho1_goodbye, s1, say).
text(ho1_goodbye,  s1, "Zo %first_name% het is weer tijd om te stoppen voor vandaag.").
next(ho1_goodbye,  s1, "true",  s2).

state(ho1_goodbye, s2, say).
text(ho1_goodbye,  s2, "Ik vond het erg leuk om met jou te kletsen.").
next(ho1_goodbye,  s2, "true",  s3).

state(ho1_goodbye, s3, question).
stateConfig(ho1_goodbye, s3, [type=yesno, context='answer_yesno']).
text(ho1_goodbye, s3, "Vond jij het ook leuk?").
next(ho1_goodbye, s3, 'answer_yes', s4y).
next(ho1_goodbye, s3, 'answer_no', s4n).
next(ho1_goodbye, s3, 'answer_dontknow', s4d).
next(ho1_goodbye, s3, 'fail', s5y).

state(ho1_goodbye, s4y, say).
text(ho1_goodbye,  s4y, "Leuk om te horen, ik klets graag.").
next(ho1_goodbye,  s4y, "true",  s5y).

state(ho1_goodbye, s4d, say).
text(ho1_goodbye,  s4d, "Oke").
next(ho1_goodbye,  s4d, "true",  s4n).

state(ho1_goodbye, s4n, question).
stateConfig(ho1_goodbye, s4n, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_goodbye, s4n, "Heb je nog een tip voor mij, iets dat ik beter kan doen?").
next(ho1_goodbye, s4n, 'success', s5n).
next(ho1_goodbye, s4n, 'fail', s7).

state(ho1_goodbye, s5n, say).
text(ho1_goodbye,  s5n, "Bedankt, ik ga mijn best doen om dat te verbeteren.").
next(ho1_goodbye,  s5n, "true",  s7).

state(ho1_goodbye, s5y, question).
stateConfig(ho1_goodbye, s5y, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho1_goodbye, s5y, "Wat vond je het leukste?").
next(ho1_goodbye, s5y, 'success', s6y).
next(ho1_goodbye, s5y, 'fail', s7).

state(ho1_goodbye, s6y, say).
text(ho1_goodbye,  s6y, "Dat was ook leuk!").
next(ho1_goodbye,  s6y, "true",  s7).

state(ho1_goodbye, s7, say).
text(ho1_goodbye,  s7, "Ik kijk in ieder geval uit naar de volgende keer!").
next(ho1_goodbye,  s7, "true",  s8).

state(ho1_goodbye, s8, say).
anim(ho1_goodbye, s8, file, "resources/gestures/wave1.json").
text(ho1_goodbye,  s8, "Tot dan %first_name%, doei doei \pau=300\ ").
next(ho1_goodbye,  s8, "true",  s9).

state(ho1_goodbye, s9, say).
go_to_posture(ho1_goodbye, s9).