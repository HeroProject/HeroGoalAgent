%%%% HEADER %%%%
%% ruimterobots %%
minidialog(ruimterobots, [type=chitchat, theme=personalia, topic=ruimte]).

move(ruimterobots, s1, say).
text(ruimterobots, s1, "he %first_name% !").
next(ruimterobots, s1, "true", s2).

move(ruimterobots, s2, continuator).
next(ruimterobots, s2, [[umVariable=beroep_van_kind, filter=green, values=["astronaut"]]], s3astronaut1).
next(ruimterobots, s2, "true", s3geen1).

move(ruimterobots, s3astronaut1, say).
text(ruimterobots, s3astronaut1, "jij wil later astronaut worden, en daarom hebben een paar ruimterobots een vraag aan je.").
next(ruimterobots, s3astronaut1, "true", s4).

move(ruimterobots, s3geen1, say).
text(ruimterobots, s3geen1, "Een paar andere robots hebben een vraag aan je.").
next(ruimterobots, s3geen1, "true", s4).

move(ruimterobots, s4, say).
text(ruimterobots, s4, "Ik kreeg die net door via mijn draadje.").
next(ruimterobots, s4, "true", s5).

move(ruimterobots, s5, say).
text(ruimterobots, s5, "Ze zijn benieuwd of jij ooit op vakantie naar de ruimte wil.").
next(ruimterobots, s5, "true", s6).

move(ruimterobots, s6, question).
moveConfig(ruimterobots, s6, [type=yesno, context='answer_yesno', umVariable=wil_ruimte_in]).
text(ruimterobots, s6, "Zou je dat wel willen later, met een raket de ruimte in?").
next(ruimterobots, s6, "answer_yes", s7ja_ruimtereizen1).
next(ruimterobots, s6, "answer_no", s7nee_ruimtereizen1).
next(ruimterobots, s6, "answer_dontknow", s7nee_ruimtereizen1).
next(ruimterobots, s6, "fail", s7fail_ruimtereizen1).

move(ruimterobots, s7ja_ruimtereizen1, say).
text(ruimterobots, s7ja_ruimtereizen1, "Heel cool!").
next(ruimterobots, s7ja_ruimtereizen1, "true", s8).

move(ruimterobots, s7fail_ruimtelocatie1, say).
text(ruimterobots, s7fail_ruimtelocatie1, "Best moeilijk kiezen hè?").
next(ruimterobots, s7fail_ruimtelocatie1, "true", s7fail_ruimtelocatie2).

move(ruimterobots, s7fail_ruimtelocatie2, say).
text(ruimterobots, s7fail_ruimtelocatie2, "Als het kon, zou ik zelf dichter naar de sterren gaan.").
next(ruimterobots, s7fail_ruimtelocatie2, "true", s7fail_ruimtelocatie3).

move(ruimterobots, s7fail_ruimtelocatie3, say).
text(ruimterobots, s7fail_ruimtelocatie3, "Er is een robot die al onderweg naar de sterren is!").
next(ruimterobots, s7fail_ruimtelocatie3, "true", s7robonaut1).

move(ruimterobots, s7sterren1, say).
text(ruimterobots, s7sterren1, "Hoera, wat leuk!").
next(ruimterobots, s7sterren1, "true", s7sterren2).

move(ruimterobots, s7sterren2, say).
text(ruimterobots, s7sterren2, "Dan ga je echt een hele verre reis maken!").
next(ruimterobots, s7sterren2, "true", s7sterren3).

move(ruimterobots, s7sterren3, question).
moveConfig(ruimterobots, s7sterren3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ruimterobots, s7sterren3, "Waarom wil je graag naar de sterren?").
next(ruimterobots, s7sterren3, "success", s7got_answer_sterren1).
next(ruimterobots, s7sterren3, "failure", s7got_no_answer_sterren1).

move(ruimterobots, s7got_answer_sterren1, say).
text(ruimterobots, s7got_answer_sterren1, "Wauw!").
next(ruimterobots, s7got_answer_sterren1, "true", s7got_answer_sterren2).

move(ruimterobots, s7got_answer_sterren2, say).
text(ruimterobots, s7got_answer_sterren2, "Ik vind de sterren ook heel mooi.").
next(ruimterobots, s7got_answer_sterren2, "true", s7got_answer_sterren3).

move(ruimterobots, s7got_answer_sterren3, say).
text(ruimterobots, s7got_answer_sterren3, "Bizar mooi!").
next(ruimterobots, s7got_answer_sterren3, "true", s7got_answer_sterren4).

move(ruimterobots, s7got_answer_sterren4, say).
text(ruimterobots, s7got_answer_sterren4, "Jammer genoeg is dichtbij een ster komen best wel moeilijk.").
next(ruimterobots, s7got_answer_sterren4, "true", s7got_answer_sterren5).

