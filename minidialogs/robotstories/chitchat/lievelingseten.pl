%%%% HEADER %%%%
%% lievelingseten %%
minidialog(lievelingseten, [type=chitchat, theme=lievelings, topic=eten]).

move(lievelingseten, s1, say).
text(lievelingseten, s1, "Even door naar wat anders").
next(lievelingseten, s1, "true", s2).

move(lievelingseten, s2, say).
text(lievelingseten, s2, "Ik heb namelijk iets bijzonders ontdekt!").
next(lievelingseten, s2, "true", s3).

move(lievelingseten, s3, say).
text(lievelingseten, s3, "Heel veel, eten, dat heel veel kinderen heel lekker vinden").
next(lievelingseten, s3, "true", s4).

move(lievelingseten, s4, say).
text(lievelingseten, s4, "begint met een P!").
next(lievelingseten, s4, "true", s5).

move(lievelingseten, s5, say).
text(lievelingseten, s5, "Zoals: pizza, pasta, pannenkoeken, poffertjes, en patat.").
next(lievelingseten, s5, "true", s6).

move(lievelingseten, s6, question).
moveConfig(lievelingseten, s6, [type=input, context="lievelingseten_met_p", options=['pizza', 'pasta', 'pannenkoeken', 'poffertjes', 'patat'], fast=yes, umVariable=lievelingseten_met_p]).
text(lievelingseten, s6, "Welke P vind jij de allerlekkerste P?").
next(lievelingseten, s6, "pizza", s7pizza1).
next(lievelingseten, s6, "pasta", s7pasta1).
next(lievelingseten, s6, "pannenkoeken", s7pannenkoeken1).
next(lievelingseten, s6, "poffertjes", s7poffertjes1).
next(lievelingseten, s6, "patat", s7patat1).
next(lievelingseten, s6, "fail", s7fail_lievelingseten_met_p1).
next(lievelingseten, s6, "_others", s7fail_lievelingseten_met_p1).

move(lievelingseten, s7pizza1, say).
text(lievelingseten, s7pizza1, "Pizza! Pizza! Ooooh pizza!").
next(lievelingseten, s7pizza1, "true", s7pizza2).

move(lievelingseten, s7pizza2, question).
moveConfig(lievelingseten, s7pizza2, [type=yesno, context='answer_yesno', umVariable=pizza_sliert]).
text(lievelingseten, s7pizza2, "Heb je ook wel eens dat de kaas zo erg gesmolten is, dat er een hele sliert tussen je mond en je pizzapunt hangt als je een hap neemt?").
next(lievelingseten, s7pizza2, "answer_yes", s7wel_pizza_sliert1).
next(lievelingseten, s7pizza2, "answer_dontknow", s7wel_pizza_sliert1).
next(lievelingseten, s7pizza2, "fail", s7wel_pizza_sliert1).
next(lievelingseten, s7pizza2, "answer_no", s7wel_pizza_sliert1).

move(lievelingseten, s7wel_pizza_sliert1, say).
text(lievelingseten, s7wel_pizza_sliert1, "Sommige mensen vinden dat er vies uit zien, maar ik niet!").
next(lievelingseten, s7wel_pizza_sliert1, "true", s7wel_pizza_sliert2).

move(lievelingseten, s7wel_pizza_sliert2, say).
text(lievelingseten, s7wel_pizza_sliert2, "Zo'n sliert lijkt op het allerbeste snoer waar ik stroom door krijg.").
next(lievelingseten, s7wel_pizza_sliert2, "true", s7wel_pizza_sliert3).

move(lievelingseten, s7wel_pizza_sliert3, say).
text(lievelingseten, s7wel_pizza_sliert3, "En mamma mia!").
next(lievelingseten, s7wel_pizza_sliert3, "true", s7wel_pizza_sliert4).

move(lievelingseten, s7wel_pizza_sliert4, say).
text(lievelingseten, s7wel_pizza_sliert4, "Als zo'n sliert voor jou proeft zoals stroom voor mij.").
next(lievelingseten, s7wel_pizza_sliert4, "true", s7wel_pizza_sliert5).

move(lievelingseten, s7wel_pizza_sliert5, say).
text(lievelingseten, s7wel_pizza_sliert5, "dan kan zo'n sliert alleen maar bewijs voor een superpizza zijn!").
next(lievelingseten, s7wel_pizza_sliert5, "true", s8).

move(lievelingseten, s7pasta1, say).
text(lievelingseten, s7pasta1, "Fantastico!").
next(lievelingseten, s7pasta1, "true", s7pasta2).

move(lievelingseten, s7pasta2, say).
text(lievelingseten, s7pasta2, "Dat is Italiaans voor geweldig!").
next(lievelingseten, s7pasta2, "true", s7pasta3).

move(lievelingseten, s7pasta3, say).
text(lievelingseten, s7pasta3, "Dat heb ik geleerd van Italiaanse robots die pasta maken.").
next(lievelingseten, s7pasta3, "true", s7pasta4).

