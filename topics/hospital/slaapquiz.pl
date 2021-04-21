%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%               INTERACTIEVE SLAAPQUIZ                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introductie                                            %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(intro, s1, say).
text(intro,  s1, "Hallo, ik ben Hero.").
next(intro,  s1, "true",  s1q).

state(intro, s1q, say).
stateConfig(intro, s1q, [waitTimer=3000]).
text(intro,  s1q, "Hoe heet jij?").
next(intro,  s1q, "true", s1r).

state(intro, s1r, say).
text(intro,  s1r, "%first_name%, wat leuk je te ontmoeten!").
next(intro,  s1r, "true",  s1i1).

state(intro, s1i1, say).
text(intro,  s1i1, "Ik weet veel over slaap.").
next(intro,  s1i1, "true",  s1i2).

state(intro, s1i2, say).
text(intro,  s1i2, "Mijn vriendjes noemen mij daarom ook wel een slaap professor.").
next(intro,  s1i2, "true",  s1i3).

state(intro, s1i3, say).
text(intro,  s1i3, "Ik vind het leuk om daar met jou over te praten!").
next(intro,  s1i3, "true",  s2).

state(intro, s2, say).
text(intro,  s2, "Maar eerst heb ik nog een andere vraag.").
next(intro,  s2, "true",  s2q).

