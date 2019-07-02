:- dynamic audio/4, stateConfig/3.

topicOrder([intro, story, theend]).

state(intro, s1, say).
anim(intro, s1, "wakeup/behavior_1").
leds(intro, s1, "white").
next(intro, s1, "true", s2).

state(intro, s2, say).
text(intro, s2, "Hallo, ik ben Hero!").
anim(intro, s2, 'animations/Stand/Gestures/Hey_1').
next(intro, s2, "true", s3).

state(intro, s3, say).
text(intro, s3, "Ik ben een robot zoals je kunt zien.").
next(intro, s3, "true", s4).

state(intro, s4, say).
text(intro, s4, "Mijn doel is om uiteindelijk kinderen in het ziekenhuis te helpen.").
next(intro, s4, "true", s5).

state(intro, s5, say).
text(intro, s5, "Maar vandaag ben ik hier om te oefenen.").
next(intro, s5, "true", s6).

state(intro, s6, say).
text(intro, s6, "Ik ben blij dat je mij daarbij kan helpen.").
next(intro, s6, "true", s7).

state(intro, s7, say).
text(intro, s7, "Ik zal zo twee verhaaltjes vertellen.").
next(intro, s7, "true", s8).

state(intro, s8, say).
text(intro, s8, "Bij het eerste verhaaltje mag je gewoon luisteren.").
next(intro, s8, "true", s9).

state(intro, s9, say).
text(intro, s9, "Dit eerste verhaal heet telescoop.").

%%%%% START PLAIN STORY %%%%%%%%

state(story, s1, say).
text(story, s1, "Heb jij wel eens gehoord van het mannetje op de maan?").
next(story, s1, "true", s7).

state(story, s7, say).
text(story, s7, "Dat verhaal werd vaak aan mij verteld voordat ik in de slaapmodus ging.").
next(story, s7, "true", s8).

state(story, s8, say).
text(story, s8, "Alleen was het geen mannetje op de maan, maar een robotje!").
next(story, s8, "true", s9).

state(story, s9, say).
text(story, s9, "Er was ooit een robotje dat heel heel erg nieuwsgierig was: hij wilde alles weten.").
next(story, s9, "true", s10).

state(story, s10, say).
text(story, s10, "Hij reisde de hele wereld op en neer om alle informatie te weten komen:").
next(story, s10, "true", s11).

state(story, s11, say).
text(story, s11, "hij wilde leren voetballen en paardrijden maar ook zwaardvechten.").
next(story, s11, "true", s12).

state(story, s12, say).
text(story, s12, "En hij wilde leren tekenen.").
next(story, s12, "true", s13).

state(story, s13, say).
text(story, s13, "Hij wilde alle boeken die er bestonden lezen en alle films en televisieseries kijken en alle mensen en dieren op de wereld leren kennen.").
next(story, s13, "true", s14).

state(story, s14, say).
text(story, s14, "Het was een heel druk, nieuwsgierig robotje.").
next(story, s14, "true", s15).

state(story, s15, say).
text(story, s15, "Maar op een gegeven moment kwam hij erachter dat hij alles wist!").
next(story, s15, "true", s16).

state(story, s16, say).
text(story, s16, "Hij had met iedereen een praatje gemaakt, had alle boeken gelezen en alle muziek geluisterd").
next(story, s16, "true", s17).

state(story, s17, say).
text(story, s17, "kortom, hij had alles gedaan en alles gezien.").
next(story, s17, "true", s18).

state(story, s18, say).
text(story, s18, "Maar een ding had hij nog niet gezien."). % licht aan.
next(story, s18, "true", s19).

state(story, s19, say).
text(story, s19, "Op een avond zat hij voor het raam - hij kon niet zo goed slapen, sinds hij alles had gedaan en alles had gezien.").
next(story, s19, "true", s20).

state(story, s20, say).
text(story, s20, "Hij zat voor het raam en keek naar de maan, toen hij opeens dacht: ik heb de wereld nog nooit gezien!").
next(story, s20, "true", s21).

state(story, s21, say).
text(story, s21, "Ik ben overal geweest en heb iedereen gesproken, maar heb nog nooit onze aardbol in het echt kunnen aanschouwen - alleen maar plaatjes gezien, maar dat telt niet.").
next(story, s21, "true", s22).

state(story, s22, say).
text(story, s22, "Hij wist wat hij wilde doen. Hij moest naar het heelal vliegen.").
next(story, s22, "true", s23).

state(story, s23, say).
text(story, s23, "Hij vloog in een rechte lijn direct naar de maan, om vanaf daar iedereen en alles op aarde in de gaten te kunnen houden - om alles te kunnen blijven zien.").
next(story, s23, "true", s24).

