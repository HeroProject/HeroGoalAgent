%%%% HEADER %%%%
%% superkracht %%
minidialog(superkracht, [type=chitchat, theme=personalia, topic=superkracht]).

move(superkracht, s1, say).
text(superkracht, s1, "Ik heb laatst trouwens ontdekt dat veel mensen wel een superheld zouden willen zijn.").
next(superkracht, s1, "true", s2).

move(superkracht, s2, say).
text(superkracht, s2, "Als je kon kiezen, wat zou je dan het liefste willen:").
next(superkracht, s2, "true", s3).

move(superkracht, s3, question).
moveConfig(superkracht, s3, [type=input, context="superkrachten", options=['sterk', 'dieren', 'gedachten', 'onzichtbaar'], fast=yes, umVariable=superkracht]).
text(superkracht, s3, "Supersterk zijn, met dieren kunnen praten, gedachten kunnen lezen, of onzichtbaar zijn?").
next(superkracht, s3, "sterk", s4sterk1).
next(superkracht, s3, "dieren", s4dier1).
next(superkracht, s3, "gedachten", s4gedachten1).
next(superkracht, s3, "onzichtbaar", s4onzichtbaar1).
next(superkracht, s3, "fail", s4fail1).

move(superkracht, s4fail1, say).
text(superkracht, s4fail1, "Ik vind het ook moeilijk, maar ik zou toch wel het liefst onzichtbaar zijn.").
next(superkracht, s4fail1, "true", s4fail2).

move(superkracht, s4fail2, say).
text(superkracht, s4fail2, "Als jij onzichtbaar was, wat zou je dan het liefst willen.").
next(superkracht, s4fail2, "true", s4onzichtbaar1).

move(superkracht, s4sterk1, say).
text(superkracht, s4sterk1, "Cool!").
next(superkracht, s4sterk1, "true", s4sterk2).

move(superkracht, s4sterk2, question).
moveConfig(superkracht, s4sterk2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(superkracht, s4sterk2, "Waarom zou je sterk willen zijn?").
next(superkracht, s4sterk2, "success", s4sterk3).
next(superkracht, s4sterk2, "fail", s4sterk3).

move(superkracht, s4sterk3, say).
text(superkracht, s4sterk3, "Wel uitkijken als je je veters strikt, die trek je makkelijk per ongeluk kapot!").

move(superkracht, s4dier1, say).
text(superkracht, s4dier1, "Handig!").
next(superkracht, s4dier1, "true", s4dier2).

move(superkracht, s4dier2, question).
moveConfig(superkracht, s4dier2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(superkracht, s4dier2, "Waarom zou je met dieren willen praten?").
next(superkracht, s4dier2, "success", s4dier3).
next(superkracht, s4dier2, "fail", s4dier3).

move(superkracht, s4dier3, say).
text(superkracht, s4dier3, "Lekker het gekwetter van vogels afluisteren.").
next(superkracht, s4dier3, "true", s4dier4).

move(superkracht, s4dier4, say).
text(superkracht, s4dier4, "Vogels komen overal, dus die weten alles.").
next(superkracht, s4dier4, "true", s4dier5).

move(superkracht, s4dier5, say).
text(superkracht, s4dier5, "Of even overleggen met een tijger voor 'ie je opeet.").

move(superkracht, s4gedachten1, say).
text(superkracht, s4gedachten1, "Die zou ik ook kiezen!").
next(superkracht, s4gedachten1, "true", s4gedachten2).

move(superkracht, s4gedachten2, question).
moveConfig(superkracht, s4gedachten2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(superkracht, s4gedachten2, "Waarom zou je gedachten willen lezen?").
next(superkracht, s4gedachten2, "success", s4gedachten3).
next(superkracht, s4gedachten2, "fail", s4gedachten3).

move(superkracht, s4gedachten3, say).
text(superkracht, s4gedachten3, "Al zou ik het wel jammer vinden dat dan niks meer een verrassing is.").
next(superkracht, s4gedachten3, "true", s4gedachten4).

move(superkracht, s4gedachten4, say).
text(superkracht, s4gedachten4, "Zoals cadeautjes, daarvan weet je dan allang wat erin zit.").
next(superkracht, s4gedachten4, "true", s4gedachten5).

move(superkracht, s4gedachten5, say).
text(superkracht, s4gedachten5, "Maar het is wel hartstikke handig om alles en iedereen meteen te begrijpen.").

move(superkracht, s4onzichtbaar1, say).
text(superkracht, s4onzichtbaar1, "Leuk!").
next(superkracht, s4onzichtbaar1, "true", s4onzichtbaar2).

move(superkracht, s4onzichtbaar2, question).
moveConfig(superkracht, s4onzichtbaar2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(superkracht, s4onzichtbaar2, "Waarom zou je onzichtbaar willen zijn?").
next(superkracht, s4onzichtbaar2, "success", s4onzichtbaar3).
next(superkracht, s4onzichtbaar2, "fail", s4onzichtbaar3).

move(superkracht, s4onzichtbaar3, question).
moveConfig(superkracht, s4onzichtbaar3, [type=yesno, context='answer_yesno', umVariable=onzichtbaar_voor_hero]).
text(superkracht, s4onzichtbaar3, "Zou je ook voor mij onzichtbaar willen zijn?").
next(superkracht, s4onzichtbaar3, "fail", s4fail_mensen_of_robotogen1).
next(superkracht, s4onzichtbaar3, "answer_dontknow", s4fail_mensen_of_robotogen1).
next(superkracht, s4onzichtbaar3, "answer_no", s4mensen1).
next(superkracht, s4onzichtbaar3, "answer_yes", s4robots1).

move(superkracht, s4mensen1, say).
text(superkracht, s4mensen1, "Oké!").
next(superkracht, s4mensen1, "true", s4mensen2).

move(superkracht, s4mensen2, say).
text(superkracht, s4mensen2, "Met mijn rò hze ogen kan ik je dan nog steeds zien, maar verder kun je helemaal onzichtbaar worden!").

move(superkracht, s4robots1, say).
text(superkracht, s4robots1, "Oké cool!").
next(superkracht, s4robots1, "true", s4robots2).

move(superkracht, s4robots2, say).
text(superkracht, s4robots2, "Ik vind wel dat je je krachten niet mag gebruiken om mij te laten schrikken!").

move(superkracht, s4fail_mensen_of_robotogen1, say).
text(superkracht, s4fail_mensen_of_robotogen1, "Ja, dat is ook moeilijk.").
next(superkracht, s4fail_mensen_of_robotogen1, "true", s4fail_mensen_of_robotogen2).

move(superkracht, s4fail_mensen_of_robotogen2, say).
text(superkracht, s4fail_mensen_of_robotogen2, "Ik zou het leuk vinden als wij samen onzichtbaar waren.").
next(superkracht, s4fail_mensen_of_robotogen2, "true", s4fail_mensen_of_robotogen3).

move(superkracht, s4fail_mensen_of_robotogen3, say).
text(superkracht, s4fail_mensen_of_robotogen3, "Dat wij elkaar wel nog konden zien, maar de rest ons niet!").