move(ruimterobots, s7got_answer_sterren5, say).
text(ruimterobots, s7got_answer_sterren5, "Maar er is wel een robot die al onderweg is!").
next(ruimterobots, s7got_answer_sterren5, "true", s7robonaut1).

move(ruimterobots, s7got_no_answer_sterren1, say).
text(ruimterobots, s7got_no_answer_sterren1, "Ik zou ook wel naar de sterren willen.").
next(ruimterobots, s7got_no_answer_sterren1, "true", s7got_no_answer_sterren2).

move(ruimterobots, s7got_no_answer_sterren2, say).
text(ruimterobots, s7got_no_answer_sterren2, "Ze zijn wel super ver weg.").
next(ruimterobots, s7got_no_answer_sterren2, "true", s7got_no_answer_sterren3).

move(ruimterobots, s7got_no_answer_sterren3, say).
text(ruimterobots, s7got_no_answer_sterren3, "Er zijn nog geen robots op expeditie naar een ster.").
next(ruimterobots, s7got_no_answer_sterren3, "true", s7got_no_answer_sterren4).

move(ruimterobots, s7got_no_answer_sterren4, say).
text(ruimterobots, s7got_no_answer_sterren4, "Maar er is wel een robot die al dichterbij de sterren is!").
next(ruimterobots, s7got_no_answer_sterren4, "true", s7robonaut1).

move(ruimterobots, s7robonaut1, say).
text(ruimterobots, s7robonaut1, "Ze heet Robonaut.").
next(ruimterobots, s7robonaut1, "true", s7robonaut2).

move(ruimterobots, s7robonaut2, say).
text(ruimterobots, s7robonaut2, "Ik vind haar supercool.").
next(ruimterobots, s7robonaut2, "true", s8).

move(ruimterobots, s7robonaut_bekend1, say).
text(ruimterobots, s7robonaut_bekend1, "Cool! Dat hoopte Robonaut al!").
next(ruimterobots, s7robonaut_bekend1, "true", s7robonaut_bekend2).

move(ruimterobots, s7robonaut_bekend2, say).
text(ruimterobots, s7robonaut_bekend2, "Ze heeft een goede tip voor je.").
next(ruimterobots, s7robonaut_bekend2, "true", s7robonaut_bekend3).

move(ruimterobots, s7robonaut_bekend3, say).
text(ruimterobots, s7robonaut_bekend3, "Robonaut werkt op het internationaal ruimtestation.").
next(ruimterobots, s7robonaut_bekend3, "true", s7robonaut_bekend4).

move(ruimterobots, s7robonaut_bekend4, say).
text(ruimterobots, s7robonaut_bekend4, "Daar maken ze echt de allermooiste foto's van de sterren!").
next(ruimterobots, s7robonaut_bekend4, "true", s7robonaut_bekend5).

move(ruimterobots, s7robonaut_bekend5, say).
text(ruimterobots, s7robonaut_bekend5, "Die moet je thuis maar eens opzoeken.").
next(ruimterobots, s7robonaut_bekend5, "true", s7robonaut_bekend6).

move(ruimterobots, s7robonaut_bekend6, say).
text(ruimterobots, s7robonaut_bekend6, "O, ik krijg nog een berichtje van haar binnen!").
next(ruimterobots, s7robonaut_bekend6, "true", s7robonaut_bekend7).

move(ruimterobots, s7robonaut_bekend7, say).
text(ruimterobots, s7robonaut_bekend7, "Ze doet je de groeten en wenst ons succes met de Robospelen!").
next(ruimterobots, s7robonaut_bekend7, "true", s8).

move(ruimterobots, s7robonaut_onbekend1, say).
text(ruimterobots, s7robonaut_onbekend1, "Ze is ook vooral onder robots bekend!").
next(ruimterobots, s7robonaut_onbekend1, "true", s7robonaut_onbekend2).

move(ruimterobots, s7robonaut_onbekend2, say).
text(ruimterobots, s7robonaut_onbekend2, "Maar zoek Robonaut maar eens op op YouTube als je thuis bent!").
next(ruimterobots, s7robonaut_onbekend2, "true", s7robonaut_onbekend3).

move(ruimterobots, s7robonaut_onbekend3, say).
text(ruimterobots, s7robonaut_onbekend3, "Dan kun je ook zien dat ik een klein beetje op haar lijk.").
next(ruimterobots, s7robonaut_onbekend3, "true", s7robonaut_onbekend4).

move(ruimterobots, s7robonaut_onbekend4, say).
text(ruimterobots, s7robonaut_onbekend4, "Robonaut is wel een veel grotere robot.").
next(ruimterobots, s7robonaut_onbekend4, "true", s7robonaut_onbekend5).

move(ruimterobots, s7robonaut_onbekend5, say).
text(ruimterobots, s7robonaut_onbekend5, "En ze heeft een gouden hoofd!").
next(ruimterobots, s7robonaut_onbekend5, "true", s7robonaut_onbekend6).

