%%%% HEADER %%%%
%% lievelingsdier %%
minidialog(lievelingsdier, [type=chitchat, theme=lievelings, topic=dier]).

move(lievelingsdier, s1, say).
text(lievelingsdier, s1, "he %first_name% !").
next(lievelingsdier, s1, "true", s2).

move(lievelingsdier, s2, say).
text(lievelingsdier, s2, "Even wat anders.").
next(lievelingsdier, s2, "true", s3).

move(lievelingsdier, s3, say).
text(lievelingsdier, s3, "Ik heb gisteren een heel bijzondere robot ontmoet").
next(lievelingsdier, s3, "true", s4).

move(lievelingsdier, s4, say).
text(lievelingsdier, s4, "Hij heet Ol lie").
next(lievelingsdier, s4, "true", s5).

move(lievelingsdier, s5, say).
text(lievelingsdier, s5, "Ol lie is een robot otter!").
next(lievelingsdier, s5, "true", s6).

move(lievelingsdier, s6, say).
text(lievelingsdier, s6, "Ik heb hem ook over jou verteld").
start_interaction_probe(lievelingsdier, s6).
next(lievelingsdier, s6, "true", s7).

move(lievelingsdier, s7, continuator).
next(lievelingsdier, s7, [[umVariable=coach_goed_idee, filter=green, values=["answer_yes"]], [expCondition=memory]], s8memory1).
next(lievelingsdier, s7, "true", s9).

move(lievelingsdier, s8memory1, say).
text(lievelingsdier, s8memory1, "Dat je mijn coach bent.").
next(lievelingsdier, s8memory1, "true", s9).

move(lievelingsdier, s9, continuator).
next(lievelingsdier, s9, [[umVariable=beroep_van_kind, filter=green, values=["_any"]], [expCondition=memory]], s10memory1).
next(lievelingsdier, s9, "true", s11).

move(lievelingsdier, s10memory1, say).
text(lievelingsdier, s10memory1, "Dat je later %beroep_van_kind% wil worden.").
next(lievelingsdier, s10memory1, "true", s11).

move(lievelingsdier, s11, continuator).
next(lievelingsdier, s11, [[umVariable=sport_van_kind, filter=green, values=["_any"]], [expCondition=memory]], s12memory1).
next(lievelingsdier, s11, "true", s13).

move(lievelingsdier, s12memory1, say).
text(lievelingsdier, s12memory1, "Dat je van %sport_van_kind% houd.").
next(lievelingsdier, s12memory1, "true", s13).

move(lievelingsdier, s13, say).
text(lievelingsdier, s13, "Laat ik je nu ook over Ol lie vertellen.").
next(lievelingsdier, s13, "true", s14).

move(lievelingsdier, s14, say).
text(lievelingsdier, s14, "Hij zwemt en praat veel met gewone otters.").
next(lievelingsdier, s14, "true", s15).

move(lievelingsdier, s15, say).
text(lievelingsdier, s15, "Daar heeft hij me gisteren superveel over verteld!").
stop_interaction_probe(lievelingsdier, s15).
next(lievelingsdier, s15, "true", s16).

move(lievelingsdier, s16, say).
text(lievelingsdier, s16, "Nu denk ik dat de otter mijn lievelingsdier is.").
next(lievelingsdier, s16, "true", s17).

move(lievelingsdier, s17, question).
moveConfig(lievelingsdier, s17, [type=input, context="animals", options=['aap', 'dolfijn', 'adelaar', 'otter', 'tijger', 'olifant', 'hond', 'kat'], fast=yes, umVariable=lievelingsdier]).
text(lievelingsdier, s17, "Wat is jouw lievelingsdier?").
next(lievelingsdier, s17, "fail", s18geen_lievelingsdier1).
next(lievelingsdier, s17, "otter", s18otter1).
next(lievelingsdier, s17, "aap", s18aap1).
next(lievelingsdier, s17, "adelaar", s18adelaar1).
next(lievelingsdier, s17, "dolfijn", s18dolfijn1).
next(lievelingsdier, s17, "_others", s18lievelingsdier1).

move(lievelingsdier, s18geen_lievelingsdier1, say).
text(lievelingsdier, s18geen_lievelingsdier1, "Dat is echt een moeilijke vraag hè!").
next(lievelingsdier, s18geen_lievelingsdier1, "true", s18geen_lievelingsdier2).

