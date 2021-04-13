state(superkracht, s1, say).
text(superkracht, s1, "Ik heb laatst trouwens ontdekt dat veel mensen wel een superheld zouden willen zijn.").
next(superkracht, s1, "true", s2).

state(superkracht, s2, say).
text(superkracht, s2, "Als je kon kiezen, wat zou je dan het liefste willen:").
next(superkracht, s2, "true", s3).

state(superkracht, s3, question).
stateConfig(superkracht, s3, [type=input, context="superkracht_antwoorden", options=['Supersterk zijn', 'Met dieren praten', 'Gedachten lezen', 'Onzichtbaar zijn'], umVariable=superkracht]).
text(superkracht, s3, "Supersterk zijn, met dieren kunnen praten, gedachten kunnen lezen, of onzichtbaar zijn?").
next(superkracht, s3, "sterk", s4sterk1).
next(superkracht, s3, "dieren", s4dier1).
next(superkracht, s3, "gedachten", s4gedachten1).
next(superkracht, s3, "onzichtbaar", s4onzichtbaar1).
next(superkracht, s3, "fail", s4fail1).

state(superkracht, s4fail1, say).
text(superkracht, s4fail1, "Ik vind het ook moeilijk, maar ik zou toch wel het liefst onzichtbaar zijn.").
next(superkracht, s4fail1, "true", s4fail2).

state(superkracht, s4fail2, say).
text(superkracht, s4fail2, "Als jij onzichtbaar was, wat zou je dan het liefst willen...").
next(superkracht, s4fail2, "true", s4onzichtbaar1).

state(superkracht, s4sterk1, say).
text(superkracht, s4sterk1, "Cool!").
next(superkracht, s4sterk1, "true", s4sterk2).

state(superkracht, s4sterk2, say).
text(superkracht, s4sterk2, "Wel uitkijken als je je veters strikt, die trek je makkelijk per ongeluk kapot!").

state(superkracht, s4dier1, say).
text(superkracht, s4dier1, "Handig! Lekker het gekwetter van vogels afluisteren.").
next(superkracht, s4dier1, "true", s4dier2).

state(superkracht, s4dier2, say).
text(superkracht, s4dier2, "Vogels komen overal, dus die weten alles.").
next(superkracht, s4dier2, "true", s4dier3).

state(superkracht, s4dier3, say).
text(superkracht, s4dier3, "Of even overleggen met een tijger voor ie je opeet.").
next(superkracht, s4dier3, "true", s4dier4).

state(superkracht, s4dier4, say).
text(superkracht, s4dier4, "Of natuurlijk kunnen vragen of %first_name% net zoveel van jou houdt als jij van %first_name% ").

state(superkracht, s4gedachten1, say).
text(superkracht, s4gedachten1, "Die zou ik ook kiezen!").
next(superkracht, s4gedachten1, "true", s4gedachten2).

state(superkracht, s4gedachten2, say).
text(superkracht, s4gedachten2, "Al zou ik het wel jammer vinden dat dan niks meer een verrassing is.").
next(superkracht, s4gedachten2, "true", s4gedachten3).

state(superkracht, s4gedachten3, say).
text(superkracht, s4gedachten3, "Zoals cadeautjes, daarvan weet je dan allang wat erin zit.").
next(superkracht, s4gedachten3, "true", s4gedachten4).

state(superkracht, s4gedachten4, say).
text(superkracht, s4gedachten4, "Maar het is wel hartstikke handig om alles en iedereen meteen te begrijpen.").

state(superkracht, s4onzichtbaar1, question).
stateConfig(superkracht, s4onzichtbaar1, [type=input, context="mensen_of_robotogen", options=['alleen voor mensen', 'ook voor robots'], umVariable=mensen_of_robotogen]).
text(superkracht, s4onzichtbaar1, "Zou je alleen voor mensen onzichtbaar willen zijn, of ook voor robotogen?").
next(superkracht, s4onzichtbaar1, "fail", s4fail_mensen_of_robotogen1).
next(superkracht, s4onzichtbaar1, "weet ik niet", s4fail_mensen_of_robotogen1).
next(superkracht, s4onzichtbaar1, "maakt niet uit", s4fail_mensen_of_robotogen1).
next(superkracht, s4onzichtbaar1, "mensen", s4mensen1).
next(superkracht, s4onzichtbaar1, "robots", s4robots1).

state(superkracht, s4mensen1, say).
text(superkracht, s4mensen1, "Oké!").
next(superkracht, s4mensen1, "true", s4mensen2).

state(superkracht, s4mensen2, say).
text(superkracht, s4mensen2, "Met mijn paarse ogen kan ik je dan nog steeds zien, maar verder kun je helemaal onzichtbaar worden!").

state(superkracht, s4robots1, say).
text(superkracht, s4robots1, "Oké cool!").
next(superkracht, s4robots1, "true", s4robots2).

state(superkracht, s4robots2, say).
text(superkracht, s4robots2, "Ik vind wel dat je je krachten niet mag gebruiken om mij te laten schrikken!").

state(superkracht, s4fail_mensen_of_robotogen1, say).
text(superkracht, s4fail_mensen_of_robotogen1, "Ja, dat is ook moeilijk.").
next(superkracht, s4fail_mensen_of_robotogen1, "true", s4fail_mensen_of_robotogen2).

state(superkracht, s4fail_mensen_of_robotogen2, say).
text(superkracht, s4fail_mensen_of_robotogen2, "Ik zou het leuk vinden als wij samen onzichtbaar waren.").
next(superkracht, s4fail_mensen_of_robotogen2, "true", s4fail_mensen_of_robotogen3).

state(superkracht, s4fail_mensen_of_robotogen3, say).
text(superkracht, s4fail_mensen_of_robotogen3, "Dat wij elkaar wel nog konden zien, maar de rest ons niet!").