move(ruimterobots, s7robonaut_onbekend6, say).
text(ruimterobots, s7robonaut_onbekend6, "Ik denk dat het van goud is omdat ze bizar slim is.").
next(ruimterobots, s7robonaut_onbekend6, "true", s7robonaut_onbekend7).

move(ruimterobots, s7robonaut_onbekend7, say).
text(ruimterobots, s7robonaut_onbekend7, "Als ik naar Robonaut kijk, wil ik zelf ook een astronaut worden!").
next(ruimterobots, s7robonaut_onbekend7, "true", s7robonaut_onbekend8).

move(ruimterobots, s7robonaut_onbekend8, say).
text(ruimterobots, s7robonaut_onbekend8, "Maar dat is voor later.").
next(ruimterobots, s7robonaut_onbekend8, "true", s7robonaut_onbekend9).

move(ruimterobots, s7robonaut_onbekend9, say).
text(ruimterobots, s7robonaut_onbekend9, "Voor wanneer jij en ik een superhandige mens en robot zijn.").
next(ruimterobots, s7robonaut_onbekend9, "true", s7robonaut_onbekend10).

move(ruimterobots, s7robonaut_onbekend10, say).
text(ruimterobots, s7robonaut_onbekend10, "Nu zijn er heel andere dingen waar we aan moeten denken.").
next(ruimterobots, s7robonaut_onbekend10, "true", s7robonaut_onbekend11).

move(ruimterobots, s7robonaut_onbekend11, say).
text(ruimterobots, s7robonaut_onbekend11, "Zoals de Robospelen.").
next(ruimterobots, s7robonaut_onbekend11, "true", s8).

move(ruimterobots, s7zon1, say).
text(ruimterobots, s7zon1, "Cool! Of nee, hot!").
next(ruimterobots, s7zon1, "true", s7zon2).

move(ruimterobots, s7zon2, say).
text(ruimterobots, s7zon2, "Niet vergeten je zonnebrand in te pakken!").
next(ruimterobots, s7zon2, "true", s7zon3).

move(ruimterobots, s7zon3, say).
text(ruimterobots, s7zon3, "Haha.").
next(ruimterobots, s7zon3, "true", s7zon4).

move(ruimterobots, s7zon4, say).
text(ruimterobots, s7zon4, "Allebei een beetje flauwe robotgrappen.").
next(ruimterobots, s7zon4, "true", s7zon5).

move(ruimterobots, s7zon5, say).
text(ruimterobots, s7zon5, "Maar, even serieus.").
next(ruimterobots, s7zon5, "true", s7zon6).

move(ruimterobots, s7zon6, say).
text(ruimterobots, s7zon6, "Ik ben heel benieuwd!").
next(ruimterobots, s7zon6, "true", s7zon7).

move(ruimterobots, s7zon7, question).
moveConfig(ruimterobots, s7zon7, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ruimterobots, s7zon7, "Waarom zou je wel bij de zon op bezoek willen?").
next(ruimterobots, s7zon7, "success", s7got_answer_zon1).
next(ruimterobots, s7zon7, "failure", s7got_no_answer_zon1).

move(ruimterobots, s7got_no_answer_zon1, say).
text(ruimterobots, s7got_no_answer_zon1, "Ik vraag het namens Parker, dat is een robotvriendin van mij.").
next(ruimterobots, s7got_no_answer_zon1, "true", s7got_no_answer_zon2).

move(ruimterobots, s7got_no_answer_zon2, say).
text(ruimterobots, s7got_no_answer_zon2, "Zij is het dichtst bij de zon geweest van iedereen!").
next(ruimterobots, s7got_no_answer_zon2, "true", s7got_no_answer_zon3).

move(ruimterobots, s7got_no_answer_zon3, say).
text(ruimterobots, s7got_no_answer_zon3, "Volgens haar kunnen we niet dichterbij dan dat komen.").
next(ruimterobots, s7got_no_answer_zon3, "true", s7got_no_answer_zon4).

move(ruimterobots, s7got_no_answer_zon4, say).
text(ruimterobots, s7got_no_answer_zon4, "Dan smelten we.").
next(ruimterobots, s7got_no_answer_zon4, "true", s7got_no_answer_zon5).

move(ruimterobots, s7got_no_answer_zon5, say).
text(ruimterobots, s7got_no_answer_zon5, "Daarom is Parker helemaal alleen op haar missie.").
next(ruimterobots, s7got_no_answer_zon5, "true", s7got_no_answer_zon6).

move(ruimterobots, s7got_no_answer_zon6, say).
text(ruimterobots, s7got_no_answer_zon6, "Best wel saai.").
next(ruimterobots, s7got_no_answer_zon6, "true", s7got_no_answer_zon7).

move(ruimterobots, s7got_no_answer_zon7, say).
text(ruimterobots, s7got_no_answer_zon7, "Ze vraagt of jij een beetje aan haar wil denken.").
next(ruimterobots, s7got_no_answer_zon7, "true", s7got_no_answer_zon8).

