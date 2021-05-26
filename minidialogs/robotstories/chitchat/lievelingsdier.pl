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

