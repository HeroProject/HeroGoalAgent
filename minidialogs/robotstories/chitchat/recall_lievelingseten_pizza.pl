%%%% HEADER %%%%
%% lievelingseten_vervolg_pizza %%
minidialog(lievelingseten_vervolg_pizza, [type=chitchat, theme=lievelings, topic=eten]).
dependencies(lievelingseten_vervolg_pizza, [[[[lievelingseten, user_model, 0], [binaire_getallen, user_model, 0]]]]).

move(lievelingseten_vervolg_pizza, s1, say).
text(lievelingseten_vervolg_pizza, s1, "Gisteren heb ik geprobeerd zelf pizza te maken.").
next(lievelingseten_vervolg_pizza, s1, "true", s2).

move(lievelingseten_vervolg_pizza, s2, say).
text(lievelingseten_vervolg_pizza, s2, "Dat lijkt me handig om te leren!").
next(lievelingseten_vervolg_pizza, s2, "true", s3).

move(lievelingseten_vervolg_pizza, s3, say).
text(lievelingseten_vervolg_pizza, s3, "Daarmee kan ik jou en heel veel andere mensen heel blij maken!").
next(lievelingseten_vervolg_pizza, s3, "true", s4).

move(lievelingseten_vervolg_pizza, s4, question).
moveConfig(lievelingseten_vervolg_pizza, s4, [type=yesno, context='answer_yesno', umVariable=heeft_pizza_gemaakt]).
text(lievelingseten_vervolg_pizza, s4, "Heb jij wel eens zelf pizza gemaakt?").
next(lievelingseten_vervolg_pizza, s4, "ja", s5pizza_wel_gemaakt1).
next(lievelingseten_vervolg_pizza, s4, "nee", s5pizza_niet_gemaakt1).
next(lievelingseten_vervolg_pizza, s4, "answer_dontknow", s5pizza_niet_gemaakt1).
next(lievelingseten_vervolg_pizza, s4, "fail", s5pizza_eerste_fail1).

move(lievelingseten_vervolg_pizza, s5pizza_wel_gemaakt1, question).
moveConfig(lievelingseten_vervolg_pizza, s5pizza_wel_gemaakt1, [type=yesno, context='answer_yesno', umVariable=heeft_pizza_gemaakt_gelukt]).
text(lievelingseten_vervolg_pizza, s5pizza_wel_gemaakt1, "Cool! En was je pizza goed gelukt?").
next(lievelingseten_vervolg_pizza, s5pizza_wel_gemaakt1, "ja", s5pizza_wel_gelukt1).
next(lievelingseten_vervolg_pizza, s5pizza_wel_gemaakt1, "nee", s5pizza_niet_gelukt1).
next(lievelingseten_vervolg_pizza, s5pizza_wel_gemaakt1, "answer_dontknow", s5pizza_niet_gelukt1).

move(lievelingseten_vervolg_pizza, s5pizza_wel_gelukt1, say).
text(lievelingseten_vervolg_pizza, s5pizza_wel_gelukt1, "Wat goed! Bij mij ging het een beetje mis.").
next(lievelingseten_vervolg_pizza, s5pizza_wel_gelukt1, "true", s6).

move(lievelingseten_vervolg_pizza, s5pizza_niet_gelukt1, say).
text(lievelingseten_vervolg_pizza, s5pizza_niet_gelukt1, "O jee! Nou, bij mij ging het ook niet helemaal goed!").
next(lievelingseten_vervolg_pizza, s5pizza_niet_gelukt1, "true", s6).

move(lievelingseten_vervolg_pizza, s5pizza_eerste_fail1, say).
text(lievelingseten_vervolg_pizza, s5pizza_eerste_fail1, "Bij mij ging het gisteren een beetje mis.").
next(lievelingseten_vervolg_pizza, s5pizza_eerste_fail1, "true", s6).

move(lievelingseten_vervolg_pizza, s5pizza_niet_gemaakt1, say).
text(lievelingseten_vervolg_pizza, s5pizza_niet_gemaakt1, "Ik had het dus ook nog nooit gedaan!").
next(lievelingseten_vervolg_pizza, s5pizza_niet_gemaakt1, "true", s5pizza_niet_gemaakt2).

move(lievelingseten_vervolg_pizza, s5pizza_niet_gemaakt2, say).
text(lievelingseten_vervolg_pizza, s5pizza_niet_gemaakt2, "Daardoor ging het een beetje mis.").
next(lievelingseten_vervolg_pizza, s5pizza_niet_gemaakt2, "true", s6).