move(ruimterobots, s7got_no_answer_zon8, say).
text(ruimterobots, s7got_no_answer_zon8, "Dan verveelt ze zich veel minder.").
next(ruimterobots, s7got_no_answer_zon8, "true", s7got_no_answer_zon9).

move(ruimterobots, s7got_no_answer_zon9, question).
moveConfig(ruimterobots, s7got_no_answer_zon9, [type=yesno, context='answer_yesno', umVariable=aan_parker_denken]).
text(ruimterobots, s7got_no_answer_zon9, "Wil jij soms eens aan Parker denken?").
next(ruimterobots, s7got_no_answer_zon9, "answer_yes", s7aardig1).
next(ruimterobots, s7got_no_answer_zon9, "answer_no", s7jammer1).
next(ruimterobots, s7got_no_answer_zon9, "fail", s7niet_hele_tijd1).
next(ruimterobots, s7got_no_answer_zon9, "answer_dontknow", s7niet_hele_tijd1).

move(ruimterobots, s7got_answer_zon1, say).
text(ruimterobots, s7got_answer_zon1, "Dat klinkt heel goed!").
next(ruimterobots, s7got_answer_zon1, "true", s7got_answer_zon2).

move(ruimterobots, s7got_answer_zon2, say).
text(ruimterobots, s7got_answer_zon2, "Ik stuur je antwoord even door aan Parker, die vindt dat vast leuk.").
next(ruimterobots, s7got_answer_zon2, "true", s7got_answer_zon3).

move(ruimterobots, s7got_answer_zon3, say).
text(ruimterobots, s7got_answer_zon3, "Parker is een zonnerobot.").
next(ruimterobots, s7got_answer_zon3, "true", s7got_answer_zon4).

move(ruimterobots, s7got_answer_zon4, say).
text(ruimterobots, s7got_answer_zon4, "Er is niemand die dichterbij de zon geweest is dan zij.").
next(ruimterobots, s7got_answer_zon4, "true", s7got_answer_zon5).

move(ruimterobots, s7got_answer_zon5, say).
text(ruimterobots, s7got_answer_zon5, "Niemand kan ook dichterbij komen zonder te verbranden of te smelten.").
next(ruimterobots, s7got_answer_zon5, "true", s7got_answer_zon6).

move(ruimterobots, s7got_answer_zon6, say).
text(ruimterobots, s7got_answer_zon6, "Dus Parker is heel sterk").
next(ruimterobots, s7got_answer_zon6, "true", s7got_answer_zon7).

move(ruimterobots, s7got_answer_zon7, say).
text(ruimterobots, s7got_answer_zon7, "en ze is ook op een heel gave missie!").
next(ruimterobots, s7got_answer_zon7, "true", s7got_answer_zon8).

move(ruimterobots, s7got_answer_zon8, say).
text(ruimterobots, s7got_answer_zon8, "Maar wel helemaal alleen.").
next(ruimterobots, s7got_answer_zon8, "true", s7got_answer_zon9).

move(ruimterobots, s7got_answer_zon9, say).
text(ruimterobots, s7got_answer_zon9, "O, ik krijg een berichtje van haar terug!").
next(ruimterobots, s7got_answer_zon9, "true", s7got_answer_zon10).

move(ruimterobots, s7got_answer_zon10, say).
text(ruimterobots, s7got_answer_zon10, "Ze vond het heel leuk om jouw gedachten over de zon te horen.").
next(ruimterobots, s7got_answer_zon10, "true", s7got_answer_zon11).

move(ruimterobots, s7got_answer_zon11, say).
text(ruimterobots, s7got_answer_zon11, "En ze wenst ons succes met de Robospelen!").
next(ruimterobots, s7got_answer_zon11, "true", s8).

move(ruimterobots, s7maan1, say).
text(ruimterobots, s7maan1, "Hoera, wat leuk!").
next(ruimterobots, s7maan1, "true", s7maan2).

move(ruimterobots, s7maan2, say).
text(ruimterobots, s7maan2, "Dat zegt Zebro, de maanrobot.").
next(ruimterobots, s7maan2, "true", s7maan3).

move(ruimterobots, s7maan3, question).
moveConfig(ruimterobots, s7maan3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ruimterobots, s7maan3, "Waarom wil je graag naar de maan?").
next(ruimterobots, s7maan3, "success", s7got_answer_maan1).
next(ruimterobots, s7maan3, "failure", s7ook_naar_maan1).

move(ruimterobots, s7got_answer_maan1, say).
text(ruimterobots, s7got_answer_maan1, "Dat vindt Zebro vast heel leuk om te horen!").
next(ruimterobots, s7got_answer_maan1, "true", s7got_answer_maan2).