move(lievelingsdier, s18geen_lievelingsdier2, question).
moveConfig(lievelingsdier, s18geen_lievelingsdier2, [type=yesno, context='answer_yesno', umVariable=meer_dan_1_dier]).
text(lievelingsdier, s18geen_lievelingsdier2, "Vind je veel meer dan één dier leuk?").
next(lievelingsdier, s18geen_lievelingsdier2, "answer_yes", s18ja_meer1).
next(lievelingsdier, s18geen_lievelingsdier2, "answer_no", s18nee_meer1).
next(lievelingsdier, s18geen_lievelingsdier2, "fail", s18fail_meer1).
next(lievelingsdier, s18geen_lievelingsdier2, "answer_dontknow", s18fail_meer1).

move(lievelingsdier, s18nee_meer1, say).
text(lievelingsdier, s18nee_meer1, "Maar het is toch best moeilijk om te kiezen!").
next(lievelingsdier, s18nee_meer1, "true", s18nee_meer2).

move(lievelingsdier, s18nee_meer2, say).
text(lievelingsdier, s18nee_meer2, "Stel je voor dat je in een dierentuin binnenkomt.").
next(lievelingsdier, s18nee_meer2, "true", s18nee_meer3).

move(lievelingsdier, s18nee_meer3, say).
text(lievelingsdier, s18nee_meer3, "Je kunt meteen op bezoek bij een aap, een dolfijn, of een adelaar.").
next(lievelingsdier, s18nee_meer3, "true", s18nee_meer4).

move(lievelingsdier, s18nee_meer4, question).
moveConfig(lievelingsdier, s18nee_meer4, [type=input, context="aap_adelaar_dolfijn", options=['aap', 'dolfijn', 'adelaar'], fast=yes, umVariable=drie_dierentuindieren]).
text(lievelingsdier, s18nee_meer4, "Naar wie ga je het eerst toe? ").
next(lievelingsdier, s18nee_meer4, "aap", s18aap1).
next(lievelingsdier, s18nee_meer4, "dolfijn", s18dolfijn1).
next(lievelingsdier, s18nee_meer4, "adelaar", s18adelaar1).
next(lievelingsdier, s18nee_meer4, "fail", s18fail_dierentuin1).

move(lievelingsdier, s18fail_dierentuin1, say).
text(lievelingsdier, s18fail_dierentuin1, "Ik zou het eerste naar de dolfijn gaan.").
next(lievelingsdier, s18fail_dierentuin1, "true", s18fail_dierentuin2).

move(lievelingsdier, s18fail_dierentuin2, say).
text(lievelingsdier, s18fail_dierentuin2, "Zo snel als een dolfijn wil ik ook wel kunnen zwemmen!").
next(lievelingsdier, s18fail_dierentuin2, "true", s18dolfijn21).

move(lievelingsdier, s18aap1, say).
text(lievelingsdier, s18aap1, "Cool! Ik vind apen ook superleuk.").
next(lievelingsdier, s18aap1, "true", s18aap2).

move(lievelingsdier, s18aap2, say).
text(lievelingsdier, s18aap2, "Ik zou wel zo goed willen kunnen slingeren!").
next(lievelingsdier, s18aap2, "true", s18aap3).

move(lievelingsdier, s18aap3, say).
text(lievelingsdier, s18aap3, "Ik weet niet of er een slingeropdracht op de RoboSpelen is.").
next(lievelingsdier, s18aap3, "true", s18aap4).

move(lievelingsdier, s18aap4, say).
text(lievelingsdier, s18aap4, "Dat ga ik uitzoeken!").
next(lievelingsdier, s18aap4, "true", s18aap5).

move(lievelingsdier, s18aap5, say).
text(lievelingsdier, s18aap5, "Misschien is er ook wel een opdracht met stenen.").
next(lievelingsdier, s18aap5, "true", s18lievelingsdier1).

move(lievelingsdier, s18adelaar1, say).
text(lievelingsdier, s18adelaar1, "Adelaars zijn echt bizar groot.").
next(lievelingsdier, s18adelaar1, "true", s18adelaar2).

move(lievelingsdier, s18adelaar2, say).
text(lievelingsdier, s18adelaar2, "Ik zou ook wel als een adelaar willen kunnen vliegen!").
next(lievelingsdier, s18adelaar2, "true", s18adelaar3).