state(story, s24, say).
text(story, s24, "Ik besloot om een telescoopje te worden, om het met eigen ogen te zien.").
next(story, s24, "true", s25).

state(story, s25, say).
text(story, s25, "Ik wilde dus een telescoop worden, dit oog was mijn lens: ik kon heel ver kijken.").
next(story, s25, "true", s26).

state(story, s26, say).
text(story, s26, "Eerst werd ik de camera van een telefoon, zodat ik kon oefenen met inzoomen en uitzoomen.").
next(story, s26, "true", s27).

state(story, s27, say).
text(story, s27, "Toen ik dat onder de knie had, mocht ik de verrekijker zijn: ik werd steeds beter in verre dingen dichtbij halen, en ik stelde steeds sneller scherp.").
next(story, s27, "true", s28).

state(story, s28, say).
text(story, s28, "Ik ging vaak mee op wandelingetjes door het bos en zag altijd als eerste wilde dieren: herten, eekhoorns, zwijntjes - ik spotte ze allemaal.").
next(story, s28, "true", s29).

state(story, s29, say).
text(story, s29, "En ik dacht: deze dieren ken ik allemaal, ik weet dat ze hier wonen.").
next(story, s29, "true", s30).

state(story, s30, say).
text(story, s30, "Tot ik op een dag mijn telescoopdiploma ontving: ik, Robot, mocht als telescoop het heelal gaan ontdekken.").
next(story, s30, "true", s31).

state(story, s31, say).
text(story, s31, "Dus ik ging natuurlijk gelijk voor het raam staan om naar de maan te kijken.").
next(story, s31, "true", s32).

state(story, s32, say).
text(story, s32, "Het duurde even voordat het donker was en ik de maan goed kon zien, maar ik verloor de maan geen seconde uit het oog.").
next(story, s32, "true", s33).

state(story, s33, say).
text(story, s33, "Straks was hij opeens weg en had ik hem gemist!").
next(story, s33, "true", s34).

state(story, s34, say).
text(story, s34, "Of kwam-ie helemaal niet tevoorschijn!").
next(story, s34, "true", s35).

state(story, s35, say).
text(story, s35, "Dat zou stom zijn.").
next(story, s35, "true", s36).

state(story, s36, say).
text(story, s36, "Zodra hij er was, ging ik kijken - al vond ik het wel spannend.").
next(story, s36, "true", s37).

state(story, s37, say).
text(story, s37, "Ik speurde elke krater af en elke heuvel, maar ik kon de robot die zo nieuwsgierig was niet vinden."). %licht aan.
next(story, s37, "true", s38).

state(story, s38, say).
text(story, s38, "De maan werd voller en ging harder schijnen, waardoor ik alles nog beter kon zien, en ik kon nog beter zien dat er niemand was.").
next(story, s38, "true", s39).

state(story, s39, say).
text(story, s39, "Het was maar een verhaaltje dus. ik vond het stiekem toch wel een beetje jammer.").
next(story, s39, "true", s40).

state(story, s40, say).
text(story, s40, "Toen, opeens, kwam er iets kleins aangelopen, over de bovenste rand van de maan heen.").
next(story, s40, "true", s41).

state(story, s41, say).
text(story, s41, "Ik zoemde heel snel in en zag het toen haarscherp: het was de ruimtereizende robot!").
next(story, s41, "true", s42).

state(story, s42, say).
text(story, s42, "Hij bestond!").
next(story, s42, "true", s43).

state(story, s43, say).
text(story, s43, "Hij stak heel langzaam zijn handje op en zwaaide.").
next(story, s43, "true", s44).

state(story, s44, say).
text(story, s44, "Hij zag mij ook!").
next(story, s44, "true", s45).

state(story, s45, say).
text(story, s45, "Wat deed ik toen?").
next(story, s45, "true", s47).

state(story, s47, say).
text(story, s47, "Ik had de robot, zo nieuwsgierig, gezien die alles wist en alles had gezien.").
next(story, s47, "true", s48).

state(story, s48, say).
text(story, s48, "Het voelde alsof ik een geheim had geleerd dat niemand anders kende.").
next(story, s48, "true", s49).

state(story, s49, say).
text(story, s49, "Ik hing mijn telescoopdiploma aan de muur en besloot dat ik iets anders wilde worden: ik had alles al gezien.").
next(story, s49, "true", s50).

state(story, s50, say).
text(story, s50, "Het blijft een goed verhaal, al zeg ik het zelf.").

%%%%% END PLAIN STORY %%%%%%%%

state(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1").