move(ruimterobots, s7got_answer_maan2, say).
text(ruimterobots, s7got_answer_maan2, "Zebro gaat binnenkort naar de maan.").
next(ruimterobots, s7got_answer_maan2, "true", s7got_answer_maan3).

move(ruimterobots, s7got_answer_maan3, say).
text(ruimterobots, s7got_answer_maan3, "Maar hij vraagt zich soms wel een beetje af waarvoor.").
next(ruimterobots, s7got_answer_maan3, "true", s7got_answer_maan4).

move(ruimterobots, s7got_answer_maan4, say).
text(ruimterobots, s7got_answer_maan4, "Iedereen praat nu steeds alleen maar over de robots op Mars.").
next(ruimterobots, s7got_answer_maan4, "true", s7got_answer_maan5).

move(ruimterobots, s7got_answer_maan5, say).
text(ruimterobots, s7got_answer_maan5, "Soms voelt Zebro zich daarom niet zo cool.").
next(ruimterobots, s7got_answer_maan5, "true", s7got_answer_maan6).

move(ruimterobots, s7got_answer_maan6, say).
text(ruimterobots, s7got_answer_maan6, "Maar de maan is echt wel bizar cool.").
next(ruimterobots, s7got_answer_maan6, "true", s7ook_naar_maan1).

move(ruimterobots, s7ook_naar_maan1, say).
text(ruimterobots, s7ook_naar_maan1, "Ik zou ook wel naar de maan willen.").
next(ruimterobots, s7ook_naar_maan1, "true", s7ook_naar_maan2).

move(ruimterobots, s7ook_naar_maan2, say).
text(ruimterobots, s7ook_naar_maan2, "Dan kan ik bij Zebro op bezoek!").
next(ruimterobots, s7ook_naar_maan2, "true", s7ook_naar_maan3).

move(ruimterobots, s7ook_naar_maan3, say).
text(ruimterobots, s7ook_naar_maan3, "Mijn pak lijkt ook wel een beetje op dat van een astronaut.").
next(ruimterobots, s7ook_naar_maan3, "true", s7ook_naar_maan4).

move(ruimterobots, s7ook_naar_maan4, say).
text(ruimterobots, s7ook_naar_maan4, "Ik heb alleen geen helm op.").
next(ruimterobots, s7ook_naar_maan4, "true", s7ook_naar_maan5).

move(ruimterobots, s7ook_naar_maan5, question).
moveConfig(ruimterobots, s7ook_naar_maan5, [type=yesno, context='answer_yesno', umVariable=helm_nodig]).
text(ruimterobots, s7ook_naar_maan5, "Denk je dat ik een astronautenhelm nodig heb op de maan?").
next(ruimterobots, s7ook_naar_maan5, "answer_yes", s7ja_helm1).
next(ruimterobots, s7ook_naar_maan5, "answer_no", s7nee_helm1).
next(ruimterobots, s7ook_naar_maan5, "fail", s7fail_helm1).
next(ruimterobots, s7ook_naar_maan5, "answer_dontknow", s7fail_helm1).

move(ruimterobots, s7ja_helm1, say).
text(ruimterobots, s7ja_helm1, "Goed idee!").
next(ruimterobots, s7ja_helm1, "true", s7ja_helm2).

move(ruimterobots, s7ja_helm2, say).
text(ruimterobots, s7ja_helm2, "Dan maakt het niks uit als ik over een maansteen val.").
next(ruimterobots, s7ja_helm2, "true", s7lang_trainen1).

move(ruimterobots, s7nee_helm1, say).
text(ruimterobots, s7nee_helm1, "Nee, ik heb natuurlijk geen zuurstof nodig. Handig!").
next(ruimterobots, s7nee_helm1, "true", s7lang_trainen1).

move(ruimterobots, s7fail_helm1, say).
text(ruimterobots, s7fail_helm1, "Ik weet het ook niet.").
next(ruimterobots, s7fail_helm1, "true", s7lang_trainen1).

move(ruimterobots, s7lang_trainen1, say).
text(ruimterobots, s7lang_trainen1, "Maar maanrobot kan ik pas worden na echt bizar lang trainen.").
next(ruimterobots, s7lang_trainen1, "true", s7lang_trainen2).

move(ruimterobots, s7lang_trainen2, say).
text(ruimterobots, s7lang_trainen2, "Daar heb ik nu helemaal geen tijd voor.").
next(ruimterobots, s7lang_trainen2, "true", s7lang_trainen3).

move(ruimterobots, s7lang_trainen3, say).
text(ruimterobots, s7lang_trainen3, "We kunnen ons nu beter focussen op de Robospelen!").
next(ruimterobots, s7lang_trainen3, "true", s8).

move(ruimterobots, s7mars1, say).
text(ruimterobots, s7mars1, "Mars, wat leuk!").
next(ruimterobots, s7mars1, "true", s7mars2).