move(lievelingsdier, s18adelaar3, say).
text(lievelingsdier, s18adelaar3, "Misschien kan ik ooit een motortje op mijn rug laten monteren.").
next(lievelingsdier, s18adelaar3, "true", s18adelaar4).

move(lievelingsdier, s18adelaar4, say).
text(lievelingsdier, s18adelaar4, "Ik hoop dat er ooit een vliegronde komt bij de robospelen, of een ronde met stenen.").
next(lievelingsdier, s18adelaar4, "true", s18lievelingsdier1).

move(lievelingsdier, s18dolfijn1, say).
text(lievelingsdier, s18dolfijn1, "Cool! Dolfijnen kunnen heel snel zwemmen!").
next(lievelingsdier, s18dolfijn1, "true", s18dolfijn2).

move(lievelingsdier, s18dolfijn2, say).
text(lievelingsdier, s18dolfijn2, "Dat zou ik ook wel willen!").
next(lievelingsdier, s18dolfijn2, "true", s18dolfijn21).

move(lievelingsdier, s18dolfijn21, say).
text(lievelingsdier, s18dolfijn21, "Misschien moet ik dan een pak aan met dolfijnenvinnen.").
next(lievelingsdier, s18dolfijn21, "true", s18dolfijn22).

move(lievelingsdier, s18dolfijn22, say).
text(lievelingsdier, s18dolfijn22, "Otters kunnen ook snel zwemmen, en ook nog eens drijven").
next(lievelingsdier, s18dolfijn22, "true", s18lievelingsdier1).

move(lievelingsdier, s18ja_meer1, say).
text(lievelingsdier, s18ja_meer1, "Ik ook!").
next(lievelingsdier, s18ja_meer1, "true", s18ja_meer2).

move(lievelingsdier, s18ja_meer2, question).
moveConfig(lievelingsdier, s18ja_meer2, [type=input, context="animals", options=['aap', 'dolfijn', 'adelaar', 'otter', 'tijger', 'olifant', 'hond', 'kat'], fast=yes, umVariable=lievelingsdier]).
text(lievelingsdier, s18ja_meer2, "Noem er eens een paar?").
next(lievelingsdier, s18ja_meer2, "fail", s18fail_meer1).
next(lievelingsdier, s18ja_meer2, "aap", s18aap1).
next(lievelingsdier, s18ja_meer2, "adelaar", s18adelaar1).
next(lievelingsdier, s18ja_meer2, "dolfijn", s18dolfijn1).
next(lievelingsdier, s18ja_meer2, "otter", s18otter1).
next(lievelingsdier, s18ja_meer2, "_others", s18lievelingsdier1).

move(lievelingsdier, s18fail_meer1, say).
text(lievelingsdier, s18fail_meer1, "Ik vind eigenlijk alle dieren leuk.").
next(lievelingsdier, s18fail_meer1, "true", s18fail_meer2).

move(lievelingsdier, s18fail_meer2, say).
text(lievelingsdier, s18fail_meer2, "Maar otters vind ik op dit moment het leukste!").
next(lievelingsdier, s18fail_meer2, "true", s18back2ollie1).

move(lievelingsdier, s18otter1, say).
text(lievelingsdier, s18otter1, "Een otter!").
next(lievelingsdier, s18otter1, "true", s18otter2).

move(lievelingsdier, s18otter2, say).
text(lievelingsdier, s18otter2, "Dat zal Ol lie leuk vinden").
next(lievelingsdier, s18otter2, "true", s18otter3).

move(lievelingsdier, s18otter3, say).
text(lievelingsdier, s18otter3, "En wat cool dat wij hetzelfde lievelingsdier hebben!").
next(lievelingsdier, s18otter3, "true", s18otter4).

move(lievelingsdier, s18otter4, say).
text(lievelingsdier, s18otter4, "Dat ga ik voor altijd onthouden.").
next(lievelingsdier, s18otter4, "true", s18lievelingsdier1).

move(lievelingsdier, s18lievelingsdier1, say).
text(lievelingsdier, s18lievelingsdier1, "Een %lievelingsdier% vind ik ook een heel cool dier!").
next(lievelingsdier, s18lievelingsdier1, "true", s18lievelingsdier2).

move(lievelingsdier, s18lievelingsdier2, question).
moveConfig(lievelingsdier, s18lievelingsdier2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_lievelingsdier]).
text(lievelingsdier, s18lievelingsdier2, "Wat vind je zo leuk aan een %lievelingsdier%?").
next(lievelingsdier, s18lievelingsdier2, "success", s18got_waarom1).
next(lievelingsdier, s18lievelingsdier2, "fail", s18got_no_waarom1).

