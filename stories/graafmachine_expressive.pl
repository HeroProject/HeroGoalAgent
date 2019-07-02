topicOrder([story, theend]).

state(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
leds(story, s1, "white").
next(story, s1, "true", s2).

state(story, s2, say).
text(story, s2, "Het volgende verhaal gaat over de tijd toen ik een graafmachine was.").
next(story, s2, "true", s3).

state(story, s3, say).
text(story, s3, "Ik moest op mijn knieen gaan zitten en toen maakten ze rupsbanden aan me vast.").
next(story, s3, "true", s4).

state(story, s4, say).
text(story, s4, "En mijn arm werd aan mijn hoofd geplakt met plakband.").
next(story, s4, "true", s5).

state(story, s5, say).
text(story, s5, "Ik zag eruit als een olifant van ijzer.").
next(story, s5, "true", s5b).

state(story, s5b, say).
text(story, s5b, "Wil je samen met mij een olifant uitbeelden? Kom op, dan doen we het samen, in 3, 2, 1, start").
next(story, s5b, "true", s5c).

state(story, s5c, say).
anim(story, s5c, "elephant/behavior_1").
next(story, s5c, "true", s11).

state(story, s11, say).
text(story, s11, "De hele familie was mee.").
next(story, s11, "true", s12).

state(story, s12, say).
text(story, s12, "We reden in een optocht naar de plek waar we moesten graven.").
next(story, s12, "true", s13).

state(story, s13, say).
text(story, s13, "Mijn opa bromde.").
next(story, s13, "true", s14).

state(story, s14, say).
text(story, s14, "Hij is nog een oud model graafmachine, 1 die op kolen werkt.").
next(story, s14, "true", s15).

state(story, s15, say).
text(story, s15, "Ik werk op stroom.").
next(story, s15, "true", s16).

state(story, s16, say).
text(story, s16, "Ik vind elektriciteit het lekkerste wat er is.").
next(story, s16, "true", s17).

state(story, s17, say).
text(story, s17, "Mijn nichtje werkt op waterstof, maar ik weet niet precies wat dat is.").
next(story, s17, "true", s18).

state(story, s18, say).
text(story, s18, "Maar goed, we gingen dus in een stoet naar de opgraafplek.").
next(story, s18, "true", s19).

state(story, s19, say).
text(story, s19, "Door de modder met onze rupsbanden.").
next(story, s19, "true", s6).

state(story, s6, say).
text(story, s6, "Als ik achteruit reed, piepte ik als een muis.").
next(story, s6, "true", s7).

state(story, s7, say).
text(story, s7, "Wil jij voor mijh het geluid van een piepende muis na doen? Dan kan ik het gebruiken als geluidseffect.").
next(story, s7, "true", s8).

state(story, s8, say).
text(story, s8, "Piep als een muis in 3, 2, 1, start.").
next(story, s8, "true", s8b).

state(story, s8b, audioInput).
stateConfig(story, s8b, [recordTime=3000]).
next(story, s8b, "true", s9).

state(story, s9, say).
text(story, s9, "Zo klonk ik dus als ik achteruit reed.").
next(story, s9, "true", s10).

state(story, s10, say).
audio(story, s10, recorded, s8b).
next(story, s10, "true", s20).

state(story, s20, say).
text(story, s20, "Toen kwamen we op de graafplek.").
next(story, s20, "true", s21).

state(story, s21, say).
text(story, s21, "Een enorm grasveld zo groot als wel vier voetbalvelden, met in het midden een kuil zo groot als, als, als als, nou ja zo groot als een voetbalveld.").
next(story, s21, "true", s22).

state(story, s22, say).
text(story, s22, "En daar reden we naar binnen, en we verspreidden ons.").
next(story, s22, "true", s23).

state(story, s23, say).
text(story, s23, "Ik sloeg als een gek aan het graven.").
next(story, s23, "true", s26).

state(story, s26, say).
text(story, s26, "Ik wist eigenlijk helemaal niet wat de bedoeling was, maar ik had gewoon heel veel zin om te graven.").
next(story, s26, "true", s27).

state(story, s27, say).
text(story, s27, "Ik groef de modder weg.").
next(story, s27, "true", s28).

state(story, s28, say).
text(story, s28, "Achter me ontstond een steeds grotere berg."). % licht aan.
next(story, s28, "true", s29).

state(story, s29, say).
text(story, s29, "En af en toe gooide ik expres een beetje zand over mijn nichtje heen.").
next(story, s29, "true", s30).

state(story, s30, say).
text(story, s30, "En dan werd ze woedend, en moest opa zijn arm om haar heen slaan terwijl ze waterstofstoom afblies.").
next(story, s30, "true", s31).

state(story, s31, say).
audio(story, s31, server, "steam.wav").
leds(story, s31, "red").
next(story, s31, "true", s32).

state(story, s32, say).
text(story, s32, "Ik was eigenlijk al bijna vergeten waarom ik aan het graven was, zo leuk vond ik het.").
leds(story, s33, "white").
next(story, s32, "true", s33).

state(story, s33, say).
text(story, s33, "En toen.").
next(story, s33, "true", s34).

state(story, s34, say).
text(story, s34, "Toen stootte ik met mijn arm heel hard op een stuk staal of steen of iets anders hards.").
audio(story, s34, server, "hit_against_metal.wav").
next(story, s34, "true", s35).

state(story, s35, say).
text(story, s35, "En dat niet alleen, mijn arm zat vast.").
next(story, s35, "true", s36).

state(story, s36, say).
text(story, s36, "Ik kon hem niet meer bewegen, als ik hem probeerde op te halen, duwde ik in plaats van mijn arm mijn lichaam omhoog.").
next(story, s36, "true", s37).

state(story, s37, say).
text(story, s37, "Ik probeerde naar voren te rijden maar dat lukte niet.").
next(story, s37, "true", s38).

state(story, s38, say).
text(story, s38, "Ik probeerde naar achter te rijden en ik begon wel te piepen als een muis maar naar achter rijden lukte ook niet.").
next(story, s38, "true", s38b).

state(story, s38b, say).
audio(story, s38b, recorded, s8b).
next(story, s38b, "true", s39).

state(story, s39, say).
text(story, s39, "Het was heel eng.").
next(story, s39, "true", s40).

state(story, s40, say).
text(story, s40, "Maar gelukkig had mijn oom me horen piepen en dus kwam hij op me af getuft.").
next(story, s40, "true", s41).

state(story, s41, say).
text(story, s41, "En hij werd eerst heel boos dat ik mijn arm vast had laten zitten.").
next(story, s41, "true", s42).

state(story, s42, say).
text(story, s42, "En toen moest ik hem beloven dat ik vanaf nu voorzichtiger te werk zou gaan en toen ging hij me helpen met mijn arm losmaken.").
next(story, s42, "true", s43).

state(story, s43, say).
text(story, s43, "Hij groef alle aarde om mijn arm weg.").
next(story, s43, "true", s44).

state(story, s44, say).
text(story, s44, "En daarna kwam mijn opa en die kan met zijn motor heel hard blazen omdat er allemaal stoom in hem zit.").
next(story, s44, "true", s44b).

state(story, s44b, say).
text(story, s44b, "Wil jij mijn opa helpen blazen? Je kunt blazen in 3, 2, 1, start").
next(story, s44b, "true", s44c).

state(story, s44c, audioInput).
stateConfig(story, s44c, [recordTime=3000]).
next(story, s44c, "true", s44d).

state(story, s44d, say).
text(story, s44d, "Dankjewel! Samen met mijn opa blies jij heel hard.").
next(story, s44d, "true", s44e).

state(story, s44e, say).
audio(story, s44e, recorded, s44c).
next(story, s44e, "true", s45).

state(story, s45, say).
text(story, s45, "Zo hard dat ik zag waar ik mijn arm aan had gestoten.").
next(story, s45, "true", s47).

state(story, s47, say).
text(story, s47, "En ik wist eerst niet wat het was.").
next(story, s47, "true", s48).

state(story, s48, say).
text(story, s48, "Maar toen kwam mijn nichtje en die blies met haar waterstofblazertje de laatste stukjes zand eraf.").
audio(story, s48, server, "steam.wav").
next(story, s48, "true", s51).

state(story, s51, say).
text(story, s51, "Opa zei dat het heeeel bijzonder was.").
next(story, s51, "true", s52).

state(story, s52, say).
text(story, s52, "Weet je wat het was..").
next(story, s52, "true", s53).

state(story, s53, say).
text(story, s53, "Een andere robot."). % licht aan.
next(story, s53, "true", s54).

state(story, s54, say).
text(story, s54, "Of nou ja, een heel oud soort robot.").
next(story, s54, "true", s55).

state(story, s55, say).
text(story, s55, "Nog ouder dan opa.").
next(story, s55, "true", s56).

state(story, s56, say).
text(story, s56, "Maar dan een voor water!").
next(story, s56, "true", s57).

state(story, s57, say).
text(story, s57, "Een watergraafmachine!").
next(story, s57, "true", s58).

state(story, s58, say).
text(story, s58, "Een hele ouderwetse.").
next(story, s58, "true", s59).

state(story, s59, say).
text(story, s59, "Het vreemde ding heet blijkbaar een katrol.").
next(story, s59, "true", s59b).

state(story, s59b, say).
text(story, s59b, "Wil jij samen met mij doen alsof we aan het katrol trekken? Laten we het samen doen, in 3, 2, 1, start.").
next(story, s59b, "true", s59c).

state(story, s59c, say).
anim(story, s59c, "katrol/behavior_1").
next(story, s59c, "true", s60).

state(story, s60, say).
text(story, s60, "Leuk! Mijn nichtje rolde naar me toe.").
next(story, s60, "true", s61).

state(story, s61, say).
text(story, s61, "En toen heeft ze de katrol heel precies schoongeblazen.").
audio(story, s61, server, "steam.wav").
next(story, s61, "true", s62).

state(story, s62, say).
text(story, s62, "En toen zijn we ermee naar het museum gereden.").
next(story, s62, "true", s63).

state(story, s63, say).
text(story, s63, "En nu ligt hij in het Robotkundig Museum voor Oude Robots en andere Machines.").
next(story, s63, "true", s64).

state(story, s64, say).
text(story, s64, "Dat is een heel leuk museum.").
next(story, s64, "true", s65).

state(story, s65, say).
text(story, s65, "En mijn nichtje werkt daar nu.").
next(story, s65, "true", s69).

state(story, s69, say).
text(story, s69, "Leuk voor haar, he?").

state(theend, s1, say).
text(theend, s1, "Dit is het einde van het verhaal. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 