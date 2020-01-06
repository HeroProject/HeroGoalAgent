topicOrder([story, theend]).

state(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
leds(story, s1, "white").
next(story, s1, "true", s2).

state(story, s2, say).
text(story, s2, "Graag vertel ik jou een verhaal van de tijd toen ik een graafmachine was.").
next(story, s2, "true", s5).

state(story, s5, say).
text(story, s5, "Ik moest op mijn knieen gaan zitten en toen maakten ze rupsbanden aan me vast.").
next(story, s5, "true", s6).

state(story, s6, say).
text(story, s6, "En mijn arm werd aan mijn hoofd geplakt met plakband.").
next(story, s6, "true", s7).

state(story, s7, say).
text(story, s7, "Ik zag eruit als een olifant van ijzer.").
next(story, s7, "true", s8).

state(story, s8, say).
text(story, s8, "Wil je samen met mij een olifant uitbeelden? Kom op dan doen we het samen, in 3, 2, 1").
next(story, s8, "true", s8b).

state(story, s8b, say).
anim(story, s8b, "elephant/behavior_1").
next(story, s8b, "true", s8c).

state(story, s8c, say).
text(story, s8c, "Wat gaaf zeg. Laat ik weer verder gaan.").
next(story, s8c, "true", s9).

state(story, s9, say).
text(story, s9, "Ik reed met mijn familie in een optocht naar de graaf plek. Ik was blij want mijn lievelings graafmachine reed achter mij,").
next(story, s9, "true", s10).

state(story, s10, question).
stateConfig(story, s10, [type = mc, response = speech, context = "answer_female_family_member", key = "familyMember"]).
text(story, s10, "Wie zou mijn lievelings graafmachine zijn, mijn nichtje, zusje of tante?").
next(story, s10, "answer_female_family_member", s11).
next(story, s10, "fail", s10f).

state(story, s10f, question).
stateConfig(story, s10f, [type = mc, response = touch, options = ["nichtje","zusje","tante"], context = "answer_female_family_member", key = "familyMember", defaultAnswer="nichtje"]).
text(story, s10f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wie zou mijn lievelings graafmachine zijn?").
next(story, s10f, "answer_female_family_member", s11).
next(story, s10f, "fail", s11f).

state(story, s11, say).
text(story, s11, "Jaa, super gezellig, met mijn %familyMember% in de optocht!").
next(story, s11, "true", s12).

state(story, s11f, say).
text(story, s11f, "Het was mijn %familyMember% achter mij in de optocht!").
next(story, s11f, "true", s12).

state(story, s12, say).
text(story, s12, "Mijn opa bromde.").
next(story, s12, "true", s13).

state(story, s13, say).
text(story, s13, "Hij is nog een oud model graafmachine, 1 die op kolen werkt.").
next(story, s13, "true", s14).

state(story, s14, say).
text(story, s14, "Ik werk op stroom.").
next(story, s14, "true", s15).

state(story, s15, say).
text(story, s15, "Ik vind elektriciteit het lekkerste wat er is.").
next(story, s15, "true", s16).

state(story, s16, say).
text(story, s16, "Mijn %familyMember% werkt op waterstof maar ik weet niet precies wat dat is.").
next(story, s16, "true", s18).

state(story, s18, say).
text(story, s18, "Maar goed, we gingen dus in een stoet naar de opgraafplek.").
next(story, s18, "true", s19).

state(story, s19, say).
text(story, s19, "Door de modder met onze rupsbanden.").
next(story, s19, "true", s20).

state(story, s20, say).
text(story, s20, "Als ik achteruit reed, piepte ik als een muis.").
next(story, s20, "true", s21).

state(story, s21, say).
text(story, s21, "Wil jij voor mijh het geluid van een piepende muis na doen? Dan kan ik het gebruiken als geluidseffect.").
next(story, s21, "true", s22).

state(story, s22, say).
text(story, s22, "Piep als een muis in 3, 2, 1").
next(story, s22, "true", s23).

state(story, s23, audioInput).
stateConfig(story, s23, [recordTime=3000]).
next(story, s23, "true", s25).

state(story, s25, say).
text(story, s25, "Zo klonk ik dus als ik achteruit reed.").
next(story, s25, "true", s26).

state(story, s26, say).
audio(story, s26, recorded, s23).
next(story, s26, "true", s27).

state(story, s27, say).
text(story, s27, "Toen kwamen we op de graafplek.").
next(story, s27, "true", s30).

state(story, s30, say).
text(story, s30, "Ik kreeg de rechterhoek, mijn opa groef naast mij en hield mij een beetje in de gaten.").
next(story, s30, "true", s31).

state(story, s31, say).
text(story, s31, "Ik sloeg als een gek aan het graven.").
next(story, s31, "true", s32).

state(story, s32, say).
text(story, s32, "Ik wist eigenlijk helemaal niet wat de bedoeling was, maar ik had gewoon heel veel zin om te graven.").
next(story, s32, "true", s33).

state(story, s33, say).
text(story, s33, "Ik vond tussen al de modder een mooie ketting.").
next(story, s33, "true", s34).

state(story, s34, question).
stateConfig(story, s34, [type = mc, response = speech, altEnding=yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(story, s34, "Pakte ik die op of gooide ik die weg?").
next(story, s34, "true", s35).
next(story, s34, "fail", s34f).

state(story, s34f, question).
stateConfig(story, s34f, [type = mc, response = touch, options = ["oppakken","weggooien"], altEnding = yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(story, s34f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wat deed ik met de ketting?").
next(story, s34f, "true", s35).
next(story, s34f, "fail", s35).

state(story, s35, say).
text(story, s35, "Slim. Ik groef verder de modder weg.").
next(story, s35, "true", s37).

state(story, s37, say).
text(story, s37, "Achter me ontstond een steeds grotere berg.").
next(story, s37, "true", s38).

state(story, s38, say).
text(story, s38, "En af en toe gooide ik expres een beetje modder over mijn %familyMember% heen.").
next(story, s38, "true", s39).

state(story, s39, say).
text(story, s39, "En dan werd ze woedend, en moest opa zijn arm om haar heen slaan terwijl ze waterstofstoom afblies.").
next(story, s39, "true", s39b).

state(story, s39b, say).
audio(story, s39b, server, "steam.wav").
leds(story, s39b, "red").
next(story, s39b, "true", s40).

state(story, s40, say).
text(story, s40, "Ik was eigenlijk al bijna vergeten waarom ik aan het graven was, zo leuk vond ik het.").
leds(story, s40, "white").
next(story, s40, "true", s41).

state(story, s41, say).
text(story, s41, "En toen zat ik opeens vast.").
next(story, s41, "true", s42).

state(story, s42, question).
stateConfig(story, s42, [type = mc, response = speech, context = "answer_body_part", key = "lichaamsdeel"]).
text(story, s42, "Met welk lichaamsdeel zat ik vast?").
next(story, s42, "answer_body_part", s45).
next(story, s42, "fail", s42f).

state(story, s42f, question).
stateConfig(story, s42f, [type = mc, response = touch, options = ["arm","hoofd","been"], context = "answer_body_part", key = "lichaamsdeel", defaultAnswer="arm"]).
text(story, s42f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Met welk lichaamsdeel zat ik vast?").
next(story, s42f, "answer_body_part", s45).
next(story, s42f, "fail", s45).

state(story, s45, say).
text(story, s45, "Ik kon mijn %lichaamsdeel% niet meer bewegen, als ik hem probeerde op te halen, duwde ik in plaats van mijn %lichaamsdeel% mijn lichaam omhoog.").
next(story, s45, "true", s46).

state(story, s46, say).
text(story, s46, "Ik probeerde naar voren te rijden maar dat lukte niet.").
next(story, s46, "true", s47).

state(story, s47, say).
text(story, s47, "Ik probeerde naar achter te rijden en ik begon wel te piepen als een muis maar naar achter rijden lukte ook niet.").
next(story, s47, "true", s47b).

state(story, s47b, say).
audio(story, s47b, recorded, s23).
next(story, s47b, "true", s48).

state(story, s48, say).
text(story, s48, "Het was heel eng.").
next(story, s48, "true", s49).

state(story, s49, say).
text(story, s49, "Maar gelukkig had mijn opa me horen piepen en dus kwam hij op me af getuft.").
next(story, s49, "true", s50).

state(story, s50, say).
text(story, s50, "En hij werd eerst heel boos dat ik mijn %lichaamsdeel% vast had laten zitten.").
next(story, s50, "true", s51).

state(story, s51, say).
text(story, s51, "En toen moest ik hem beloven dat ik vanaf nu voorzichtiger te werk zou gaan en toen ging hij me helpen met mijn %lichaamsdeel% losmaken.").
next(story, s51, "true", s52).

state(story, s52, say).
text(story, s52, "Hij blies met zijn stoom alle aarde om mijn %lichaamsdeel% weg.").
next(story, s52, "true", s57b).

state(story, s57b, say).
text(story, s57b, "Wil jij mijn opa helpen blazen? Je kunt blazen in 3, 2, 1").
next(story, s57b, "true", s57c).

state(story, s57c, audioInput).
stateConfig(story, s57c, [recordTime=3000]).
next(story, s57c, "true", s57d).

state(story, s57d, say).
text(story, s57d, "Dankjewel! Samen met mijn opa blies jij heel hard.").
next(story, s57d, "true", s57e).

state(story, s57e, say).
audio(story, s57e, recorded, s57c).
next(story, s57e, "true", s57g).

state(story, s57g, say).
text(story, s57g, "Zo hard dat ik zag waar ik mijn arm aan had gestoten.").
next(story, s57g, "true", s70).

state(story, s70, say).
text(story, s70, "Opa zei dat ik een andere graafmachine had opgegraven!").
next(story, s70, "true", s71).

state(story, s71, say).
text(story, s71, "Maar dan 1 voor water!").
next(story, s71, "true", s72).

state(story, s72, say).
text(story, s72, "Een watergraafmachine!").
next(story, s72, "true", s73).

state(story, s73, say).
text(story, s73, "Een hele ouderwetse.").
next(story, s73, "true", s74).

state(story, s74, say).
text(story, s74, "En dat dat vreemde ding een katrol heet.").
next(story, s74, "true", s75).

state(story, s75, say).
text(story, s75, "Wil jij samen met mij doen alsof we aan het katrol trekken? Laten we het samen doen, in 3, 2, 1").
next(story, s75, "true", s75b).

state(story, s75b, say).
anim(story, s75b, "katrol/behavior_1").
next(story, s75b, "true", s75c).

state(story, s75c, say).
text(story, s75c, "Leuk! \pau=500\ Mijn nichtje rolde naar me toe.").
next(story, s75c, "true", s75d).

state(story, s75d, say).
text(story, s75d, "En toen heeft ze het katrol heel precies schoongeblazen.").
audio(story, s75d, server, "steam.wav").
next(story, s75d, "true", s76).

state(story, s76, say).
text(story, s76, "En ze pakte het katrol uit mijn handen.").
next(story, s76, "true", s77).

state(story, s77, say).
text(story, s77, "Wat deed ik toen?").
next(story, s77, "true", s78).

state(story, s78, question).
stateConfig(story, s78, [type = mc, response = speech, context = "answer_graafmachine_branch_2", key = "graafmachine_keuze_3"]).
text(story, s78, "Werd ik boos op haar of liet ik haar met het katrol spelen?").
next(story, s78, "answer_graafmachine_boos", s79a).
next(story, s78, "answer_graafmachine_spelen", s79b).
next(story, s78, "fail", s78f).

state(story, s78f, question).
stateConfig(story, s78f, [type = mc, response = touch, options = ["ik werd boos","laten spelen"], branching = yes,context = "answer_graafmachine_branch_2", key = "graafmachine_keuze_3",defaultAnswer="boos"]).
text(story, s78f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wat deed ik toen?").
next(story, s78f, "ik werd boos", s79a).
next(story, s78f, "laten spelen", s79b).
next(story, s78f, "fail", s79b).

state(story, s79a, say).
text(story, s79a, "En toen wilde ik eerst super boos op haar worden want ik had hem gevonden en zij was hem aan het stelen. Maar toen zei opa dat ik dat niet mocht doen.").
next(story, s79a, "true", s80).

state(story, s79b, say).
text(story, s79b, "Toen liet ik haar er maar mee spelen").
next(story, s79b, "true", s80).

state(story, s80, say).
text(story, s80, "Omdat ik zonder haar nooit het katrol had gevonden.").
next(story, s80, "true", s82).

state(story, s82, say).
text(story, s82, "En toen zijn we ermee naar het museum gereden.").
next(story, s82, "true", s83).

state(story, s83, say).
text(story, s83, "En nu ligt hij in het Robotkundig Museum voor Oude Robots en andere Machines.").
next(story, s83, "true", s84).

state(story, s84, say).
text(story, s84, "Dat is een heel leuk museum.").
next(story, s84, "true", s85).

state(story, s85, say).
text(story, s85, "En mijn %familyMember% werkt daar nu.").
next(story, s85, "true", s89).

state(story, s89, say).
text(story, s89, "Leuk voor haar, he?").
next(story, s89, "true", s90).

state(story, s90, say).
stateConfig(story, s90, [selectEnding = yes, key = "graafmachine_alt_ending"]).
text(story, s90, "Weet je nog dat ik die ketting vond?").
next(story, s90, "oppakken", s91a).
next(story, s90, "weggooien", s91b).
next(story, s90, "fail", s91f).

state(story, s91a, say).
text(story, s91a, "Gelukkig liet jij mij hem oppakken? Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").

state(story, s91b, say).
text(story, s91b, "Maar goed dat je mij hem liet weggooien. Er ruste namelijk een vloek op. Maar dat is een verhaal voor een andere keer.").

state(story, s91f, say).
text(story, s91f, "Gelukkig had ik de ketting opgepakt. Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").


%%%% THE END %%%%%

state(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 