move(lievelingsdier, s18got_no_waarom1, say).
text(lievelingsdier, s18got_no_waarom1, "%lievelingsdier% is onbeschrijfelijk leuk!").
next(lievelingsdier, s18got_no_waarom1, "true", s18got_no_waarom2).

move(lievelingsdier, s18got_no_waarom2, say).
text(lievelingsdier, s18got_no_waarom2, "Dat vind ik ook wel!").
next(lievelingsdier, s18got_no_waarom2, "true", s18back2ollie1).

move(lievelingsdier, s18got_waarom1, say).
text(lievelingsdier, s18got_waarom1, "Wauw, dat wist ik allemaal niet!").
next(lievelingsdier, s18got_waarom1, "true", s18got_waarom2).

move(lievelingsdier, s18got_waarom2, say).
text(lievelingsdier, s18got_waarom2, "Een %lievelingsdier% klinkt ook als een super cool dier!").
next(lievelingsdier, s18got_waarom2, "true", s18back2ollie1).

move(lievelingsdier, s18back2ollie1, say).
text(lievelingsdier, s18back2ollie1, "Ol lie vertelde dat otters allemaal een eigen, steen, hebben.").
next(lievelingsdier, s18back2ollie1, "true", s18back2ollie2).

move(lievelingsdier, s18back2ollie2, say).
text(lievelingsdier, s18back2ollie2, "Die bewaren ze in hun oksel tijdens het zwemmen!").
next(lievelingsdier, s18back2ollie2, "true", s18back2ollie3).

move(lievelingsdier, s18back2ollie3, say).
text(lievelingsdier, s18back2ollie3, "Dat vind ik bizar cool.").
next(lievelingsdier, s18back2ollie3, "true", s19).

move(lievelingsdier, s19, say).
text(lievelingsdier, s19, "Maar ik klets je oren van je hoofd af over otters!").
next(lievelingsdier, s19, "true", s20).

move(lievelingsdier, s20, say).
text(lievelingsdier, s20, "Laten we over iets anders praten!").

%% lievelingsdier_hond %%
minidialog(lievelingsdier_hond, [type=chitchat, theme=dier, topic=hond]).
dependencies(lievelingsdier_hond, [[[lievelingsdier, user_model, 0], [umVariable=lievelingsdier, filter=green, values=["hond", "puppy"]]]]).

move(lievelingsdier_hond, s1, say).
start_interaction_probe(lievelingsdier_hond, s1).
next(lievelingsdier_hond, s1, "true", s2).

move(lievelingsdier_hond, s2, say).
text(lievelingsdier_hond, s2, "Vorige keer vertelde je me dat een %lievelingsdier%, jouw lievelingsdier was").
next(lievelingsdier_hond, s2, "true", s3).

move(lievelingsdier_hond, s3, say).
text(lievelingsdier_hond, s3, "Ik heb even wat onderzoek gedaan").
next(lievelingsdier_hond, s3, "true", s4).

move(lievelingsdier_hond, s4, say).
text(lievelingsdier_hond, s4, "Ik heb veel filmpjes gekeken van een %lievelingsdier% op youtube").
next(lievelingsdier_hond, s4, "true", s5).

move(lievelingsdier_hond, s5, say).
text(lievelingsdier_hond, s5, "1 filmpje vond ik heel grappig").
next(lievelingsdier_hond, s5, "true", s6).

move(lievelingsdier_hond, s6, say).
text(lievelingsdier_hond, s6, "De %lievelingsdier%, moest over allerlei opstakels springen").
next(lievelingsdier_hond, s6, "true", s7).

move(lievelingsdier_hond, s7, say).
text(lievelingsdier_hond, s7, "En door zo'n buis rennen, en over een wipwap heen.").
next(lievelingsdier_hond, s7, "true", s8).

move(lievelingsdier_hond, s8, say).
text(lievelingsdier_hond, s8, "De %lievelingsdier% die dat het snelste kon, won een prijs").
next(lievelingsdier_hond, s8, "true", s9).

move(lievelingsdier_hond, s9, say).
text(lievelingsdier_hond, s9, "Een beetje zoals de robo spelen dus, maar dan voor een %lievelingsdier%").
next(lievelingsdier_hond, s9, "true", s10).

