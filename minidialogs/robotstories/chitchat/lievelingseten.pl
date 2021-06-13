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

%% lievelingseten_vervolg_pizza %%
minidialog(lievelingseten_vervolg_pizza, [type=chitchat, theme=lievelings, topic=eten]).
dependencies(lievelingseten_vervolg_pizza, [[[lievelingseten, user_model, 0], [umVariable=lievelingseten_met_p, filter=green, values=["pizza"]]]]).

move(lievelingseten_vervolg_pizza, s1, say).
start_interaction_probe(lievelingseten_vervolg_pizza, s1).
next(lievelingseten_vervolg_pizza, s1, "true", s2).

move(lievelingseten_vervolg_pizza, s2, say).
text(lievelingseten_vervolg_pizza, s2, "hee %first_name% ").
next(lievelingseten_vervolg_pizza, s2, "true", s3).

move(lievelingseten_vervolg_pizza, s3, say).
text(lievelingseten_vervolg_pizza, s3, "Gisteren dacht ik aan jou.").
next(lievelingseten_vervolg_pizza, s3, "true", s4).

move(lievelingseten_vervolg_pizza, s4, say).
text(lievelingseten_vervolg_pizza, s4, "En dat we het vorige week over je lievelings eten met een p gehad hebben!").
next(lievelingseten_vervolg_pizza, s4, "true", s5).

move(lievelingseten_vervolg_pizza, s5, say).
text(lievelingseten_vervolg_pizza, s5, "Ik heb opgeslagen dat jouw lievelings eten %lievelingseten_met_p% is!").
next(lievelingseten_vervolg_pizza, s5, "true", s6).

move(lievelingseten_vervolg_pizza, s6, say).
text(lievelingseten_vervolg_pizza, s6, "Gisteren heb ik geprobeerd zelf pizza te maken.").
next(lievelingseten_vervolg_pizza, s6, "true", s7).

move(lievelingseten_vervolg_pizza, s7, say).
text(lievelingseten_vervolg_pizza, s7, "Dat lijkt me handig om te leren!").
next(lievelingseten_vervolg_pizza, s7, "true", s8).

move(lievelingseten_vervolg_pizza, s8, say).
text(lievelingseten_vervolg_pizza, s8, "Daarmee kan ik jou en heel veel andere mensen heel blij maken!").
next(lievelingseten_vervolg_pizza, s8, "true", s9).

move(lievelingseten_vervolg_pizza, s9, say).
stop_interaction_probe(lievelingseten_vervolg_pizza, s9).
next(lievelingseten_vervolg_pizza, s9, "true", s10).

move(lievelingseten_vervolg_pizza, s10, question).
moveConfig(lievelingseten_vervolg_pizza, s10, [type=yesno, context='answer_yesno']).
text(lievelingseten_vervolg_pizza, s10, "Hebben jullie thuis wel eens zelf pizza gemaakt?").
next(lievelingseten_vervolg_pizza, s10, "answer_yes", s11pizza_wel_gemaakt1).
next(lievelingseten_vervolg_pizza, s10, "answer_no", s11pizza_niet_gemaakt1).
next(lievelingseten_vervolg_pizza, s10, "answer_dontknow", s11pizza_niet_gemaakt1).
next(lievelingseten_vervolg_pizza, s10, "fail", s11pizza_eerste_fail1).

move(lievelingseten_vervolg_pizza, s11pizza_wel_gemaakt1, question).
moveConfig(lievelingseten_vervolg_pizza, s11pizza_wel_gemaakt1, [type=yesno, context='answer_yesno']).
text(lievelingseten_vervolg_pizza, s11pizza_wel_gemaakt1, "Cool! En was je pizza goed gelukt?").
next(lievelingseten_vervolg_pizza, s11pizza_wel_gemaakt1, "answer_yes", s11pizza_wel_gelukt1).
next(lievelingseten_vervolg_pizza, s11pizza_wel_gemaakt1, "answer_no", s11pizza_niet_gelukt1).
next(lievelingseten_vervolg_pizza, s11pizza_wel_gemaakt1, "answer_dontknow", s11pizza_niet_gelukt1).

move(lievelingseten_vervolg_pizza, s11pizza_wel_gelukt1, say).
text(lievelingseten_vervolg_pizza, s11pizza_wel_gelukt1, "Wat goed! Bij mij ging het een beetje mis.").
next(lievelingseten_vervolg_pizza, s11pizza_wel_gelukt1, "true", s12).

move(lievelingseten_vervolg_pizza, s11pizza_niet_gelukt1, say).
text(lievelingseten_vervolg_pizza, s11pizza_niet_gelukt1, "O jee! Nou, bij mij ging het ook niet helemaal goed!").
next(lievelingseten_vervolg_pizza, s11pizza_niet_gelukt1, "true", s12).

move(lievelingseten_vervolg_pizza, s11pizza_eerste_fail1, say).
text(lievelingseten_vervolg_pizza, s11pizza_eerste_fail1, "Bij mij ging het gisteren een beetje mis.").
next(lievelingseten_vervolg_pizza, s11pizza_eerste_fail1, "true", s12).

move(lievelingseten_vervolg_pizza, s11pizza_niet_gemaakt1, say).
text(lievelingseten_vervolg_pizza, s11pizza_niet_gemaakt1, "Ik had het dus ook nog nooit gedaan!").
next(lievelingseten_vervolg_pizza, s11pizza_niet_gemaakt1, "true", s11pizza_niet_gemaakt2).

move(lievelingseten_vervolg_pizza, s11pizza_niet_gemaakt2, say).
text(lievelingseten_vervolg_pizza, s11pizza_niet_gemaakt2, "Daardoor ging het een beetje mis.").
next(lievelingseten_vervolg_pizza, s11pizza_niet_gemaakt2, "true", s12).

