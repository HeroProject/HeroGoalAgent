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
moveConfig(lievelingseten, s5, [type=input, context="lievelingseten_met_p", options=['pizza', 'pasta', 'pannenkoeken', 'poffertjes', 'patat'], fast=yes, umVariable=lievelingseten_met_p]).
text(lievelingseten, s5, "Welke P vind jij de allerlekkerste P?").
next(lievelingseten, s5, "pizza", s6pizza1).
next(lievelingseten, s5, "pasta", s6pasta1).
next(lievelingseten, s5, "pannenkoeken", s6pannenkoeken1).
next(lievelingseten, s5, "poffertjes", s6poffertjes1).
next(lievelingseten, s5, "patat", s6patat1).
next(lievelingseten, s5, "fail", s6fail_lievelingseten_met_p1).
next(lievelingseten, s5, "_others", s6fail_lievelingseten_met_p1).

move(lievelingseten, s6pizza1, say).
text(lievelingseten, s6pizza1, "Pizza! Pizza! Ooooh pizza!").
next(lievelingseten, s6pizza1, "true", s6pizza2).

move(lievelingseten, s6pizza2, question).
moveConfig(lievelingseten, s6pizza2, [type=yesno, context='answer_yesno', umVariable=pizza_sliert]).
text(lievelingseten, s6pizza2, "Heb je ook wel eens dat de kaas zo erg gesmolten is, dat er een hele sliert tussen je mond en je pizzapunt hangt als je een hap neemt?").
next(lievelingseten, s6pizza2, "ja", s6wel_pizza_sliert1).
next(lievelingseten, s6pizza2, "answer_dontknow", s6wel_pizza_sliert1).
next(lievelingseten, s6pizza2, "fail", s6wel_pizza_sliert1).
next(lievelingseten, s6pizza2, "nee", s6wel_pizza_sliert1).

move(lievelingseten, s6wel_pizza_sliert1, say).
text(lievelingseten, s6wel_pizza_sliert1, "Sommige mensen vinden dat er vies uit zien, maar ik niet!").
next(lievelingseten, s6wel_pizza_sliert1, "true", s6wel_pizza_sliert2).

move(lievelingseten, s6wel_pizza_sliert2, say).
text(lievelingseten, s6wel_pizza_sliert2, "Zo'n sliert lijkt op het allerbeste snoer waar ik stroom door krijg.").
next(lievelingseten, s6wel_pizza_sliert2, "true", s6wel_pizza_sliert3).

move(lievelingseten, s6wel_pizza_sliert3, say).
text(lievelingseten, s6wel_pizza_sliert3, "En mamma mia!").
next(lievelingseten, s6wel_pizza_sliert3, "true", s6wel_pizza_sliert4).

move(lievelingseten, s6wel_pizza_sliert4, say).
text(lievelingseten, s6wel_pizza_sliert4, "Als zo'n sliert voor jou proeft zoals stroom voor mij.").
next(lievelingseten, s6wel_pizza_sliert4, "true", s6wel_pizza_sliert5).

move(lievelingseten, s6wel_pizza_sliert5, say).
text(lievelingseten, s6wel_pizza_sliert5, "dan kan zo'n sliert alleen maar bewijs voor een superpizza zijn!").

move(lievelingseten, s6pasta1, say).
text(lievelingseten, s6pasta1, "Fantastico!").
next(lievelingseten, s6pasta1, "true", s6pasta2).

move(lievelingseten, s6pasta2, say).
text(lievelingseten, s6pasta2, "Dat is Italiaans voor geweldig!").
next(lievelingseten, s6pasta2, "true", s6pasta3).

move(lievelingseten, s6pasta3, say).
text(lievelingseten, s6pasta3, "Dat heb ik geleerd van Italiaanse robots die pasta maken.").
next(lievelingseten, s6pasta3, "true", s6pasta4).

move(lievelingseten, s6pasta4, say).
text(lievelingseten, s6pasta4, "Robots kunnen natuurlijk geen pasta eten,").
next(lievelingseten, s6pasta4, "true", s6pasta5).

