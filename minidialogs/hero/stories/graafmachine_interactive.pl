move(story, s1, say).
text(story, s1, "Graag vertel ik jou een verhaal van de tijd toen ik een graafmachine was.").
next(story, s1, "true", s5).

move(story, s5, say).
text(story, s5, "Ik moest op mijn knieen gaan zitten en toen maakten ze rupsbanden aan me vast.").
next(story, s5, "true", s6).

move(story, s6, say).
text(story, s6, "En mijn arm werd aan mijn hoofd geplakt met plakband.").
next(story, s6, "true", s7).

move(story, s7, say).
text(story, s7, "Ik zag eruit als een olifant van ijzer.").
next(story, s7, "true", s8).

move(story, s8, say).
text(story, s8, "Wil je samen met mij een olifant uitbeelden? Kom op dan doen we het samen, in 3, 2, 1, start").
next(story, s8, "true", s8b).

move(story, s8b, say).
anim(story, s8b, "elephant/behavior_1").
next(story, s8b, "true", s8c).

move(story, s8c, say).
text(story, s8c, "Wat gaaf zeg. Laat ik weer verder gaan.").
next(story, s8c, "true", s9).

move(story, s9, say).
text(story, s9, "Ik reed met mijn familie in een optocht naar de graaf plek. Ik was blij want mijn lievelings graafmachine reed achter mij,").
next(story, s9, "true", s10).

move(story, s10, question).
moveConfig(story, s10, [type = mc, response = speech, context = "answer_female_family_member", key = "familyMember"]).
text(story, s10, "Wie zou mijn lievelings graafmachine zijn, mijn nichtje, zusje of tante?").
next(story, s10, "answer_female_family_member", s11).
next(story, s10, "fail", s10f).

