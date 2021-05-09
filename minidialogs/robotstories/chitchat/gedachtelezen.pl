%%%% HEADER %%%%
%% gedachtelezen %%
minidialog(gedachtelezen, [type=chitchat, theme=robospelen_ronde, topic=gedachtelezen]).
dependencies(gedachtelezen, [[[robospelen_6_info, user_model, 0], umVariable=leukste_onderdeel, filter=green, values=["gedachtelezen"]]]).

move(gedachtelezen, s1, say).
text(gedachtelezen, s1, "En dan is er meestal nog een ronde waarin de Robots hun mentale krachten moeten laten zien via Bluetooth.").
next(gedachtelezen, s1, "true", s2).

move(gedachtelezen, s2, say).
text(gedachtelezen, s2, "Gedachten lezen en zo!").
next(gedachtelezen, s2, "true", s3).

move(gedachtelezen, s3, say).
text(gedachtelezen, s3, "Eigenlijk is het bizar simpel").
next(gedachtelezen, s3, "true", s4).

move(gedachtelezen, s4, say).
text(gedachtelezen, s4, "maar we moeten ons wel goed voorbereiden.").
next(gedachtelezen, s4, "true", s5).

move(gedachtelezen, s5, say).
text(gedachtelezen, s5, "Eerst moeten we onze ogen sluiten.").
next(gedachtelezen, s5, "true", s6).

move(gedachtelezen, s6, say).
text(gedachtelezen, s6, "Doe maar mee.").
next(gedachtelezen, s6, "true", s7).

move(gedachtelezen, s7, say).
next(gedachtelezen, s7, "true", s8).

move(gedachtelezen, s8, say).
text(gedachtelezen, s8, "En dan een keer diep inademen.").
next(gedachtelezen, s8, "true", s9).

move(gedachtelezen, s9, say).
text(gedachtelezen, s9, "Adem in...").
next(gedachtelezen, s9, "true", s10).

move(gedachtelezen, s10, say).
next(gedachtelezen, s10, "true", s11).

move(gedachtelezen, s11, say).
text(gedachtelezen, s11, "Adem uit...").
next(gedachtelezen, s11, "true", s12).

move(gedachtelezen, s12, say).
next(gedachtelezen, s12, "true", s13).

move(gedachtelezen, s13, say).
text(gedachtelezen, s13, "Nog eens! Adem in...").
next(gedachtelezen, s13, "true", s14).

move(gedachtelezen, s14, say).
next(gedachtelezen, s14, "true", s15).

move(gedachtelezen, s15, say).
text(gedachtelezen, s15, "En uit...").
next(gedachtelezen, s15, "true", s16).

move(gedachtelezen, s16, say).
next(gedachtelezen, s16, "true", s17).

move(gedachtelezen, s17, say).
text(gedachtelezen, s17, "Doe je ogen maar weer open.").
next(gedachtelezen, s17, "true", s18).

move(gedachtelezen, s18, say).
text(gedachtelezen, s18, "Als het goed is lopen de microchips in onze hoofden op dit moment gelijk!").
next(gedachtelezen, s18, "true", s19).

move(gedachtelezen, s19, say).
text(gedachtelezen, s19, "Ik kan het bewijzen.").
next(gedachtelezen, s19, "true", s20).

move(gedachtelezen, s20, say).
text(gedachtelezen, s20, "Jij kan nu mijn gedachten lezen.").
next(gedachtelezen, s20, "true", s21).

move(gedachtelezen, s21, say).
text(gedachtelezen, s21, "Alles wat ik denk, dat denk jij nu ook.").
next(gedachtelezen, s21, "true", s22).

move(gedachtelezen, s22, say).
text(gedachtelezen, s22, "Ogen weer dicht.").
next(gedachtelezen, s22, "true", s23).

move(gedachtelezen, s23, say).
text(gedachtelezen, s23, "Ik neem een getal in mijn hoofd en stuur dat getal naar jouw hoofd.").
next(gedachtelezen, s23, "true", s24).

move(gedachtelezen, s24, say).
text(gedachtelezen, s24, "Via bluetooth.").
next(gedachtelezen, s24, "true", s25).

move(gedachtelezen, s25, say).
text(gedachtelezen, s25, "Concentreer je!").
next(gedachtelezen, s25, "true", s26).

move(gedachtelezen, s26, question).
moveConfig(gedachtelezen, s26, [type=input, context="integer", options=['1', '5', '6', '9'], umVariable=getal_1_tot_10]).
text(gedachtelezen, s26, "Noem een getal tussen de 1 en de 10!").
next(gedachtelezen, s26, "1", s27getal1).
next(gedachtelezen, s26, "2", s27getal1).
next(gedachtelezen, s26, "3", s27getal1).
next(gedachtelezen, s26, "4", s27getal1).
next(gedachtelezen, s26, "5", s27getal1).
next(gedachtelezen, s26, "6", s27getal1).
next(gedachtelezen, s26, "7", s27getal1).
next(gedachtelezen, s26, "8", s27getal1).
next(gedachtelezen, s26, "9", s27getal1).
next(gedachtelezen, s26, "10", s27getal1).
next(gedachtelezen, s26, "_others", s27boven_101).
next(gedachtelezen, s26, "fail", s27fail_getal1).