move(lievelingseten_vervolg_pizza, s12, question).
moveConfig(lievelingseten_vervolg_pizza, s12, [type=yesno, context='answer_yesno', umVariable=herinnert_ggg]).
text(lievelingseten_vervolg_pizza, s12, "Weet je nog dat we het over onze geluksgetallen hadden?").
next(lievelingseten_vervolg_pizza, s12, "answer_yes", s13herinnert_ggg_wel1).
next(lievelingseten_vervolg_pizza, s12, "answer_no", s13herinnert_ggg_niet1).
next(lievelingseten_vervolg_pizza, s12, "answer_dontknow", s13herinnert_ggg_niet1).
next(lievelingseten_vervolg_pizza, s12, "fail", s13herinnert_ggg_niet1).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_wel1, continuator).
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_wel1, [[umVariable=heeft_geluksgetal, filter=green, values=["answer_yes"]]], s13herinnert_ggg_met_ggg1).
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_wel1, "true", s13herinnert_ggg_zonder_ggg1).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_zonder_ggg1, say).
text(lievelingseten_vervolg_pizza, s13herinnert_ggg_zonder_ggg1, "Wat leuk dat je dat nog weet!").
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_zonder_ggg1, "true", s13herinnert_ggg_zonder_ggg2).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_zonder_ggg2, say).
text(lievelingseten_vervolg_pizza, s13herinnert_ggg_zonder_ggg2, "Ik weet nog dat jij geen geluksgetal hebt.").
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_zonder_ggg2, "true", s14).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_met_ggg1, say).
text(lievelingseten_vervolg_pizza, s13herinnert_ggg_met_ggg1, "Ik ook!").
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_met_ggg1, "true", s13herinnert_ggg_met_ggg2).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_met_ggg2, say).
text(lievelingseten_vervolg_pizza, s13herinnert_ggg_met_ggg2, "Jouw geluksgetal is %robot_rugnummer%!").
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_met_ggg2, "true", s14).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet1, continuator).
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet1, [[umVariable=heeft_geluksgetal, filter=green, values=["answer_yes"]]], s13herinnert_ggg_niet_met_ggg1).
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet1, "true", s13herinnert_ggg_niet_zonder_ggg1).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_met_ggg1, say).
text(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_met_ggg1, "Dat is ook al wel een tijdje geleden.").
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_met_ggg1, "true", s13herinnert_ggg_niet_met_ggg2).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_met_ggg2, say).
text(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_met_ggg2, "Maar ik heb in mijn Hero geheugen opgeslagen dat %robot_rugnummer% jouw geluksgetal is!").
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_met_ggg2, "true", s14).

move(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_zonder_ggg1, say).
text(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_zonder_ggg1, "Dat vind ik logisch, want jij hebt geen geluksgetal.").
next(lievelingseten_vervolg_pizza, s13herinnert_ggg_niet_zonder_ggg1, "true", s14).

move(lievelingseten_vervolg_pizza, s14, say).
text(lievelingseten_vervolg_pizza, s14, "Mijn geluksgetallen zijn 0 en 1, weet je nog?").
next(lievelingseten_vervolg_pizza, s14, "true", s15).

move(lievelingseten_vervolg_pizza, s15, say).
text(lievelingseten_vervolg_pizza, s15, "Soms kom ik zomaar ineens een 0 of 1 tegen in een mensending.").
next(lievelingseten_vervolg_pizza, s15, "true", s16).

move(lievelingseten_vervolg_pizza, s16, say).
text(lievelingseten_vervolg_pizza, s16, "Daar word ik zo bizar blij van, dat mijn robobrein op hol slaat!").
next(lievelingseten_vervolg_pizza, s16, "true", s17).

move(lievelingseten_vervolg_pizza, s17, say).
text(lievelingseten_vervolg_pizza, s17, "Als dat gebeurt, lees ik de 0 of 1 soms per ongeluk dubbel.").
next(lievelingseten_vervolg_pizza, s17, "true", s18).

move(lievelingseten_vervolg_pizza, s18, say).
text(lievelingseten_vervolg_pizza, s18, "In het pizzarecept stond: zet de oven op tweehonderdtwintig graden.").
next(lievelingseten_vervolg_pizza, s18, "true", s19).

move(lievelingseten_vervolg_pizza, s19, say).
text(lievelingseten_vervolg_pizza, s19, "Twee keer twee en een nul.").
next(lievelingseten_vervolg_pizza, s19, "true", s20).

move(lievelingseten_vervolg_pizza, s20, say).
text(lievelingseten_vervolg_pizza, s20, "Een nul, hoera! Hoera, een nul!").
next(lievelingseten_vervolg_pizza, s20, "true", s21).

move(lievelingseten_vervolg_pizza, s21, say).
text(lievelingseten_vervolg_pizza, s21, "Dat gaf mijn robobrein door aan mijn robotarm.").
next(lievelingseten_vervolg_pizza, s21, "true", s22).

move(lievelingseten_vervolg_pizza, s22, say).
text(lievelingseten_vervolg_pizza, s22, "Je hoort het vast al: twee keer een twee en twee keer een nul.").
next(lievelingseten_vervolg_pizza, s22, "true", s23).

move(lievelingseten_vervolg_pizza, s23, say).
text(lievelingseten_vervolg_pizza, s23, "Ik zette de oven op tweeduizend tweehonderd graden!").
next(lievelingseten_vervolg_pizza, s23, "true", s24).

move(lievelingseten_vervolg_pizza, s24, say).
text(lievelingseten_vervolg_pizza, s24, "Bizar mega heet!").
next(lievelingseten_vervolg_pizza, s24, "true", s25).

move(lievelingseten_vervolg_pizza, s25, say).
text(lievelingseten_vervolg_pizza, s25, "Maar ja, wist ik veel, ik had nog nooit pizza gemaakt!").
next(lievelingseten_vervolg_pizza, s25, "true", s26).

move(lievelingseten_vervolg_pizza, s26, say).
text(lievelingseten_vervolg_pizza, s26, "Nu nog steeds niet trouwens.").
next(lievelingseten_vervolg_pizza, s26, "true", s27).

move(lievelingseten_vervolg_pizza, s27, say).
text(lievelingseten_vervolg_pizza, s27, "Er was natuurlijk geen pizza meer over toen ik de oven open deed!").
next(lievelingseten_vervolg_pizza, s27, "true", s28).

move(lievelingseten_vervolg_pizza, s28, say).
text(lievelingseten_vervolg_pizza, s28, "Alleen maar een helemaal zwart, keihard rondje!").
next(lievelingseten_vervolg_pizza, s28, "true", s29).

