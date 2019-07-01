topicOrder([story, theend]).

state(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
leds(story, s1, "white").next(story, s1, "true", s2).

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
text(story, s3, "Dat is leuk! Ik hou van %favoriteColor%.").
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
text(story, s8, "En ze hadden me ook nog eens een toeter gegeven.").
next(story, s8, "true", s9).

state(story, s9, say).
text(story, s9, "Waardoor ik piepte als een muis als ik achteruit reed.").
next(story, s9, "true", s10).

state(story, s10, say).
text(story, s10, "We reden in een optocht naar de plek waar we moesten graven.").
next(story, s10, "true", s11).

state(story, s11, say).
text(story, s11, "Ik reed met mijn familie en een groep vrienden en vriendinnen, en ik was blij want mijn lievelings graafmachine reed achter mij,").
next(story, s11, "true", s12).

state(story, s12, question).
stateConfig(story, s12, [type = mc, response = speech, context = "answer_female_family_member", key = "familyMember"]).
text(story, s12, "Wie zou mijn lievelings graafmachine zijn, mijn nichtje, zusje of beste vriendinnetje?").

state(story, s12f, question).
stateConfig(story, s12f, [type = mc, response = touch, options = ["nichtje","zusje","beste vriendinnetje"], context = "answer_female_family_member", key = "familyMember", defaultAnswer="nichtje"]).
text(story, s12f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Wie zou mijn lievelings graafmachine zijn, mijn nichtje, zusje of beste vriendinnetje?").
next(story, s12, "answer_female_family_member", s13).
next(story, s12, "fail", s12f).
next(story, s12f, "answer_female_family_member", s13).

state(story, s13, say).
text(story, s13, "Jaa, super gezellig, met mijn %familyMember% in de optocht!").
next(story, s13, "true", s14).

state(story, s14, say).
text(story, s14, "Ik reed tussen mijn oom en mijn %familyMember%.").
next(story, s14, "true", s15).

state(story, s15, say).
text(story, s15, "En achter mijn %familyMember% reed mijn opa zodat mijn %familyMember% er niet tussenuit kon piepen.").
next(story, s15, "true", s16).

state(story, s16, say).
text(story, s16, "Want mijn %familyMember% had die dag helemaal geen zin om te werken.").
next(story, s16, "true", s17).

state(story, s17, say).
text(story, s17, "En al helemaal niet als graafmachine.").
next(story, s17, "true", s18).

state(story, s18, say).
text(story, s18, "Graven is saai, zei ze.").
next(story, s18, "true", s19).

state(story, s19, say).
text(story, s19, "Kan ik niet iets leuks doen zoals muziek maken? Of zal ik kunstwerken maken? Of toch liever schaatsen?").
next(story, s19, "true", s20).

state(story, s20, question).
stateConfig(story, s20, [type = mc, response = speech, context = "answer_graafmachine_branch_1", key = "graafmachine_keuze_1"]).
text(story, s20, "Jij mag het kiezen!").

state(story, s20f, question).
stateConfig(story, s20f, [type = mc, response = touch, options = ["muziek maken","kunstwerken maken","schaatsen"], branching = yes,context = "answer_graafmachine_branch_1", key = "graafmachine_keuze_1",defaultAnswer="muziek maken"]).
text(story, s20f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Jij mag het kiezen!").

state(story, s21a, say).
text(story, s21a, "Ja! Dan kunnen er mensen lekker dansen, dat vinden mensen leuk").

state(story, s21b, say).
text(story, s21b, "Ja! Dan kunnen mensen mijn mooie kunstwerken komen bekijken, dat vinden ze leuk!").

state(story, s21c, say).
text(story, s21c, "Ja! Dan kunnnen alle mensen met me mee doen en kunnen we kijken wie het mooist schaatst!").

next(story, s20, "answer_graafmachine_muziek", s21a).
next(story, s20f, "muziek maken", s21a).
next(story, s21a, "true", s22).
next(story, s20, "answer_graafmachine_kunstwerken", s21b).
next(story, s20f, "kunstwerken maken", s21b).
next(story, s21b, "true", s22).
next(story, s20, "answer_graafmachine_schaatsen", s21c).
next(story, s20f, "schaatsen", s21c).
next(story, s21c, "true", s22).
next(story, s20, "fail", s20f).

state(story, s22, say).
text(story, s22, "Maar nee, ik moet weer graven.").
next(story, s22, "true", s23).

state(story, s23, say).
text(story, s23, "Het is ook altijd hetzelfde.").
next(story, s23, "true", s24).

state(story, s24, say).
text(story, s24, "Graven is saai, en je vindt nooit iets leuks en en er is echt helemaal niks aan.").
next(story, s24, "true", s25).

state(story, s25, say).
text(story, s25, "Mijn opa bromde.").
next(story, s25, "true", s26).

state(story, s26, say).
text(story, s26, "Hij is nog een oud model graafmachine, 1 die op kolen werkt.").
next(story, s26, "true", s27).

state(story, s27, say).
text(story, s27, "Ik werk op stroom.").
next(story, s27, "true", s28).

state(story, s28, say).
text(story, s28, "Ik vind elektriciteit het lekkerste wat er is.").
next(story, s28, "true", s29).

state(story, s29, say).
text(story, s29, "En mijn oom werkt op diesel en mijn %familyMember% werkt op waterstof maar ik weet niet precies wat dat is.").
next(story, s29, "true", s30).

state(story, s30, say).
text(story, s30, "Maar goed, we gingen dus in een stoet naar de opgraafplek.").
next(story, s30, "true", s31).

state(story, s31, say).
text(story, s31, "Door de modder met onze rupsbanden.").
next(story, s31, "true", s32).

state(story, s32, say).
text(story, s32, "Toen kwamen we op de graafplek.").
next(story, s32, "true", s33).

state(story, s33, say).
text(story, s33, "Een enorm grasveld zo groot als wel vier voetbalvelden, met in het midden een kuil zo groot als, als, als als, nou ja zo groot als een voetbalveld.").
next(story, s33, "true", s34).

state(story, s34, say).
text(story, s34, "En daar reden we naar binnen, en we verspreidden ons.").
next(story, s34, "true", s35).

state(story, s35, say).
text(story, s35, "Ik kreeg de rechterhoek, mijn oom groef naast mij en hield mij een beetje in de gaten.").
next(story, s35, "true", s36).

state(story, s36, say).
text(story, s36, "Ik sloeg als een gek aan het graven.").
next(story, s36, "true", s37).

state(story, s37, say).
text(story, s37, "Ik wist eigenlijk helemaal niet wat de bedoeling was, maar ik had gewoon heel veel zin om te graven.").
next(story, s37, "true", s38).

state(story, s38, say).
text(story, s38, "Ik vond tussen al de modder een mooie ketting.").
next(story, s38, "true", s39).

state(story, s39, question).
stateConfig(story, s39, [type = mc, response = speech, altEnding=yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(story, s39, "Pakte ik die op of gooide ik die weg?").

state(story, s39f, question).
stateConfig(story, s39f, [type = mc, response = touch, options = ["oppakken","weggooien"], altEnding = yes, context = "answer_graafmachine_branch_3", key = "graafmachine_alt_ending"]).
text(story, s39f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Pakte ik die op of gooide ik die weg?").

next(story, s39, "true", s40).
next(story, s39, "fail", s39f).
next(story, s39f, "true", s40).
next(story, s39f, "fail", s40).

state(story, s40, say).
text(story, s40, "Ik groef de modder weg.").
next(story, s40, "true", s41).

state(story, s41, say).
text(story, s41, "En daaronder groef ik de klei weg.").
next(story, s41, "true", s42).

state(story, s42, say).
text(story, s42, "En daaronder was zand, en dat groef ik ook weg.").
next(story, s42, "true", s43).

state(story, s43, say).
text(story, s43, "Achter me ontstond een steeds grotere berg.").
next(story, s43, "true", s44).

state(story, s44, say).
text(story, s44, "En af en toe gooide ik expres een beetje zand over mijn %familyMember% heen.").
next(story, s44, "true", s45).

state(story, s45, say).
text(story, s45, "En dan werd ze woedend, en moest opa zijn arm om haar heen slaan terwijl ze waterstofstoom afblies.").
next(story, s45, "true", s46).

state(story, s46, say).
text(story, s46, "Ik was eigenlijk al bijna vergeten waarom ik aan het graven was, zo leuk vond ik het.").
next(story, s46, "true", s47).

state(story, s47, say).
text(story, s47, "En toen.").
next(story, s47, "true", s48).

state(story, s48, question).
stateConfig(story, s48, [type = mc, response = speech, context = "answer_bodyPart", key = "bodyPart"]).
text(story, s48, "Ik stootte me heel hard. En opeens zat iets vast, was dat mijn arm, mijn hoofd of mijn been?").

state(story, s48f, question).
stateConfig(story, s48f, [type = mc, response = touch, options = ["arm","hoofd","been"], context = "answer_bodyPart", key = "bodyPart", defaultAnswer="arm"]).
text(story, s48f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Ik stootte me heel hard. En opeens zat iets vast, was dat mijn arm, mijn hoofd of mijn been?").
next(story, s48, "answer_bodyPart", s49).
next(story, s48, "fail", s48f).
next(story, s48f, "answer_bodyPart", s49).

state(story, s49, say).
text(story, s49, "Stootte ik met mijn %bodyPart% heel hard op een stuk staal of steen of iets anders hards.").
next(story, s49, "true", s50).

state(story, s50, say).
text(story, s50, "En dat niet alleen, mijn %bodyPart% zat vast.").
next(story, s50, "true", s51).

state(story, s51, say).
text(story, s51, "Ik kon hem niet meer bewegen, als ik hem probeerde op te halen, duwde ik in plaats van mijn %bodyPart% mijn lichaam omhoog.").
next(story, s51, "true", s52).

state(story, s52, say).
text(story, s52, "Ik probeerde naar voren te rijden maar dat lukte niet.").
next(story, s52, "true", s53).

state(story, s53, say).
text(story, s53, "Ik probeerde naar achter te rijden en ik begon wel te piepen als een muis maar naar achter rijden lukte ook niet.").
next(story, s53, "true", s54).

state(story, s54, say).
text(story, s54, "Het was heel eng.").
next(story, s54, "true", s55).

state(story, s55, say).
text(story, s55, "Maar gelukkig had mijn oom me horen piepen en dus kwam hij op me af getuft.").
next(story, s55, "true", s56).

state(story, s56, say).
text(story, s56, "En hij werd eerst heel boos dat ik mijn %bodyPart% vast had laten zitten.").
next(story, s56, "true", s57).

state(story, s57, say).
text(story, s57, "En toen moest ik hem beloven dat ik vanaf nu voorzichtiger te werk zou gaan en toen ging hij me helpen met mijn %bodyPart% losmaken.").
next(story, s57, "true", s58).

state(story, s58, say).
text(story, s58, "Hij groef alle aarde om mijn %bodyPart% weg.").
next(story, s58, "true", s59).

state(story, s59, say).
text(story, s59, "En daarna kwam mijn opa en die kan met zijn motor heel hard blazen omdat er allemaal stoom in hem zit.").
next(story, s59, "true", s60).

state(story, s60, say).
text(story, s60, "En toen zag ik waar ik mijn %bodyPart% aan had gestoten.").
next(story, s60, "true", s61).

state(story, s61, say).
text(story, s61, "En ik pakte het snel met mijn hand vast.").
next(story, s61, "true", s62).

state(story, s62, say).
text(story, s62, "En ik wist eerst niet wat het was.").
next(story, s62, "true", s63).

state(story, s63, say).
text(story, s63, "Maar toen kwam mijn %familyMember% en die blies met haar waterstofblazertje de laatste stukjes zand eraf.").
next(story, s63, "true", s64).

state(story, s64, say).
text(story, s64, "En in mijn hand zat.").
next(story, s64, "true", s65).

state(story, s65, say).
text(story, s65, "Iets wat ik helemaal niet herkende.").
next(story, s65, "true", s66).

state(story, s66, say).
text(story, s66, "Maar waarvan mijn opa en mijn oom zeiden dat het heeeel bijzonder was.").
next(story, s66, "true", s67).

state(story, s67, say).
text(story, s67, "Weet je wat?").
next(story, s67, "true", s68).

state(story, s68, say).
text(story, s68, "Het was..").
next(story, s68, "true", s69).

state(story, s69, say).
text(story, s69, "Een andere robot.").
next(story, s69, "true", s70).

state(story, s70, say).
text(story, s70, "Of nou ja, een heel oud soort robot.").
next(story, s70, "true", s71).

state(story, s71, say).
text(story, s71, "Nog ouder dan opa.").
next(story, s71, "true", s72).

state(story, s72, say).
text(story, s72, "Ik had hem helemaal niet als robot herkend maar opa zei dat hij ze nog weleens had gezien toen hij jong was.").
next(story, s72, "true", s73).

state(story, s73, say).
text(story, s73, "Hij zag eruit als een soort lange arm met daaraan een touwen dan een soort wieltje en daaraan zat dan een haak met daaraan een soort grote emmer.").
next(story, s73, "true", s74).

state(story, s74, say).
text(story, s74, "Snap je wat ik bedoel?").
next(story, s74, "true", s75).

state(story, s75, say).
text(story, s75, "Ik snapte er zelf helemaal niks van.").
next(story, s75, "true", s76).

state(story, s76, say).
text(story, s76, "Maar opa zei.").
next(story, s76, "true", s77).

state(story, s77, say).
text(story, s77, "Dat ik een andere graafmachine had opgegraven!").
next(story, s77, "true", s78).

state(story, s78, say).
text(story, s78, "Maar dan een voor water!").
next(story, s78, "true", s79).

state(story, s79, say).
text(story, s79, "Een watergraafmachine!").
next(story, s79, "true", s80).

state(story, s80, say).
text(story, s80, "Een hele ouderwetse.").
next(story, s80, "true", s81).

state(story, s81, say).
text(story, s81, "En dat dat vreemde wiel een katrol heet.").
next(story, s81, "true", s82).

state(story, s82, say).
text(story, s82, "En dat je daarmee heel makkelijk dingen op kan tillen.").
next(story, s82, "true", s83).

state(story, s83, question).
stateConfig(story, s83, [type = mc, response = speech, context = "answer_yesno", key = "graafmachine_keuze_2"]).
text(story, s83, "Weet jij hoe een katrol werkt?").

state(story, s83f, question).
stateConfig(story, s83f, [type = mc, response = touch, options = ["Ja","Nee"], branching = yes,context = "answer_yesno", key = "graafmachine_keuze_2",defaultAnswer="ja"]).
text(story, s83f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Weet jij hoe een katrol werkt?").

state(story, s84a, say).
text(story, s84a, "Ik niet").

state(story, s84b, say).
text(story, s84b, "Ik ook niet").

next(story, s83, "answer_yes", s84a).
next(story, s83f, "Ja", s84a).
next(story, s84a, "true", s85).
next(story, s83, "answer_no", s84b).
next(story, s83f, "Nee", s84b).
next(story, s84b, "true", s85).
next(story, s83, "fail", s83f).

state(story, s85, say).
text(story, s85, "Het is heel handig zei opa.").
next(story, s85, "true", s86).

state(story, s86, say).
text(story, s86, "Hij zei dat je de katrol moest ophangen aan een tak boven een put.").
next(story, s86, "true", s87).

state(story, s87, say).
text(story, s87, "En dat je dan de emmer in de put moet laten zakken.").
next(story, s87, "true", s88).

state(story, s88, say).
text(story, s88, "Tot hij helemaal onder water is.").
next(story, s88, "true", s89).

state(story, s89, say).
text(story, s89, "En dan pak je het touw en doe je dat door de katrol.").
next(story, s89, "true", s90).

state(story, s90, say).
text(story, s90, "En dan trek je de emmer omhoog.").
next(story, s90, "true", s91).

state(story, s91, say).
text(story, s91, "Maar dan is hij veel lichter dan als je hem gewoon omhoog zou trekken.").
next(story, s91, "true", s92).

state(story, s92, say).
text(story, s92, "Gek he?").
next(story, s92, "true", s93).

state(story, s93, say).
text(story, s93, "Katrollen maken alles makkelijk, zegt opa.").
next(story, s93, "true", s94).

state(story, s94, say).
text(story, s94, "Als je iets niet lukt moet je het gewoon aan een robot vragen en dan kunnen ze je helpen.").
next(story, s94, "true", s95).

state(story, s95, say).
text(story, s95, "Net zoals mijn oom en mijn opa en mijn %familyMember% mij hielpen toen ik vast zat.").
next(story, s95, "true", s96).

state(story, s96, say).
text(story, s96, "Mijn %familyMember% rolde naar me toe.").
next(story, s96, "true", s97).

state(story, s97, say).
text(story, s97, "En ze pakte de katrol uit mijn handen.").
next(story, s97, "true", s98).

state(story, s98, say).
text(story, s98, "Wat deed ik toen?").
next(story, s98, "true", s99).

state(story, s99, question).
stateConfig(story, s99, [type = mc, response = speech, context = "answer_graafmachine_branch_2", key = "graafmachine_keuze_3"]).
text(story, s99, "Werd ik boos op haar of liet ik haar met de katrol spelen?").

state(story, s99f, question).
stateConfig(story, s99f, [type = mc, response = touch, options = ["boos","laten spelen"], branching = yes,context = "answer_graafmachine_branch_2", key = "graafmachine_keuze_3",defaultAnswer="boos"]).
text(story, s99f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Werd ik boos op haar of liet ik haar met de katrol spelen?").

state(story, s100a, say).
text(story, s100a, "En toen wilde ik eerst super boos op haar worden want ik had hem gevonden en zij was hem aan het stelen. Maar toen zei opa dat ik dat niet mocht doen.").

state(story, s100b, say).
text(story, s100b, "Toen liet ik haar er maar mee spelen").

next(story, s99, "answer_graafmachine_boos", s100a).
next(story, s99f, "boos", s100a).
next(story, s100a, "true", s101).
next(story, s99, "answer_graafmachine_spelen", s100b).
next(story, s99f, "laten spelen", s100b).
next(story, s100b, "true", s101).
next(story, s99, "fail", s99f).

state(story, s101, say).
text(story, s101, "Omdat ik zonder haar nooit de katrol had gevonden.").
next(story, s101, "true", s102).

state(story, s102, say).
text(story, s102, "En toen heeft ze hem heel precies schoongeblazen.").
next(story, s102, "true", s103).

state(story, s103, say).
text(story, s103, "Tot uit ieder hoekje elke zandkorrel weggeblazen was.").
next(story, s103, "true", s104).

state(story, s104, say).
text(story, s104, "En toen zijn we ermee naar het museum gereden.").
next(story, s104, "true", s105).

state(story, s105, say).
text(story, s105, "En nu ligt hij in het Robotkundig Museum voor Oude Robots en andere Machines.").
next(story, s105, "true", s106).

state(story, s106, say).
text(story, s106, "Dat is een heel leuk museum.").
next(story, s106, "true", s107).

state(story, s107, say).
text(story, s107, "En mijn %familyMember% werkt daar nu.").
next(story, s107, "true", s108).

state(story, s108, say).
text(story, s108, "Ze gaat nu iedere dag mee naar opgravingen.").
next(story, s108, "true", s109).

state(story, s109, say).
text(story, s109, "Om de meest mooie oude robots schoon te blazen.").
next(story, s109, "true", s110).

state(story, s110, say).
text(story, s110, "En in het museum te verzamelen.").
next(story, s110, "true", s111).

state(story, s111, say).
text(story, s111, "Leuk voor haar, he?").
next(story, s111, "true", s112).

state(story, s112, say).
stateConfig(story, s112, [selectEnding = yes, key = "graafmachine_alt_ending"]).
text(story, s112, "Weet je nog dat ik die ketting vond?").

state(story, s113a, say).
text(story, s113a, "Gelukkig liet jij mij hem oppakken? Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").

state(story, s113b, say).
text(story, s113b, "Maar goed dat je mij hem liet weggooien. Er ruste namelijk een vloek op. Maar dat is een verhaal voor een andere keer.").

state(story, s113f, say).
text(story, s113f, "Gelukkig had ik de ketting opgepakt. Die is perfect voor in het museum. Ik geef hem aan mijn %familyMember% en ze is er ontzettend blij mee!").

next(story, s112, "oppakken", s113a).
next(story, s112, "weggooien", s113b).
next(story, s112, "fail", s113f).

state(theend, s112, say).
anim(theend, s112, "rest/behavior_1").