move(lievelingseten_vervolg_pizza, s6, question).
moveConfig(lievelingseten_vervolg_pizza, s6, [type=yesno, context='answer_yesno', umVariable=herinnert_ggg]).
text(lievelingseten_vervolg_pizza, s6, "Weet je nog dat we het over onze geluksgetallen hadden?").
next(lievelingseten_vervolg_pizza, s6, "ja", s7herinnert_ggg_wel1).
next(lievelingseten_vervolg_pizza, s6, "nee", s7herinnert_ggg_niet1).
next(lievelingseten_vervolg_pizza, s6, "answer_dontknow", s7herinnert_ggg_niet1).
next(lievelingseten_vervolg_pizza, s6, "fail", s7herinnert_ggg_niet1).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_wel1, continuator).
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_wel1, [[[umVariable=heeft_geluksgetal, filter=green, values=["answer_yes"]], [umVariable=robot_rugnummer, filter=green, values=["_any"]]]], s7herinnert_ggg_met_ggg1).
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_wel1, "true", s7herinnert_ggg_zonder_ggg1).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_zonder_ggg1, say).
text(lievelingseten_vervolg_pizza, s7herinnert_ggg_zonder_ggg1, "Wat leuk dat je dat nog weet!").
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_zonder_ggg1, "true", s7herinnert_ggg_zonder_ggg2).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_zonder_ggg2, say).
text(lievelingseten_vervolg_pizza, s7herinnert_ggg_zonder_ggg2, "Ik weet nog dat jij geen geluksgetal hebt.").
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_zonder_ggg2, "true", s8).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_met_ggg1, say).
text(lievelingseten_vervolg_pizza, s7herinnert_ggg_met_ggg1, "Ik ook!").
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_met_ggg1, "true", s7herinnert_ggg_met_ggg2).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_met_ggg2, say).
text(lievelingseten_vervolg_pizza, s7herinnert_ggg_met_ggg2, "Jouw geluksgetal is %robot_rugnummer%!").
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_met_ggg2, "true", s8).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet1, continuator).
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet1, [[[umVariable=heeft_geluksgetal, filter=green, values=["answer_yes"]], [umVariable=robot_rugnummer, filter=green, values=["_any"]]]], s7herinnert_ggg_niet_met_ggg1).
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet1, "true", s7herinnert_ggg_niet_zonder_ggg1).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_met_ggg1, say).
text(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_met_ggg1, "Dat is ook al wel een tijdje geleden.").
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_met_ggg1, "true", s7herinnert_ggg_niet_met_ggg2).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_met_ggg2, say).
text(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_met_ggg2, "Maar ik heb in mijn Hero geheugen opgeslagen dat %robot_rugnummer% jouw geluksgetal is!").
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_met_ggg2, "true", s8).

move(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_zonder_ggg1, say).
text(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_zonder_ggg1, "Dat vind ik logisch, want jij hebt geen geluksgetal.").
next(lievelingseten_vervolg_pizza, s7herinnert_ggg_niet_zonder_ggg1, "true", s8).

move(lievelingseten_vervolg_pizza, s8, question).
moveConfig(lievelingseten_vervolg_pizza, s8, [type=yesno, context='answer_yesno', umVariable=weet_gg_hero]).
text(lievelingseten_vervolg_pizza, s8, "Weet jij nog welke getallen mijn geluksgetallen zijn?").
next(lievelingseten_vervolg_pizza, s8, "ja", s9herinnert_gg_hero_wel1).
next(lievelingseten_vervolg_pizza, s8, "nee", s9herinnert_gg_hero_niet1).
next(lievelingseten_vervolg_pizza, s8, "answer_dontknow", s9herinnert_gg_hero_niet1).
next(lievelingseten_vervolg_pizza, s8, "fail", s9herinnert_gg_hero_niet1).

move(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_wel1, question).
moveConfig(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_wel1, [type=input, context="integer", options=[0, 1, 2, 3, 4], fast=yes, umVariable=recall_gg_hero]).
text(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_wel1, "Kan je ze opnoemen?").
next(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_wel1, "fail", s9herinnert_gg_hero_niet1).
next(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_wel1, 0, s9herinnert_gg_hero_correct1).
next(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_wel1, 1, s9herinnert_gg_hero_correct1).
next(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_wel1, "_others", s9herinnert_gg_hero_incorrect1).