move(lievelingseten_vervolg_pizza, s29, say).
text(lievelingseten_vervolg_pizza, s29, "Zo'n foutje zou niet zo handig zijn op de Robo spelen!").
next(lievelingseten_vervolg_pizza, s29, "true", s30).

move(lievelingseten_vervolg_pizza, s30, say).
text(lievelingseten_vervolg_pizza, s30, "Zullen we weer verder trainen?").

%% lievelingseten_vervolg_pasta %%
minidialog(lievelingseten_vervolg_pasta, [type=chitchat, theme=lievelings, topic=eten]).
dependencies(lievelingseten_vervolg_pasta, [[[lievelingseten, user_model, 0], [umVariable=lievelingseten_met_p, filter=green, values=["pasta"]]]]).

move(lievelingseten_vervolg_pasta, s1, say).
start_interaction_probe(lievelingseten_vervolg_pasta, s1).
next(lievelingseten_vervolg_pasta, s1, "true", s2).

move(lievelingseten_vervolg_pasta, s2, say).
text(lievelingseten_vervolg_pasta, s2, "hee %first_name% ").
next(lievelingseten_vervolg_pasta, s2, "true", s3).

move(lievelingseten_vervolg_pasta, s3, say).
text(lievelingseten_vervolg_pasta, s3, "Gisteren dacht ik aan jou.").
next(lievelingseten_vervolg_pasta, s3, "true", s4).

move(lievelingseten_vervolg_pasta, s4, say).
text(lievelingseten_vervolg_pasta, s4, "En dat we het vorige week over je lievelings eten met een p gehad hebben!").
next(lievelingseten_vervolg_pasta, s4, "true", s5).

move(lievelingseten_vervolg_pasta, s5, say).
text(lievelingseten_vervolg_pasta, s5, "Ik heb opgeslagen dat jouw lievelings eten %lievelingseten_met_p% is!").
next(lievelingseten_vervolg_pasta, s5, "true", s6).

move(lievelingseten_vervolg_pasta, s6, say).
text(lievelingseten_vervolg_pasta, s6, "Gisteren heb ik voor het eerst zelf pasta geprobeerd te maken.").
next(lievelingseten_vervolg_pasta, s6, "true", s7).

move(lievelingseten_vervolg_pasta, s7, say).
text(lievelingseten_vervolg_pasta, s7, "Dat lijkt me handig om te leren!").
next(lievelingseten_vervolg_pasta, s7, "true", s8).

move(lievelingseten_vervolg_pasta, s8, say).
text(lievelingseten_vervolg_pasta, s8, "Daarmee kan ik jou en heel veel andere mensen heel blij maken!").
next(lievelingseten_vervolg_pasta, s8, "true", s9).

move(lievelingseten_vervolg_pasta, s9, say).
stop_interaction_probe(lievelingseten_vervolg_pasta, s9).
next(lievelingseten_vervolg_pasta, s9, "true", s10).

move(lievelingseten_vervolg_pasta, s10, question).
moveConfig(lievelingseten_vervolg_pasta, s10, [type=yesno, context='answer_yesno', umVariable=lievelingseten_met_p_gemaakt]).
text(lievelingseten_vervolg_pasta, s10, "Heb jij wel eens zelf pasta gemaakt?").
next(lievelingseten_vervolg_pasta, s10, "answer_yes", s11pasta_wel_gemaakt1).
next(lievelingseten_vervolg_pasta, s10, "answer_no", s11pasta_niet_gemaakt1).
next(lievelingseten_vervolg_pasta, s10, "answer_dontknow", s11pasta_niet_gemaakt1).
next(lievelingseten_vervolg_pasta, s10, "fail", s11pasta_niet_gemaakt1).

move(lievelingseten_vervolg_pasta, s11pasta_wel_gemaakt1, say).
text(lievelingseten_vervolg_pasta, s11pasta_wel_gemaakt1, "Cool! Dan kun je vast wel raden wat er bij mij mis is gegaan.").
next(lievelingseten_vervolg_pasta, s11pasta_wel_gemaakt1, "true", s12).

move(lievelingseten_vervolg_pasta, s11pasta_niet_gemaakt1, say).
text(lievelingseten_vervolg_pasta, s11pasta_niet_gemaakt1, "Je kunt vast wel raden wat er bij mis is gegaan.").
next(lievelingseten_vervolg_pasta, s11pasta_niet_gemaakt1, "true", s12).

move(lievelingseten_vervolg_pasta, s12, say).
text(lievelingseten_vervolg_pasta, s12, "Ik had een pak spaghetti klaargezet.").
next(lievelingseten_vervolg_pasta, s12, "true", s13).

move(lievelingseten_vervolg_pasta, s13, say).
text(lievelingseten_vervolg_pasta, s13, "Ik had wel zin in pasta carbonara.").
next(lievelingseten_vervolg_pasta, s13, "true", s14).

move(lievelingseten_vervolg_pasta, s14, say).
text(lievelingseten_vervolg_pasta, s14, "Maar in de eerste stap van het recept stond").
next(lievelingseten_vervolg_pasta, s14, "true", s15).

move(lievelingseten_vervolg_pasta, s15, say).
text(lievelingseten_vervolg_pasta, s15, "Zet een pan op het vuur en smelt daarin de chocola.").
next(lievelingseten_vervolg_pasta, s15, "true", s16).

move(lievelingseten_vervolg_pasta, s16, say).
text(lievelingseten_vervolg_pasta, s16, "Dat vond ik wel een beetje vreemd, maar ja, het recept zei het!").
next(lievelingseten_vervolg_pasta, s16, "true", s17).

move(lievelingseten_vervolg_pasta, s17, say).
text(lievelingseten_vervolg_pasta, s17, "Maar toen alles klaar was, had ik niks meer aan de spaghetti.").
next(lievelingseten_vervolg_pasta, s17, "true", s18).