move(lievelingsdier_hond, s10, say).
stop_interaction_probe(lievelingsdier_hond, s10).

%% lievelingsdier_kat %%
minidialog(lievelingsdier_kat, [type=chitchat, theme=dier, topic=kat]).
dependencies(lievelingsdier_kat, [[[lievelingsdier, user_model, 0], [umVariable=lievelingsdier, filter=green, values=["kat", "poes"]]]]).

move(lievelingsdier_kat, s1, say).
start_interaction_probe(lievelingsdier_kat, s1).
next(lievelingsdier_kat, s1, "true", s2).

move(lievelingsdier_kat, s2, say).
text(lievelingsdier_kat, s2, "Vorige keer vertelde je me dat een %lievelingsdier%, jouw lievelingsdier was").
next(lievelingsdier_kat, s2, "true", s3).

move(lievelingsdier_kat, s3, say).
text(lievelingsdier_kat, s3, "Ik heb even wat onderzoek gedaan").
next(lievelingsdier_kat, s3, "true", s4).

move(lievelingsdier_kat, s4, say).
text(lievelingsdier_kat, s4, "Ik heb veel filmpjes gekeken van een %lievelingsdier% op youtube").
next(lievelingsdier_kat, s4, "true", s5).

move(lievelingsdier_kat, s5, say).
text(lievelingsdier_kat, s5, "Wat me op viel").
next(lievelingsdier_kat, s5, "true", s6).

move(lievelingsdier_kat, s6, say).
text(lievelingsdier_kat, s6, "is dat een %lievelingsdier% heel graag in een doos gaat zitten").
next(lievelingsdier_kat, s6, "true", s7).

move(lievelingsdier_kat, s7, say).
text(lievelingsdier_kat, s7, "Eigenlijk het tegenovergestelde van robots").
next(lievelingsdier_kat, s7, "true", s8).

move(lievelingsdier_kat, s8, say).
text(lievelingsdier_kat, s8, "Ik zit namelijk niet graag in de doos.").
next(lievelingsdier_kat, s8, "true", s9).

move(lievelingsdier_kat, s9, say).
stop_interaction_probe(lievelingsdier_kat, s9).

%% lievelingsdier_dolfijn %%
minidialog(lievelingsdier_dolfijn, [type=chitchat, theme=dier, topic=dolfijn]).
dependencies(lievelingsdier_dolfijn, [[[lievelingsdier, user_model, 0], [umVariable=lievelingsdier, filter=green, values=["dolijn"]]]]).

move(lievelingsdier_dolfijn, s1, say).
start_interaction_probe(lievelingsdier_dolfijn, s1).
next(lievelingsdier_dolfijn, s1, "true", s2).

move(lievelingsdier_dolfijn, s2, say).
text(lievelingsdier_dolfijn, s2, "Vorige keer vertelde je me dat een %lievelingsdier%, jouw lievelingsdier was").
next(lievelingsdier_dolfijn, s2, "true", s3).

move(lievelingsdier_dolfijn, s3, say).
text(lievelingsdier_dolfijn, s3, "Ik heb even wat onderzoek gedaan").
next(lievelingsdier_dolfijn, s3, "true", s4).

move(lievelingsdier_dolfijn, s4, say).
text(lievelingsdier_dolfijn, s4, "Ik heb veel filmpjes gekeken van een %lievelingsdier% op youtube").
next(lievelingsdier_dolfijn, s4, "true", s5).

move(lievelingsdier_dolfijn, s5, say).
text(lievelingsdier_dolfijn, s5, "1 filmpje vond ik heel grappig").
next(lievelingsdier_dolfijn, s5, "true", s6).

move(lievelingsdier_dolfijn, s6, say).
text(lievelingsdier_dolfijn, s6, "Er was iemand in een cano aan het varen").
next(lievelingsdier_dolfijn, s6, "true", s7).

move(lievelingsdier_dolfijn, s7, say).
text(lievelingsdier_dolfijn, s7, "En in eens zwommen er een paar dolfijnen om heen").
next(lievelingsdier_dolfijn, s7, "true", s8).

move(lievelingsdier_dolfijn, s8, say).
text(lievelingsdier_dolfijn, s8, "Ze spoten de man in de cano nat").
next(lievelingsdier_dolfijn, s8, "true", s9).