move(lievelingseten, s6pasta5, say).
text(lievelingseten, s6pasta5, "maar al die verschillende vormpjes vinden wij te gek!").

move(lievelingseten, s6pannenkoeken1, say).
text(lievelingseten, s6pannenkoeken1, "Pannenkoeken lijken mij ook heel lekker!").
next(lievelingseten, s6pannenkoeken1, "true", s6pannenkoeken2).

move(lievelingseten, s6pannenkoeken2, say).
text(lievelingseten, s6pannenkoeken2, "Ik heb gezien dat jullie daar stroop op doen.").
next(lievelingseten, s6pannenkoeken2, "true", s6pannenkoeken3).

move(lievelingseten, s6pannenkoeken3, say).
text(lievelingseten, s6pannenkoeken3, "Dat lijkt wel een beetje op motorolie!").
next(lievelingseten, s6pannenkoeken3, "true", s6pannenkoeken4).

move(lievelingseten, s6pannenkoeken4, say).
text(lievelingseten, s6pannenkoeken4, "In de toekomst komen er vast pannenkoekenhuizen voor mensen en robots samen.").
next(lievelingseten, s6pannenkoeken4, "true", s6pannenkoeken5).

move(lievelingseten, s6pannenkoeken5, say).
text(lievelingseten, s6pannenkoeken5, "Daar hebben ze dan pannenkoeken met stroop voor jou").
next(lievelingseten, s6pannenkoeken5, "true", s6pannenkoeken6).

move(lievelingseten, s6pannenkoeken6, say).
text(lievelingseten, s6pannenkoeken6, "en harde schijven met motorolie voor mij!").

move(lievelingseten, s6poffertjes1, say).
text(lievelingseten, s6poffertjes1, "Poffertjes vind ik er ook lekker uit zien!").
next(lievelingseten, s6poffertjes1, "true", s6poffertjes2).

move(lievelingseten, s6poffertjes2, say).
text(lievelingseten, s6poffertjes2, "En het woord klinkt ook heel lekker.").
next(lievelingseten, s6poffertjes2, "true", s6poffertjes3).

move(lievelingseten, s6poffertjes3, say).
text(lievelingseten, s6poffertjes3, "Pof pof poffertje!").
next(lievelingseten, s6poffertjes3, "true", s6poffertjes4).

move(lievelingseten, s6poffertjes4, say).
text(lievelingseten, s6poffertjes4, "En het rijmt op wat jij bent als je heel veel poffertjes krijgt").
next(lievelingseten, s6poffertjes4, "true", s6poffertjes5).

move(lievelingseten, s6poffertjes5, say).
text(lievelingseten, s6poffertjes5, "dan ben je een echt boffertje!").

move(lievelingseten, s6patat1, say).
text(lievelingseten, s6patat1, "Als ik een mens was, zou ik dat ook de lekkerste P vinden!").
next(lievelingseten, s6patat1, "true", s6patat2).

move(lievelingseten, s6patat2, say).
text(lievelingseten, s6patat2, "Ik vind vooral de frituurpan leuk.").
next(lievelingseten, s6patat2, "true", s6patat3).

move(lievelingseten, s6patat3, say).
text(lievelingseten, s6patat3, "Die lijkt op het badje met olie waar ik soms even in wordt gelegd.").
next(lievelingseten, s6patat3, "true", s6patat4).

move(lievelingseten, s6patat4, say).
text(lievelingseten, s6patat4, "Dat helpt als ik een beetje vastgeroest ben.").
next(lievelingseten, s6patat4, "true", s6patat5).

move(lievelingseten, s6patat5, say).
text(lievelingseten, s6patat5, "Misschien mag ik de volgende keer wel in de frituurpan zwemmen!").
next(lievelingseten, s6patat5, "true", s6patat6).

move(lievelingseten, s6patat6, say).
text(lievelingseten, s6patat6, "Maar die moet dan wel uitstaan natuurlijk.").
next(lievelingseten, s6patat6, "true", s6patat7).

move(lievelingseten, s6patat7, say).
text(lievelingseten, s6patat7, "anders kom ik eruit als een Hero-kroket!").