move(lievelingseten_vervolg_pasta, s18, question).
moveConfig(lievelingseten_vervolg_pasta, s18, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(lievelingseten_vervolg_pasta, s18, "Want voor wat voor soort pasta denk je dat het recept was?").
next(lievelingseten_vervolg_pasta, s18, "success", s19).
next(lievelingseten_vervolg_pasta, s18, "fail", s19).

move(lievelingseten_vervolg_pasta, s19, say).
text(lievelingseten_vervolg_pasta, s19, "Het was een recept voor chocoladepasta!").
next(lievelingseten_vervolg_pasta, s19, "true", s20).

move(lievelingseten_vervolg_pasta, s20, say).
text(lievelingseten_vervolg_pasta, s20, "Bizar").
next(lievelingseten_vervolg_pasta, s20, "true", s21).

move(lievelingseten_vervolg_pasta, s21, say).
text(lievelingseten_vervolg_pasta, s21, "Zo'n foutje zou niet zo handig zijn op de Robo spelen!").
next(lievelingseten_vervolg_pasta, s21, "true", s22).

move(lievelingseten_vervolg_pasta, s22, say).
text(lievelingseten_vervolg_pasta, s22, "Zullen we weer verder trainen?").

%% lievelingseten_vervolg_pannenkoeken %%
minidialog(lievelingseten_vervolg_pannenkoeken, [type=chitchat, theme=lievelings, topic=eten]).
dependencies(lievelingseten_vervolg_pannenkoeken, [[[lievelingseten, user_model, 0], [umVariable=lievelingseten_met_p, filter=green, values=["pannenkoeken"]]]]).

move(lievelingseten_vervolg_pannenkoeken, s1, say).
start_interaction_probe(lievelingseten_vervolg_pannenkoeken, s1).
next(lievelingseten_vervolg_pannenkoeken, s1, "true", s2).

move(lievelingseten_vervolg_pannenkoeken, s2, say).
text(lievelingseten_vervolg_pannenkoeken, s2, "hee %first_name% ").
next(lievelingseten_vervolg_pannenkoeken, s2, "true", s3).

move(lievelingseten_vervolg_pannenkoeken, s3, say).
text(lievelingseten_vervolg_pannenkoeken, s3, "Gisteren dacht ik aan jou.").
next(lievelingseten_vervolg_pannenkoeken, s3, "true", s4).

move(lievelingseten_vervolg_pannenkoeken, s4, say).
text(lievelingseten_vervolg_pannenkoeken, s4, "En dat we het vorige week over je lievelings eten met een p gehad hebben!").
next(lievelingseten_vervolg_pannenkoeken, s4, "true", s5).

move(lievelingseten_vervolg_pannenkoeken, s5, say).
text(lievelingseten_vervolg_pannenkoeken, s5, "Ik heb opgeslagen dat jouw lievelings eten %lievelingseten_met_p% is!").
next(lievelingseten_vervolg_pannenkoeken, s5, "true", s6).

move(lievelingseten_vervolg_pannenkoeken, s6, say).
text(lievelingseten_vervolg_pannenkoeken, s6, "Gisteren heb geprobeerd pannenkoeken te bakken.").
next(lievelingseten_vervolg_pannenkoeken, s6, "true", s7).

move(lievelingseten_vervolg_pannenkoeken, s7, say).
text(lievelingseten_vervolg_pannenkoeken, s7, "Dat lijkt me handig om te leren!").
next(lievelingseten_vervolg_pannenkoeken, s7, "true", s8).

move(lievelingseten_vervolg_pannenkoeken, s8, say).
text(lievelingseten_vervolg_pannenkoeken, s8, "Daarmee kan ik jou en heel veel andere mensen heel blij maken!").
next(lievelingseten_vervolg_pannenkoeken, s8, "true", s9).

move(lievelingseten_vervolg_pannenkoeken, s9, say).
stop_interaction_probe(lievelingseten_vervolg_pannenkoeken, s9).
next(lievelingseten_vervolg_pannenkoeken, s9, "true", s10).

move(lievelingseten_vervolg_pannenkoeken, s10, question).
moveConfig(lievelingseten_vervolg_pannenkoeken, s10, [type=yesno, context='answer_yesno', umVariable=lievelingseten_met_p_gemaakt]).
text(lievelingseten_vervolg_pannenkoeken, s10, "Heb jij wel eens zelf pannenkoeken gebakken?").
next(lievelingseten_vervolg_pannenkoeken, s10, "answer_yes", s11pannenkoeken_wel_gemaakt1).
next(lievelingseten_vervolg_pannenkoeken, s10, "answer_no", s11pannenkoeken_niet_gemaakt1).
next(lievelingseten_vervolg_pannenkoeken, s10, "answer_dontknow", s11pannenkoeken_niet_gemaakt1).
next(lievelingseten_vervolg_pannenkoeken, s10, "fail", s11pannenkoeken_niet_gemaakt1).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt1, question).
moveConfig(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt1, "Cool! En hoe draaien jullie bij jou thuis de pannenkoeken om, met een spatel, of door ze in de lucht te gooien?").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt1, "success", s11pannenkoeken_wel_gemaakt2).
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt1, "fail", s11pannenkoeken_wel_gemaakt2).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt2, say).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt2, "Oh tof! Ik heb gisteren de pannenkoeken proberen te draaien door ze in de lucht te gooien").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt2, "true", s11pannenkoeken_wel_gemaakt3).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt3, say).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt3, "Maar bij mij ging het een beetje mis.").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt3, "true", s11pannenkoeken_wel_gemaakt4).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt4, say).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt4, "Ik wist niet hoe hard ik de pannenkoek omhoog moest gooien. ").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_wel_gemaakt4, "true", s12).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt1, say).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt1, "Nou, ik zal je vertellen wat er bij mij niet helemaal goed ging.").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt1, "true", s11pannenkoeken_niet_gemaakt2).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt2, say).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt2, "Dan lukt het jou vast in één keer!").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt2, "true", s11pannenkoeken_niet_gemaakt3).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt3, say).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt3, "Op YouTube had ik gezien dat pannenkoekenbakkers een pannenkoek soms in de lucht omdraaien! ").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt3, "true", s11pannenkoeken_niet_gemaakt4).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt4, say).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt4, "Dat wilde ik ook doen.").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt4, "true", s11pannenkoeken_niet_gemaakt5).