move(lievelingsdier_dolfijn, s9, say).
text(lievelingsdier_dolfijn, s9, "Daar moest ik om lachen.").
next(lievelingsdier_dolfijn, s9, "true", s10).

move(lievelingsdier_dolfijn, s10, say).
stop_interaction_probe(lievelingsdier_dolfijn, s10).

%% lievelingsdier_katachtige %%
minidialog(lievelingsdier_katachtige, [type=chitchat, theme=dier, topic=katachtige]).
dependencies(lievelingsdier_katachtige, [[[lievelingsdier, user_model, 0], [umVariable=lievelingsdier, filter=green, values=["cheetah", "tijger", "panter"]]]]).

move(lievelingsdier_katachtige, s1, say).
start_interaction_probe(lievelingsdier_katachtige, s1).
next(lievelingsdier_katachtige, s1, "true", s2).

move(lievelingsdier_katachtige, s2, say).
text(lievelingsdier_katachtige, s2, "Vorige keer vertelde je me dat een %lievelingsdier%, jouw lievelingsdier was").
next(lievelingsdier_katachtige, s2, "true", s3).

move(lievelingsdier_katachtige, s3, say).
text(lievelingsdier_katachtige, s3, "Ik heb even wat onderzoek gedaan").
next(lievelingsdier_katachtige, s3, "true", s4).

move(lievelingsdier_katachtige, s4, say).
text(lievelingsdier_katachtige, s4, "Ik heb veel filmpjes gekeken van een %lievelingsdier% op youtube").
next(lievelingsdier_katachtige, s4, "true", s5).

move(lievelingsdier_katachtige, s5, say).
text(lievelingsdier_katachtige, s5, "Wat kunnen ze super hard rennen zeg").
next(lievelingsdier_katachtige, s5, "true", s6).

move(lievelingsdier_katachtige, s6, say).
text(lievelingsdier_katachtige, s6, "Daar wil niet tegen racen hoor.").
next(lievelingsdier_katachtige, s6, "true", s7).

move(lievelingsdier_katachtige, s7, say).
text(lievelingsdier_katachtige, s7, "Ik kan maar heel langzaam lopen, laat staan rennen").
next(lievelingsdier_katachtige, s7, "true", s8).

move(lievelingsdier_katachtige, s8, say).
stop_interaction_probe(lievelingsdier_katachtige, s8).

%% lievelingsdier_konijn %%
minidialog(lievelingsdier_konijn, [type=chitchat, theme=dier, topic=konijn]).
dependencies(lievelingsdier_konijn, [[[lievelingsdier, user_model, 0], [umVariable=lievelingsdier, filter=green, values=["konijn"]]]]).

move(lievelingsdier_konijn, s1, say).
start_interaction_probe(lievelingsdier_konijn, s1).
next(lievelingsdier_konijn, s1, "true", s2).

move(lievelingsdier_konijn, s2, say).
text(lievelingsdier_konijn, s2, "Vorige keer vertelde je me dat een %lievelingsdier%, jouw lievelingsdier was").
next(lievelingsdier_konijn, s2, "true", s3).

move(lievelingsdier_konijn, s3, say).
text(lievelingsdier_konijn, s3, "Ik heb even wat onderzoek gedaan").
next(lievelingsdier_konijn, s3, "true", s4).

move(lievelingsdier_konijn, s4, say).
text(lievelingsdier_konijn, s4, "Ik las dat konijnen knaagdieren waren").
next(lievelingsdier_konijn, s4, "true", s5).

move(lievelingsdier_konijn, s5, say).
text(lievelingsdier_konijn, s5, "Zouden ze ook van worstels houden?").
next(lievelingsdier_konijn, s5, "true", s6).

move(lievelingsdier_konijn, s6, say).
text(lievelingsdier_konijn, s6, "Moeten ze natuurlijk niet te veel eten, anders worden ze oranje").
next(lievelingsdier_konijn, s6, "true", s7).

move(lievelingsdier_konijn, s7, say).
text(lievelingsdier_konijn, s7, "Al zou dat wel grappig zijn natuurlijk.").
next(lievelingsdier_konijn, s7, "true", s8).

move(lievelingsdier_konijn, s8, say).
text(lievelingsdier_konijn, s8, "Een oranje konijn.").
next(lievelingsdier_konijn, s8, "true", s9).

move(lievelingsdier_konijn, s9, say).
stop_interaction_probe(lievelingsdier_konijn, s9).

