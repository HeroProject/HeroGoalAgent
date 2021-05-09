%%%% HEADER %%%%
%% lievelingsdier %%
minidialog(lievelingsdier, [type=chitchat, theme=lievelings, topic=dier]).

move(lievelingsdier, s1, say).
text(lievelingsdier, s1, "he %first_name% !").
next(lievelingsdier, s1, "true", s2).

move(lievelingsdier, s2, say).
text(lievelingsdier, s2, "Ik heb gisteren een heel bijzondere robot ontmoet").
next(lievelingsdier, s2, "true", s3).

move(lievelingsdier, s3, say).
text(lievelingsdier, s3, "Hij heet Ollie").
next(lievelingsdier, s3, "true", s4).

move(lievelingsdier, s4, say).
text(lievelingsdier, s4, "Ollie is een robot otter!").
next(lievelingsdier, s4, "true", s5).

move(lievelingsdier, s5, say).
text(lievelingsdier, s5, "Hij zwemt en praat veel met gewone otters.").
next(lievelingsdier, s5, "true", s6).

move(lievelingsdier, s6, say).
text(lievelingsdier, s6, "Daar heeft hij me gisteren superveel over verteld!").
next(lievelingsdier, s6, "true", s7).

move(lievelingsdier, s7, say).
text(lievelingsdier, s7, "Nu denk ik dat de otter mijn lievelingsdier is.").
next(lievelingsdier, s7, "true", s8).

move(lievelingsdier, s8, question).
moveConfig(lievelingsdier, s8, [type=input, context="animals", options=['aap', 'dolfijn', 'adelaar', 'otter', 'tijger', 'olifant', 'hond', 'kat'], fast=yes, umVariable=lievelingsdier]).
text(lievelingsdier, s8, "Wat is jouw lievelingsdier?").
next(lievelingsdier, s8, "fail", s9geen_lievelingsdier1).
next(lievelingsdier, s8, "otter", s9otter1).
next(lievelingsdier, s8, "aap", s9aap1).
next(lievelingsdier, s8, "adelaar", s9adelaar1).
next(lievelingsdier, s8, "dolfijn", s9dolfijn1).
next(lievelingsdier, s8, "_others", s9lievelingsdier1).

move(lievelingsdier, s9geen_lievelingsdier1, say).
text(lievelingsdier, s9geen_lievelingsdier1, "Dat is echt een moeilijke vraag hè!").
next(lievelingsdier, s9geen_lievelingsdier1, "true", s9geen_lievelingsdier2).

move(lievelingsdier, s9geen_lievelingsdier2, question).
moveConfig(lievelingsdier, s9geen_lievelingsdier2, [type=yesno, context='answer_yesno', umVariable=meer_dan_1_dier]).
text(lievelingsdier, s9geen_lievelingsdier2, "Vind je veel meer dan één dier leuk?").
next(lievelingsdier, s9geen_lievelingsdier2, "answer_yes", s9ja_meer1).
next(lievelingsdier, s9geen_lievelingsdier2, "answer_no", s9nee_meer1).
next(lievelingsdier, s9geen_lievelingsdier2, "fail", s9fail_meer1).
next(lievelingsdier, s9geen_lievelingsdier2, "answer_dontknow", s9fail_meer1).

move(lievelingsdier, s9nee_meer1, say).
text(lievelingsdier, s9nee_meer1, "Maar het is toch best moeilijk om te kiezen!").
next(lievelingsdier, s9nee_meer1, "true", s9nee_meer2).

move(lievelingsdier, s9nee_meer2, say).
text(lievelingsdier, s9nee_meer2, "Stel je voor dat je in een dierentuin binnenkomt.").
next(lievelingsdier, s9nee_meer2, "true", s9nee_meer3).

move(lievelingsdier, s9nee_meer3, say).
text(lievelingsdier, s9nee_meer3, "Je kunt meteen op bezoek bij een aap, een dolfijn, of een adelaar.").
next(lievelingsdier, s9nee_meer3, "true", s9nee_meer4).

move(lievelingsdier, s9nee_meer4, question).
moveConfig(lievelingsdier, s9nee_meer4, [type=input, context="aap_adelaar_dolfijn", options=['aap', 'dolfijn', 'adelaar'], fast=yes, umVariable=drie_dierentuindieren]).
text(lievelingsdier, s9nee_meer4, "Naar wie ga je het eerst toe? ").
next(lievelingsdier, s9nee_meer4, "aap", s9aap1).
next(lievelingsdier, s9nee_meer4, "dolfijn", s9dolfijn1).
next(lievelingsdier, s9nee_meer4, "adelaar", s9adelaar1).
next(lievelingsdier, s9nee_meer4, "fail", s9fail_dierentuin1).