move(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt5, say).
text(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt5, "Maar ik wist niet hoe hard ik de pannenkoek omhoog moest gooien.").
next(lievelingseten_vervolg_pannenkoeken, s11pannenkoeken_niet_gemaakt5, "true", s12).

move(lievelingseten_vervolg_pannenkoeken, s12, say).
text(lievelingseten_vervolg_pannenkoeken, s12, "Dus deed ik dat een beetje te hard, en daardoor vloog de pannenkoek heel hoog.").
next(lievelingseten_vervolg_pannenkoeken, s12, "true", s13).

move(lievelingseten_vervolg_pannenkoeken, s13, say).
text(lievelingseten_vervolg_pannenkoeken, s13, "Zo hoog, dat hij tegen het plafond vloog.").
next(lievelingseten_vervolg_pannenkoeken, s13, "true", s14).

move(lievelingseten_vervolg_pannenkoeken, s14, say).
text(lievelingseten_vervolg_pannenkoeken, s14, "En toen bleef hij daar plakken.").
next(lievelingseten_vervolg_pannenkoeken, s14, "true", s15).

move(lievelingseten_vervolg_pannenkoeken, s15, say).
text(lievelingseten_vervolg_pannenkoeken, s15, "Wat denk je dat er toen gebeurde?").
next(lievelingseten_vervolg_pannenkoeken, s15, "true", s16).

move(lievelingseten_vervolg_pannenkoeken, s16, say).
text(lievelingseten_vervolg_pannenkoeken, s16, "Ineens, flats!").
next(lievelingseten_vervolg_pannenkoeken, s16, "true", s17).

move(lievelingseten_vervolg_pannenkoeken, s17, say).
text(lievelingseten_vervolg_pannenkoeken, s17, "Viel de pannenkoek ondersteboven op mijn hoofd!").
next(lievelingseten_vervolg_pannenkoeken, s17, "true", s18).

move(lievelingseten_vervolg_pannenkoeken, s18, say).
text(lievelingseten_vervolg_pannenkoeken, s18, "Ik zat helemaal onder het beslag!").
next(lievelingseten_vervolg_pannenkoeken, s18, "true", s19).

move(lievelingseten_vervolg_pannenkoeken, s19, say).
text(lievelingseten_vervolg_pannenkoeken, s19, "Bizar").
next(lievelingseten_vervolg_pannenkoeken, s19, "true", s20).

move(lievelingseten_vervolg_pannenkoeken, s20, say).
text(lievelingseten_vervolg_pannenkoeken, s20, "Zo'n foutje zou niet zo handig zijn op de Robo spelen!").
next(lievelingseten_vervolg_pannenkoeken, s20, "true", s21).

move(lievelingseten_vervolg_pannenkoeken, s21, say).
text(lievelingseten_vervolg_pannenkoeken, s21, "Zullen we weer verder trainen?").

%% lievelingseten_vervolg_poffertjes %%
minidialog(lievelingseten_vervolg_poffertjes, [type=chitchat, theme=lievelings, topic=eten]).
dependencies(lievelingseten_vervolg_poffertjes, [[[lievelingseten, user_model, 0], [umVariable=lievelingseten_met_p, filter=green, values=["poffertjes"]]]]).

move(lievelingseten_vervolg_poffertjes, s1, say).
start_interaction_probe(lievelingseten_vervolg_poffertjes, s1).
next(lievelingseten_vervolg_poffertjes, s1, "true", s2).

move(lievelingseten_vervolg_poffertjes, s2, say).
text(lievelingseten_vervolg_poffertjes, s2, "hee %first_name% ").
next(lievelingseten_vervolg_poffertjes, s2, "true", s3).

move(lievelingseten_vervolg_poffertjes, s3, say).
text(lievelingseten_vervolg_poffertjes, s3, "Gisteren dacht ik aan jou.").
next(lievelingseten_vervolg_poffertjes, s3, "true", s4).

move(lievelingseten_vervolg_poffertjes, s4, say).
text(lievelingseten_vervolg_poffertjes, s4, "En dat we het vorige week over je lievelings eten met een p gehad hebben!").
next(lievelingseten_vervolg_poffertjes, s4, "true", s5).

move(lievelingseten_vervolg_poffertjes, s5, say).
text(lievelingseten_vervolg_poffertjes, s5, "Ik heb opgeslagen dat jouw lievelings eten %lievelingseten_met_p% is!").
next(lievelingseten_vervolg_poffertjes, s5, "true", s6).

move(lievelingseten_vervolg_poffertjes, s6, say).
text(lievelingseten_vervolg_poffertjes, s6, "Gisteren heb geprobeerd poffertjes te bakken.").
next(lievelingseten_vervolg_poffertjes, s6, "true", s7).

move(lievelingseten_vervolg_poffertjes, s7, say).
text(lievelingseten_vervolg_poffertjes, s7, "Dat lijkt me handig om te leren!").
next(lievelingseten_vervolg_poffertjes, s7, "true", s8).

move(lievelingseten_vervolg_poffertjes, s8, say).
text(lievelingseten_vervolg_poffertjes, s8, "Want daarmee kan ik jou en heel veel andere mensen heel blij maken!").
next(lievelingseten_vervolg_poffertjes, s8, "true", s9).

move(lievelingseten_vervolg_poffertjes, s9, say).
stop_interaction_probe(lievelingseten_vervolg_poffertjes, s9).
next(lievelingseten_vervolg_poffertjes, s9, "true", s10).

move(lievelingseten_vervolg_poffertjes, s10, question).
moveConfig(lievelingseten_vervolg_poffertjes, s10, [type=yesno, context='answer_yesno', umVariable=lievelingseten_met_p_gemaakt]).
text(lievelingseten_vervolg_poffertjes, s10, "Hebben jullie thuis wel eens zelf poffertjes gebakken?").
next(lievelingseten_vervolg_poffertjes, s10, "answer_yes", s11poffertjes_wel_gemaakt1).
next(lievelingseten_vervolg_poffertjes, s10, "answer_no", s11poffertjes_niet_gemaakt1).
next(lievelingseten_vervolg_poffertjes, s10, "answer_dontknow", s11poffertjes_niet_gemaakt1).
next(lievelingseten_vervolg_poffertjes, s10, "fail", s11poffertjes_niet_gemaakt1).

