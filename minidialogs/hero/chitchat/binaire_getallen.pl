%%%% HEADER %%%%
%% binaire_getallen %%
minidialog(binaire_getallen, [type=chitchat, theme=lievelings, topic=getal]).

move(binaire_getallen, s1, say).
text(binaire_getallen, s1, "Hee %first_name% , ik moet een robot rugnummer kiezen voor de robo spelen!").
next(binaire_getallen, s1, "true", s2).

move(binaire_getallen, s2, question).
moveConfig(binaire_getallen, s2, [type=yesno, context='answer_yesno', umVariable=heeft_geluksgetal]).
text(binaire_getallen, s2, "Heb jij een geluksgetal?").
next(binaire_getallen, s2, "answer_yes", s3ja1).
next(binaire_getallen, s2, "answer_no", s3nee1).
next(binaire_getallen, s2, "answer_dontknow", s3nee1).
next(binaire_getallen, s2, "fail", s3nee1).

move(binaire_getallen, s3ja1, say).
text(binaire_getallen, s3ja1, "Cool.").
next(binaire_getallen, s3ja1, "true", s3ja2).

move(binaire_getallen, s3ja2, question).
moveConfig(binaire_getallen, s3ja2, [type=input, context="integer", options=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], umVariable=robot_rugnummer]).
text(binaire_getallen, s3ja2, "Wat is jouw geluksgetal?").
next(binaire_getallen, s3ja2, 0, s3011).
next(binaire_getallen, s3ja2, 1, s3011).
next(binaire_getallen, s3ja2, "_others", s3waarom1).
next(binaire_getallen, s3ja2, "fail", s3fail1).

move(binaire_getallen, s3nee1, say).
text(binaire_getallen, s3nee1, "Misschien is het typisch iets voor robots om van cijfers te houden!").
next(binaire_getallen, s3nee1, "true", s3nee2).

move(binaire_getallen, s3nee2, question).
moveConfig(binaire_getallen, s3nee2, [type=input, context="integer", options=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], umVariable=robot_rugnummer]).
text(binaire_getallen, s3nee2, "Welk rugnummer zal ik dan nemen voor de robo spelen?").
next(binaire_getallen, s3nee2, 0, s3011).
next(binaire_getallen, s3nee2, 1, s3011).
next(binaire_getallen, s3nee2, "_others", s3waarom1).
next(binaire_getallen, s3nee2, "fail", s3fail1).

move(binaire_getallen, s3011, say).
text(binaire_getallen, s3011, "Wat leuk! Dat is één van mijn geluksgetallen!").
next(binaire_getallen, s3011, "true", s3waarom1).

move(binaire_getallen, s3waarom1, question).
moveConfig(binaire_getallen, s3waarom1, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=geluksgetal_reden]).
text(binaire_getallen, s3waarom1, "Wat vind je zo leuk aan %robot_rugnummer%?").
next(binaire_getallen, s3waarom1, "success", s3waarom2).
next(binaire_getallen, s3waarom1, "fail", s3waarom2).

move(binaire_getallen, s3waarom2, say).
text(binaire_getallen, s3waarom2, "Zo te horen is %robot_rugnummer% inderdaad een goede keuze!").
next(binaire_getallen, s3waarom2, "true", s4).

move(binaire_getallen, s3fail1, say).
text(binaire_getallen, s3fail1, "Laten we gaan voor %robot_rugnummer% als rugnummer.").
next(binaire_getallen, s3fail1, "true", s4).

move(binaire_getallen, s4, say).
text(binaire_getallen, s4, "Ik heb dus twee geluksgetallen: nul en één.").
next(binaire_getallen, s4, "true", s5).

move(binaire_getallen, s5, say).
text(binaire_getallen, s5, "Voor robots zijn dat de allerbijzonderste getallen in de hele wereld.").
next(binaire_getallen, s5, "true", s6).

move(binaire_getallen, s6, say).
text(binaire_getallen, s6, "De één en de nul regelen samen alles wat ik denk, en hoor, en zie.").
next(binaire_getallen, s6, "true", s7).

move(binaire_getallen, s7, say).
text(binaire_getallen, s7, "Nul is uit, één is aan.").
next(binaire_getallen, s7, "true", s8).

move(binaire_getallen, s8, say).
text(binaire_getallen, s8, "Of eigenlijk, nul is nee, één is ja.").
next(binaire_getallen, s8, "true", s9).

move(binaire_getallen, s9, say).
text(binaire_getallen, s9, "Dat was een leuk robot feitje").