move(story, s10f, question).
moveConfig(story, s10f, [type = mc, response = touch, options = ["nichtje","zusje","tante"], context = "answer_female_family_member", key = "familyMember", defaultAnswer="nichtje"]).
text(story, s10f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wie zou mijn lievelings graafmachine zijn?").
next(story, s10f, "answer_female_family_member", s11).
next(story, s10f, "fail", s11f).

move(story, s11, say).
text(story, s11, "Jaa, super gezellig, met mijn %familyMember% in de optocht!").
next(story, s11, "true", s12).

move(story, s11f, say).
text(story, s11f, "Het was mijn %familyMember% achter mij in de optocht!").
next(story, s11f, "true", s12).

move(story, s12, say).
text(story, s12, "Mijn opa bromde.").
next(story, s12, "true", s13).

move(story, s13, say).
text(story, s13, "Hij is nog een oud model graafmachine, 1 die op kolen werkt.").
next(story, s13, "true", s14).

move(story, s14, say).
text(story, s14, "Ik werk op stroom.").
next(story, s14, "true", s15).

move(story, s15, say).
text(story, s15, "Ik vind elektriciteit het lekkerste wat er is.").
next(story, s15, "true", s16).

move(story, s16, say).
text(story, s16, "Mijn %familyMember% werkt op waterstof maar ik weet niet precies wat dat is.").
next(story, s16, "true", s18).

move(story, s18, say).
text(story, s18, "Maar goed, we gingen dus in een stoet naar de opgraafplek.").
next(story, s18, "true", s19).

move(story, s19, say).
text(story, s19, "Door de modder met onze rupsbanden.").
next(story, s19, "true", s20).

move(story, s20, say).
text(story, s20, "Als ik achteruit reed, piepte ik als een muis.").
next(story, s20, "true", s21).

move(story, s21, say).
text(story, s21, "Wil jij voor mijh het geluid van een piepende muis na doen? Dan kan ik het gebruiken als geluidseffect.").
next(story, s21, "true", s22).

move(story, s22, say).
text(story, s22, "Piep als een muis in 3, 2, 1, start.").
next(story, s22, "true", s23).

move(story, s23, audioInput).
moveConfig(story, s23, [recordTime=3000]).
next(story, s23, "true", s25).

move(story, s25, say).
text(story, s25, "Zo klonk ik dus als ik achteruit reed.").
next(story, s25, "true", s26).

move(story, s26, say).
audio(story, s26, recorded, s23).
next(story, s26, "true", s27).

move(story, s27, say).
text(story, s27, "Toen kwamen we op de graafplek.").
next(story, s27, "true", s30).

move(story, s30, say).
text(story, s30, "Ik kreeg de rechterhoek, mijn opa groef naast mij en hield mij een beetje in de gaten.").
next(story, s30, "true", s31).

move(story, s31, say).
text(story, s31, "Ik sloeg als een gek aan het graven.").
next(story, s31, "true", s32).

move(story, s32, say).
text(story, s32, "Ik wist eigenlijk helemaal niet wat de bedoeling was, maar ik had gewoon heel veel zin om te graven.").
next(story, s32, "true", s33).

move(story, s33, say).
text(story, s33, "Ik vond tussen al de modder een mooie ketting.").
next(story, s33, "true", s34).

move(story, s34, question).
moveConfig(story, s34, [type = mc, response = speech, altEnding=yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(story, s34, "Pakte ik die op of gooide ik die weg?").
next(story, s34, "true", s35).
next(story, s34, "fail", s34f).

move(story, s34f, question).
moveConfig(story, s34f, [type = mc, response = touch, options = ["oppakken","weggooien"], altEnding = yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(story, s34f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wat deed ik met de ketting?").
next(story, s34f, "true", s35).
next(story, s34f, "fail", s35).

move(story, s35, say).
text(story, s35, "Slim. Ik groef verder de modder weg.").
next(story, s35, "true", s37).

move(story, s37, say).
text(story, s37, "Achter me ontstond een steeds grotere berg.").
next(story, s37, "true", s38).

move(story, s38, say).
text(story, s38, "En af en toe gooide ik expres een beetje modder over mijn %familyMember% heen.").
next(story, s38, "true", s39).

move(story, s39, say).
text(story, s39, "En dan werd ze woedend, en moest opa zijn arm om haar heen slaan terwijl ze waterstofstoom afblies.").
next(story, s39, "true", s39b).

move(story, s39b, say).
audio(story, s39b, server, "steam.wav").
leds(story, s39b, "red").
next(story, s39b, "true", s40).

move(story, s40, say).
text(story, s40, "Ik was eigenlijk al bijna vergeten waarom ik aan het graven was, zo leuk vond ik het.").
leds(story, s40, "white").
next(story, s40, "true", s41).

move(story, s41, say).
text(story, s41, "En toen zat ik opeens vast.").
next(story, s41, "true", s42).

move(story, s42, question).
moveConfig(story, s42, [type = mc, response = speech, context = "answer_body_part", key = "lichaamsdeel"]).
text(story, s42, "Met welk lichaamsdeel zat ik vast?").
next(story, s42, "answer_body_part", s45).
next(story, s42, "fail", s42f).

move(story, s42f, question).
moveConfig(story, s42f, [type = mc, response = touch, options = ["arm","hoofd","been"], context = "answer_body_part", key = "lichaamsdeel", defaultAnswer="arm"]).
text(story, s42f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Met welk lichaamsdeel zat ik vast?").
next(story, s42f, "answer_body_part", s45).
next(story, s42f, "fail", s45).

move(story, s45, say).
text(story, s45, "Ik kon mijn %lichaamsdeel% niet meer bewegen, als ik hem probeerde op te halen, duwde ik in plaats van mijn %lichaamsdeel% mijn lichaam omhoog.").
next(story, s45, "true", s46).

move(story, s46, say).
text(story, s46, "Ik probeerde naar voren te rijden maar dat lukte niet.").
next(story, s46, "true", s47).

move(story, s47, say).
text(story, s47, "Ik probeerde naar achter te rijden en ik begon wel te piepen als een muis maar naar achter rijden lukte ook niet.").
next(story, s47, "true", s47b).

move(story, s47b, say).
audio(story, s47b, recorded, s23).
next(story, s47b, "true", s48).

move(story, s48, say).
text(story, s48, "Het was heel eng.").
next(story, s48, "true", s49).

move(story, s49, say).
text(story, s49, "Maar gelukkig had mijn opa me horen piepen en dus kwam hij op me af getuft.").
next(story, s49, "true", s50).

move(story, s50, say).
text(story, s50, "En hij werd eerst heel boos dat ik mijn %lichaamsdeel% vast had laten zitten.").
next(story, s50, "true", s51).

move(story, s51, say).
text(story, s51, "En toen moest ik hem beloven dat ik vanaf nu voorzichtiger te werk zou gaan en toen ging hij me helpen met mijn %lichaamsdeel% losmaken.").
next(story, s51, "true", s52).

move(story, s52, say).
text(story, s52, "Hij blies met zijn stoom alle aarde om mijn %lichaamsdeel% weg.").
next(story, s52, "true", s57b).

move(story, s57b, say).
text(story, s57b, "Wil jij mijn opa helpen blazen? Je kunt blazen in 3, 2, 1, start").
next(story, s57b, "true", s57c).

move(story, s57c, audioInput).
moveConfig(story, s57c, [recordTime=3000]).
next(story, s57c, "true", s57d).

move(story, s57d, say).
text(story, s57d, "Dankjewel! Samen met mijn opa blies jij heel hard.").
next(story, s57d, "true", s57e).

move(story, s57e, say).
audio(story, s57e, recorded, s57c).
next(story, s57e, "true", s57g).

move(story, s57g, say).
text(story, s57g, "Zo hard dat ik zag waar ik mijn arm aan had gestoten.").
next(story, s57g, "true", s70).

move(story, s70, say).
text(story, s70, "Opa zei dat ik een andere graafmachine had opgegraven!").
next(story, s70, "true", s71).

move(story, s71, say).
text(story, s71, "Maar dan 1 voor water!").
next(story, s71, "true", s72).

move(story, s72, say).
text(story, s72, "Een watergraafmachine!").
next(story, s72, "true", s73).

move(story, s73, say).
text(story, s73, "Een hele ouderwetse.").
next(story, s73, "true", s74).

move(story, s74, say).
text(story, s74, "En dat dat vreemde ding een katrol heet.").
next(story, s74, "true", s75).

move(story, s75, say).
text(story, s75, "Wil jij samen met mij doen alsof we aan het katrol trekken? Laten we het samen doen, in 3, 2, 1, start.").
next(story, s75, "true", s75b).

move(story, s75b, say).
anim(story, s75b, "katrol/behavior_1").
next(story, s75b, "true", s75c).

move(story, s75c, say).
text(story, s75c, "Leuk! \pau=500\ Mijn nichtje rolde naar me toe.").
next(story, s75c, "true", s75d).

move(story, s75d, say).
text(story, s75d, "En toen heeft ze het katrol heel precies schoongeblazen.").
audio(story, s75d, server, "steam.wav").
next(story, s75d, "true", s76).

move(story, s76, say).
text(story, s76, "En ze pakte het katrol uit mijn handen.").
next(story, s76, "true", s77).

move(story, s77, say).
text(story, s77, "Wat deed ik toen?").
next(story, s77, "true", s78).

move(story, s78, question).
moveConfig(story, s78, [type = mc, response = speech, context = "answer_graafmachine_branch_2", key = "graafmachine_keuze_3"]).
text(story, s78, "Werd ik boos op haar of liet ik haar met het katrol spelen?").
next(story, s78, "answer_graafmachine_boos", s79a).
next(story, s78, "answer_graafmachine_spelen", s79b).
next(story, s78, "fail", s78f).

move(story, s78f, question).
moveConfig(story, s78f, [type = mc, response = touch, options = ["ik werd boos","laten spelen"], branching = yes,context = "answer_graafmachine_branch_2", key = "graafmachine_keuze_3",defaultAnswer="boos"]).
text(story, s78f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wat deed ik toen?").
next(story, s78f, "ik werd boos", s79a).
next(story, s78f, "laten spelen", s79b).
next(story, s78f, "fail", s79b).

move(story, s79a, say).
text(story, s79a, "En toen wilde ik eerst super boos op haar worden want ik had hem gevonden en zij was hem aan het stelen. Maar toen zei opa dat ik dat niet mocht doen.").
next(story, s79a, "true", s80).

move(story, s79b, say).
text(story, s79b, "Toen liet ik haar er maar mee spelen").
next(story, s79b, "true", s80).

move(story, s80, say).
text(story, s80, "Omdat ik zonder haar nooit het katrol had gevonden.").
next(story, s80, "true", s82).

move(story, s82, say).
text(story, s82, "En toen zijn we ermee naar het museum gereden.").
next(story, s82, "true", s83).

move(story, s83, say).
text(story, s83, "En nu ligt hij in het Robotkundig Museum voor Oude Robots en andere Machines.").
next(story, s83, "true", s84).

move(story, s84, say).
text(story, s84, "Dat is een heel leuk museum.").
next(story, s84, "true", s85).

move(story, s85, say).
text(story, s85, "En mijn %familyMember% werkt daar nu.").
next(story, s85, "true", s89).

move(story, s89, say).
text(story, s89, "Leuk voor haar, he?").
next(story, s89, "true", s90).

move(story, s90, say).
moveConfig(story, s90, [selectEnding = yes, key = "graafmachine_alt_ending"]).
text(story, s90, "Weet je nog dat ik die ketting vond?").
next(story, s90, "oppakken", s91a).
next(story, s90, "weggooien", s91b).
next(story, s90, "fail", s91f).

move(story, s91a, say).
text(story, s91a, "Gelukkig liet jij mij hem oppakken? Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").

move(story, s91b, say).
text(story, s91b, "Maar goed dat je mij hem liet weggooien. Er ruste namelijk een vloek op. Maar dat is een verhaal voor een andere keer.").

move(story, s91f, say).
text(story, s91f, "Gelukkig had ik de ketting opgepakt. Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").


%%%% THE END %%%%%

move(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

move(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 