move(lievelingseten_vervolg_poffertjes, s11poffertjes_wel_gemaakt1, question).
moveConfig(lievelingseten_vervolg_poffertjes, s11poffertjes_wel_gemaakt1, [type=yesno, context='answer_yesno', umVariable=poffertjesEersteKeerGoed]).
text(lievelingseten_vervolg_poffertjes, s11poffertjes_wel_gemaakt1, "En ging dat meteen de eerste keer goed?").
next(lievelingseten_vervolg_poffertjes, s11poffertjes_wel_gemaakt1, "fail", s11poffertjesWelFail1).
next(lievelingseten_vervolg_poffertjes, s11poffertjes_wel_gemaakt1, "answer_dontknow", s11poffertjesWelFail1).
next(lievelingseten_vervolg_poffertjes, s11poffertjes_wel_gemaakt1, "answer_yes", s11poffertjesWelJa1).
next(lievelingseten_vervolg_poffertjes, s11poffertjes_wel_gemaakt1, "answer_no", s11poffertjesWelNee1).

move(lievelingseten_vervolg_poffertjes, s11poffertjesWelFail1, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjesWelFail1, "Bij mij ging het best goed, tot ik de poffertjes om moest draaien.").
next(lievelingseten_vervolg_poffertjes, s11poffertjesWelFail1, "true", s12).

move(lievelingseten_vervolg_poffertjes, s11poffertjesWelJa1, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjesWelJa1, "Wow, wat knap! ").
next(lievelingseten_vervolg_poffertjes, s11poffertjesWelJa1, "true", s11poffertjesWelJa2).

move(lievelingseten_vervolg_poffertjes, s11poffertjesWelJa2, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjesWelJa2, "Bij mij ging het ook best goed, tot ik de poffertjes om moest draaien.").
next(lievelingseten_vervolg_poffertjes, s11poffertjesWelJa2, "true", s12).

move(lievelingseten_vervolg_poffertjes, s11poffertjesWelNee1, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjesWelNee1, "Ik ook niet!").
next(lievelingseten_vervolg_poffertjes, s11poffertjesWelNee1, "true", s11poffertjesWelNee2).

move(lievelingseten_vervolg_poffertjes, s11poffertjesWelNee2, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjesWelNee2, "Het ging best goed tot ik de poffertjes om moest draaien.").
next(lievelingseten_vervolg_poffertjes, s11poffertjesWelNee2, "true", s12).

move(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt1, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt1, "Het is heel leuk om te doen! ").
next(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt1, "true", s11poffertjes_niet_gemaakt2).

move(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt2, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt2, "Je maakt eerst beslag.").
next(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt2, "true", s11poffertjes_niet_gemaakt3).

move(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt3, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt3, "Daarna verdeel je dat over alle holtes in de poffertjespan!").
next(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt3, "true", s11poffertjes_niet_gemaakt4).

move(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt4, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt4, "Bij mij ging dat heel goed.").
next(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt4, "true", s11poffertjes_niet_gemaakt5).

move(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt5, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt5, "Maar toen moest ik de poffertjes omdraaien.").
next(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt5, "true", s11poffertjes_niet_gemaakt6).

move(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt6, say).
text(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt6, "Eigenlijk moet dat poffertje voor poffertje, met een vork.").
next(lievelingseten_vervolg_poffertjes, s11poffertjes_niet_gemaakt6, "true", s12).

move(lievelingseten_vervolg_poffertjes, s12, say).
text(lievelingseten_vervolg_poffertjes, s12, "Maar ik haalde pannenkoeken en poffertjes door elkaar.").
next(lievelingseten_vervolg_poffertjes, s12, "true", s13).

move(lievelingseten_vervolg_poffertjes, s13, say).
text(lievelingseten_vervolg_poffertjes, s13, "Ik dacht, ik gooi ze de lucht in!").
next(lievelingseten_vervolg_poffertjes, s13, "true", s14).

move(lievelingseten_vervolg_poffertjes, s14, say).
text(lievelingseten_vervolg_poffertjes, s14, "Dan vang ik ze omgedraaid weer op!").
next(lievelingseten_vervolg_poffertjes, s14, "true", s15).

move(lievelingseten_vervolg_poffertjes, s15, say).
text(lievelingseten_vervolg_poffertjes, s15, "Bij een pannenkoek kan dat heel goed.").
next(lievelingseten_vervolg_poffertjes, s15, "true", s16).

move(lievelingseten_vervolg_poffertjes, s16, say).
text(lievelingseten_vervolg_poffertjes, s16, "Maar een pannenkoek zit in zijn eentje in een pan.").
next(lievelingseten_vervolg_poffertjes, s16, "true", s17).

move(lievelingseten_vervolg_poffertjes, s17, say).
text(lievelingseten_vervolg_poffertjes, s17, "Poffertjes zijn met zoveel tegelijk!").
next(lievelingseten_vervolg_poffertjes, s17, "true", s18).

move(lievelingseten_vervolg_poffertjes, s18, say).
text(lievelingseten_vervolg_poffertjes, s18, "Dus vielen ze bijna allemaal op de grond.").
next(lievelingseten_vervolg_poffertjes, s18, "true", s19).

move(lievelingseten_vervolg_poffertjes, s19, say).
text(lievelingseten_vervolg_poffertjes, s19, "Bizar").
next(lievelingseten_vervolg_poffertjes, s19, "true", s20).

move(lievelingseten_vervolg_poffertjes, s20, say).
text(lievelingseten_vervolg_poffertjes, s20, "Zo'n foutje zou niet zo handig zijn op de Robo spelen!").
next(lievelingseten_vervolg_poffertjes, s20, "true", s21).

move(lievelingseten_vervolg_poffertjes, s21, say).
text(lievelingseten_vervolg_poffertjes, s21, "Zullen we weer verder trainen?").

%% lievelingseten_vervolg_patat %%
minidialog(lievelingseten_vervolg_patat, [type=chitchat, theme=lievelings, topic=eten]).
dependencies(lievelingseten_vervolg_patat, [[[lievelingseten, user_model, 0], [umVariable=lievelingseten_met_p, filter=green, values=["patat"]]]]).