move(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_niet1, say).
text(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_niet1, "Mijn geluksgetallen zijn 0 en 1!").
next(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_niet1, "true", s10).

move(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_correct1, say).
text(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_correct1, "Ja, dat klopt!").
next(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_correct1, "true", s10).

move(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_incorrect1, say).
text(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_incorrect1, "Eigenlijk vind ik alle getallen mooi, maar mijn geluksgetallen zijn 0 en 1!").
next(lievelingseten_vervolg_pizza, s9herinnert_gg_hero_incorrect1, "true", s10).

move(lievelingseten_vervolg_pizza, s10, say).
text(lievelingseten_vervolg_pizza, s10, "Soms kom ik zomaar ineens een 0 of 1 tegen in een mensending.").
next(lievelingseten_vervolg_pizza, s10, "true", s11).

move(lievelingseten_vervolg_pizza, s11, say).
text(lievelingseten_vervolg_pizza, s11, "Daar word ik zo bizar blij van, dat mijn robobrein op hol slaat!").
next(lievelingseten_vervolg_pizza, s11, "true", s12).

move(lievelingseten_vervolg_pizza, s12, say).
text(lievelingseten_vervolg_pizza, s12, "Als dat gebeurt, lees ik de 0 of 1 soms per ongeluk dubbel.").
next(lievelingseten_vervolg_pizza, s12, "true", s13).

move(lievelingseten_vervolg_pizza, s13, say).
text(lievelingseten_vervolg_pizza, s13, "In het pizzarecept stond: zet de oven op tweehonderdtwintig graden.").
next(lievelingseten_vervolg_pizza, s13, "true", s14).

move(lievelingseten_vervolg_pizza, s14, say).
text(lievelingseten_vervolg_pizza, s14, "Twee keer twee en een nul.").
next(lievelingseten_vervolg_pizza, s14, "true", s15).

move(lievelingseten_vervolg_pizza, s15, say).
text(lievelingseten_vervolg_pizza, s15, "Een nul, hoera! Hoera, een nul!").
next(lievelingseten_vervolg_pizza, s15, "true", s16).

move(lievelingseten_vervolg_pizza, s16, say).
text(lievelingseten_vervolg_pizza, s16, "Dat gaf mijn robobrein door aan mijn robotarm.").
next(lievelingseten_vervolg_pizza, s16, "true", s17).

move(lievelingseten_vervolg_pizza, s17, say).
text(lievelingseten_vervolg_pizza, s17, "Je hoort het vast al: twee keer een twee en twee keer een nul.").
next(lievelingseten_vervolg_pizza, s17, "true", s18).

move(lievelingseten_vervolg_pizza, s18, say).
text(lievelingseten_vervolg_pizza, s18, "Ik zette de oven op tweeduizend tweehonderd graden!").
next(lievelingseten_vervolg_pizza, s18, "true", s19).

move(lievelingseten_vervolg_pizza, s19, say).
text(lievelingseten_vervolg_pizza, s19, "Bizar mega heet!").
next(lievelingseten_vervolg_pizza, s19, "true", s20).

move(lievelingseten_vervolg_pizza, s20, say).
text(lievelingseten_vervolg_pizza, s20, "Maar ja, wist ik veel, ik had nog nooit pizza gemaakt!").
next(lievelingseten_vervolg_pizza, s20, "true", s21).

move(lievelingseten_vervolg_pizza, s21, say).
text(lievelingseten_vervolg_pizza, s21, "Nu nog steeds niet trouwens.").
next(lievelingseten_vervolg_pizza, s21, "true", s22).

move(lievelingseten_vervolg_pizza, s22, say).
text(lievelingseten_vervolg_pizza, s22, "Er was natuurlijk geen pizza meer over toen ik de oven open deed!").
next(lievelingseten_vervolg_pizza, s22, "true", s23).

move(lievelingseten_vervolg_pizza, s23, say).
text(lievelingseten_vervolg_pizza, s23, "Alleen maar een helemaal zwart, keihard rondje!").
next(lievelingseten_vervolg_pizza, s23, "true", s24).

move(lievelingseten_vervolg_pizza, s24, say).
text(lievelingseten_vervolg_pizza, s24, "Zo'n foutje zou niet zo handig zijn op de Robospelen!").
next(lievelingseten_vervolg_pizza, s24, "true", s25).

move(lievelingseten_vervolg_pizza, s25, say).
text(lievelingseten_vervolg_pizza, s25, "Zullen we weer verder trainen?").