%% lievelingsdier_adelaar %%
minidialog(lievelingsdier_adelaar, [type=chitchat, theme=dier, topic=adelaar]).
dependencies(lievelingsdier_adelaar, [[[lievelingsdier, user_model, 0], [umVariable=lievelingsdier, filter=green, values=["adelaar"]]]]).

move(lievelingsdier_adelaar, s1, say).
start_interaction_probe(lievelingsdier_adelaar, s1).
next(lievelingsdier_adelaar, s1, "true", s2).

move(lievelingsdier_adelaar, s2, say).
text(lievelingsdier_adelaar, s2, "Vorige keer vertelde je me dat een %lievelingsdier%, jouw lievelingsdier was").
next(lievelingsdier_adelaar, s2, "true", s3).

move(lievelingsdier_adelaar, s3, say).
text(lievelingsdier_adelaar, s3, "Ik heb even wat onderzoek gedaan").
next(lievelingsdier_adelaar, s3, "true", s4).

move(lievelingsdier_adelaar, s4, say).
text(lievelingsdier_adelaar, s4, "Ze kunnen heel snel vliegen.").
next(lievelingsdier_adelaar, s4, "true", s5).

move(lievelingsdier_adelaar, s5, say).
text(lievelingsdier_adelaar, s5, "Wel to 300 kilometer per uur").
next(lievelingsdier_adelaar, s5, "true", s6).

move(lievelingsdier_adelaar, s6, say).
text(lievelingsdier_adelaar, s6, "Ik droom er van om ooit op eens op de rug mee te kunnen vliegen").
next(lievelingsdier_adelaar, s6, "true", s7).

move(lievelingsdier_adelaar, s7, say).
text(lievelingsdier_adelaar, s7, "Zie je het al voor je").
next(lievelingsdier_adelaar, s7, "true", s8).

move(lievelingsdier_adelaar, s8, say).
text(lievelingsdier_adelaar, s8, "Ik op een klein zadeltje op de rug van zo'n grote vogel").
next(lievelingsdier_adelaar, s8, "true", s9).

move(lievelingsdier_adelaar, s9, say).
text(lievelingsdier_adelaar, s9, "Grappig toch.").
next(lievelingsdier_adelaar, s9, "true", s10).

move(lievelingsdier_adelaar, s10, say).
stop_interaction_probe(lievelingsdier_adelaar, s10).

%% lievelingsdier_paard %%
minidialog(lievelingsdier_paard, [type=chitchat, theme=dier, topic=paard]).
dependencies(lievelingsdier_paard, [[[lievelingsdier, user_model, 0], [umVariable=lievelingsdier, filter=green, values=["paard"]]]]).

move(lievelingsdier_paard, s1, say).
start_interaction_probe(lievelingsdier_paard, s1).
next(lievelingsdier_paard, s1, "true", s2).

move(lievelingsdier_paard, s2, say).
text(lievelingsdier_paard, s2, "Vorige keer vertelde je me dat een %lievelingsdier%, jouw lievelingsdier was").
next(lievelingsdier_paard, s2, "true", s3).

move(lievelingsdier_paard, s3, say).
text(lievelingsdier_paard, s3, "Ik heb even wat onderzoek gedaan").
next(lievelingsdier_paard, s3, "true", s4).

move(lievelingsdier_paard, s4, say).
text(lievelingsdier_paard, s4, "Ik heb veel filmpjes gekeken van een %lievelingsdier% op youtube").
next(lievelingsdier_paard, s4, "true", s5).

move(lievelingsdier_paard, s5, say).
text(lievelingsdier_paard, s5, "1 filmpje vond ik heel grappig").
next(lievelingsdier_paard, s5, "true", s6).

move(lievelingsdier_paard, s6, say).
text(lievelingsdier_paard, s6, "Het paard moest grinneken").
next(lievelingsdier_paard, s6, "true", s7).

move(lievelingsdier_paard, s7, say).
text(lievelingsdier_paard, s7, "Met zijn grote gebit.").
next(lievelingsdier_paard, s7, "true", s8).

move(lievelingsdier_paard, s8, say).
text(lievelingsdier_paard, s8, "Dat vond ik erg grappig.").
next(lievelingsdier_paard, s8, "true", s9).

move(lievelingsdier_paard, s9, say).
stop_interaction_probe(lievelingsdier_paard, s9).