move(lievelingsdier, s9fail_dierentuin1, say).
text(lievelingsdier, s9fail_dierentuin1, "Ik zou het eerste naar de dolfijn gaan.").
next(lievelingsdier, s9fail_dierentuin1, "true", s9fail_dierentuin2).

move(lievelingsdier, s9fail_dierentuin2, say).
text(lievelingsdier, s9fail_dierentuin2, "Zo snel als een dolfijn wil ik ook wel kunnen zwemmen!").
next(lievelingsdier, s9fail_dierentuin2, "true", s9dolfijn21).

move(lievelingsdier, s9aap1, say).
text(lievelingsdier, s9aap1, "Cool! Ik vind apen ook superleuk.").
next(lievelingsdier, s9aap1, "true", s9aap2).

move(lievelingsdier, s9aap2, say).
text(lievelingsdier, s9aap2, "Ik zou wel zo goed willen kunnen slingeren!").
next(lievelingsdier, s9aap2, "true", s9aap3).

move(lievelingsdier, s9aap3, say).
text(lievelingsdier, s9aap3, "Ik weet niet of er een slingeropdracht op de RoboSpelen is.").
next(lievelingsdier, s9aap3, "true", s9aap4).

move(lievelingsdier, s9aap4, say).
text(lievelingsdier, s9aap4, "Dat ga ik uitzoeken!").
next(lievelingsdier, s9aap4, "true", s9aap5).

move(lievelingsdier, s9aap5, say).
text(lievelingsdier, s9aap5, "Misschien is er ook wel een opdracht met stenen.").
next(lievelingsdier, s9aap5, "true", s9lievelingsdier1).

move(lievelingsdier, s9adelaar1, say).
text(lievelingsdier, s9adelaar1, "Adelaars zijn echt bizar groot.").
next(lievelingsdier, s9adelaar1, "true", s9adelaar2).

move(lievelingsdier, s9adelaar2, say).
text(lievelingsdier, s9adelaar2, "Ik zou ook wel als een adelaar willen kunnen vliegen!").
next(lievelingsdier, s9adelaar2, "true", s9adelaar3).

move(lievelingsdier, s9adelaar3, say).
text(lievelingsdier, s9adelaar3, "Misschien kan ik ooit een motortje op mijn rug laten monteren.").
next(lievelingsdier, s9adelaar3, "true", s9adelaar4).

move(lievelingsdier, s9adelaar4, say).
text(lievelingsdier, s9adelaar4, "Ik hoop dat er ooit een vliegronde komt bij de robospelen, of een ronde met stenen.").
next(lievelingsdier, s9adelaar4, "true", s9lievelingsdier1).

move(lievelingsdier, s9dolfijn1, say).
text(lievelingsdier, s9dolfijn1, "Cool! Dolfijnen kunnen heel snel zwemmen!").
next(lievelingsdier, s9dolfijn1, "true", s9dolfijn2).

move(lievelingsdier, s9dolfijn2, say).
text(lievelingsdier, s9dolfijn2, "Dat zou ik ook wel willen!").
next(lievelingsdier, s9dolfijn2, "true", s9dolfijn21).

move(lievelingsdier, s9dolfijn21, say).
text(lievelingsdier, s9dolfijn21, "Misschien moet ik dan een pak aan met dolfijnenvinnen.").
next(lievelingsdier, s9dolfijn21, "true", s9dolfijn22).

move(lievelingsdier, s9dolfijn22, say).
text(lievelingsdier, s9dolfijn22, "Otters kunnen ook snel zwemmen, en ook nog eens drijven").
next(lievelingsdier, s9dolfijn22, "true", s9lievelingsdier1).

move(lievelingsdier, s9ja_meer1, say).
text(lievelingsdier, s9ja_meer1, "Ik ook!").
next(lievelingsdier, s9ja_meer1, "true", s9ja_meer2).