move(ruimterobots, s7mars2, say).
text(ruimterobots, s7mars2, "Op Mars woont een robot die Rover heet.").
next(ruimterobots, s7mars2, "true", s7mars3).

move(ruimterobots, s7mars3, say).
text(ruimterobots, s7mars3, "Ze vraagt:").
next(ruimterobots, s7mars3, "true", s7mars4).

move(ruimterobots, s7mars4, question).
moveConfig(ruimterobots, s7mars4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ruimterobots, s7mars4, "Waarom zou jij graag naar Mars willen?").
next(ruimterobots, s7mars4, "success", s7got_answer_mars1).
next(ruimterobots, s7mars4, "failure", s7got_no_answer_mars1).

move(ruimterobots, s7got_answer_mars1, say).
text(ruimterobots, s7got_answer_mars1, "Dat vindt Rover vast heel leuk om te horen!").
next(ruimterobots, s7got_answer_mars1, "true", s7got_answer_mars2).

move(ruimterobots, s7got_answer_mars2, say).
text(ruimterobots, s7got_answer_mars2, "Ik stuur je antwoord nu naar haar door.").
next(ruimterobots, s7got_answer_mars2, "true", s7got_answer_mars3).

move(ruimterobots, s7got_answer_mars3, say).
text(ruimterobots, s7got_answer_mars3, "Rover rijdt al een tijdje rond op Mars. ").
next(ruimterobots, s7got_answer_mars3, "true", s7got_answer_mars4).

move(ruimterobots, s7got_answer_mars4, say).
text(ruimterobots, s7got_answer_mars4, "Soms verveelt ze zich wel een beetje.").
next(ruimterobots, s7got_answer_mars4, "true", s7got_answer_mars5).

move(ruimterobots, s7got_answer_mars5, say).
text(ruimterobots, s7got_answer_mars5, "Er is nu nog niet echt iets te doen daar.").
next(ruimterobots, s7got_answer_mars5, "true", s7got_answer_mars6).

move(ruimterobots, s7got_answer_mars6, say).
text(ruimterobots, s7got_answer_mars6, "Maar straks, als jij er op vakantie kan, is het er heel cool!").
next(ruimterobots, s7got_answer_mars6, "true", s7got_answer_mars7).

move(ruimterobots, s7got_answer_mars7, say).
text(ruimterobots, s7got_answer_mars7, "Nu kan Rover dromen over hoe Mars er later uit zal zien.").
next(ruimterobots, s7got_answer_mars7, "true", s7got_answer_mars8).

move(ruimterobots, s7got_answer_mars8, say).
text(ruimterobots, s7got_answer_mars8, "Dat maakt het vast veel leuker om er te werken.").
next(ruimterobots, s7got_answer_mars8, "true", s7got_answer_mars9).

move(ruimterobots, s7got_answer_mars9, say).
text(ruimterobots, s7got_answer_mars9, "O, ik krijg nu een berichtje van haar terug!").
next(ruimterobots, s7got_answer_mars9, "true", s7got_answer_mars10).

move(ruimterobots, s7got_answer_mars10, say).
text(ruimterobots, s7got_answer_mars10, "Ze doet je de groetjes en wenst ons succes met de Robospelen.").
next(ruimterobots, s7got_answer_mars10, "true", s8).

move(ruimterobots, s7got_no_answer_mars1, say).
text(ruimterobots, s7got_no_answer_mars1, "Rover vraagt dat, omdat ze zich soms een beetje verveelt.").
next(ruimterobots, s7got_no_answer_mars1, "true", s7got_no_answer_mars2).

move(ruimterobots, s7got_no_answer_mars2, say).
text(ruimterobots, s7got_no_answer_mars2, "Er is voor robots weinig aan op een planeet zonder mensen.").
next(ruimterobots, s7got_no_answer_mars2, "true", s7got_no_answer_mars3).

move(ruimterobots, s7got_no_answer_mars3, say).
text(ruimterobots, s7got_no_answer_mars3, "Rover vraagt of jij soms een beetje aan haar wil denken.").
next(ruimterobots, s7got_no_answer_mars3, "true", s7got_no_answer_mars4).

move(ruimterobots, s7got_no_answer_mars4, say).
text(ruimterobots, s7got_no_answer_mars4, "Als je Mars in de lucht ziet, of op tv.").
next(ruimterobots, s7got_no_answer_mars4, "true", s7got_no_answer_mars5).

move(ruimterobots, s7got_no_answer_mars5, question).
moveConfig(ruimterobots, s7got_no_answer_mars5, [type=yesno, context='answer_yesno', umVariable=aan_rover_denken]).
text(ruimterobots, s7got_no_answer_mars5, "Wil je soms eens aan Rover denken?").
next(ruimterobots, s7got_no_answer_mars5, "answer_yes", s7aardig1).
next(ruimterobots, s7got_no_answer_mars5, "answer_no", s7jammer1).
next(ruimterobots, s7got_no_answer_mars5, "fail", s7niet_hele_tijd1).
next(ruimterobots, s7got_no_answer_mars5, "answer_dontknow", s7niet_hele_tijd1).