%% lievelingsdier_overig %%
minidialog(lievelingsdier_overig, [type=chitchat, theme=dier, topic=overig]).
dependencies(lievelingsdier_overig, [[[lievelingsdier, user_model, 0], [umVariable=lievelingsdier, filter=red, values=["hond", "puppy", "kat", "poes", "dolfijn", "cheetah", "tijger", "panter", "konijn", "adelaar", "paard"]]]]).

move(lievelingsdier_overig, s1, say).
start_interaction_probe(lievelingsdier_overig, s1).
next(lievelingsdier_overig, s1, "true", s2).

move(lievelingsdier_overig, s2, say).
text(lievelingsdier_overig, s2, "Vorige keer vertelde je me dat een %lievelingsdier%, jouw lievelingsdier was").
next(lievelingsdier_overig, s2, "true", s3).

move(lievelingsdier_overig, s3, say).
text(lievelingsdier_overig, s3, "Ik heb daar nog eens over na zitten denken.").
next(lievelingsdier_overig, s3, "true", s4).

move(lievelingsdier_overig, s4, say).
text(lievelingsdier_overig, s4, "Een %lievelingsdier% is echt een cool dier").
next(lievelingsdier_overig, s4, "true", s5).

move(lievelingsdier_overig, s5, say).
text(lievelingsdier_overig, s5, "Ik vind het echt stoer dat het jouw lievelingsdier is.").
next(lievelingsdier_overig, s5, "true", s6).

move(lievelingsdier_overig, s6, say).
text(lievelingsdier_overig, s6, "Ik kwam veel filmpjes tegen van een %lievelingsdier% op youtube").
next(lievelingsdier_overig, s6, "true", s7).

move(lievelingsdier_overig, s7, say).
text(lievelingsdier_overig, s7, "Moet je vanavond ook maar eens kijken.").
next(lievelingsdier_overig, s7, "true", s8).

move(lievelingsdier_overig, s8, say).
text(lievelingsdier_overig, s8, "Erg interessant").
next(lievelingsdier_overig, s8, "true", s9).

move(lievelingsdier_overig, s9, say).
text(lievelingsdier_overig, s9, "Altijd leuk om nieuwe dingen te leren").
next(lievelingsdier_overig, s9, "true", s10).

move(lievelingsdier_overig, s10, say).
stop_interaction_probe(lievelingsdier_overig, s10).

%% lievelingsdier_control %%
minidialog(lievelingsdier_control, [type=chitchat, theme=dier_control, topic=dier]).

move(lievelingsdier_control, s1, say).
start_interaction_probe(lievelingsdier_control, s1).
next(lievelingsdier_control, s1, "true", s2).

move(lievelingsdier_control, s2, say).
text(lievelingsdier_control, s2, "Even tussen door wilde ik je nog wat vertellen").
next(lievelingsdier_control, s2, "true", s3).

move(lievelingsdier_control, s3, say).
text(lievelingsdier_control, s3, "Ik ben echt helemaal gek op dieren.").
next(lievelingsdier_control, s3, "true", s4).

move(lievelingsdier_control, s4, say).
text(lievelingsdier_control, s4, "Ze komen in allerlei soorten en maten.").
next(lievelingsdier_control, s4, "true", s5).

move(lievelingsdier_control, s5, say).
text(lievelingsdier_control, s5, "Van kleine insecten tot grote olifanten en walvissen").
next(lievelingsdier_control, s5, "true", s6).

move(lievelingsdier_control, s6, say).
text(lievelingsdier_control, s6, "Sommige hebben spannende kleuren om op te vallen, zoals de pauw").
next(lievelingsdier_control, s6, "true", s7).

move(lievelingsdier_control, s7, say).
text(lievelingsdier_control, s7, "Andere hebben juist saaie kleuren, om makkelijk mee te kunnen verstoppen.").
next(lievelingsdier_control, s7, "true", s8).

move(lievelingsdier_control, s8, say).
text(lievelingsdier_control, s8, "Dat wilde ik je gewoon graag even vertellen.").
next(lievelingsdier_control, s8, "true", s9).

move(lievelingsdier_control, s9, say).
text(lievelingsdier_control, s9, "Laten we we weer verder gaan.").
next(lievelingsdier_control, s9, "true", s10).

move(lievelingsdier_control, s10, say).
stop_interaction_probe(lievelingsdier_control, s10).

