:- dynamic audio/4.

topicOrder([story, theend]).

state(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
leds(story, s1, "white").
next(story, s1, "true", s2).

state(story, s2, question).
stateConfig(story, s2, [type = mc, response = speech, context = "answer_color", key = "favoriteColor"]).
text(story, s2, "Wat is jouw favoriete kleur?").

state(story, s2f, question).
stateConfig(story, s2f, [type = mc, response = touch, options = ["rood","blauw","groen","geel","roze","paars","zwart"], context = "answer_color", key = "favoriteColor", defaultAnswer="rood"]).
text(story, s2f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Wat is jouw favoriete kleur?").
next(story, s2, "answer_color", s3).
next(story, s2, "fail", s2f).
next(story, s2f, "answer_color", s3).

state(story, s3, say).
text(story, s3, "Ik hou van %favoriteColor%.").
next(story, s3, "true", s4).

state(story, s4, say).
text(story, s4, "En een paar weken terug was ik zelfs een %favoriteColor%e graafmachine.").
next(story, s4, "true", s5).

state(story, s5, say).
text(story, s5, "Ik moest op mijn knieen gaan zitten en toen maakten ze rupsbanden aan me vast.").
next(story, s5, "true", s6).

state(story, s6, say).
text(story, s6, "En mijn arm werd aan mijn hoofd geplakt met plakband.").
next(story, s6, "true", s7).

state(story, s7, say).
text(story, s7, "Ik zag eruit als een olifant van %favoriteColor% ijzer.").
next(story, s7, "true", s8).

state(story, s8, say).
text(story, s8, "We reden in een optocht naar de plek waar we moesten graven.").
next(story, s8, "true", s9).

state(story, s9, say).
text(story, s9, "Ik reed met mijn familie en een groep vrienden en vriendinnen, en ik was blij want mijn lievelings graafmachine reed achter mij,").
next(story, s9, "true", s10).

state(story, s10, question).
stateConfig(story, s10, [type = mc, response = speech, context = "answer_female_family_member", key = "familyMember"]).
text(story, s10, "Wie zou mijn lievelings graafmachine zijn, mijn nichtje, zusje of beste vriendinnetje?").

state(story, s10f, question).
stateConfig(story, s10f, [type = mc, response = touch, options = ["nichtje","zusje","beste vriendinnetje"], context = "answer_female_family_member", key = "familyMember", defaultAnswer="nichtje"]).
text(story, s10f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Wie zou mijn lievelings graafmachine zijn, mijn nichtje, zusje of beste vriendinnetje?").
next(story, s10, "answer_female_family_member", s11).
next(story, s10, "fail", s10f).
next(story, s10f, "answer_female_family_member", s11).

state(story, s11, say).
text(story, s11, "Jaa, super gezellig, met mijn %familyMember% in de optocht!").
next(story, s11, "true", s12).

state(story, s12, say).
text(story, s12, "Ik reed tussen mijn oom en mijn %familyMember%.").
next(story, s12, "true", s13).

state(story, s13, say).
text(story, s13, "En achter mijn %familyMember% reed mijn opa zodat mijn %familyMember% er niet tussenuit kon piepen.").
next(story, s13, "true", s14).

state(story, s14, say).
text(story, s14, "Want mijn %familyMember% had die dag helemaal geen zin om te werken.").
next(story, s14, "true", s15).

state(story, s15, say).
text(story, s15, "En al helemaal niet als graafmachine.").
next(story, s15, "true", s16).

state(story, s16, say).
text(story, s16, "Graven is saai, zei ze.").
next(story, s16, "true", s17).

state(story, s17, question).
stateConfig(story, s17, [type = mc, response = speech, context = "answer_graafmachine_branch_1", key = "graafmachine_keuze_1"]).
text(story, s17, "Wat wilde mijn zusje eigenlijk liever doen? Jij kunt kiezen uit muziek maken, kunstwerken maken, en schaatsen.").

state(story, s17f, question).
stateConfig(story, s17f, [type = mc, response = touch, options = ["muziek maken","kunstwerken maken","schaatsen"], branching = yes,context = "answer_graafmachine_branch_1", key = "graafmachine_keuze_1",defaultAnswer="muziek maken"]).
text(story, s17f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Wat wilde mijn zusje eigenlijk liever doen? Jij kunt kiezen uit muziek maken, kunstwerken maken, en schaatsen.").

state(story, s18a, say).
text(story, s18a, "Ja! Dan kunnen er mensen lekker dansen, dat vinden mensen leuk").

state(story, s18b, say).
text(story, s18b, "Ja! Dan kunnen mensen mijn mooie kunstwerken komen bekijken, dat vinden ze leuk!").

state(story, s18c, say).
text(story, s18c, "Ja! Dan kunnnen alle mensen met me mee doen en kunnen we kijken wie het mooist schaatst!").

next(story, s17, "answer_graafmachine_muziek", s18a).
next(story, s17f, "muziek maken", s18a).
next(story, s18a, "true", s19).
next(story, s17, "answer_graafmachine_kunstwerken", s18b).
next(story, s17f, "kunstwerken maken", s18b).
next(story, s18b, "true", s19).
next(story, s17, "answer_graafmachine_schaatsen", s18c).
next(story, s17f, "schaatsen", s18c).
next(story, s18c, "true", s19).
next(story, s17, "fail", s17f).

state(story, s19, say).
text(story, s19, "Maar nee, ze moest weer graven.").
next(story, s19, "true", s20).

state(story, s20, say).
text(story, s20, "Mijn opa bromde.").
next(story, s20, "true", s21).

state(story, s21, say).
text(story, s21, "Hij is nog een oud model graafmachine, 1 die op kolen werkt.").
next(story, s21, "true", s22).

state(story, s22, say).
text(story, s22, "Ik werk op stroom.").
next(story, s22, "true", s23).

state(story, s23, say).
text(story, s23, "Ik vind elektriciteit het lekkerste wat er is.").
next(story, s23, "true", s24).

state(story, s24, say).
text(story, s24, "En mijn oom werkt op diesel en mijn %familyMember% werkt op waterstof maar ik weet niet precies wat dat is.").
next(story, s24, "true", s25).

state(story, s25, say).
text(story, s25, "Maar goed, we gingen dus in een stoet naar de opgraafplek.").
next(story, s25, "true", s26).

state(story, s26, say).
text(story, s26, "Door de modder met onze rupsbanden.").
next(story, s26, "true", s27).

state(story, s27, say).
text(story, s27, "Toen kwamen we op de graafplek.").
next(story, s27, "true", s28).

state(story, s28, say).
text(story, s28, "Een enorm grasveld zo groot als wel vier voetbalvelden, met in het midden een kuil zo groot als, als, als als, nou ja zo groot als een voetbalveld.").
next(story, s28, "true", s29).

state(story, s29, say).
text(story, s29, "En daar reden we naar binnen, en we verspreidden ons.").
next(story, s29, "true", s30).

state(story, s30, say).
text(story, s30, "Ik kreeg de rechterhoek, mijn oom groef naast mij en hield mij een beetje in de gaten.").
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

state(story, s34f, question).
stateConfig(story, s34f, [type = mc, response = touch, options = ["oppakken","weggooien"], altEnding = yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(story, s34f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Pakte ik die op of gooide ik die weg?").

next(story, s34, "true", s35).
next(story, s34, "fail", s34f).
next(story, s34f, "true", s35).
next(story, s34f, "fail", s35).

state(story, s35, say).
text(story, s35, "Ik groef de modder weg.").
next(story, s35, "true", s36).

state(story, s36, say).
text(story, s36, "En daaronder was zand, en dat groef ik ook weg.").
next(story, s36, "true", s37).

state(story, s37, say).
text(story, s37, "Achter me ontstond een steeds grotere berg.").
next(story, s37, "true", s38).

state(story, s38, say).
text(story, s38, "En af en toe gooide ik expres een beetje zand over mijn %familyMember% heen.").
next(story, s38, "true", s39).

state(story, s39, say).
text(story, s39, "En dan werd ze woedend, en moest opa zijn arm om haar heen slaan terwijl ze waterstofstoom afblies.").
next(story, s39, "true", s40).

state(story, s40, say).
text(story, s40, "Ik was eigenlijk al bijna vergeten waarom ik aan het graven was, zo leuk vond ik het.").
next(story, s40, "true", s41).

state(story, s41, say).
text(story, s41, "En toen.").
next(story, s41, "true", s42).

state(story, s42, question).
stateConfig(story, s42, [type = mc, response = speech, context = "answer_bodyPart", key = "bodyPart"]).
text(story, s42, "Ik stootte me heel hard. En opeens zat iets vast, was dat mijn arm, mijn hoofd of mijn been?").

state(story, s42f, question).
stateConfig(story, s42f, [type = mc, response = touch, options = ["arm","hoofd","been"], context = "answer_bodyPart", key = "bodyPart", defaultAnswer="arm"]).
text(story, s42f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Ik stootte me heel hard. En opeens zat iets vast, was dat mijn arm, mijn hoofd of mijn been?").
next(story, s42, "answer_bodyPart", s43).
next(story, s42, "fail", s42f).
next(story, s42f, "answer_bodyPart", s43).

state(story, s43, say).
text(story, s43, "Stootte ik met mijn %bodyPart% heel hard op een stuk staal of steen of iets anders hards.").
next(story, s43, "true", s44).

state(story, s44, say).
text(story, s44, "En dat niet alleen, mijn %bodyPart% zat vast.").
next(story, s44, "true", s45).

state(story, s45, say).
text(story, s45, "Ik kon hem niet meer bewegen, als ik hem probeerde op te halen, duwde ik in plaats van mijn %bodyPart% mijn lichaam omhoog.").
next(story, s45, "true", s46).

state(story, s46, say).
text(story, s46, "Ik probeerde naar voren te rijden maar dat lukte niet.").
next(story, s46, "true", s47).

state(story, s47, say).
text(story, s47, "Ik probeerde naar achter te rijden en ik begon wel te piepen als een muis maar naar achter rijden lukte ook niet.").
next(story, s47, "true", s48).

state(story, s48, say).
text(story, s48, "Het was heel eng.").
next(story, s48, "true", s49).

state(story, s49, say).
text(story, s49, "Maar gelukkig had mijn oom me horen piepen en dus kwam hij op me af getuft.").
next(story, s49, "true", s50).

state(story, s50, say).
text(story, s50, "En hij werd eerst heel boos dat ik mijn %bodyPart% vast had laten zitten.").
next(story, s50, "true", s51).

state(story, s51, say).
text(story, s51, "En toen moest ik hem beloven dat ik vanaf nu voorzichtiger te werk zou gaan en toen ging hij me helpen met mijn %bodyPart% losmaken.").
next(story, s51, "true", s52).

state(story, s52, say).
text(story, s52, "Hij groef alle aarde om mijn %bodyPart% weg.").
next(story, s52, "true", s53).

state(story, s53, say).
text(story, s53, "En daarna kwam mijn opa en die kan met zijn motor heel hard blazen omdat er allemaal stoom in hem zit.").
next(story, s53, "true", s54).

state(story, s54, say).
text(story, s54, "En toen zag ik waar ik mijn %bodyPart% aan had gestoten.").
next(story, s54, "true", s55).

state(story, s55, say).
text(story, s55, "En ik pakte het snel met mijn hand vast.").
next(story, s55, "true", s56).

state(story, s56, say).
text(story, s56, "En ik wist eerst niet wat het was.").
next(story, s56, "true", s57).

state(story, s57, say).
text(story, s57, "Maar toen kwam mijn %familyMember% en die blies met haar waterstofblazertje de laatste stukjes zand eraf.").
next(story, s57, "true", s58).

state(story, s58, say).
text(story, s58, "En in mijn hand zat.").
next(story, s58, "true", s59).

state(story, s59, say).
text(story, s59, "Iets wat ik helemaal niet herkende.").
next(story, s59, "true", s60).

state(story, s60, say).
text(story, s60, "Maar waarvan mijn opa zei dat het heeeel bijzonder was.").
next(story, s60, "true", s61).

state(story, s61, say).
text(story, s61, "Weet je wat het was..").
next(story, s61, "true", s62).

state(story, s62, say).
text(story, s62, "Een andere robot.").
next(story, s62, "true", s63).

state(story, s63, say).
text(story, s63, "Of nou ja, een heel oud soort robot.").
next(story, s63, "true", s64).

state(story, s64, say).
text(story, s64, "Nog ouder dan opa.").
next(story, s64, "true", s65).

state(story, s65, say).
text(story, s65, "Ik had hem helemaal niet als robot herkend maar opa zei dat hij ze nog weleens had gezien toen hij jong was.").
next(story, s65, "true", s66).

state(story, s66, say).
text(story, s66, "Hij zag eruit als een soort lange arm met daaraan een touwen dan een soort wieltje en daaraan zat dan een haak met daaraan een soort grote emmer.").
next(story, s66, "true", s67).

state(story, s67, say).
text(story, s67, "Snap je wat ik bedoel?").
next(story, s67, "true", s68).

state(story, s68, say).
text(story, s68, "Ik snapte er zelf helemaal niks van.").
next(story, s68, "true", s69).

state(story, s69, say).
text(story, s69, "Maar opa zei.").
next(story, s69, "true", s70).

state(story, s70, say).
text(story, s70, "Dat ik een andere graafmachine had opgegraven!").
next(story, s70, "true", s71).

state(story, s71, say).
text(story, s71, "Maar dan een voor water!").
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
text(story, s75, "Mijn %familyMember% rolde naar me toe.").
next(story, s75, "true", s76).

state(story, s76, say).
text(story, s76, "En ze pakte de katrol uit mijn handen.").
next(story, s76, "true", s77).

state(story, s77, say).
text(story, s77, "Wat deed ik toen?").
next(story, s77, "true", s78).

state(story, s78, question).
stateConfig(story, s78, [type = mc, response = speech, context = "answer_graafmachine_branch_2", key = "graafmachine_keuze_3"]).
text(story, s78, "Werd ik boos op haar of liet ik haar met de katrol spelen?").

state(story, s78f, question).
stateConfig(story, s78f, [type = mc, response = touch, options = ["boos","laten spelen"], branching = yes,context = "answer_graafmachine_branch_2", key = "graafmachine_keuze_3",defaultAnswer="boos"]).
text(story, s78f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Werd ik boos op haar of liet ik haar met de katrol spelen?").

state(story, s79a, say).
text(story, s79a, "En toen wilde ik eerst super boos op haar worden want ik had hem gevonden en zij was hem aan het stelen. Maar toen zei opa dat ik dat niet mocht doen.").

state(story, s79b, say).
text(story, s79b, "Toen liet ik haar er maar mee spelen").

next(story, s78, "answer_graafmachine_boos", s79a).
next(story, s78f, "boos", s79a).
next(story, s79a, "true", s80).
next(story, s78, "answer_graafmachine_spelen", s79b).
next(story, s78f, "laten spelen", s79b).
next(story, s79b, "true", s80).
next(story, s78, "fail", s78f).

state(story, s80, say).
text(story, s80, "Omdat ik zonder haar nooit de katrol had gevonden.").
next(story, s80, "true", s81).

state(story, s81, say).
text(story, s81, "En toen heeft ze hem heel precies schoongeblazen.").
next(story, s81, "true", s82).

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
next(story, s85, "true", s86).

state(story, s86, say).
text(story, s86, "Ze gaat nu iedere dag mee naar opgravingen.").
next(story, s86, "true", s87).

state(story, s87, say).
text(story, s87, "Om de meest mooie oude robots schoon te blazen.").
next(story, s87, "true", s88).

state(story, s88, say).
text(story, s88, "En in het museum te verzamelen.").
next(story, s88, "true", s89).

state(story, s89, say).
text(story, s89, "Leuk voor haar, he?").
next(story, s89, "true", s90).

state(story, s90, say).
stateConfig(story, s90, [selectEnding = yes, key = "graafmachine_alt_ending"]).
text(story, s90, "Weet je nog dat ik die ketting vond?").

state(story, s91a, say).
text(story, s91a, "Gelukkig liet jij mij hem oppakken? Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").

state(story, s91b, say).
text(story, s91b, "Maar goed dat je mij hem liet weggooien. Er ruste namelijk een vloek op. Maar dat is een verhaal voor een andere keer.").

state(story, s91f, say).
text(story, s91f, "Gelukkig had ik de ketting opgepakt. Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").

next(story, s90, "oppakken", s91a).
next(story, s90, "weggooien", s91b).
next(story, s90, "fail", s91f).

state(theend, s90, say).
anim(theend, s90, "rest/behavior_1").