move(ruimterobots, s7nee_ruimtereizen1, say).
text(ruimterobots, s7nee_ruimtereizen1, "Dat snap ik wel!").
next(ruimterobots, s7nee_ruimtereizen1, "true", s7nee_ruimtereizen2).

move(ruimterobots, s7nee_ruimtereizen2, say).
text(ruimterobots, s7nee_ruimtereizen2, "Hier op aarde is al meer dan genoeg te zien!").
next(ruimterobots, s7nee_ruimtereizen2, "true", s7nee_ruimtereizen3).

move(ruimterobots, s7nee_ruimtereizen3, say).
text(ruimterobots, s7nee_ruimtereizen3, "Maar ik ben wel benieuwd.").
next(ruimterobots, s7nee_ruimtereizen3, "true", s7nee_ruimtereizen4).

move(ruimterobots, s7nee_ruimtereizen4, question).
moveConfig(ruimterobots, s7nee_ruimtereizen4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ruimterobots, s7nee_ruimtereizen4, "Waarom wil je niet op vakantie naar de ruimte?").
next(ruimterobots, s7nee_ruimtereizen4, "success", s7got_answer_ruimtereizen1).
next(ruimterobots, s7nee_ruimtereizen4, "failure", s7got_no_answer_ruimtereizen1).

move(ruimterobots, s7got_no_answer_ruimtereizen1, say).
text(ruimterobots, s7got_no_answer_ruimtereizen1, "Ik vind het zelf heel erg spannend.").
next(ruimterobots, s7got_no_answer_ruimtereizen1, "true", s7got_no_answer_ruimtereizen2).

move(ruimterobots, s7got_no_answer_ruimtereizen2, say).
text(ruimterobots, s7got_no_answer_ruimtereizen2, "Er zijn wel robots die nu al in de ruimte zijn.").
next(ruimterobots, s7got_no_answer_ruimtereizen2, "true", s7helpen1).

move(ruimterobots, s7got_answer_ruimtereizen1, say).
text(ruimterobots, s7got_answer_ruimtereizen1, "Dat is interessant!").
next(ruimterobots, s7got_answer_ruimtereizen1, "true", s7got_answer_ruimtereizen2).

move(ruimterobots, s7got_answer_ruimtereizen2, say).
text(ruimterobots, s7got_answer_ruimtereizen2, "Ook voor de robots van wie de vraag komt!").
next(ruimterobots, s7got_answer_ruimtereizen2, "true", s7got_answer_ruimtereizen3).

move(ruimterobots, s7got_answer_ruimtereizen3, say).
text(ruimterobots, s7got_answer_ruimtereizen3, "Dat zijn ruimterobots, robots die nu al in de ruimte zijn.").
next(ruimterobots, s7got_answer_ruimtereizen3, "true", s7helpen1).

move(ruimterobots, s7fail_ruimtereizen1, say).
text(ruimterobots, s7fail_ruimtereizen1, "Ik vind dat ook wel een lastige vraag.").
next(ruimterobots, s7fail_ruimtereizen1, "true", s7fail_ruimtereizen2).

move(ruimterobots, s7fail_ruimtereizen2, say).
text(ruimterobots, s7fail_ruimtereizen2, "Hij komt van robots die al in de ruimte werken.").
next(ruimterobots, s7fail_ruimtereizen2, "true", s7helpen1).

move(ruimterobots, s7helpen1, say).
text(ruimterobots, s7helpen1, "Ze doen daar onderzoek voor wetenschappers!").
next(ruimterobots, s7helpen1, "true", s7helpen2).

move(ruimterobots, s7helpen2, say).
text(ruimterobots, s7helpen2, "Maar de robots zelf vinden het veel leerzamer om met kinderen te praten.").
next(ruimterobots, s7helpen2, "true", s7helpen3).

move(ruimterobots, s7helpen3, say).
text(ruimterobots, s7helpen3, "Ze hebben nog een vraag voor je.").
next(ruimterobots, s7helpen3, "true", s7helpen4).

move(ruimterobots, s7helpen4, question).
moveConfig(ruimterobots, s7helpen4, [type=yesno, context='answer_yesno', umVariable=wil_ruimterobots_helpen]).
text(ruimterobots, s7helpen4, "Wil je de ruimterobots helpen?").
next(ruimterobots, s7helpen4, "answer_yes", s7ja_helpen1).
next(ruimterobots, s7helpen4, "answer_no", s7jammer1).
next(ruimterobots, s7helpen4, "fail", s7vervelen1).
next(ruimterobots, s7helpen4, "answer_dontknow", s7vervelen1).

move(ruimterobots, s7ja_helpen1, say).
text(ruimterobots, s7ja_helpen1, "Hoera!").
next(ruimterobots, s7ja_helpen1, "true", s7vervelen1).