move(lievelingseten, s7pasta4, say).
text(lievelingseten, s7pasta4, "Robots kunnen natuurlijk geen pasta eten,").
next(lievelingseten, s7pasta4, "true", s7pasta5).

move(lievelingseten, s7pasta5, say).
text(lievelingseten, s7pasta5, "maar al die verschillende vormpjes vinden wij te gek!").
next(lievelingseten, s7pasta5, "true", s8).

move(lievelingseten, s7pannenkoeken1, say).
text(lievelingseten, s7pannenkoeken1, "Pannenkoeken lijken mij ook heel lekker!").
next(lievelingseten, s7pannenkoeken1, "true", s7pannenkoeken2).

move(lievelingseten, s7pannenkoeken2, say).
text(lievelingseten, s7pannenkoeken2, "Ik heb gezien dat jullie daar stroop op doen.").
next(lievelingseten, s7pannenkoeken2, "true", s7pannenkoeken3).

move(lievelingseten, s7pannenkoeken3, say).
text(lievelingseten, s7pannenkoeken3, "Dat lijkt wel een beetje op motorolie!").
next(lievelingseten, s7pannenkoeken3, "true", s7pannenkoeken4).

move(lievelingseten, s7pannenkoeken4, say).
text(lievelingseten, s7pannenkoeken4, "In de toekomst komen er vast pannenkoekenhuizen voor mensen en robots samen.").
next(lievelingseten, s7pannenkoeken4, "true", s7pannenkoeken5).

move(lievelingseten, s7pannenkoeken5, say).
text(lievelingseten, s7pannenkoeken5, "Daar hebben ze dan pannenkoeken met stroop voor jou").
next(lievelingseten, s7pannenkoeken5, "true", s7pannenkoeken6).

move(lievelingseten, s7pannenkoeken6, say).
text(lievelingseten, s7pannenkoeken6, "en harde schijven met motorolie voor mij!").
next(lievelingseten, s7pannenkoeken6, "true", s8).

move(lievelingseten, s7poffertjes1, say).
text(lievelingseten, s7poffertjes1, "Poffertjes vind ik er ook lekker uit zien!").
next(lievelingseten, s7poffertjes1, "true", s7poffertjes2).

move(lievelingseten, s7poffertjes2, say).
text(lievelingseten, s7poffertjes2, "En het woord klinkt ook heel lekker.").
next(lievelingseten, s7poffertjes2, "true", s7poffertjes3).

move(lievelingseten, s7poffertjes3, say).
text(lievelingseten, s7poffertjes3, "Pof pof poffertje!").
next(lievelingseten, s7poffertjes3, "true", s7poffertjes4).

move(lievelingseten, s7poffertjes4, say).
text(lievelingseten, s7poffertjes4, "En het rijmt op wat jij bent als je heel veel poffertjes krijgt").
next(lievelingseten, s7poffertjes4, "true", s7poffertjes5).

move(lievelingseten, s7poffertjes5, say).
text(lievelingseten, s7poffertjes5, "dan ben je een echt boffertje!").
next(lievelingseten, s7poffertjes5, "true", s8).

move(lievelingseten, s7patat1, say).
text(lievelingseten, s7patat1, "Als ik een mens was, zou ik dat ook de lekkerste P vinden!").
next(lievelingseten, s7patat1, "true", s7patat2).

move(lievelingseten, s7patat2, say).
text(lievelingseten, s7patat2, "Ik vind vooral de frituurpan leuk.").
next(lievelingseten, s7patat2, "true", s7patat3).

move(lievelingseten, s7patat3, say).
text(lievelingseten, s7patat3, "Die lijkt op het badje met olie waar ik soms even in wordt gelegd.").
next(lievelingseten, s7patat3, "true", s7patat4).

move(lievelingseten, s7patat4, say).
text(lievelingseten, s7patat4, "Dat helpt als ik een beetje vastgeroest ben.").
next(lievelingseten, s7patat4, "true", s7patat5).

move(lievelingseten, s7patat5, say).
text(lievelingseten, s7patat5, "Misschien mag ik de volgende keer wel in de frituurpan zwemmen!").
next(lievelingseten, s7patat5, "true", s7patat6).

move(lievelingseten, s7patat6, say).
text(lievelingseten, s7patat6, "Maar die moet dan wel uitstaan natuurlijk.").
next(lievelingseten, s7patat6, "true", s7patat7).

move(lievelingseten, s7patat7, say).
text(lievelingseten, s7patat7, "anders kom ik eruit als een Hero-kroket!").
next(lievelingseten, s7patat7, "true", s8).

move(lievelingseten, s8, question).
moveConfig(lievelingseten, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(lievelingseten, s8, "Wat vind jij eigenlijk lekker aan %lievelingseten_met_p%?").
next(lievelingseten, s8, "success", s9).
next(lievelingseten, s8, "fail", s9).

move(lievelingseten, s9, say).
text(lievelingseten, s9, "Zo dat klinkt goed.").
next(lievelingseten, s9, "true", s10).

move(lievelingseten, s10, say).
text(lievelingseten, s10, "Ik hoop dat er snel een robot variant komt van %lievelingseten_met_p%.").