move(lievelingseten_vervolg_patat, s1, say).
start_interaction_probe(lievelingseten_vervolg_patat, s1).
next(lievelingseten_vervolg_patat, s1, "true", s2).

move(lievelingseten_vervolg_patat, s2, say).
text(lievelingseten_vervolg_patat, s2, "hee %first_name% ").
next(lievelingseten_vervolg_patat, s2, "true", s3).

move(lievelingseten_vervolg_patat, s3, say).
text(lievelingseten_vervolg_patat, s3, "Gisteren dacht ik aan jou.").
next(lievelingseten_vervolg_patat, s3, "true", s4).

move(lievelingseten_vervolg_patat, s4, say).
text(lievelingseten_vervolg_patat, s4, "En dat we het vorige week over je lievelings eten met een p gehad hebben!").
next(lievelingseten_vervolg_patat, s4, "true", s5).

move(lievelingseten_vervolg_patat, s5, say).
text(lievelingseten_vervolg_patat, s5, "Ik heb opgeslagen dat jouw lievelings eten %lievelingseten_met_p% is!").
next(lievelingseten_vervolg_patat, s5, "true", s6).

move(lievelingseten_vervolg_patat, s6, say).
text(lievelingseten_vervolg_patat, s6, "Gisteren heb ik geprobeerd om van een berg aardappels zelf patat te maken.").
next(lievelingseten_vervolg_patat, s6, "true", s7).

move(lievelingseten_vervolg_patat, s7, say).
text(lievelingseten_vervolg_patat, s7, "Dat lijkt me handig om te leren!").
next(lievelingseten_vervolg_patat, s7, "true", s8).

move(lievelingseten_vervolg_patat, s8, say).
text(lievelingseten_vervolg_patat, s8, "Daarmee kan ik jou en heel veel andere mensen heel blij maken!").
next(lievelingseten_vervolg_patat, s8, "true", s9).

move(lievelingseten_vervolg_patat, s9, say).
stop_interaction_probe(lievelingseten_vervolg_patat, s9).
next(lievelingseten_vervolg_patat, s9, "true", s10).

move(lievelingseten_vervolg_patat, s10, question).
moveConfig(lievelingseten_vervolg_patat, s10, [type=yesno, context='answer_yesno', umVariable=lievelingseten_met_p_gemaakt]).
text(lievelingseten_vervolg_patat, s10, "Maken jullie thuis wel eens patat").
next(lievelingseten_vervolg_patat, s10, "answer_yes", s11patat_wel_gemaakt1).
next(lievelingseten_vervolg_patat, s10, "answer_no", s11patat_niet_gemaakt1).
next(lievelingseten_vervolg_patat, s10, "answer_dontknow", s11patat_fail_gemaakt1).
next(lievelingseten_vervolg_patat, s10, "fail", s11patat_fail_gemaakt1).

move(lievelingseten_vervolg_patat, s11patat_wel_gemaakt1, say).
text(lievelingseten_vervolg_patat, s11patat_wel_gemaakt1, "Cool!").
next(lievelingseten_vervolg_patat, s11patat_wel_gemaakt1, "true", s12).

move(lievelingseten_vervolg_patat, s11patat_fail_gemaakt1, say).
text(lievelingseten_vervolg_patat, s11patat_fail_gemaakt1, "Ik niet!").
next(lievelingseten_vervolg_patat, s11patat_fail_gemaakt1, "true", s12).

move(lievelingseten_vervolg_patat, s11patat_niet_gemaakt1, say).
text(lievelingseten_vervolg_patat, s11patat_niet_gemaakt1, "Ik ook niet!").
next(lievelingseten_vervolg_patat, s11patat_niet_gemaakt1, "true", s12).

move(lievelingseten_vervolg_patat, s12, say).
text(lievelingseten_vervolg_patat, s12, "Via mijn draadje heb ik daarom voor ik begon tips gevraagd aan Piet.").
next(lievelingseten_vervolg_patat, s12, "true", s13).

move(lievelingseten_vervolg_patat, s13, say).
text(lievelingseten_vervolg_patat, s13, "Piet is een patat snij robot.").
next(lievelingseten_vervolg_patat, s13, "true", s14).

move(lievelingseten_vervolg_patat, s14, say).
text(lievelingseten_vervolg_patat, s14, "Hij werkt in een grote patatfabriek.").
next(lievelingseten_vervolg_patat, s14, "true", s15).

move(lievelingseten_vervolg_patat, s15, say).
text(lievelingseten_vervolg_patat, s15, "Piet en ik zijn heel goede robotvrienden!").
next(lievelingseten_vervolg_patat, s15, "true", s16).

move(lievelingseten_vervolg_patat, s16, say).
text(lievelingseten_vervolg_patat, s16, "Hij heeft me goed geholpen.").
next(lievelingseten_vervolg_patat, s16, "true", s17).

move(lievelingseten_vervolg_patat, s17, say).
text(lievelingseten_vervolg_patat, s17, "Toch ging er iets niet helemaal goed.").
next(lievelingseten_vervolg_patat, s17, "true", s18).