move(lievelingsdier, s9ja_meer2, question).
moveConfig(lievelingsdier, s9ja_meer2, [type=input, context="animals", options=['aap', 'dolfijn', 'adelaar', 'otter', 'tijger', 'olifant', 'hond', 'kat'], fast=yes, umVariable=lievelingsdier]).
text(lievelingsdier, s9ja_meer2, "Noem er eens een paar?").
next(lievelingsdier, s9ja_meer2, "fail", s9fail_meer1).
next(lievelingsdier, s9ja_meer2, "aap", s9aap1).
next(lievelingsdier, s9ja_meer2, "adelaar", s9adelaar1).
next(lievelingsdier, s9ja_meer2, "dolfijn", s9dolfijn1).
next(lievelingsdier, s9ja_meer2, "otter", s9otter1).
next(lievelingsdier, s9ja_meer2, "_others", s9lievelingsdier1).

move(lievelingsdier, s9fail_meer1, say).
text(lievelingsdier, s9fail_meer1, "Ik vind eigenlijk alle dieren leuk.").
next(lievelingsdier, s9fail_meer1, "true", s9fail_meer2).

move(lievelingsdier, s9fail_meer2, say).
text(lievelingsdier, s9fail_meer2, "Maar otters vind ik op dit moment het leukste!").
next(lievelingsdier, s9fail_meer2, "true", s9back2ollie1).

move(lievelingsdier, s9otter1, say).
text(lievelingsdier, s9otter1, "Een otter!").
next(lievelingsdier, s9otter1, "true", s9otter2).

move(lievelingsdier, s9otter2, say).
text(lievelingsdier, s9otter2, "Dat zal Ollie leuk vinden").
next(lievelingsdier, s9otter2, "true", s9otter3).

move(lievelingsdier, s9otter3, say).
text(lievelingsdier, s9otter3, "En wat cool dat wij hetzelfde lievelingsdier hebben!").
next(lievelingsdier, s9otter3, "true", s9otter4).

move(lievelingsdier, s9otter4, say).
text(lievelingsdier, s9otter4, "Dat ga ik voor altijd onthouden.").
next(lievelingsdier, s9otter4, "true", s9lievelingsdier1).

move(lievelingsdier, s9lievelingsdier1, say).
text(lievelingsdier, s9lievelingsdier1, "Een %lievelingsdier% vind ik ook een heel cool dier!").
next(lievelingsdier, s9lievelingsdier1, "true", s9lievelingsdier2).

move(lievelingsdier, s9lievelingsdier2, question).
moveConfig(lievelingsdier, s9lievelingsdier2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_lievelingsdier]).
text(lievelingsdier, s9lievelingsdier2, "Wat vind je zo leuk aan een %lievelingsdier%?").
next(lievelingsdier, s9lievelingsdier2, "success", s9got_waarom1).
next(lievelingsdier, s9lievelingsdier2, "fail", s9got_no_waarom1).

move(lievelingsdier, s9got_no_waarom1, say).
text(lievelingsdier, s9got_no_waarom1, "%lievelingsdier% is onbeschrijfelijk leuk!").
next(lievelingsdier, s9got_no_waarom1, "true", s9got_no_waarom2).

move(lievelingsdier, s9got_no_waarom2, say).
text(lievelingsdier, s9got_no_waarom2, "Dat vind ik ook wel!").
next(lievelingsdier, s9got_no_waarom2, "true", s9back2ollie1).

move(lievelingsdier, s9got_waarom1, say).
text(lievelingsdier, s9got_waarom1, "Wauw, dat wist ik allemaal niet!").
next(lievelingsdier, s9got_waarom1, "true", s9got_waarom2).

move(lievelingsdier, s9got_waarom2, say).
text(lievelingsdier, s9got_waarom2, "Een %lievelingsdier% klinkt ook als een supercool dier!").
next(lievelingsdier, s9got_waarom2, "true", s9back2ollie1).

move(lievelingsdier, s9back2ollie1, say).
text(lievelingsdier, s9back2ollie1, "Ollie vertelde dat otters allemaal een eigen steen hebben.").
next(lievelingsdier, s9back2ollie1, "true", s9back2ollie2).

move(lievelingsdier, s9back2ollie2, say).
text(lievelingsdier, s9back2ollie2, "Die bewaren ze in hun oksel tijdens het zwemmen!").
next(lievelingsdier, s9back2ollie2, "true", s9back2ollie3).

move(lievelingsdier, s9back2ollie3, say).
text(lievelingsdier, s9back2ollie3, "Dat vind ik bizar cool.").
next(lievelingsdier, s9back2ollie3, "true", s10).

move(lievelingsdier, s10, say).
text(lievelingsdier, s10, "Maar ik klets je oren van je hoofd af over otters!").
next(lievelingsdier, s10, "true", s11).

move(lievelingsdier, s11, say).
text(lievelingsdier, s11, "Laten we over iets anders praten!").

