%%%% HEADER %%%%
%% lievelingseten %%
minidialog(lievelingseten, [type=chitchat, theme=lievelings, topic=eten]).

move(lievelingseten, s1, say).
text(lievelingseten, s1, "Ik heb trouwens iets bijzonders ontdekt!").
next(lievelingseten, s1, "true", s2).

move(lievelingseten, s2, say).
text(lievelingseten, s2, "Heel veel eten dat heel veel kinderen heel lekker vinden").
next(lievelingseten, s2, "true", s3).

move(lievelingseten, s3, say).
text(lievelingseten, s3, "begint met een P!").
next(lievelingseten, s3, "true", s4).

move(lievelingseten, s4, say).
text(lievelingseten, s4, "Zoals: pizza, pasta, pannenkoeken, poffertjes, en patat.").
next(lievelingseten, s4, "true", s5).

move(lievelingseten, s5, question).
moveConfig(lievelingseten, s5, [type=input, context="lievelingseten_met_p", options=['pizza', 'pasta', 'pannenkoeken', 'poffertjes', 'patat'], umVariable=lievelingseten_met_p]).
text(lievelingseten, s5, "Welke P vind jij de allerlekkerste P?").
next(lievelingseten, s5, "pizza", s6pizza1).
next(lievelingseten, s5, "pasta", s6pasta1).
next(lievelingseten, s5, "pannenkoeken", s6pannenkoeken1).
next(lievelingseten, s5, "poffertjes", s6poffertjes1).
next(lievelingseten, s5, "patat", s6patat1).
next(lievelingseten, s5, "fail", s6fail_lievelingseten_met_p1).

move(lievelingseten, s6, say).
text(lievelingseten, s6, "Pizza! Pizza! Ooooh pizza!").
next(lievelingseten, s6, "true", s7).

move(lievelingseten, s7, question).
moveConfig(lievelingseten, s7, [type=yesno, context='answer_yesno', umVariable=pizza_sliert]).
text(lievelingseten, s7, "Heb je ook wel eens dat de kaas zo erg gesmolten is, dat er een hele sliert tussen je mond en je pizzapunt hangt als je een hap neemt?").
next(lievelingseten, s7, "ja", s8wel_pizza_sliert1).
next(lievelingseten, s7, "answer_dontknow", s8wel_pizza_sliert1).
next(lievelingseten, s7, "fail", s8wel_pizza_sliert1).
next(lievelingseten, s7, "nee", s8geen_pizza_sliert1).

move(lievelingseten, s8, say).
text(lievelingseten, s8, "Sommige mensen vinden dat er vies uit zien, maar ik niet!").
next(lievelingseten, s8, "true", s9).

move(lievelingseten, s9, say).
text(lievelingseten, s9, "Zo'n sliert lijkt op het allerbeste snoer waar ik stroom door krijg.").
next(lievelingseten, s9, "true", s10).

move(lievelingseten, s10, say).
text(lievelingseten, s10, "En mamma mia!").
next(lievelingseten, s10, "true", s11).

move(lievelingseten, s11, say).
text(lievelingseten, s11, "Als zo'n sliert voor jou proeft zoals stroom voor mij...").
next(lievelingseten, s11, "true", s12).

move(lievelingseten, s12, say).
text(lievelingseten, s12, "dan kan zo'n sliert alleen maar bewijs voor een superpizza zijn!").
next(lievelingseten, s12, "true", s13).

move(lievelingseten, s13, say).
text(lievelingseten, s13, "Fantastico!").
next(lievelingseten, s13, "true", s14).

move(lievelingseten, s14, say).
text(lievelingseten, s14, "Dat is Italiaans voor geweldig!").
next(lievelingseten, s14, "true", s15).

move(lievelingseten, s15, say).
text(lievelingseten, s15, "Dat heb ik geleerd van Italiaanse robots die pasta maken.").
next(lievelingseten, s15, "true", s16).

move(lievelingseten, s16, say).
text(lievelingseten, s16, "Robots kunnen natuurlijk geen pasta eten,").
next(lievelingseten, s16, "true", s17).

move(lievelingseten, s17, say).
text(lievelingseten, s17, "maar al die verschillende vormpjes vinden wij te gek!").
next(lievelingseten, s17, "true", s18).

move(lievelingseten, s18, say).
text(lievelingseten, s18, "Pannenkoeken lijken mij ook heel lekker!").
next(lievelingseten, s18, "true", s19).

move(lievelingseten, s19, say).
text(lievelingseten, s19, "Ik heb gezien dat jullie daar stroop op doen.").
next(lievelingseten, s19, "true", s20).

move(lievelingseten, s20, say).
text(lievelingseten, s20, "Dat lijkt wel een beetje op motorolie!").
next(lievelingseten, s20, "true", s21).

move(lievelingseten, s21, say).
text(lievelingseten, s21, "In de toekomst komen er vast pannenkoekenhuizen voor mensen en robots samen.").
next(lievelingseten, s21, "true", s22).

move(lievelingseten, s22, say).
text(lievelingseten, s22, "Daar hebben ze dan pannenkoeken met stroop voor jou").
next(lievelingseten, s22, "true", s23).

move(lievelingseten, s23, say).
text(lievelingseten, s23, "en harde schijven met motorolie voor mij!").
next(lievelingseten, s23, "true", s24).

move(lievelingseten, s24, say).
text(lievelingseten, s24, "Poffertjes vind ik er ook lekker uit zien!").
next(lievelingseten, s24, "true", s25).

move(lievelingseten, s25, say).
text(lievelingseten, s25, "En het woord klinkt ook heel lekker.").
next(lievelingseten, s25, "true", s26).

move(lievelingseten, s26, say).
text(lievelingseten, s26, "Pof pof poffertje!").
next(lievelingseten, s26, "true", s27).

move(lievelingseten, s27, say).
text(lievelingseten, s27, "En het rijmt op wat jij bent als je heel veel poffertjes krijgt").
next(lievelingseten, s27, "true", s28).

move(lievelingseten, s28, say).
text(lievelingseten, s28, "dan ben je een echt boffertje!").
next(lievelingseten, s28, "true", s29).

move(lievelingseten, s29, say).
text(lievelingseten, s29, "Als ik een mens was, zou ik dat ook de lekkerste P vinden!").
next(lievelingseten, s29, "true", s30).

move(lievelingseten, s30, say).
text(lievelingseten, s30, "Ik vind vooral de frituurpan leuk.").
next(lievelingseten, s30, "true", s31).

move(lievelingseten, s31, say).
text(lievelingseten, s31, "Die lijkt op het badje met olie waar ik soms even in wordt gelegd.").
next(lievelingseten, s31, "true", s32).

move(lievelingseten, s32, say).
text(lievelingseten, s32, "Dat helpt als ik een beetje vastgeroest ben.").
next(lievelingseten, s32, "true", s33).

move(lievelingseten, s33, say).
text(lievelingseten, s33, "Misschien mag ik de volgende keer wel in de frituurpan zwemmen!").
next(lievelingseten, s33, "true", s34).

move(lievelingseten, s34, say).
text(lievelingseten, s34, "Maar die moet dan wel uitstaan natuurlijk...").
next(lievelingseten, s34, "true", s35).

move(lievelingseten, s35, say).
text(lievelingseten, s35, "anders kom ik eruit als een Hero-kroket!").