state(intro, s2q, question).
stateConfig(intro, s2q, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(intro,  s2q, "Hoe oud ben jij?").
next(intro,  s2q, 'success', s2r).
next(intro,  s2q, 'fail', s2r).

state(intro, s2r, say).
text(intro,  s2r, "Jeetje, zo groot al?").
next(intro,  s2r, "true",  s3q).

state(intro, s3q, question).
stateConfig(intro, s3q, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(intro,  s3q, "En wat vind je leuk om te doen, wat is jouw hobby?").
next(intro,  s3q, 'success', s3r1).
next(intro,  s3q, 'fail', s3r1).

state(intro, s3r1, say).
text(intro,  s3r1, "Wat leuk dat je dit met mij deelt!").
next(intro,  s3r1, "true",  s3r2).

state(intro, s3r2, say).
text(intro,  s3r2, "Mijn grootste hobby is slapen.").
next(intro,  s3r2, "true",  s3i1).

state(intro, s3i1, say).
text(intro,  s3i1, "Misschien kun je nieuwe dingen van mij leren over slaap.").
next(intro,  s3i1, "true",  s3i2).

state(intro, s3i2, say).
text(intro,  s3i2, "Ik heb ook veel tips over hoe je beter kunt slapen!").
next(intro,  s3i2, "true",  s3i3).

state(intro, s3i3, say).
text(intro,  s3i3, "Ik zal vertellen wat we gaan doen.").
next(intro,  s3i3, "true",  s3i4).

state(intro, s3i4, say).
text(intro,  s3i4, "Ik ga je steeds eerst een vraag stellen, en daar kun jij dan antwoord op geven.").
next(intro,  s3i4, "true",  s3i5).

state(intro, s3i5, say).
text(intro,  s3i5, "Dat kan door met mij te praten, maar soms gaan we ook de tè blèet gebruiken; dan zal ik dat er bij zeggen.").
next(intro,  s3i5, "true",  s3i6).

state(intro, s3i6, say).
text(intro,  s3i6, "Als jij je antwoord hebt gegeven, ga ik je meer vertellen over jouw antwoord, en heb ik misschien ook wel een tip voor je.").
next(intro,  s3i6, "true",  s3i7).

state(intro, s3i7, say).
text(intro,  s3i7, "Als ik een tip heb, dan zal ik al mijn lichtjes zoals nu oranje maken, zo kun je de tips goed herkennen.").
leds(intro,  s3i7, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).
next(intro,  s3i7, "true",  s4q).

state(intro, s4q, question).
stateConfig(intro, s4q, [type=yesno, context='answer_yesno']).
leds(intro,  s4q, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
text(intro,  s4q, "Ben je er klaar voor?").
next(intro,  s4q, 'answer_yes', s4y).
next(intro,  s4q, 'answer_no', s4n).
next(intro,  s4q, 'answer_dontknow', s4f).
next(intro,  s4q, 'fail', s4f).

state(intro, s4y, say).
text(intro,  s4y, "Goed zo!").
next(intro,  s4y, "true", s4i).

state(intro, s4n, say).
text(intro,  s4n, "Dan zal ik nog even wachten. Druk je op de grijze knop vooraan bij mijn tenen als je er wel klaar voor bent?").
stateConfig(intro, s4n, [next='FrontTactilTouched']).
next(intro,  s4n, "true", s4i).

state(intro, s4f, say).
text(intro,  s4f, "Druk je op de grijze knop vooraan bij mijn tenen als je er wel klaar voor bent?").
stateConfig(intro, s4f, [next='FrontTactilTouched']).
next(intro,  s4f, "true", s4i).

state(intro, s4i, say).
text(intro,  s4i, "Dan gaan we beginnen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Algemeen                                               %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(algemeen, s1, say).
text(algemeen,  s1, "Ik ben benieuwd wat je van slapen vindt.").
next(algemeen,  s1, "true",  s1i1).

state(algemeen, s1i1, say).
text(algemeen,  s1i1, "Vind je zelf dat je goed slaapt?").
next(algemeen,  s1i1, "true",  s1i2).

state(algemeen, s1i2, say).
text(algemeen,  s1i2, "Je kunt zo op de tè blèet kiezen tussen drie antwoorden.").
next(algemeen,  s1i2, "true",  s1i3).

state(algemeen, s1i3, say).
text(algemeen,  s1i3, "De eerste is dat je meestal goed slaapt, de tweede is dat je soms goed, soms slecht slaapt, en de derde is dat je meestal slecht slaapt.").
next(algemeen,  s1i3, "true",  s1q).

state(algemeen, s1q, question).
stateConfig(algemeen, s1q, [type=quiz, context='answer_sleep', inputModality=[tablet=1], options=["Meestal goed", "Soms goed soms slecht", "Meestal slecht"], correctAnswer=["Meestal goed"]]).
text(algemeen,  s1q, "Welk antwoord past het beste bij jou?").
next(algemeen,  s1q, 'correct', s1g1).
next(algemeen,  s1q, 'incorrect', s1s1).
next(algemeen,  s1q, 'fail', s1s1). % TODO: failure case?

state(algemeen, s1g1, say).
text(algemeen,  s1g1, "Wat fijn om te horen!").
next(algemeen,  s1g1, "true",  s1g2).

state(algemeen, s1g2, say).
text(algemeen,  s1g2, "Ik ben blij dat je vindt dat je goed slaapt.").
next(algemeen,  s1g2, "true",  s1g3).

state(algemeen, s1g3, say).
text(algemeen,  s1g3, "Misschien dat je toch nog iets aan mijn tips hebt.").

state(algemeen, s1s1, say).
text(algemeen,  s1s1, "Wat knap dat je dat durft aan te geven!").
next(algemeen,  s1s1, "true",  s1s2).

state(algemeen, s1s2, say).
text(algemeen,  s1s2, "Slapen is ook lastig.").
next(algemeen,  s1s2, "true",  s1s3).

state(algemeen, s1s3, say).
text(algemeen,  s1s3, "Hopelijk kan ik je helpen met wat tips.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Activiteiten en schermgebruik                          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(activiteiten, s1, say).
text(activiteiten,  s1, "Laten we het hebben over hoe het 's avonds bij jou thuis gaat.").
next(activiteiten,  s1, "true",  s1i1).

state(activiteiten, s1i1, say).
text(activiteiten,  s1i1, "Na het avondeten ga ik altijd knutselen of een rustig spelletje doen.").
next(activiteiten,  s1i1, "true",  s1q).

state(activiteiten, s1q, question).
stateConfig(activiteiten, s1q, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(activiteiten,  s1q, "Wat doe jij 's avonds voordat je naar bed gaat?").
next(activiteiten,  s1q, 'success', s1r).
next(activiteiten,  s1q, 'fail', s1r).

state(activiteiten, s1r, say).
text(activiteiten,  s1r, "Wat interessant!").
next(activiteiten,  s1r, "true",  s1i2).

state(activiteiten, s1i2, say).
text(activiteiten,  s1i2, "Het is goed om rustige dingen te doen 's avonds, zoals een boekje lezen of een rustig spelletje.").
next(activiteiten,  s1i2, "true",  s1i3).

state(activiteiten, s1i3, say).
text(activiteiten,  s1i3, "Dan wordt je lichaam vanzelf wat slaperig.").
next(activiteiten,  s1i3, "true",  s1i4).

state(activiteiten, s1i4, say).
text(activiteiten,  s1i4, "Als je te drukke dingen doet, zoals drukke spelletjes, dan kan het moeilijk zijn om in slaap te vallen.").
next(activiteiten,  s1i4, "true",  s1t1).

state(activiteiten, s1t1, say).
text(activiteiten,  s1t1, "Wat je beter ook niet kunt doen vlak voor het slapen, is TikTok of Youtube filmpjes kijken of berichtjes beantwoorden op je telefoon.").
leds(activiteiten,  s1t1, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).
next(activiteiten,  s1t1, "true",  s1t2).

state(activiteiten, s1t2, say).
text(activiteiten,  s1t2, "Kijken op een scherm houdt je namelijk wakker.").
next(activiteiten,  s1t2, "true",  s1t3).

state(activiteiten, s1t3, say).
text(activiteiten,  s1t3, "Het beste zou zijn om geen telefoon of tè blèet mee naar bed te nemen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Routine                                                %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(routine, s1, say).
text(routine,  s1, "Ik ben ook wel benieuwd wat je doet voordat je gaat slapen.").
leds(routine,  s1, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
next(routine,  s1, "true",  s1i1).

state(routine, s1i1, say).
text(routine,  s1i1, "Ik poets altijd eerst mijn tanden, dan ga ik plassen en lees ik een boekje.").
next(routine,  s1i1, "true",  s1q).

state(routine, s1q, question).
stateConfig(routine, s1q, [type=yesno, context='answer_yesno']).
text(routine,  s1q, "Heb jij een vaste routine  voordat je gaat slapen?").
next(routine,  s1q, 'answer_yes', s1y1).
next(routine,  s1q, 'answer_no', s1n1).
next(routine,  s1q, 'answer_dontknow', s1n1).
next(routine,  s1q, 'fail', s1n1).

%%% YES BRANCH %%%
state(routine, s1y1, say).
text(routine,  s1y1, "Wat goed!").
next(routine,  s1y1, "true", s1y2).

state(routine, s1y2, say).
text(routine,  s1y2, "Als je elke avond hetzelfde doet voordat je naar bed gaat, weet je lichaam dat het tijd is om te slapen.").
next(routine,  s1y2, "true", s2y).

state(routine, s2y, say).
text(routine,  s2y, "Ik ben benieuwd wat jouw routine is.").
next(routine,  s2y, "true",  s2yq).

state(routine, s2yq, question).
stateConfig(routine, s2yq, [type=yesno, context='answer_yesno']).
text(routine,  s2yq, "Wil je die met behulp van de tè blèet aan mij laten zien?").
next(routine,  s2yq, 'answer_yes', s2yy).
next(routine,  s2yq, 'answer_no', s2yn).
next(routine,  s2yq, 'answer_dontknow', s2yn).
next(routine,  s2yq, 'fail', s2yn).

state(routine, s2yy, say).
text(routine,  s2yy, "Wat leuk!").
next(routine,  s2yy, "true", s3y).

state(routine, s2yn, say).
text(routine,  s2yn, "Dat is niet erg.").
next(routine,  s2yn, "true", s4).

state(routine, s3y, say).
text(routine,  s3y, "Op de tè blèet zie je zo allemaal dingen die je kunt doen voordat je gaat slapen, zoals pyjama aandoen, tanden poetsen, plassen, gordijnen dicht doen, en een boekje lezen.").
next(routine,  s3y, "true", s3yq).

state(routine, s3yq, question).
stateConfig(routine, s3yq, [type=sorter, inputModality=[tablet=1], options=['pyjama'='https://i.pinimg.com/originals/3c/f8/34/3cf8347b5f1108562937acfbb2738140.jpg', 'poetsen'='https://i.pinimg.com/originals/e4/9b/f5/e49bf527682f10088fd1b051475783cb.jpg', 'lezen'='https://i.pinimg.com/474x/3f/ec/dc/3fecdc2f5560ec8a940c08d78ad6ee88.jpg']]).
text(routine,  s3yq, "Kun jij de plaatjes op volgorde aanklikken zoals jij ze doet voordat je gaat slapen? Je hoeft niet alle plaatjes aan te klikken als sommige dingen niet bij jouw routine horen.").
next(routine,  s3yq, "true", s3yr).

state(routine, s3yr, say).
text(routine,  s3yr, "Wauw, dat is een goede routine!").
next(routine,  s3yr, "true", s3yt).

state(routine, s3yt, say).
text(routine,  s3yt, "Ga vooral door met een routine voordat je gaat slapen.").
leds(routine,  s3yt, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).
next(routine,  s3yt, "true", s4).

%%% NO BRANCH %%%
state(routine, s1n1, say).
text(routine,  s1n1, "Als je elke avond hetzelfde doet voordat je naar bed gaat, weet je lichaam dat het tijd is om te slapen.").
next(routine,  s1n1, "true", s1n2).

state(routine, s1n2, say).
text(routine,  s1n2, "Een routine kan daarbij helpen.").
next(routine,  s1n2, "true", s2nq).

state(routine, s2nq, question).
stateConfig(routine, s2nq, [type=yesno, context='answer_yesno']).
text(routine,  s2nq, "Zullen we samen met behulp van de tè blèet een routine maken?").
next(routine,  s2nq, 'answer_yes', s2ny).
next(routine,  s2nq, 'answer_no', s2nn).
next(routine,  s2nq, 'answer_dontknow', s2nn).
next(routine,  s2nq, 'fail', s2nn).

state(routine, s2ny, say).
text(routine,  s2ny, "Wat leuk!").
next(routine,  s2ny, "true", s3n).

state(routine, s2nn, say).
text(routine,  s2nn, "Oke.").
next(routine,  s2nn, "true", s4).

state(routine, s3n, say).
text(routine,  s3n, "Op de tè blèet zie je zo allemaal dingen die je kunt doen voordat je gaat slapen, zoals pyjama aandoen, tanden poetsen, plassen, gordijnen dicht doen, en een boekje lezen.").
next(routine,  s3n, "true", s3nq).

state(routine, s3nq, question).
stateConfig(routine, s3nq, [type=sorter, inputModality=[tablet=1], options=['pyjama'='https://i.pinimg.com/originals/3c/f8/34/3cf8347b5f1108562937acfbb2738140.jpg', 'poetsen'='https://i.pinimg.com/originals/e4/9b/f5/e49bf527682f10088fd1b051475783cb.jpg', 'lezen'='https://i.pinimg.com/474x/3f/ec/dc/3fecdc2f5560ec8a940c08d78ad6ee88.jpg']]).
text(routine,  s3nq, "Kun jij de plaatjes op een volgorde aanklikken die jou handig lijkt? Je hoeft niet alle plaatjes aan te klikken als sommige dingen niet bij jou passen. Pappa of mamma mag natuurlijk helpen.").
next(routine,  s3nq, 'answer_yes', s3nr).
next(routine,  s3nq, 'answer_no', s3nr).
next(routine,  s3nq, 'answer_dontknow', s3nr).
next(routine,  s3nq, 'fail', s3nr).

state(routine, s3nr, say).
text(routine,  s3nr, "Wat heb je een goede routine gemaakt, knap hoor!").
next(routine,  s3nr, "true", s3nt1).

state(routine, s3nt1, say).
text(routine,  s3nt1, "Wil je die routine thuis eens uitproberen?").
leds(routine,  s3nt1, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).
next(routine,  s3nt1, "true", s3nt2).

state(routine, s3nt2, say).
text(routine,  s3nt2, "Dan ga je dus iedere avond deze routine doen voordat je gaat slapen.").
next(routine,  s3nt2, "true", s3nt3).

state(routine, s3nt3, say).
text(routine,  s3nt3, "Als je dat een paar avonden doet, zal je merken dat het makkelijker wordt om in slaap te vallen.").
next(routine,  s3nt3, "true", s4).

%%% COMMON END %%%
state(routine, s4, say).
text(routine,  s4, "Laten we verder praten over de slaapkamer.").
leds(routine,  s4, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Slaapkamer comfortabel                                 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(slaapkamer, s1, say).
text(slaapkamer,  s1, "Ik heb een hele fijne slaapkamer, kijk maar eens op de tè blèet!").
image(slaapkamer, s1i, "https://horecatrends.com/wordpress/wp-content/uploads/Robot-Mario-test-het-bed-ht.jpg").
next(slaapkamer,  s1, "true",  s1i1).

state(slaapkamer, s1i1, say).
text(slaapkamer,  s1i1, "Dit is mijn kamer. Ik heb veel robot knuffels en een heel zacht bed.").
image(slaapkamer, s1i1, "https://horecatrends.com/wordpress/wp-content/uploads/Robot-Mario-test-het-bed-ht.jpg").
next(slaapkamer,  s1i1, "true",  s1q).

state(slaapkamer, s1q, question).
stateConfig(slaapkamer, s1q, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(slaapkamer,  s1q, "Hoe ziet jouw slaapkamer er uit?").
next(slaapkamer,  s1q, 'success', s1r).
next(slaapkamer,  s1q, 'fail', s1r).

state(slaapkamer, s1r, say).
text(slaapkamer,  s1r, "Dat is interessant!").
next(slaapkamer,  s1r, "true",  s1i2).

state(slaapkamer, s1i2, say).
text(slaapkamer,  s1i2, "Wat mij helpt om goed te slapen, is dat mijn kamer lekker donker is.").
next(slaapkamer,  s1i2, "true",  s1i3).

state(slaapkamer, s1i3, say).
text(slaapkamer,  s1i3, "Ik ben heel goed in gordijnen dicht doen, kijk maar.").
next(slaapkamer,  s1i3, "true",  s1i4).

state(slaapkamer, s1i4, say).
audio(slaapkamer, s1i4, file, 'resources/sounds/racecar.wav').
anim(slaapkamer,  s1i4, file, "resources/gestures/racecar.xml").
next(slaapkamer,  s1i4, "true",  s2).

state(slaapkamer, s2, say).
text(slaapkamer,  s2, "Is jouw kamer ook donker als je gaat slapen?").
next(slaapkamer,  s2, "true",  s2i).

state(slaapkamer, s2i, say).
text(slaapkamer,  s2i, "Je kunt zo op de tè blèet kiezen uit drie plaatjes: op het eerste plaatje zie je een kamer die helemaal donker is, op het tweede plaatje een kamer die helemaal licht is, en op het derde plaatje een kamer die donker is met een nachtlampje.").
next(slaapkamer,  s2i, "true",  s2q).

state(slaapkamer, s2q, question).
stateConfig(slaapkamer, s2q, [type=quiz, inputModality=[tablet=1], context='answer_sleep', options=["Donker", "Licht", "Donker met nachtlampje"], correctAnswer=["Donker"]]).
text(slaapkamer,  s2q, "Welke kamer lijkt het meest op die van jou?").
next(slaapkamer,  s2q, 'correct', s2d).
next(slaapkamer,  s2q, 'incorrect', s2l).
next(slaapkamer,  s2q, 'fail', s2l).

state(slaapkamer, s2d, say).
text(slaapkamer,  s2d, "Heel goed! Ik had zelf vroeger een nachtlampje, maar mijn nachtlampje was niet te fel. Dat is belangrijk, want in een donkere kamer kun je beter slapen.").
next(slaapkamer,  s2d, "true",  s2i1).

state(slaapkamer, s2l, say).
text(slaapkamer,  s2l, "Soms kan een donkere kamer helpen om beter te slapen.").
next(slaapkamer,  s2l, "true",  s2i1).

state(slaapkamer, s2i1, say).
text(slaapkamer,  s2i1, "Als er niet te veel licht is, dan helpt dat je lichaam om slaapstofjes aan te maken.").
next(slaapkamer,  s2i1, "true",  s2i2).

state(slaapkamer, s2i2, say).
text(slaapkamer,  s2i2, "Die slaapstofjes helpen je lichaam om beter te slapen.").
next(slaapkamer,  s2i2, "true",  s2t1).

state(slaapkamer, s2t1, say).
text(slaapkamer,  s2t1, "Ik heb nog een andere tip: let er ook op dat je kamer niet te warm is, dan kun je het beter wat koeler maken door bij voorbeeld het raam open te zetten.").
leds(slaapkamer,  s2t1, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).
next(slaapkamer,  s2t1, "true",  s2t2).

state(slaapkamer, s2t2, say).
text(slaapkamer,  s2t2, "Maar niet te lang hoor, want je moet het natuurlijk ook niet koud krijgen; pappa of mamma kan daar vast bij helpen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Regelmatige bedtijden                                  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(bedtijden, s1, say).
text(bedtijden,  s1, "Even denken, wat wil ik nog meer vragen. Oh ja!").
leds(bedtijden,  s1, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
next(bedtijden,  s1, "true",  s1q).

state(bedtijden, s1q, question).
stateConfig(bedtijden, s1q, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(bedtijden,  s1q, "Hoe laat ga je ongeveer naar bed?").
next(bedtijden,  s1q, 'success', s1r).
next(bedtijden,  s1q, 'fail', s1r).

state(bedtijden, s1r, say).
text(bedtijden,  s1r, "Oke.").
next(bedtijden,  s1r, "true",  s2q).

state(bedtijden, s2q, question).
stateConfig(bedtijden, s2q, [type=yesno, context='answer_yesno']).
text(bedtijden,  s2q, "Ga je ook elke avond ongeveer rond deze tijd naar bed?").
next(bedtijden,  s2q, 'answer_yes', s2y).
next(bedtijden,  s2q, 'answer_no', s2n).
next(bedtijden,  s2q, 'answer_dontknow', s2n).
next(bedtijden,  s2q, 'fail', s2n).

state(bedtijden, s2y, say).
text(bedtijden,  s2y, "Wat goed van jou!").
next(bedtijden,  s2y, "true", s2yi).

state(bedtijden, s2yi, say).
text(bedtijden,  s2yi, "Het is heel belangrijk om elke avond op ongeveer dezelfde tijd naar bed te gaan; dan weet je lichaam dat het tijd is om te slapen.").

state(bedtijden, s2n, say).
text(bedtijden,  s2n, "Dat is ook lastig.").
next(bedtijden,  s2n, "true", s2ni).

state(bedtijden, s2ni, say).
text(bedtijden,  s2ni, "Het is wel belangrijk om elke avond op ongeveer dezelfde tijd naar bed te gaan; dan weet je lichaam dat het tijd is om te slapen.").
next(bedtijden,  s2ni, "true", s2nt).

state(bedtijden, s2nt, say).
text(bedtijden,  s2nt, "Misschien dat je met pappa of mamma een vaste afspraak kunt maken over hoe laat je naar bed gaat, dan kunnen zij jou daarbij helpen door aan te geven wanneer het bijna bedtijd is.").
leds(bedtijden,  s2nt, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Piekeren                                               %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(piekeren, s1, say).
text(piekeren,  s1, "Oke, volgende vraag.").
leds(piekeren,  s1, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
next(piekeren,  s1, "true",  s1q).

state(piekeren, s1q, question).
stateConfig(piekeren, s1q, [type=yesno, context='answer_yesno']).
text(piekeren,  s1q, "Als je in je bed gaat liggen, val je dan makkelijk in slaap?").
next(piekeren,  s1q, 'answer_yes', s1y).
next(piekeren,  s1q, 'answer_no', s1n).
next(piekeren,  s1q, 'answer_dontknow', s1f).
next(piekeren,  s1q, 'fail', s1f).

state(piekeren, s1y, say).
text(piekeren,  s1y, "Wat leuk!").
next(piekeren,  s1y, "true", s2).

state(piekeren, s1n, say).
text(piekeren,  s1n, "Dat lijkt mij heel lastig.").
next(piekeren,  s1n, "true", s2).

state(piekeren, s1f, say).
text(piekeren,  s1f, "Soms heb ik dagen dat ik meteen in slaap val, maar soms lig ik ook een tijdje wakker.").
next(piekeren,  s1f, "true", s2).

state(piekeren, s2, say).
text(piekeren,  s2, "Ik heb wel eens dat ik moeilijk in slaap val omdat ik me zorgen maak, en daar de hele tijd aan moet denken.").
next(piekeren,  s2, "true",  s2q).

state(piekeren, s2q, question).
stateConfig(piekeren, s2q, [type=yesno, context='answer_yesno']).
text(piekeren,  s2q, "Heb jij dat ook wel eens?").
next(piekeren,  s2q, 'answer_yes', s2y).
next(piekeren,  s2q, 'answer_no', s2n).
next(piekeren,  s2q, 'answer_dontknow', s2f).
next(piekeren,  s2q, 'fail', s2f).

state(piekeren, s2n, say).
text(piekeren,  s2n, "Dat is fijn! Het helpt mij als ik er overdag aan denk of er met iemand over praat, dan lukt het me beter om er 's avonds niet aan te denken.").

state(piekeren, s2y, say).
text(piekeren,  s2y, "Wat balen. Het helpt mij als ik er overdag aan denk of er met iemand over praat, dan lukt het me beter om er 's avonds niet aan te denken.").
next(piekeren,  s2y, "true", s2t1).

state(piekeren, s2f, say).
text(piekeren,  s2f, "Het helpt mij als ik er overdag aan denk of er met iemand over praat, dan lukt het me beter om er 's avonds niet aan te denken.").

state(piekeren, s2t1, say).
text(piekeren,  s2t1, "Als dat ook niet helpt, kun je er misschien met iemand over praten die je daarbij kan helpen.").
leds(piekeren,  s2t1, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).
next(piekeren,  s2t1, "true", s2t2).

state(piekeren, s2t2, say).
text(piekeren,  s2t2, "Weet pappa of mamma dat? Misschien dat je het ook tegen de dokter kunt zeggen?").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 's Nachts wakker                                       %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(wakker, s1, say).
text(wakker,  s1, "En als je in slaap bent gevallen?").
leds(wakker,  s1, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
next(wakker,  s1, "true",  s1q).

state(wakker, s1q, question).
stateConfig(wakker, s1q, [type=yesno, context='answer_yesno']).
text(wakker,  s1q, "Word je dan wel eens 's nachts wakker, en dat je dan niet meer kunt slapen?").
next(wakker,  s1q, 'answer_yes', s1y).
next(wakker,  s1q, 'answer_no', s1n).
next(wakker,  s1q, 'answer_dontknow', s1f).
next(wakker,  s1q, 'fail', s1f).

state(wakker, s1y, say).
text(wakker,  s1y, "Wat vervelend! Het is normaal om soms even wakker te worden 's nachts.").
next(wakker,  s1y, "true", s1i1).

state(wakker, s1n, say).
text(wakker,  s1n, "Wat fijn dat jij dat niet hebt! Het is normaal om soms even wakker te worden 's nachts.").
next(wakker,  s1n, "true", s1i1).

state(wakker, s1f, say).
text(wakker,  s1f, "Het is normaal om soms even wakker te worden 's nachts.").
next(wakker,  s1f, "true", s1i1).

state(wakker, s1i1, say).
text(wakker,  s1i1, "Als je slaapt, slaap je voor een deel heel diep, maar voor een deel ook minder diep en word je zelfs even wakker.").
next(wakker,  s1i1, "true", s1i2).

state(wakker, s1i2, say).
text(wakker,  s1i2, "Meestal val je dan gelijk weer in slaap en kun je je niet eens herinneren dat je even wakker was.").
next(wakker,  s1i2, "true", s1i3).

state(wakker, s1i3, say).
text(wakker,  s1i3, "Maar als ik 's nachts wel echt lang wakker ben, dan ga ik even uit bed om iets rustigs te doen, bij voorbeeld een boekje lezen.").
next(wakker,  s1i3, "true", s1i4).

state(wakker, s1i4, say).
text(wakker,  s1i4, "Dan wordt mijn lichaam weer rustig en moe, en kan ik daarna weer beter slapen.").
next(wakker,  s1i4, "true", s1t1).

state(wakker, s1t1, say).
text(wakker,  s1t1, "Ik heb ook nog een andere tip.").
leds(wakker,  s1t1, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).
next(wakker,  s1t1, "true", s1t2).

state(wakker, s1t2, say).
text(wakker,  s1t2, "Als je merkt dat je 's nachts vaak op je wekker kijkt, is het een goed idee om je wekker weg te zetten.").
next(wakker,  s1t2, "true", s1t3).

state(wakker, s1t3, say).
text(wakker,  s1t3, "Het is beter om niet te lang naar de klok te kijken als je wakker bent.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Bewegen                                                %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(bewegen, s1, say).
text(bewegen,  s1, "Zo, we hebben nu al best veel dingen besproken die te maken hebben met naar bed gaan, je slaapkamer en slapen.").
leds(bewegen,  s1, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
next(bewegen,  s1, "true",  s1i1).

state(bewegen, s1i1, say).
text(bewegen,  s1i1, "Ook overdag zijn er dingen die kunnen helpen bij beter slapen.").
next(bewegen,  s1i1, "true",  s1i2).

state(bewegen, s1i2, say).
text(bewegen,  s1i2, "Eén van die dingen is bewegen; bij bewegen kun je denken aan bij voorbeeld sporten, buitenspelen of fietsen").
next(bewegen,  s1i2, "true",  s1q).

state(bewegen, s1q, question).
stateConfig(bewegen, s1q, [type=yesno, context='answer_yesno']).
text(bewegen,  s1q, "Doe jij dit soort dingen overdag?").
next(bewegen,  s1q, 'answer_yes', s1y).
next(bewegen,  s1q, 'answer_no', s1n).
next(bewegen,  s1q, 'answer_dontknow', s1n).
next(bewegen,  s1q, 'fail', s1n).

state(bewegen, s1y, say).
text(bewegen,  s1y, "Wat goed, ga daar vooral mee door! Ik beweeg ook graag.").
next(bewegen,  s1y, "true", s1i3).

state(bewegen, s1n, say).
text(bewegen,  s1n, "Ik beweeg graag.").
next(bewegen,  s1n, "true", s1i3).

state(bewegen, s1i3, say).
text(bewegen,  s1i3, "Ik doe aan robot voetbal.").
next(bewegen,  s1i3, "true", s1i4).

state(bewegen, s1i4, say).
text(bewegen,  s1i4, "Het is fijn om te bewegen, en bewegen is ook belangrijk om goed te kunnen slapen.").
next(bewegen,  s1i4, "true", s1i5).

state(bewegen, s1i5, say).
text(bewegen,  s1i5, "Dan ben je 's avonds moe en kan je beter slapen.").
next(bewegen,  s1i5, "true", s1t).

state(bewegen, s1t, say).
text(bewegen,  s1t, "Mijn tip is dan ook om iedere dag even naar buiten te gaan en buiten te spelen.").
leds(bewegen,  s1t, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Eten/drinken                                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(etendrinken, s1, say).
text(etendrinken,  s1, "Ook eten en drinken kunnen invloed hebben op je slaap.").
leds(etendrinken,  s1, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
next(etendrinken,  s1, "true",  s1q).

state(etendrinken, s1q, question).
stateConfig(etendrinken, s1q, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(etendrinken,  s1q, "Wat heb jij gisteravond gegeten?").
next(etendrinken,  s1q, 'success', s1r).
next(etendrinken,  s1q, 'fail', s1r).

state(etendrinken, s1r, say).
text(etendrinken,  s1r, "Ik heb robotolie gedronken.").
next(etendrinken,  s1r, "true",  s2).

state(etendrinken, s2, say).
text(etendrinken,  s2, "Ik ben benieuwd van welk eten en drinken jij denkt dat je deze beter niet kunt nemen voordat je gaat slapen.").
next(etendrinken,  s2, "true",  s2q).

state(etendrinken, s2q, question).
stateConfig(etendrinken, s2q, [type=yesno, context='answer_yesno']).
text(etendrinken,  s2q, "Wil je dat met behulp van de tè blèet aan mij laten zien?").
next(etendrinken,  s2q, 'answer_yes', s2y).
next(etendrinken,  s2q, 'answer_no', s2n).
next(etendrinken,  s2q, 'answer_dontknow', s2n).
next(etendrinken,  s2q, 'fail', s2n).

state(etendrinken, s2n, say).
text(etendrinken,  s2n, "Dat is niet erg. Dan zal ik er wat meer over vertellen.").
next(etendrinken,  s2n, "true", s2i1).

state(etendrinken, s2y, say).
text(etendrinken,  s2y, "Leuk!").
next(etendrinken,  s2y, "true", s2yi).

state(etendrinken, s2yi, say).
text(etendrinken,  s2yi, "Kijk: op de tè blèet zie je allerlei soorten eten en drinken, zoals cola, energy drink, (warme) melk, en chocola.").
next(etendrinken,  s2yq, "true", s2yq).

state(etendrinken, s2yq, question).
stateConfig(routine, s2yq, [type=sorter, inputModality=[tablet=1], options=['cola'='https://spng.subpng.com/20191208/ul/transparent-beverage-can-diet-soda-logo-font-cola-cola5e396ebbabb864.8670916515808222037034.jpg', 'energy'='https://mpng.subpng.com/20190429/arl/kisspng-red-bull-x-fighters-red-bull-energy-drink-rbregcan-ieee-sb-university-of-patras-5cc6d9c9dc3831.611955141556535753902.jpg', 'chocola'='https://mpng.subpng.com/20200926/br/transparent-chocolate-bar-5f6fb02a625932.7410209016011551144028.jpg']]).
text(etendrinken,  s2yq, "Kun jij het eten en drinken aanklikken waarvan jij denkt dat je deze beter niet kunt nemen voordat je gaat slapen?").
next(etendrinken,  s2yq, 'answer_yes', s2yr).
next(etendrinken,  s2yq, 'answer_no', s2yr).
next(etendrinken,  s2yq, 'answer_dontknow', s2yr).
next(etendrinken,  s2yq, 'fail', s2yr).

state(etendrinken, s2yr, say).
text(etendrinken,  s2yr, "Goed gedaan!").
next(etendrinken,  s2yr, "true", s2i1).

state(etendrinken, s2i1, say).
text(etendrinken,  s2i1, "In bij voorbeeld cola, koffie of energy drinks zitten stofjes die je wakker kunnen houden.").
next(etendrinken,  s2i1, "true", s2i2).

state(etendrinken, s2i2, say).
text(etendrinken,  s2i2, "Die kan je beter niet nemen vlak voordat je gaat slapen.").
next(etendrinken,  s2i2, "true", s2i3).

state(etendrinken, s2i3, say).
text(etendrinken,  s2i3, "In chocola zitten die stofjes ook, dat vind ik wel jammer!").
next(etendrinken,  s2i3, "true", s3q).

state(etendrinken, s3q, question).
stateConfig(etendrinken, s3q, [type=yesno, context='answer_yesno']).
text(etendrinken,  s3q, "Hou jij ook van chocola?").
next(etendrinken,  s3q, 'answer_yes', s3qy).
next(etendrinken,  s3q, 'answer_no', s3qn).
next(etendrinken,  s3q, 'answer_dontknow', s3qy).
next(etendrinken,  s3q, 'fail', s3qy).

state(etendrinken, s3qy, say).
text(etendrinken,  s3qy, "Jammer hè, dat je chocola dus beter niet 's avonds kunt eten.").
next(etendrinken,  s3qy, "true", s3t1).

state(etendrinken, s3qn, say).
text(etendrinken,  s3qn, "Gelukkig, dat scheelt dan weer.").
next(etendrinken,  s3qn, "true", s3t1).

state(etendrinken, s3t1, say).
text(etendrinken,  s3t1, "Eet of drink jij wel eens chocola of cola voordat je gaat slapen?").
leds(etendrinken,  s3t1, direct, ['FaceLeds', 'ChestLeds'], ['orange', 'orange']).
next(etendrinken,  s3t1, "true", s3t2).

state(etendrinken, s3t2, say).
text(etendrinken,  s3t2, "Misschien dat je kunt proberen om dat niet te doen, zodat je beter kunt slapen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Afsluiting                                             %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(afsluiting, s1, say).
text(afsluiting,  s1, "Nou, volgens mij hebben we nu alles wel zo'n beetje besproken").
leds(afsluiting,  s1, direct, ['FaceLeds', 'ChestLeds'], ['white', 'white']).
next(afsluiting,  s1, "true",  s1i1).

state(afsluiting, s1i1, say).
text(afsluiting,  s1i1, "Wat heb je goed je best gedaan, en wat vond ik het leuk om dit samen met jou te doen!").
next(afsluiting,  s1i1, "true",  s1q).

state(afsluiting, s1q, question).
stateConfig(afsluiting, s1q, [type=yesno, context='answer_yesno']).
text(afsluiting,  s1q, "Vond jij het ook leuk?").
next(afsluiting,  s1q, 'answer_yes', s1y).
next(afsluiting,  s1q, 'answer_no', s1n).
next(afsluiting,  s1q, 'answer_dontknow', s1f).
next(afsluiting,  s1q, 'fail', s1f).

state(afsluiting, s1y, say).
text(afsluiting,  s1y, "Gelukkig, dat is fijn om te horen. Fijn dat we zo veel te weten zijn gekomen over hoe jij slaapt en hoe je beter zou kunnen slapen.").
next(afsluiting,  s1y, "true", s1i2).

state(afsluiting, s1n, say).
text(afsluiting,  s1n, "Wat jammer om te horen. Toch fijn dat we zo veel te weten zijn gekomen over hoe jij slaapt en hoe je beter zou kunnen slapen.").
next(afsluiting,  s1n, "true", s1i2).

state(afsluiting, s1f, say).
text(afsluiting,  s1f, "Fijn dat we zo veel te weten zijn gekomen over hoe jij slaapt en hoe je beter zou kunnen slapen.").
next(afsluiting,  s1f, "true", s1i2).

state(afsluiting, s1i2, say).
text(afsluiting,  s1i2, "Ik zal het nog kort samenvatten en laten zien op de tè blèet. Kijk je mee?").
image(afsluiting, s1i2, "https://www.elsevier.com/__data/assets/image/0008/822977/iStock-540400568-credit-Michail_Petrov-96-1200x600.jpg").
next(afsluiting,  s1i2, "true", s1i3).

state(afsluiting, s1i3, say).
text(afsluiting,  s1i3, "Handig hè, alle tips in één plaatje?").
image(afsluiting, s1i3, "https://www.elsevier.com/__data/assets/image/0008/822977/iStock-540400568-credit-Michail_Petrov-96-1200x600.jpg").
next(afsluiting,  s1i3, "true", s1i4).

state(afsluiting, s1i4, say).
text(afsluiting,  s1i4, "Ik heb ze ook op een magneet gezet, kijk maar. Leuk hè?").
next(afsluiting,  s1i4, "true", s1i5).

state(afsluiting, s1i5, say).
text(afsluiting,  s1i5, "Die mag je hebben, alsjeblieft.").
next(afsluiting,  s1i5, "true", s1o1).

state(afsluiting, s1o1, say).
text(afsluiting,  s1o1, "Zou je deze week eens willen gaan oefenen met deze tips?").
next(afsluiting,  s1o1, "true", s1o2).

state(afsluiting, s1o2, say).
text(afsluiting,  s1o2, "Ik ben benieuwd of ze jou kunnen helpen.").
next(afsluiting,  s1o2, "true", s1o3).

state(afsluiting, s1o3, say).
text(afsluiting,  s1o3, "Daarom ga ik jou en pappa of mamma over een week nog een vragenlijst sturen over slaap.").
next(afsluiting,  s1o3, "true", s1o4).

state(afsluiting, s1o4, say).
text(afsluiting,  s1o4, "Willen jullie die dan invullen voor mij? Dan kunnen jullie mij via die vragenlijst laten weten of jullie nog iets hebben gehad aan de tips.").
next(afsluiting,  s1o4, "true", s1o5).

state(afsluiting, s1o5, say).
text(afsluiting,  s1o5, "Ik ben benieuwd!").
next(afsluiting,  s1o5, "true", s1a1).

state(afsluiting, s1a1, say).
text(afsluiting,  s1a1, "Het was leuk om je te ontmoeten en samen over slaap te praten.").
next(afsluiting,  s1a1, "true", s1a2).

state(afsluiting, s1a2, say).
anim(afsluiting,  s1a2, file, "resources/gestures/wave1.json").
text(afsluiting,  s1a2, "Bedankt voor het meedoen, je hebt het goed gedaan! Doei doei!").
next(afsluiting,  s1a2, "true", s1a3).

state(afsluiting, s1a3, say).
go_to_posture(afsluiting, s1a3).