move(gedachtelezen, s27fail_getal1, say).
text(gedachtelezen, s27fail_getal1, "Probeer het maar.").
next(gedachtelezen, s27fail_getal1, "true", s27fail_getal2).

move(gedachtelezen, s27fail_getal2, question).
moveConfig(gedachtelezen, s27fail_getal2, [type=input, context="integer", options=['1', '5', '6', '9'], umVariable=getal_bluetooth]).
text(gedachtelezen, s27fail_getal2, "Zeg maar eens een getal tussen de 1 en de 10!").
next(gedachtelezen, s27fail_getal2, "1", s27getal1).
next(gedachtelezen, s27fail_getal2, "2", s27getal1).
next(gedachtelezen, s27fail_getal2, "3", s27getal1).
next(gedachtelezen, s27fail_getal2, "4", s27getal1).
next(gedachtelezen, s27fail_getal2, "5", s27getal1).
next(gedachtelezen, s27fail_getal2, "6", s27getal1).
next(gedachtelezen, s27fail_getal2, "7", s27getal1).
next(gedachtelezen, s27fail_getal2, "8", s27getal1).
next(gedachtelezen, s27fail_getal2, "9", s27getal1).
next(gedachtelezen, s27fail_getal2, "10", s27getal1).
next(gedachtelezen, s27fail_getal2, "_others", s27boven_101).
next(gedachtelezen, s27fail_getal2, "fail", s27fail_getal_21).

move(gedachtelezen, s27fail_getal_21, say).
text(gedachtelezen, s27fail_getal_21, "Je mag het ook via bluetooth aan me doorsturen").
next(gedachtelezen, s27fail_getal_21, "true", s27fail_getal_22).

move(gedachtelezen, s27fail_getal_22, say).
text(gedachtelezen, s27fail_getal_22, "3... 2... 1... Nu!").
next(gedachtelezen, s27fail_getal_22, "true", s27fail_getal_23).

move(gedachtelezen, s27fail_getal_23, say).
text(gedachtelezen, s27fail_getal_23, "Laden... Laden...").
next(gedachtelezen, s27fail_getal_23, "true", s27fail_getal_24).

move(gedachtelezen, s27fail_getal_24, say).
text(gedachtelezen, s27fail_getal_24, "Ja, ik heb een getal binnengekregen!").
next(gedachtelezen, s27fail_getal_24, "true", s27fail_getal_25).

move(gedachtelezen, s27fail_getal_25, say).
text(gedachtelezen, s27fail_getal_25, "Dat was precies het getal waar ik ook aan dacht!").
next(gedachtelezen, s27fail_getal_25, "true", s28).

move(gedachtelezen, s27boven_101, say).
text(gedachtelezen, s27boven_101, "Dat is goed!").
next(gedachtelezen, s27boven_101, "true", s27boven_102).

move(gedachtelezen, s27boven_102, say).
text(gedachtelezen, s27boven_102, "Jij bent er niet ingetrapt.").
next(gedachtelezen, s27boven_102, "true", s27boven_103).

move(gedachtelezen, s27boven_103, say).
text(gedachtelezen, s27boven_103, "Ik zei wel een dat het een getal onder de tien moest zijn").
next(gedachtelezen, s27boven_103, "true", s27boven_104).

move(gedachtelezen, s27boven_104, say).
text(gedachtelezen, s27boven_104, "Maar dat was een extra test om te zien of we goed verbonden waren").
next(gedachtelezen, s27boven_104, "true", s27boven_105).

move(gedachtelezen, s27boven_105, say).
text(gedachtelezen, s27boven_105, "Het was inderdaad %getal_bluetooth% waar ik aan dacht!").
next(gedachtelezen, s27boven_105, "true", s28).

move(gedachtelezen, s27getal1, say).
text(gedachtelezen, s27getal1, "Ja!").
next(gedachtelezen, s27getal1, "true", s27getal2).

move(gedachtelezen, s27getal2, say).
text(gedachtelezen, s27getal2, "%getal_bluetooth%, dat was precies het getal waar ik aan dacht!").
next(gedachtelezen, s27getal2, "true", s27getal3).

move(gedachtelezen, s27getal3, say).
text(gedachtelezen, s27getal3, "Dat betekent dat het werkt.").
next(gedachtelezen, s27getal3, "true", s28).

move(gedachtelezen, s28, say).
text(gedachtelezen, s28, "Goed gedaan.").
next(gedachtelezen, s28, "true", s29).

move(gedachtelezen, s29, say).
text(gedachtelezen, s29, "Jij kan nu net zoals ik robotgedachten lezen via bluetooth!").
next(gedachtelezen, s29, "true", s30).

move(gedachtelezen, s30, say).
text(gedachtelezen, s30, "Misschien werkt het zelfs ook tussen mens en mens").
next(gedachtelezen, s30, "true", s31).

move(gedachtelezen, s31, say).
text(gedachtelezen, s31, "Dat weet ik natuurlijk niet zeker").
next(gedachtelezen, s31, "true", s32).

move(gedachtelezen, s32, say).
text(gedachtelezen, s32, "Maar jij kan het deze week wel testen!").