move(ruimterobots, s7vervelen1, say).
text(ruimterobots, s7vervelen1, "De ruimterobots vervelen zich heel erg.").
next(ruimterobots, s7vervelen1, "true", s7vervelen2).

move(ruimterobots, s7vervelen2, say).
text(ruimterobots, s7vervelen2, "Ze werken allemaal op Mars of op de maan.").
next(ruimterobots, s7vervelen2, "true", s7vervelen3).

move(ruimterobots, s7vervelen3, say).
text(ruimterobots, s7vervelen3, "Het is heel saai daar zonder mensen.").
next(ruimterobots, s7vervelen3, "true", s7vervelen4).

move(ruimterobots, s7vervelen4, say).
text(ruimterobots, s7vervelen4, "Ze zouden zich minder vervelen als jij soms aan ze denkt.").
next(ruimterobots, s7vervelen4, "true", s7vervelen5).

move(ruimterobots, s7vervelen5, say).
text(ruimterobots, s7vervelen5, "Als je de maan ziet in de lucht, of Mars op tv.").
next(ruimterobots, s7vervelen5, "true", s7vervelen6).

move(ruimterobots, s7vervelen6, question).
moveConfig(ruimterobots, s7vervelen6, [type=yesno, context='answer_yesno', umVariable=aan_ruimterobots_denken]).
text(ruimterobots, s7vervelen6, "Wil jij soms een beetje aan de ruimterobots denken?").
next(ruimterobots, s7vervelen6, "answer_yes", s7aardig1).
next(ruimterobots, s7vervelen6, "answer_no", s7jammer1).
next(ruimterobots, s7vervelen6, "fail", s7niet_hele_tijd1).
next(ruimterobots, s7vervelen6, "answer_dontknow", s7niet_hele_tijd1).

move(ruimterobots, s7aardig1, say).
text(ruimterobots, s7aardig1, "Echt heel aardig!").
next(ruimterobots, s7aardig1, "true", s7niet_hele_tijd1).

move(ruimterobots, s7niet_hele_tijd1, say).
text(ruimterobots, s7niet_hele_tijd1, "Het hoeft niet de hele tijd hoor!").
next(ruimterobots, s7niet_hele_tijd1, "true", s7niet_hele_tijd2).

move(ruimterobots, s7niet_hele_tijd2, say).
text(ruimterobots, s7niet_hele_tijd2, "Gewoon soms, toevallig.").
next(ruimterobots, s7niet_hele_tijd2, "true", s7niet_hele_tijd3).

move(ruimterobots, s7niet_hele_tijd3, say).
text(ruimterobots, s7niet_hele_tijd3, "Eigenlijk is nu al genoeg.").
next(ruimterobots, s7niet_hele_tijd3, "true", s7niet_hele_tijd4).

move(ruimterobots, s7niet_hele_tijd4, say).
text(ruimterobots, s7niet_hele_tijd4, "Dankjewel!").
next(ruimterobots, s7niet_hele_tijd4, "true", s7niet_hele_tijd5).

move(ruimterobots, s7niet_hele_tijd5, say).
text(ruimterobots, s7niet_hele_tijd5, "Nu heb je niet alleen mij, maar ook de ruimterobots blij gemaakt!").
next(ruimterobots, s7niet_hele_tijd5, "true", s7niet_hele_tijd6).

move(ruimterobots, s7niet_hele_tijd6, say).
text(ruimterobots, s7niet_hele_tijd6, "Nu heb je niet alleen mij, maar ook Parker blij gemaakt!").
next(ruimterobots, s7niet_hele_tijd6, "true", s7niet_hele_tijd7).

move(ruimterobots, s7niet_hele_tijd7, say).
text(ruimterobots, s7niet_hele_tijd7, "Nu heb je niet alleen mij, maar ook Rover blij gemaakt!").
next(ruimterobots, s7niet_hele_tijd7, "true", s7niet_hele_tijd8).

move(ruimterobots, s7niet_hele_tijd8, say).
text(ruimterobots, s7niet_hele_tijd8, "Jij bent echt een supercoach.").
next(ruimterobots, s7niet_hele_tijd8, "true", s8).

move(ruimterobots, s7jammer1, say).
text(ruimterobots, s7jammer1, "Jammer, maar begrijpelijk.").
next(ruimterobots, s7jammer1, "true", s7jammer2).

move(ruimterobots, s7jammer2, say).
text(ruimterobots, s7jammer2, "Je moet al aan zoveel dingen denken!").
next(ruimterobots, s7jammer2, "true", s7jammer3).

move(ruimterobots, s7jammer3, say).
text(ruimterobots, s7jammer3, "Je hebt het ook heel druk met mijn coach zijn.").
next(ruimterobots, s7jammer3, "true", s8).

move(ruimterobots, s8, say).
text(ruimterobots, s8, "Laten we weer verder trainen!").