move(lievelingseten_vervolg_patat, s18, question).
moveConfig(lievelingseten_vervolg_patat, s18, [type=yesno, context='answer_yesno', umVariable=herinnert_ggg]).
text(lievelingseten_vervolg_patat, s18, "Weet je nog dat we het over onze geluksgetallen hadden?").
next(lievelingseten_vervolg_patat, s18, "answer_yes", s19herinnert_ggg_wel1).
next(lievelingseten_vervolg_patat, s18, "answer_no", s19herinnert_ggg_niet1).
next(lievelingseten_vervolg_patat, s18, "answer_dontknow", s19herinnert_ggg_niet1).
next(lievelingseten_vervolg_patat, s18, "fail", s19herinnert_ggg_niet1).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_wel1, continuator).
next(lievelingseten_vervolg_patat, s19herinnert_ggg_wel1, [[umVariable=heeft_geluksgetal, filter=green, values=["answer_yes"]]], s19herinnert_ggg_met_ggg1).
next(lievelingseten_vervolg_patat, s19herinnert_ggg_wel1, "true", s19herinnert_ggg_zonder_ggg1).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_zonder_ggg1, say).
text(lievelingseten_vervolg_patat, s19herinnert_ggg_zonder_ggg1, "Wat leuk dat je dat nog weet!").
next(lievelingseten_vervolg_patat, s19herinnert_ggg_zonder_ggg1, "true", s19herinnert_ggg_zonder_ggg2).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_zonder_ggg2, say).
text(lievelingseten_vervolg_patat, s19herinnert_ggg_zonder_ggg2, "Ik weet nog dat jij geen geluksgetal hebt.").
next(lievelingseten_vervolg_patat, s19herinnert_ggg_zonder_ggg2, "true", s20).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_met_ggg1, say).
text(lievelingseten_vervolg_patat, s19herinnert_ggg_met_ggg1, "Ik ook!").
next(lievelingseten_vervolg_patat, s19herinnert_ggg_met_ggg1, "true", s19herinnert_ggg_met_ggg2).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_met_ggg2, say).
text(lievelingseten_vervolg_patat, s19herinnert_ggg_met_ggg2, "Jouw geluksgetal is %robot_rugnummer%!").
next(lievelingseten_vervolg_patat, s19herinnert_ggg_met_ggg2, "true", s20).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_niet1, continuator).
next(lievelingseten_vervolg_patat, s19herinnert_ggg_niet1, [[umVariable=heeft_geluksgetal, filter=green, values=["answer_yes"]]], s19herinnert_ggg_niet_met_ggg1).
next(lievelingseten_vervolg_patat, s19herinnert_ggg_niet1, "true", s19herinnert_ggg_niet_zonder_ggg1).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_met_ggg1, say).
text(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_met_ggg1, "Dat is ook al wel een tijdje geleden.").
next(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_met_ggg1, "true", s19herinnert_ggg_niet_met_ggg2).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_met_ggg2, say).
text(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_met_ggg2, "Maar ik heb in mijn Hero geheugen opgeslagen dat %robot_rugnummer% jouw geluksgetal is!").
next(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_met_ggg2, "true", s20).

move(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_zonder_ggg1, say).
text(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_zonder_ggg1, "Dat vind ik logisch, want jij hebt geen geluksgetal.").
next(lievelingseten_vervolg_patat, s19herinnert_ggg_niet_zonder_ggg1, "true", s20).

move(lievelingseten_vervolg_patat, s20, say).
text(lievelingseten_vervolg_patat, s20, "Mijn geluksgetallen zijn 0 en 1, weet je nog?").
next(lievelingseten_vervolg_patat, s20, "true", s21).

move(lievelingseten_vervolg_patat, s21, say).
text(lievelingseten_vervolg_patat, s21, "Piet heeft maar één geluksgetal, en dat is toevallig ook 1.").
next(lievelingseten_vervolg_patat, s21, "true", s22).

move(lievelingseten_vervolg_patat, s22, say).
text(lievelingseten_vervolg_patat, s22, "Hij zei: Hero, patatjes hebben de vorm van ons geluksgetal.").
next(lievelingseten_vervolg_patat, s22, "true", s23).

move(lievelingseten_vervolg_patat, s23, say).
text(lievelingseten_vervolg_patat, s23, "Zet straks maar gewoon je robobrein op oneindig.").
next(lievelingseten_vervolg_patat, s23, "true", s24).

move(lievelingseten_vervolg_patat, s24, say).
text(lievelingseten_vervolg_patat, s24, "Dan hak je al die aardappels supersnel in frietjes!").
next(lievelingseten_vervolg_patat, s24, "true", s25).

move(lievelingseten_vervolg_patat, s25, say).
text(lievelingseten_vervolg_patat, s25, "Ik heb Piets tip opgevolgd.").
next(lievelingseten_vervolg_patat, s25, "true", s26).

move(lievelingseten_vervolg_patat, s26, say).
text(lievelingseten_vervolg_patat, s26, "Maar Piet was vergeten dat ik twee geluksgetallen heb!").
next(lievelingseten_vervolg_patat, s26, "true", s27).

move(lievelingseten_vervolg_patat, s27, say).
text(lievelingseten_vervolg_patat, s27, "En als je getallen op volgorde zet, komt de nul voor de één!").
next(lievelingseten_vervolg_patat, s27, "true", s28).

move(lievelingseten_vervolg_patat, s28, say).
text(lievelingseten_vervolg_patat, s28, "Mijn robobrein op oneindig dacht: ik begin bij het begin!").
next(lievelingseten_vervolg_patat, s28, "true", s29).

move(lievelingseten_vervolg_patat, s29, say).
text(lievelingseten_vervolg_patat, s29, "Ik ga de aardappels in nulletjes snijden.").
next(lievelingseten_vervolg_patat, s29, "true", s30).

move(lievelingseten_vervolg_patat, s30, say).
text(lievelingseten_vervolg_patat, s30, "Pas toen ik ging frituren, zag ik dat ik gebakken aardappels gemaakt had!").
next(lievelingseten_vervolg_patat, s30, "true", s31).

move(lievelingseten_vervolg_patat, s31, say).
text(lievelingseten_vervolg_patat, s31, "Ook heel lekker. ").
next(lievelingseten_vervolg_patat, s31, "true", s32).

move(lievelingseten_vervolg_patat, s32, say).
text(lievelingseten_vervolg_patat, s32, "Maar ja, geen patat!").
next(lievelingseten_vervolg_patat, s32, "true", s33).

move(lievelingseten_vervolg_patat, s33, say).
text(lievelingseten_vervolg_patat, s33, "Bizar").
next(lievelingseten_vervolg_patat, s33, "true", s34).

move(lievelingseten_vervolg_patat, s34, say).
text(lievelingseten_vervolg_patat, s34, "Zo'n foutje zou niet zo handig zijn op de Robo spelen!").
next(lievelingseten_vervolg_patat, s34, "true", s35).

move(lievelingseten_vervolg_patat, s35, say).
text(lievelingseten_vervolg_patat, s35, "Zullen we weer verder trainen?").

