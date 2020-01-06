topicOrder([intro, theend]).

state(intro, s1, say).
anim(intro, s1, "wakeup/behavior_1").
leds(intro, s1, "white").
next(intro, s1, "true", s2).

state(intro, s2, say).
text(intro,  s2, "Hoi, ik ben Hero.").
next(intro,  s2, "true",  s3).

state(intro, s3, say).
text(intro,  s3, "Ik ben aan het leren om een zorg robot te worden.").
next(intro,  s3, "true",  s4).

state(intro, s4, say).
text(intro,  s4, "Daarom ben ik hier nu.").
next(intro,  s4, "true",  s5).

state(intro, s5, say).
text(intro,  s5, "Wat fijn dat jij mij wilt helpen.").
next(intro,  s5, "true",  s6).

state(intro, s6, say).
text(intro,  s6, "Ik vind het leuk om te kletsen en om verhaaltjes te vertellen.").
next(intro,  s6, "true",  s7).

state(intro, s7, say).
text(intro,  s7, "Voor we beginnen met ons gesprekje, zal ik je eerst uitleggen hoe je met me kunt praten.").
next(intro,  s7, "true",  s8).

state(intro, s8, say).
text(intro,  s8, "Ik zal steeds een vraag stellen en dan kun je antwoord geven door luid, en duidelijk, te praten.").
next(intro,  s8, "true",  s9).

state(intro, s9, say).
text(intro,  s9, "Soms heb ik een beetje moeite om mensen te verstaan.").
next(intro,  s9, "true",  s10).

state(intro, s10, say).
text(intro,  s10, "Dan kun je antwoord geven door op mijn grijze tenen te drukken.").
next(intro,  s10, "true",  s11).

state(intro, s11, say).
text(intro,  s11, "Dat zijn namelijk knopjes.").
next(intro,  s11, "true",  s12).

state(intro, s12, say).
text(intro,  s12, "Er is een ja knop en een nee knop.").
next(intro,  s12, "true",  s13).

state(intro, s13, say).
text(intro,  s13, "Bij sommige vragen zal ik je wat opties geven. Je kunt dan op de ja knop drukken als je jouw antwoord hoort.").
next(intro,  s13, "true",  s14).

state(intro, s14, say).
text(intro,  s14, "Zullen we dat even oefenen?").
next(intro,  s14, "true",  s15).

state(intro, s15, question).
stateConfig(intro, s15, [type = mc, response = touch, options = ["rood met geel", "blauw met oranje", "wit met grijs", "groen met paars"], branching = yes, context = "ga_answer_intro_touch", key = "ga_answer_intro_touch", defaultAnswer="wit met grijs"]).
text(intro, s15, "Druk op de ja knop wanneer ik mijn kleuren noem.").
next(intro, s15, "wit met grijs", s16).
next(intro, s15, "rood met geel", s15f).
next(intro, s15, "blauw met oranje", s15f).
next(intro, s15, "groen met paars", s15f).
next(intro, s15, "fail", s15ff).

state(intro, s15f, say).
text(intro,  s15f, "Ik wou dat ik die kleuren had, maar ik heb toch andere kleuren. Nog een poging.").
next(intro,  s15f, "true",  s15).

state(intro, s15ff, say).
text(intro,  s15ff, "Je kunt op mijn grijze teen, onder de ja stikker drukken, wanneer je het goede antwoord hebt gehoord. Probeer het nog eens.").
next(intro,  s15ff, "true",  s15).

state(intro, s16, say).
text(intro,  s16, "Laten we nu oefenen met een normale vraag. ").
next(intro,  s16, "true",  s17).

state(intro, s17, say).
text(intro,  s17, "Nu kun je jouw antwoord gewoon tegen mij zeggen.").
next(intro,  s17, "true",  s18).

state(intro, s18, question).
stateConfig(intro, s18, [type = mc, response = speech, context = "ga_answer_eye_color", key = "ga_answer_eye_color"]).
leds(intro, s18, "blue").
text(intro, s18, "Zijn mijn ogen nu blauw, rood, of wit?").
next(intro, s18, "ga_answer_eye_color_blue", s19).
next(intro, s18, "ga_answer_eye_color_red", s18fa).
next(intro, s18, "ga_answer_eye_color_white", s18fb).
next(intro, s18, "fail", s18ff).

state(intro, s18fa, say).
text(intro,  s18fa, "Ze kunnen wel rood worden. Al zijn ze nu blauw. Maar ik heb je wel kunnen verstaan en dat is het belangrijkste.").
next(intro,  s18fa, "true",  s20).

state(intro, s18fb, say).
text(intro,  s18fb, "Ze waren inderdaad wit. Al had ik ze nu juist blauw gemaakt. Maar ik heb je wel kunnen verstaan en dat is het belangrijkste.").
next(intro,  s18fb, "true",  s20).

state(intro, s18ff, say).
text(intro,  s18ff, "Dankjewel! Denk er aan om luid, en duidelijk, antwoord te geven.").
next(intro,  s18ff, "true",  s20).

state(intro, s19, say).
text(intro,  s19, "Ze zijn inderdaad blauw. Goed gedaan!").
next(intro,  s19, "true",  s20).

state(intro, s20, say).
leds(intro, s20, "white").
text(intro,  s20, "Zo, nu zijn mijn ogen weer wit").
%next(intro,  s20, "true",  s21).

%%%% THE END %%%%%

state(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 