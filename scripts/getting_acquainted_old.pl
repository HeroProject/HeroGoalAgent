% State/3 first specifies a topic. A topic is an abstraction representing a set of states. A topic always starts in state s1.
% Which topics the agent should perform is specified as a goal in the init module.

state(intro, s1, say). text(intro, s1, "Hallo, ik ben Hero"). next(intro, s1, 'true', s12).
state(intro, s2, say). text(intro, s2, "We gaan zo een gesprekje houden, maar eerst zal ik je uitleggen hoe je met me kunt praten"). next(intro, s2, 'true', s3).
state(intro, s3, say). text(intro, s3, "Als ik je een vraag stel, hoor je daarna een piepje"). next(intro, s3, 'true', s4).

state(intro, s4, question). text(intro, s4, "Na het piepje ben ik aandachtig naar je aan het luisteren. Zeg maar ja als je het piepje hoorde.").
stateConfig(intro, s4, [type=yesno, response=speech, context='answer_yesno']).
next(intro, s4, _, s5). % don't care what the response was here... 

state(intro, s5, say). text(intro, s5, "Soms heb ik moeite met mensen te verstaan. Dan kun je me antwoord geven door op mijn tenen te drukken"). next(intro, s5, 'true', s6).
state(intro, s6, say). text(intro, s6, "Aan de voorkant van mijn voeten zie je een oranje knopje, daar kun je dan op drukken"). next(intro, s6, 'true', s7).
state(intro, s7, say). text(intro, s7, "Wel moet je eerst wachten tot er een blauw lichtje op mijn voeten gaat branden"). next(intro, s7, 'true', s8).
state(intro, s8, say). text(intro, s8, "Zullen we dat een keer oefenen?"). next(intro, s8, 'true', s9).

state(intro, s9, question). text(intro, s9, "Druk eens op het knopje bij de ja, sticker").
stateConfig(intro, s9, [type=yesno, response=touch]).
next(intro, s9, 'answer_yes', s9yes). next(intro, s9, 'answer_no', s9no). next(intro, s9, 'fail', s10).

state(intro, s9yes, say). text(intro, s9yes, "Heel goed gedaan"). next(intro, s9yes, 'true', s10).
state(intro, s9no, say). text(intro, s9no, "Oeps dat was mijn andere voet. Dat is niet erg"). next(intro, s9no, 'true', s10).

state(intro, s10, question). text(intro, s10, "Druk eens op het knopje bij de nee, sticker").
stateConfig(intro, s10, [type=yesno, response=touch]).
next(intro, s10, 'answer_yes', s11yes). next(intro, s10, 'answer_no', s11no). next(intro, s10, 'fail', s12).

state(intro, s11yes, say). text(intro, s11yes, "Oeps dat was mijn andere voet. Dat is niet erg"). next(intro, s11yes, 'true', s12).
state(intro, s11no, say). text(intro, s11no, "Heel goed gedaan"). next(intro, s11no, 'true', s12).
state(intro, s12, say). text(intro, s12, "Zullen we nu eens oefenen met antwoord geven op een vraag? Probeer luid en duidelijk te spreken na het piepje."). next(intro, s12, 'true', s13).

state(intro, s13, question). text(intro, s13, "Kun je me vertellen welke kleur ik ben?").
stateConfig(intro, s13, [type=mc, response=speech, context='answer_color', key='naoColor']).
% opties: ["wit", "oranje", "rood", "roze", "blauw", "geel", "groen", "paars", "zwart", "bruin"]).
% reactie:
% state(intro, 15, say, "Ja goed gedaan, ik ben inderdaad wit", "wit"). state(intro, 15, say, "Ja goed gedaan, ik ben inderdaad oranje", "oranje"). state(intro, 15, say, "Ja goed gedaan, ik ben inderaad rood", "rood").
% state(intro, 15, say, "Oeps ik ben niet die kleur, maar je hebt wel op het juiste moment je antwoord gegeven", "roze").
next(intro, s13, _, s13answer).

state(intro, s13answer, say). text(intro, s13answer, "Je zegt dat ik de kleur %naoColor% heb."). next(intro, s13answer, 'true', s14).

state(intro, s14, question). text(intro, s14, "Ik wil graag weten hoe je heet. Wat is jouw naam?").
stateConfig(intro, s14, [type=mc, response=speech, context='answer_name', key='userName', defaultAnswer=""]).
next(intro, s14, _, s15).

state(intro, s15, say). text(intro, s15, "Oh, %userName%, dat vind ik een mooie naam"). next(intro, s15, 'true', s16).
state(intro, s16, say). text(intro, s16, "Voor we verder gaan met ons gesprekje, weet ik wat leuks om te doen").

state(theend, s1, say).
text(theend, s1, "Dat was het. Doei!"). 