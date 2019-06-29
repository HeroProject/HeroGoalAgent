state(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
next(story, s1, "true", s2).

state(story, s2, question).
stateConfig(story, s2, [type = mc, response = speech, context = "answer_color", key = "favoriteColor"]).
text(story, s2, "Wat is jouw favoriete kleur?").

state(story, s2f, question).
stateConfig(story, s2f, [type = mc, response = touch, options = ["rood","blauw","groen","geel","roze","paars","zwart"], context = "answer_color", key = "favoriteColor", defaultAnswer="rood"]).
text(story, s2f, "Wat is jouw favoriete kleur?").
next(story, s2, "answer_color", s3).
next(story, s2, "fail", s2f).
next(story, s2f, "answer_color", s3).

state(story, s3, say).
text(story, s3, "Dat is leuk! Ik hou van %favoriteColor%.").
next(story, s3, "true", s4).

state(story, s4, say).
text(story, s4, "En een paar weken terug was ik zelfs een %favoriteColor% graafmachine.").
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

state(story, s11, question).
stateConfig(story, s11, [type = mc, response = speech, context = "answer_female_family_member", key = "familyMember"]).
text(story, s11, "Ik reed met mijn familie en een groep vrienden en vriendinnen, en ik was blij want mijn lievelings graafmachine reed achter mij, wie zou mijn lievelings graafmachine zijn, mijn nichtje, zusje of beste vriendinnetje?").

state(story, s11f, question).
stateConfig(story, s11f, [type = mc, response = touch, options = ["nichtje","zusje","beste vriendinnetje"], context = "answer_female_family_member", key = "familyMember", defaultAnswer="nichtje"]).
text(story, s11f, "Ik reed met mijn familie en een groep vrienden en vriendinnen, en ik was blij want mijn lievelings graafmachine reed achter mij, wie zou mijn lievelings graafmachine zijn, mijn nichtje, zusje of beste vriendinnetje?").
next(story, s11, "answer_female_family_member", s12).
next(story, s11, "fail", s11f).
next(story, s11f, "answer_female_family_member", s12).

state(story, s12, say).
text(story, s12, "Jaa, super gezellig, met mijn %familyMember% in de optocht!").
next(story, s12, "true", s13).

state(story, s13, say).
text(story, s13, "Ik reed tussen mijn oom en mijn %familyMember%.").
next(story, s13, "true", s14).

state(story, s14, say).
text(story, s14, "En achter mijn %familyMember% reed mijn opa zodat mijn %familyMember% er niet tussenuit kon piepen.").
next(story, s14, "true", s15).

state(story, s15, say).
text(story, s15, "Want mijn %familyMember% had die dag helemaal geen zin om te werken.").
next(story, s15, "true", s16).

state(story, s16, say).
text(story, s16, "En al helemaal niet als graafmachine.").
next(story, s16, "true", s17).

state(story, s17, say).
text(story, s17, "Graven is saai, zei ze.").
next(story, s17, "true", s18).

state(story, s18, say).
text(story, s18, "Kan ik niet iets leuks doen zoals muziek maken? Of zal ik kunstwerken maken? Of toch liever kunstschaatsen?").
next(story, s18, "true", s19).

state(story, s19, question).
stateConfig(story, s19, [type = mc, response = speech, context = "answer_graafmachine_1", key = "graafmachine_keuze_1"]).
text(story, s19, "Jij mag het kiezen!").

state(story, s19f, question).
stateConfig(story, s19f, [type = mc, response = touch, options = ["muziek maken","kunstwerken maken","kunstschaatsen"], key = "graafmachine_keuze_1",defaultAnswer="muziek_maken"]).
text(story, s19f, "Jij mag het kiezen!").

state(story, s20a, say).
text(story, s20a, "Ja! Dan kunnen er mensen lekker dansen, dat vinden mensen leuk").

state(story, s20b, say).
text(story, s20b, "Ja! Dan kunnen mensen mijn mooie kunstwerken komen bekijken, dat vinden ze leuk!").

state(story, s20c, say).
text(story, s20c, "Ja! Dan kunnnen alle mensen met me mee doen en kunnen we kijken wie het mooist schaatst!").

next(story, s19, "muziek maken", s20a).
next(story, s19f, "muziek maken", s20a).
next(story, s20a, true, s21).
next(story, s19, "kunstwerken maken", s20b).
next(story, s19f, "kunstwerken maken", s20b).
next(story, s20b, true, s21).
next(story, s19, "kunstschaatsen", s20c).
next(story, s19f, "kunstschaatsen", s20c).
next(story, s20c, true, s21).
next(story, s19, "fail", s19f).

state(story, s21, say).
text(story, s21, "Maar nee, ik moet weer graven.").
next(story, s21, "true", s22).

state(story, s22, say).
text(story, s22, "Het is ook altijd hetzelfde.").
next(story, s22, "true", s23).

state(story, s23, say).
text(story, s23, "Graven is saai, en je vindt nooit iets leuks en en er is echt helemaal niks aan.").
next(story, s23, "true", s24).

state(story, s24, say).
text(story, s24, "Mijn opa bromde.").
next(story, s24, "true", s25).

state(story, s25, say).
text(story, s25, "Hij is nog een oud model graafmachine, een die op kolen werkt.").
next(story, s25, "true", s26).

state(story, s26, say).
text(story, s26, "Ik werk op stroom.").
next(story, s26, "true", s27).

state(story, s27, say).
text(story, s27, "Ik vind elektriciteit het lekkerste wat er is.").
next(story, s27, "true", s28).

state(story, s28, say).
text(story, s28, "En mijn oom werkt op diesel en mijn %familyMember% werkt op waterstof maar ik weet niet precies wat dat is.").
next(story, s28, "true", s29).

state(story, s29, say).
text(story, s29, "Maar goed, we gingen dus in een stoet naar de opgraafplek.").
next(story, s29, "true", s30).

state(story, s30, say).
text(story, s30, "Door de modder met onze rupsbanden.").
next(story, s30, "true", s31).

state(story, s31, say).
text(story, s31, "Toen kwamen we op de graafplek.").
next(story, s31, "true", s32).

state(story, s32, say).
text(story, s32, "Een enorm grasveld zo groot als wel vier voetbalvelden, met in het midden een kuil zo groot als als als als, nouja zo groot als een voetbalveld.").
next(story, s32, "true", s33).

state(story, s33, say).
text(story, s33, "En daar reden we naar binnen, en we verspreidden ons.").
next(story, s33, "true", s34).

state(story, s34, say).
text(story, s34, "Ik kreeg de rechterhoek, mijn oom groef naast mij en hield mij een beetje in de gaten.").
next(story, s34, "true", s35).

state(story, s35, say).
text(story, s35, "Ik sloeg als een gek aan het graven.").
next(story, s35, "true", s36).

state(story, s36, say).
text(story, s36, "Ik wist eigenlijk helemaal niet wat de bedoeling was, maar ik had gewoon heel veel zin om te graven.").
next(story, s36, "true", s37).

state(story, s37, say).
text(story, s37, "Ik vond tussen al de modder een mooie ketting.").
next(story, s37, "true", s38).

state(story, s38, say).
text(story, s38, "Pakte ik die op of gooide ik die weg?").
next(story, s38, "true", s39).

state(story, s39, say).
text(story, s39, "Ik groef de modder weg.").
next(story, s39, "true", s40).

state(story, s40, say).
text(story, s40, "En daaronder groef ik de klei weg.").
next(story, s40, "true", s41).

state(story, s41, say).
text(story, s41, "En daaronder was zand, en dat groef ik ook weg.").
next(story, s41, "true", s42).

state(story, s42, say).
text(story, s42, "Achter me ontstond een steeds grotere berg.").
next(story, s42, "true", s43).

state(story, s43, say).
text(story, s43, "En af en toe gooide ik expres een beetje zand over mijn %familyMember% heen.").
next(story, s43, "true", s44).

state(story, s44, say).
text(story, s44, "En dan werd ze woedend, en moest opa zijn arm om haar heen slaan terwijl ze waterstofstoom afblies.").
next(story, s44, "true", s45).

state(story, s45, say).
text(story, s45, "Ik was eigenlijk al bijna vergeten waarom ik aan het graven was, zo leuk vond ik het.").
next(story, s45, "true", s46).

state(story, s46, say).
text(story, s46, "En toen.").
next(story, s46, "true", s47).

state(story, s47, question).
stateConfig(story, s47, [type = mc, response = speech, context = "answer_bodyPart", key = "bodyPart"]).
text(story, s47, "Ik stootte me heel hard. En opeens zat iets vast, was dat mijn arm, mijn hoofd of mijn been?").

state(story, s47f, question).
stateConfig(story, s47f, [type = mc, response = touch, options = ["arm","hoofd","been"], context = "answer_bodyPart", key = "bodyPart", defaultAnswer="arm"]).
text(story, s47f, "Ik stootte me heel hard. En opeens zat iets vast, was dat mijn arm, mijn hoofd of mijn been?").
next(story, s47, "answer_bodyPart", s48).
next(story, s47, "fail", s47f).
next(story, s47f, "answer_bodyPart", s48).

state(story, s48, say).
text(story, s48, "Stootte ik met mijn %bodyPart% heel hard op een stuk staal of steen of iets anders hards.").
next(story, s48, "true", s49).

state(story, s49, say).
text(story, s49, "En dat niet alleen, mijn %bodyPart% zat vast.").
next(story, s49, "true", s50).

state(story, s50, say).
text(story, s50, "Ik kon hem niet meer bewegen, als ik hem probeerde op te halen, duwde ik in plaats van mijn %bodyPart% mijn lichaam omhoog.").
next(story, s50, "true", s51).

state(story, s51, say).
text(story, s51, "Ik probeerde naar voren te rijden maar dat lukte niet.").
next(story, s51, "true", s52).

state(story, s52, say).
text(story, s52, "Ik probeerde naar achter te rijden en ik begon wel te piepen als een muis maar naar achter rijden lukte ook niet.").
next(story, s52, "true", s53).

state(story, s53, say).
text(story, s53, "Het was heel eng.").
next(story, s53, "true", s54).

state(story, s54, say).
text(story, s54, "Maar gelukkig had mijn oom me horen piepen en dus kwam hij op me af getuft.").
next(story, s54, "true", s55).

state(story, s55, say).
text(story, s55, "En hij werd eerst heel boos dat ik mijn %bodyPart% vast had laten zitten.").
next(story, s55, "true", s56).

state(story, s56, say).
text(story, s56, "En toen moest ik hem beloven dat ik vanaf nu voorzichtiger te werk zou gaan en toen ging hij me helpen met mijn %bodyPart% losmaken.").
next(story, s56, "true", s57).

state(story, s57, say).
text(story, s57, "Hij groef alle aarde om mijn %bodyPart% weg.").
next(story, s57, "true", s58).

state(story, s58, say).
text(story, s58, "En daarna kwam mijn opa en die kan met zijn motor heel hard blazen omdat er allemaal stoom in hem zit.").
next(story, s58, "true", s59).

state(story, s59, say).
text(story, s59, "En toen zag ik waar ik mijn %bodyPart% aan had gestoten.").
next(story, s59, "true", s60).

state(story, s60, say).
text(story, s60, "En ik pakte het snel met mijn hand vast.").
next(story, s60, "true", s61).

state(story, s61, say).
text(story, s61, "En ik wist eerst niet wat het was.").
next(story, s61, "true", s62).

state(story, s62, say).
text(story, s62, "Maar toen kwam mijn %familyMember% en die blies met haar waterstofblazertje de laatste stukjes zand eraf.").
next(story, s62, "true", s63).

state(story, s63, say).
text(story, s63, "En in mijn hand zat.").
next(story, s63, "true", s64).

state(story, s64, say).
text(story, s64, "Iets wat ik helemaal niet herkende.").
next(story, s64, "true", s65).

state(story, s65, say).
text(story, s65, "Maar waarvan mijn opa en mijn oom zeiden dat het heeeel bijzonder was.").
next(story, s65, "true", s66).

state(story, s66, say).
text(story, s66, "Weet je wat?").
next(story, s66, "true", s67).

state(story, s67, say).
text(story, s67, "Het was..").
next(story, s67, "true", s68).

state(story, s68, say).
text(story, s68, "Een andere robot.").
next(story, s68, "true", s69).

state(story, s69, say).
text(story, s69, "Of nouja, een heel oud soort robot.").
next(story, s69, "true", s70).

state(story, s70, say).
text(story, s70, "Nog ouder dan opa.").
next(story, s70, "true", s71).

state(story, s71, say).
text(story, s71, "Ik had hem helemaal niet als robot herkend maar opa zei dat hij ze nog weleens had gezien toen hij jong was.").
next(story, s71, "true", s72).

state(story, s72, say).
text(story, s72, "Hij zag eruit als een soort lange arm met daaraan een touwen dan een soort wieltje en daaraan zat dan een haak met daaraan een soort grote emmer.").
next(story, s72, "true", s73).

state(story, s73, say).
text(story, s73, "Snap je wat ik bedoel?").
next(story, s73, "true", s74).

state(story, s74, say).
text(story, s74, "Ik snapte er zelf helemaal niks van.").
next(story, s74, "true", s75).

state(story, s75, say).
text(story, s75, "Maar opa zei.").
next(story, s75, "true", s76).

state(story, s76, say).
text(story, s76, "Dat ik een andere graafmachine had opgegraven!").
next(story, s76, "true", s77).

state(story, s77, say).
text(story, s77, "Maar dan een voor water!").
next(story, s77, "true", s78).

state(story, s78, say).
text(story, s78, "Een watergraafmachine!").
next(story, s78, "true", s79).

state(story, s79, say).
text(story, s79, "Een hele ouderwetse.").
next(story, s79, "true", s80).

state(story, s80, say).
text(story, s80, "En dat dat vreemde wiel een katrol heet.").
next(story, s80, "true", s81).

state(story, s81, say).
text(story, s81, "En dat je daarmee heel makkelijk dingen op kan tillen.").
next(story, s81, "true", s82).

state(story, s82, question).
stateConfig(story, s82, [type = mc, response = speech, context = "answer_yesno", key = "graafmachine_keuze_2"]).
text(story, s82, "Weet jij hoe een katrol werkt?").

state(story, s82f, question).
stateConfig(story, s82f, [type = mc, response = touch, options = ["Ja","Nee"], key = "graafmachine_keuze_2",defaultAnswer="ja"]).
text(story, s82f, "Weet jij hoe een katrol werkt?").

state(story, s83a, say).
text(story, s83a, "Ik niet").

state(story, s83b, say).
text(story, s83b, "Ik ook niet").

next(story, s82, "Ja", s83a).
next(story, s82f, "Ja", s83a).
next(story, s83a, true, s84).
next(story, s82, "Nee", s83b).
next(story, s82f, "Nee", s83b).
next(story, s83b, true, s84).
next(story, s82, "fail", s82f).

state(story, s84, say).
text(story, s84, "Het is heel handig zei opa.").
next(story, s84, "true", s85).

state(story, s85, say).
text(story, s85, "Hij zei dat je de katrol moest ophangen aan een tak boven een put.").
next(story, s85, "true", s86).

state(story, s86, say).
text(story, s86, "En dat je dan de emmer in de put moet laten zakken.").
next(story, s86, "true", s87).

state(story, s87, say).
text(story, s87, "Tot hij helemaal onder water is.").
next(story, s87, "true", s88).

state(story, s88, say).
text(story, s88, "En dan pak je het touw en doe je dat door de katrol.").
next(story, s88, "true", s89).

state(story, s89, say).
text(story, s89, "En dan trek je de emmer omhoog.").
next(story, s89, "true", s90).

state(story, s90, say).
text(story, s90, "Maar dan is hij veel lichter dan als je hem gewoon omhoog zou trekken.").
next(story, s90, "true", s91).

state(story, s91, say).
text(story, s91, "Gek he?").
next(story, s91, "true", s92).

state(story, s92, say).
text(story, s92, "Katrollen maken alles makkelijk, zegt opa.").
next(story, s92, "true", s93).

state(story, s93, say).
text(story, s93, "Als je iets niet lukt moet je het gewoon aan een robot vragen en dan kunnen ze je helpen.").
next(story, s93, "true", s94).

state(story, s94, say).
text(story, s94, "Net zoals mijn oom en mijn opa en mijn %familyMember% mij hielpen toen ik vast zat.").
next(story, s94, "true", s95).

state(story, s95, say).
text(story, s95, "Mijn %familyMember% rolde naar me toe.").
next(story, s95, "true", s96).

state(story, s96, say).
text(story, s96, "En ze pakte de katrol uit mijn handen.").
next(story, s96, "true", s97).

state(story, s97, say).
text(story, s97, "Wat deed ik toen?").
next(story, s97, "true", s98).

state(story, s98, question).
stateConfig(story, s98, [type = mc, response = speech, context = "answer_graafmachine_2", key = "graafmachine_keuze_3"]).
text(story, s98, "Werd ik boos op haar of liet ik haar met de katrol spelen?").

state(story, s98f, question).
stateConfig(story, s98f, [type = mc, response = touch, options = ["boos","laten spelen"], key = "graafmachine_keuze_3",defaultAnswer="boos"]).
text(story, s98f, "Werd ik boos op haar of liet ik haar met de katrol spelen?").

state(story, s99a, say).
text(story, s99a, "En toen wilde ik eerst superboos op haar worden want ik had hem gevonden en zij was hem aan het stelen. Maar toen zei opa dat ik dat niet mocht doen.").

state(story, s99b, say).
text(story, s99b, "Toen liet ik haar er maar mee spelen").

next(story, s98, "boos", s99a).
next(story, s98f, "boos", s99a).
next(story, s99a, true, s100).
next(story, s98, "laten spelen", s99b).
next(story, s98f, "laten spelen", s99b).
next(story, s99b, true, s100).
next(story, s98, "fail", s98f).

state(story, s100, say).
text(story, s100, "Omdat ik zonder haar nooit de katrol had gevonden.").
next(story, s100, "true", s101).

state(story, s101, say).
text(story, s101, "En toen heeft ze hem heel precies schoongeblazen.").
next(story, s101, "true", s102).

state(story, s102, say).
text(story, s102, "Tot uit ieder hoekje elke zandkorrel weggeblazen was.").
next(story, s102, "true", s103).

state(story, s103, say).
text(story, s103, "En toen zijn we ermee naar het museum gereden.").
next(story, s103, "true", s104).

state(story, s104, say).
text(story, s104, "En nu ligt hij in het Robotkundig Museum voor Oude Robots en andere Machines.").
next(story, s104, "true", s105).

state(story, s105, say).
text(story, s105, "Dat is een heel leuk museum.").
next(story, s105, "true", s106).

state(story, s106, say).
text(story, s106, "En mijn %familyMember% werkt daar nu.").
next(story, s106, "true", s107).

state(story, s107, say).
text(story, s107, "Ze gaat nu iedere dag mee naar opgravingen.").
next(story, s107, "true", s108).

state(story, s108, say).
text(story, s108, "Om de meest mooie oude robots schoon te blazen.").
next(story, s108, "true", s109).

state(story, s109, say).
text(story, s109, "En in het museum te verzamelen.").
next(story, s109, "true", s110).

state(story, s110, say).
text(story, s110, "Leuk voor haar, he?").
next(story, s110, "true", s111).

state(story, s111, question).
stateConfig(story, s111, [type = mc, response = speech, context = "answer_graafmachine_3", key = "graafmachine_keuze_4"]).
text(story, s111, "Pakte ik die op of gooide ik die weg?").

state(story, s111f, question).
stateConfig(story, s111f, [type = mc, response = touch, options = ["Oppakken","Weggooien"], key = "graafmachine_keuze_4",defaultAnswer="oppakken"]).
text(story, s111f, "Pakte ik die op of gooide ik die weg?").

state(story, s112a, say).
text(story, s112a, "Weet je nog, die ketting die je mij liet oppakken? Die is perfect voor in het museum. Ik geef hem aan mijn nichtje en ze is er ontzettend blij mee!").

state(story, s112b, say).
text(story, s112b, "Weet je nog die ketting die in de modder lag? Misschien had ik die toch maar mee moeten nemen, lijkt perfect voor in het museum, volgende keer neem ik alles mee wat ik tegenkom!").

next(story, s111, "Oppakken", s112a).
next(story, s111f, "Oppakken", s112a).
next(story, s112a, true, s113).
next(story, s111, "Weggooien", s112b).
next(story, s111f, "Weggooien", s112b).
next(story, s112b, true, s113).
next(story, s111, "fail", s111f).

state(test, s113, say).
anim(test, s113, "rest/behavior_1").