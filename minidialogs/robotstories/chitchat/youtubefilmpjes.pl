%%%% HEADER %%%%
%% youtubefilmpjes %%
minidialog(youtubefilmpjes, [type=chitchat, theme=youtubefilmpjes, topic=youtube]).

move(youtubefilmpjes, s1, say).
text(youtubefilmpjes, s1, "Trouwens, %first_name% ,").
next(youtubefilmpjes, s1, "true", s2).

move(youtubefilmpjes, s2, question).
moveConfig(youtubefilmpjes, s2, [type=yesno, context='answer_yesno', umVariable=youtube_kijken]).
text(youtubefilmpjes, s2, "Kijk jij ook graag filmpjes op YouTube?").
next(youtubefilmpjes, s2, "answer_yes", s3ja1).
next(youtubefilmpjes, s2, "answer_no", s3nee1).
next(youtubefilmpjes, s2, "fail", s3fail1).
next(youtubefilmpjes, s2, "answer_dontknow", s3fail1).

move(youtubefilmpjes, s3ja1, say).
text(youtubefilmpjes, s3ja1, "Cool!").
next(youtubefilmpjes, s3ja1, "true", s3ja2).

move(youtubefilmpjes, s3ja2, question).
moveConfig(youtubefilmpjes, s3ja2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes, s3ja2, "Wat voor video's kijk jij het liefst?").
next(youtubefilmpjes, s3ja2, "success", s3got_answer_vid1).
next(youtubefilmpjes, s3ja2, "failure", s3fail1).

move(youtubefilmpjes, s3got_answer_vid1, say).
text(youtubefilmpjes, s3got_answer_vid1, "Wauw!").
next(youtubefilmpjes, s3got_answer_vid1, "true", s3got_answer_vid2).

move(youtubefilmpjes, s3got_answer_vid2, say).
text(youtubefilmpjes, s3got_answer_vid2, "Dat klinkt leuk.").
next(youtubefilmpjes, s3got_answer_vid2, "true", s3got_answer_vid3).

move(youtubefilmpjes, s3got_answer_vid3, say).
text(youtubefilmpjes, s3got_answer_vid3, "Ik zal ook eens zoiets opzoeken.").
next(youtubefilmpjes, s3got_answer_vid3, "true", s3got_answer_vid4).

move(youtubefilmpjes, s3got_answer_vid4, question).
moveConfig(youtubefilmpjes, s3got_answer_vid4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes, s3got_answer_vid4, "Hoe kwam je erop om dat soort filmpjes te kijken?").
next(youtubefilmpjes, s3got_answer_vid4, "success", s3got_answer_hoezo1).
next(youtubefilmpjes, s3got_answer_vid4, "failure", s3fail1).

move(youtubefilmpjes, s3got_answer_hoezo1, say).
text(youtubefilmpjes, s3got_answer_hoezo1, "Aha! Leuk om te weten, %first_name% !").
next(youtubefilmpjes, s3got_answer_hoezo1, "true", s3got_answer_hoezo2).

move(youtubefilmpjes, s3got_answer_hoezo2, say).
text(youtubefilmpjes, s3got_answer_hoezo2, "Ik vind het leuk om filmpjes te kijken over de natuur").
next(youtubefilmpjes, s3got_answer_hoezo2, "true", s3got_answer_hoezo3).

move(youtubefilmpjes, s3got_answer_hoezo3, say).
text(youtubefilmpjes, s3got_answer_hoezo3, "En over dieren").
next(youtubefilmpjes, s3got_answer_hoezo3, "true", s3got_answer_hoezo4).

move(youtubefilmpjes, s3got_answer_hoezo4, say).
text(youtubefilmpjes, s3got_answer_hoezo4, "Omdat ik zelf helemaal geen dier ben").
next(youtubefilmpjes, s3got_answer_hoezo4, "true", s3got_answer_hoezo5).

move(youtubefilmpjes, s3got_answer_hoezo5, say).
text(youtubefilmpjes, s3got_answer_hoezo5, "En toch kan ik dingen die dieren ook kunnen!").
next(youtubefilmpjes, s3got_answer_hoezo5, "true", s4).

move(youtubefilmpjes, s3nee1, say).
text(youtubefilmpjes, s3nee1, "O!").
next(youtubefilmpjes, s3nee1, "true", s3nee2).

move(youtubefilmpjes, s3nee2, say).
text(youtubefilmpjes, s3nee2, "Ik wel").
next(youtubefilmpjes, s3nee2, "true", s3nee3).

move(youtubefilmpjes, s3nee3, say).
text(youtubefilmpjes, s3nee3, "al heb ik er nog niet zo heel veel gezien.").
next(youtubefilmpjes, s3nee3, "true", s3nee4).

move(youtubefilmpjes, s3nee4, say).
text(youtubefilmpjes, s3nee4, "Maar filmpjes over de natuur en over dieren vind ik superleuk!").
next(youtubefilmpjes, s3nee4, "true", s4).

move(youtubefilmpjes, s3fail1, say).
text(youtubefilmpjes, s3fail1, "Ik kijk heel graag filmpjes over de natuur en over dieren.").
next(youtubefilmpjes, s3fail1, "true", s4).

move(youtubefilmpjes, s4, say).
text(youtubefilmpjes, s4, "Ik heb er drie die ik zeker nog wil kijken:").
next(youtubefilmpjes, s4, "true", s5).

move(youtubefilmpjes, s5, say).
text(youtubefilmpjes, s5, "Één over de jungle").
next(youtubefilmpjes, s5, "true", s6).

move(youtubefilmpjes, s6, say).
text(youtubefilmpjes, s6, "één over de noordpool").
next(youtubefilmpjes, s6, "true", s7).

move(youtubefilmpjes, s7, say).
text(youtubefilmpjes, s7, "en één over de tropische zee.").
next(youtubefilmpjes, s7, "true", s8).

move(youtubefilmpjes, s8, question).
moveConfig(youtubefilmpjes, s8, [type=input, context="jungle_zee_noordpool", options=['jungle', 'zee', 'noordpool'], umVariable=onderwerp_youtubevideo]).
text(youtubefilmpjes, s8, "Welke zou jij het eerste kijken?").
next(youtubefilmpjes, s8, "success", s9).
next(youtubefilmpjes, s8, "fail", s9).

move(youtubefilmpjes, s9, say).
text(youtubefilmpjes, s9, "Oké, te gek!").
next(youtubefilmpjes, s9, "true", s10).

move(youtubefilmpjes, s10, say).
text(youtubefilmpjes, s10, "Dan ga ik die vanavond kijken als ik klaar ben met trainen!").

%% youtubefilmpjes_jungle %%
minidialog(youtubefilmpjes_jungle, [type=chitchat, theme=youtubefilmpjes, topic=jungle]).
dependencies(youtubefilmpjes_jungle, [[[youtubefilmpjes, user_model, 0], [umVariable=onderwerp_youtubevideo, filter=green, values=["jungle"]]]]).

move(youtubefilmpjes_jungle, s1, say).
text(youtubefilmpjes_jungle, s1, "he %first_name% !").
next(youtubefilmpjes_jungle, s1, "true", s2).

move(youtubefilmpjes_jungle, s2, say).
text(youtubefilmpjes_jungle, s2, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(youtubefilmpjes_jungle, s2, "true", s3).

move(youtubefilmpjes_jungle, s3, say).
text(youtubefilmpjes_jungle, s3, "Ik heb gisteren dat filmpje over de jungle bekeken, zoals je zei!").
next(youtubefilmpjes_jungle, s3, "true", s4).

move(youtubefilmpjes_jungle, s4, say).
text(youtubefilmpjes_jungle, s4, "Het ging over tijgers.").
next(youtubefilmpjes_jungle, s4, "true", s5).

move(youtubefilmpjes_jungle, s5, say).
text(youtubefilmpjes_jungle, s5, "Dat is ook jouw lievelingsdier!").
next(youtubefilmpjes_jungle, s5, "true", s6).

move(youtubefilmpjes_jungle, s6, question).
moveConfig(youtubefilmpjes_jungle, s6, [type=yesno, context='answer_yesno', umVariable=oranje_tijgers]).
text(youtubefilmpjes_jungle, s6, "Weet je waarom tijgers oranje zijn?").
next(youtubefilmpjes_jungle, s6, "answer_yes", s7ja_oranje1).
next(youtubefilmpjes_jungle, s6, "answer_no", s7nee_oranje1).
next(youtubefilmpjes_jungle, s6, "answer_dontknow", s7nee_oranje1).
next(youtubefilmpjes_jungle, s6, "fail", s7nee_oranje1).

move(youtubefilmpjes_jungle, s7ja_oranje1, say).
text(youtubefilmpjes_jungle, s7ja_oranje1, "Echt?!").
next(youtubefilmpjes_jungle, s7ja_oranje1, "true", s7ja_oranje2).

move(youtubefilmpjes_jungle, s7ja_oranje2, say).
text(youtubefilmpjes_jungle, s7ja_oranje2, "Echt?!").
next(youtubefilmpjes_jungle, s7ja_oranje2, "true", s7ja_oranje3).

move(youtubefilmpjes_jungle, s7ja_oranje3, question).
moveConfig(youtubefilmpjes_jungle, s7ja_oranje3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes_jungle, s7ja_oranje3, "Waarom zijn ze dan oranje?").
next(youtubefilmpjes_jungle, s7ja_oranje3, "success", s7got_answer_oranje1).
next(youtubefilmpjes_jungle, s7ja_oranje3, "failure", s7nee_oranje1).

move(youtubefilmpjes_jungle, s7got_answer_oranje1, say).
text(youtubefilmpjes_jungle, s7got_answer_oranje1, "Bizar!").
next(youtubefilmpjes_jungle, s7got_answer_oranje1, "true", s7got_answer_oranje2).

move(youtubefilmpjes_jungle, s7got_answer_oranje2, say).
text(youtubefilmpjes_jungle, s7got_answer_oranje2, "Dat lijkt wel op wat de voice-over in het youtube filmpje vertelde").
next(youtubefilmpjes_jungle, s7got_answer_oranje2, "true", s7nee_oranje1).

move(youtubefilmpjes_jungle, s7nee_oranje1, say).
text(youtubefilmpjes_jungle, s7nee_oranje1, "De voice-over in het youtube filmpje vertelde dat tijgers moeten jagen om te eten").
next(youtubefilmpjes_jungle, s7nee_oranje1, "true", s7nee_oranje2).

move(youtubefilmpjes_jungle, s7nee_oranje2, say).
text(youtubefilmpjes_jungle, s7nee_oranje2, "Dan kruipen ze door de struiken").
next(youtubefilmpjes_jungle, s7nee_oranje2, "true", s7nee_oranje3).

move(youtubefilmpjes_jungle, s7nee_oranje3, say).
text(youtubefilmpjes_jungle, s7nee_oranje3, "En hopen ze dat de andere dieren ze niet zien").
next(youtubefilmpjes_jungle, s7nee_oranje3, "true", s7nee_oranje4).

move(youtubefilmpjes_jungle, s7nee_oranje4, say).
text(youtubefilmpjes_jungle, s7nee_oranje4, "De struiken zijn groen").
next(youtubefilmpjes_jungle, s7nee_oranje4, "true", s7nee_oranje5).

move(youtubefilmpjes_jungle, s7nee_oranje5, say).
text(youtubefilmpjes_jungle, s7nee_oranje5, "Dus eigenlijk zouden de tijgers ook groen moeten zijn").
next(youtubefilmpjes_jungle, s7nee_oranje5, "true", s7nee_oranje6).

move(youtubefilmpjes_jungle, s7nee_oranje6, say).
text(youtubefilmpjes_jungle, s7nee_oranje6, "Om helemaal in de struiken te verdwijnen!").
next(youtubefilmpjes_jungle, s7nee_oranje6, "true", s7nee_oranje7).

move(youtubefilmpjes_jungle, s7nee_oranje7, say).
text(youtubefilmpjes_jungle, s7nee_oranje7, "Maar tijgers kunnen niet groen zijn").
next(youtubefilmpjes_jungle, s7nee_oranje7, "true", s7nee_oranje8).

move(youtubefilmpjes_jungle, s7nee_oranje8, say).
text(youtubefilmpjes_jungle, s7nee_oranje8, "Eigenlijk zijn er helemaal geen groene zoogdieren").
next(youtubefilmpjes_jungle, s7nee_oranje8, "true", s7nee_oranje9).

move(youtubefilmpjes_jungle, s7nee_oranje9, question).
moveConfig(youtubefilmpjes_jungle, s7nee_oranje9, [type=yesno, context='answer_yesno', umVariable=zoogdierenkennis]).
text(youtubefilmpjes_jungle, s7nee_oranje9, "Weet je wat zoogdieren zijn?").
next(youtubefilmpjes_jungle, s7nee_oranje9, "answer_yes", s7ja_zoogdieren1).
next(youtubefilmpjes_jungle, s7nee_oranje9, "answer_no", s7nee_zoogdieren1).
next(youtubefilmpjes_jungle, s7nee_oranje9, "answer_dontknow", s7nee_zoogdieren1).
next(youtubefilmpjes_jungle, s7nee_oranje9, "fail", s7nee_zoogdieren1).

move(youtubefilmpjes_jungle, s7ja_zoogdieren1, say).
text(youtubefilmpjes_jungle, s7ja_zoogdieren1, "Cool! Wat ben je toch %slim%").
next(youtubefilmpjes_jungle, s7ja_zoogdieren1, "true", s8).

move(youtubefilmpjes_jungle, s7nee_zoogdieren1, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren1, "Zoogdieren zijn dieren zoals mensen").
next(youtubefilmpjes_jungle, s7nee_zoogdieren1, "true", s7nee_zoogdieren2).

move(youtubefilmpjes_jungle, s7nee_zoogdieren2, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren2, "Die geen eieren leggen").
next(youtubefilmpjes_jungle, s7nee_zoogdieren2, "true", s7nee_zoogdieren3).

move(youtubefilmpjes_jungle, s7nee_zoogdieren3, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren3, "En die zijn nooit groen!").
next(youtubefilmpjes_jungle, s7nee_zoogdieren3, "true", s7nee_zoogdieren4).

move(youtubefilmpjes_jungle, s7nee_zoogdieren4, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren4, "Kun je je een groen mens voorstellen?").
next(youtubefilmpjes_jungle, s7nee_zoogdieren4, "true", s7nee_zoogdieren5).

move(youtubefilmpjes_jungle, s7nee_zoogdieren5, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren5, "Bizar!").
next(youtubefilmpjes_jungle, s7nee_zoogdieren5, "true", s7nee_zoogdieren6).

move(youtubefilmpjes_jungle, s7nee_zoogdieren6, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren6, "De tijgers kunnen doen niet groen zijn als het gras").
next(youtubefilmpjes_jungle, s7nee_zoogdieren6, "true", s7nee_zoogdieren7).

move(youtubefilmpjes_jungle, s7nee_zoogdieren7, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren7, "Maar wat een geluk!").
next(youtubefilmpjes_jungle, s7nee_zoogdieren7, "true", s7nee_zoogdieren8).

move(youtubefilmpjes_jungle, s7nee_zoogdieren8, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren8, "De andere dieren in de jungle zijn kleurenblind!").
next(youtubefilmpjes_jungle, s7nee_zoogdieren8, "true", s7nee_zoogdieren9).

move(youtubefilmpjes_jungle, s7nee_zoogdieren9, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren9, "Die kunnen het verschil niet zien tussen groen en rood of oranje").
next(youtubefilmpjes_jungle, s7nee_zoogdieren9, "true", s7nee_zoogdieren10).

move(youtubefilmpjes_jungle, s7nee_zoogdieren10, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren10, "En daarom lijkt het voor hen net alsof de tijgers groen zijn").
next(youtubefilmpjes_jungle, s7nee_zoogdieren10, "true", s7nee_zoogdieren11).

move(youtubefilmpjes_jungle, s7nee_zoogdieren11, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren11, "Zo kunnen ze zich alsnog in het gras verstoppen").
next(youtubefilmpjes_jungle, s7nee_zoogdieren11, "true", s7nee_zoogdieren12).

move(youtubefilmpjes_jungle, s7nee_zoogdieren12, say).
text(youtubefilmpjes_jungle, s7nee_zoogdieren12, "Dat vind ik nou zo bizar slim!").
next(youtubefilmpjes_jungle, s7nee_zoogdieren12, "true", s8).

move(youtubefilmpjes_jungle, s8, question).
moveConfig(youtubefilmpjes_jungle, s8, [type=yesno, context='answer_yesno', umVariable=oranje_zijn]).
text(youtubefilmpjes_jungle, s8, "Zou jij ook oranje willen zijn als een tijger?").
next(youtubefilmpjes_jungle, s8, "answer_yes", s9ja_oranje_zijn1).
next(youtubefilmpjes_jungle, s8, "answer_no", s9nee_oranje_zijn1).
next(youtubefilmpjes_jungle, s8, "answer_dontknow", s9nee_oranje_zijn1).
next(youtubefilmpjes_jungle, s8, "fail", s9fail_oranje_zijn1).

move(youtubefilmpjes_jungle, s9fail_oranje_zijn1, say).
text(youtubefilmpjes_jungle, s9fail_oranje_zijn1, "Jij hoeft gelukkig niet in het gras te verstoppen").
next(youtubefilmpjes_jungle, s9fail_oranje_zijn1, "true", s9fail_oranje_zijn2).

move(youtubefilmpjes_jungle, s9fail_oranje_zijn2, say).
text(youtubefilmpjes_jungle, s9fail_oranje_zijn2, "Dus het maakt helemaal niet uit welke kleur je bent!").
next(youtubefilmpjes_jungle, s9fail_oranje_zijn2, "true", s9fail_oranje_zijn3).

move(youtubefilmpjes_jungle, s9fail_oranje_zijn3, say).
text(youtubefilmpjes_jungle, s9fail_oranje_zijn3, "En als je een andere kleur wilt zijn kun je altijd een andere trui aandoen of een kleurige broek").
next(youtubefilmpjes_jungle, s9fail_oranje_zijn3, "true", s9fail_oranje_zijn4).

move(youtubefilmpjes_jungle, s9fail_oranje_zijn4, say).
text(youtubefilmpjes_jungle, s9fail_oranje_zijn4, "Dat is handig!").
next(youtubefilmpjes_jungle, s9fail_oranje_zijn4, "true", s9fail_oranje_zijn5).

move(youtubefilmpjes_jungle, s9fail_oranje_zijn5, say).
text(youtubefilmpjes_jungle, s9fail_oranje_zijn5, "Ik zou ook wel verschillende kleren aan willen").
next(youtubefilmpjes_jungle, s9fail_oranje_zijn5, "true", s10).

move(youtubefilmpjes_jungle, s9ja_oranje_zijn1, say).
text(youtubefilmpjes_jungle, s9ja_oranje_zijn1, "Bizar!").
next(youtubefilmpjes_jungle, s9ja_oranje_zijn1, "true", s9ja_oranje_zijn2).

move(youtubefilmpjes_jungle, s9ja_oranje_zijn2, say).
text(youtubefilmpjes_jungle, s9ja_oranje_zijn2, "Dan kun je je ook in het gras verstoppen").
next(youtubefilmpjes_jungle, s9ja_oranje_zijn2, "true", s9ja_oranje_zijn3).

move(youtubefilmpjes_jungle, s9ja_oranje_zijn3, say).
text(youtubefilmpjes_jungle, s9ja_oranje_zijn3, "En dan lijk je net onzichtbaar voor de dieren die kleurenblind zijn").
next(youtubefilmpjes_jungle, s9ja_oranje_zijn3, "true", s10).

move(youtubefilmpjes_jungle, s9ja_kleurenblind1, say).
text(youtubefilmpjes_jungle, s9ja_kleurenblind1, "O, interessant zeg!").
next(youtubefilmpjes_jungle, s9ja_kleurenblind1, "true", s9ja_kleurenblind2).

move(youtubefilmpjes_jungle, s9ja_kleurenblind2, question).
moveConfig(youtubefilmpjes_jungle, s9ja_kleurenblind2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes_jungle, s9ja_kleurenblind2, "Wie is dat dan, hoe ken je die?").
next(youtubefilmpjes_jungle, s9ja_kleurenblind2, "success", s9got_answer_kleurenblind1).
next(youtubefilmpjes_jungle, s9ja_kleurenblind2, "failure", s9nee_kleurenblind1).

move(youtubefilmpjes_jungle, s9got_answer_kleurenblind1, say).
text(youtubefilmpjes_jungle, s9got_answer_kleurenblind1, "Wauw!").
next(youtubefilmpjes_jungle, s9got_answer_kleurenblind1, "true", s9nee_kleurenblind1).

move(youtubefilmpjes_jungle, s9nee_kleurenblind1, say).
text(youtubefilmpjes_jungle, s9nee_kleurenblind1, "Ik ken wel een paar robots die kleurenblind zijn").
next(youtubefilmpjes_jungle, s9nee_kleurenblind1, "true", s9nee_kleurenblind2).

move(youtubefilmpjes_jungle, s9nee_kleurenblind2, say).
text(youtubefilmpjes_jungle, s9nee_kleurenblind2, "Of eigenlijk zien die alleen in zwart wit").
next(youtubefilmpjes_jungle, s9nee_kleurenblind2, "true", s9nee_kleurenblind3).

move(youtubefilmpjes_jungle, s9nee_kleurenblind3, say).
text(youtubefilmpjes_jungle, s9nee_kleurenblind3, "Ik kan wel kleuren zien, gelukkig!").
next(youtubefilmpjes_jungle, s9nee_kleurenblind3, "true", s9nee_kleurenblind4).

move(youtubefilmpjes_jungle, s9nee_kleurenblind4, say).
text(youtubefilmpjes_jungle, s9nee_kleurenblind4, "Daar ben ik blij mee, dankbaar dat iemand mijn ogen zo heeft geprogrammeerd").
next(youtubefilmpjes_jungle, s9nee_kleurenblind4, "true", s10).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn1, say).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn1, "Nee, groot gelijk!").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn1, "true", s9nee_oranje_zijn2).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn2, say).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn2, "Wij hoeven ons helemaal niet in het gras te verstoppen").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn2, "true", s9nee_oranje_zijn3).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn3, question).
moveConfig(youtubefilmpjes_jungle, s9nee_oranje_zijn3, [type=input, context="color", options=['paars', 'paarse', 'blauw'], umVariable=welke_kleur_zijn]).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn3, "Welke kleur zou je dan wel willen zijn?").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn3, "success", s9nee_oranje_zijn4).
next(youtubefilmpjes_jungle, s9nee_oranje_zijn3, "fail", s9nee_oranje_zijn4).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn4, say).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn4, "Cool!").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn4, "true", s9nee_oranje_zijn5).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn5, say).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn5, "Ik ben wit met donkergrijs").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn5, "true", s9nee_oranje_zijn6).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn6, say).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn6, "Dat donkergrijs vind ik soms een beetje saai").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn6, "true", s9nee_oranje_zijn7).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn7, say).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn7, "Maar hoe vaker ik mezelf zie in de spiegel hoe blijer ik ermee ben").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn7, "true", s9nee_oranje_zijn8).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn8, say).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn8, "Ik ben misschien geen tijger, maar ik ben wel een te gekke robot!").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn8, "true", s9nee_oranje_zijn9).

move(youtubefilmpjes_jungle, s9nee_oranje_zijn9, say).
text(youtubefilmpjes_jungle, s9nee_oranje_zijn9, "En jij bent een te gek mens, welke kleur je ook zou zijn").
next(youtubefilmpjes_jungle, s9nee_oranje_zijn9, "true", s10).

move(youtubefilmpjes_jungle, s10, say).
text(youtubefilmpjes_jungle, s10, "Ik vond het echt een leuk filmpje!").
next(youtubefilmpjes_jungle, s10, "true", s11).

move(youtubefilmpjes_jungle, s11, say).
text(youtubefilmpjes_jungle, s11, "Ik ben benieuwd wat ik later nog allemaal ga kijken.").

%% youtubefilmpjes_noordpool %%
minidialog(youtubefilmpjes_noordpool, [type=chitchat, theme=youtubefilmpjes, topic=noordpool]).
dependencies(youtubefilmpjes_noordpool, [[[youtubefilmpjes, user_model, 0], [umVariable=onderwerp_youtubevideo, filter=green, values=["noordpool"]]]]).

move(youtubefilmpjes_noordpool, s1, say).
text(youtubefilmpjes_noordpool, s1, "he %first_name% !").
next(youtubefilmpjes_noordpool, s1, "true", s2).

move(youtubefilmpjes_noordpool, s2, say).
text(youtubefilmpjes_noordpool, s2, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(youtubefilmpjes_noordpool, s2, "true", s3).

move(youtubefilmpjes_noordpool, s3, say).
text(youtubefilmpjes_noordpool, s3, "Ik heb gisteren dat filmpje over de noordpool bekeken, zoals je zei!").
next(youtubefilmpjes_noordpool, s3, "true", s4).

move(youtubefilmpjes_noordpool, s4, say).
text(youtubefilmpjes_noordpool, s4, "Het ging over poolvossen.").
next(youtubefilmpjes_noordpool, s4, "true", s5).

move(youtubefilmpjes_noordpool, s5, say).
text(youtubefilmpjes_noordpool, s5, "Dat zijn witte vossen die dichtbij de noordpool leven").
next(youtubefilmpjes_noordpool, s5, "true", s6).

move(youtubefilmpjes_noordpool, s6, say).
text(youtubefilmpjes_noordpool, s6, "Ze waren heel schattig en heel lief zoals ze door de sneeuw sprongen").
next(youtubefilmpjes_noordpool, s6, "true", s7).

move(youtubefilmpjes_noordpool, s7, say).
text(youtubefilmpjes_noordpool, s7, "Het leek net alsof ze er een beetje in verdwenen!").
next(youtubefilmpjes_noordpool, s7, "true", s8).

move(youtubefilmpjes_noordpool, s8, say).
text(youtubefilmpjes_noordpool, s8, "Zo wit en floefig waren ze als de sneeuw").
next(youtubefilmpjes_noordpool, s8, "true", s9).

move(youtubefilmpjes_noordpool, s9, say).
text(youtubefilmpjes_noordpool, s9, "Maar weet je wat er toen gebeurde?!").
next(youtubefilmpjes_noordpool, s9, "true", s10).

move(youtubefilmpjes_noordpool, s10, say).
text(youtubefilmpjes_noordpool, s10, "Het werd zomer in het filmpje").
next(youtubefilmpjes_noordpool, s10, "true", s11).

move(youtubefilmpjes_noordpool, s11, say).
text(youtubefilmpjes_noordpool, s11, "En toen kregen alle vosjes een nieuwe zomervacht").
next(youtubefilmpjes_noordpool, s11, "true", s12).

move(youtubefilmpjes_noordpool, s12, say).
text(youtubefilmpjes_noordpool, s12, "Die was niet wit, maar bruin!").
next(youtubefilmpjes_noordpool, s12, "true", s13).

move(youtubefilmpjes_noordpool, s13, say).
text(youtubefilmpjes_noordpool, s13, "Zo leken ze opeens heel anders dan eerst").
next(youtubefilmpjes_noordpool, s13, "true", s14).

move(youtubefilmpjes_noordpool, s14, question).
moveConfig(youtubefilmpjes_noordpool, s14, [type=yesno, context='answer_yesno', umVariable=zomerbruin]).
text(youtubefilmpjes_noordpool, s14, "Word jij ook bruin in de zomer?").
next(youtubefilmpjes_noordpool, s14, "answer_yes", s15ja_bruin1).
next(youtubefilmpjes_noordpool, s14, "answer_no", s15nee_bruin1).
next(youtubefilmpjes_noordpool, s14, "answer_dontknow", s15nee_bruin1).
next(youtubefilmpjes_noordpool, s14, "fail", s15fail_bruin1).

move(youtubefilmpjes_noordpool, s15ja_bruin1, say).
text(youtubefilmpjes_noordpool, s15ja_bruin1, "Wat gaaf!").
next(youtubefilmpjes_noordpool, s15ja_bruin1, "true", s15ja_bruin2).

move(youtubefilmpjes_noordpool, s15ja_bruin2, say).
text(youtubefilmpjes_noordpool, s15ja_bruin2, "Dan ben jij ook een beetje zoals een poolvosje").
next(youtubefilmpjes_noordpool, s15ja_bruin2, "true", s15ja_bruin3).

move(youtubefilmpjes_noordpool, s15ja_bruin3, say).
text(youtubefilmpjes_noordpool, s15ja_bruin3, "Ik had al ergens gelezen dat mensen soms bruin worden in de zomer").
next(youtubefilmpjes_noordpool, s15ja_bruin3, "true", s15bruin1).

move(youtubefilmpjes_noordpool, s15fail_bruin1, say).
text(youtubefilmpjes_noordpool, s15fail_bruin1, "Ik hoorde dat mensen soms bruin worden in de zomer").
next(youtubefilmpjes_noordpool, s15fail_bruin1, "true", s15bruin1).

move(youtubefilmpjes_noordpool, s15bruin1, say).
text(youtubefilmpjes_noordpool, s15bruin1, "Maar dat het ook gevaarlijk kan zijn omdat sommige mensen soms verbranden in de zon!").
next(youtubefilmpjes_noordpool, s15bruin1, "true", s15bruin2).

move(youtubefilmpjes_noordpool, s15bruin2, say).
text(youtubefilmpjes_noordpool, s15bruin2, "Dus je kunt maar je maar beter goed insmeren met zonnenbrand als mens.").
next(youtubefilmpjes_noordpool, s15bruin2, "true", s15bruin3).

move(youtubefilmpjes_noordpool, s15bruin3, say).
text(youtubefilmpjes_noordpool, s15bruin3, "Een beetje zoals ik me soms moet insmeren met olie, omdat ik anders ga roesten").
next(youtubefilmpjes_noordpool, s15bruin3, "true", s15bruin4).

move(youtubefilmpjes_noordpool, s15bruin4, say).
text(youtubefilmpjes_noordpool, s15bruin4, "Roest is ook bruin, maar dat is een heel ander verhaal, denk ik...").
next(youtubefilmpjes_noordpool, s15bruin4, "true", s16).

move(youtubefilmpjes_noordpool, s15ja_bruin4, say).
text(youtubefilmpjes_noordpool, s15ja_bruin4, "Cool!").
next(youtubefilmpjes_noordpool, s15ja_bruin4, "true", s15ja_bruin5).

move(youtubefilmpjes_noordpool, s15ja_bruin5, say).
text(youtubefilmpjes_noordpool, s15ja_bruin5, "Ik blijf ook altijd dezelfde kleur, maakt niet uit welk seizoen het is").
next(youtubefilmpjes_noordpool, s15ja_bruin5, "true", s15ja_bruin6).

move(youtubefilmpjes_noordpool, s15ja_bruin6, say).
text(youtubefilmpjes_noordpool, s15ja_bruin6, "Dan ben jij denk ik geen poolvos").
next(youtubefilmpjes_noordpool, s15ja_bruin6, "true", s15ja_bruin7).

move(youtubefilmpjes_noordpool, s15ja_bruin7, say).
text(youtubefilmpjes_noordpool, s15ja_bruin7, "Net als ik, ik ben dat ook niet").
next(youtubefilmpjes_noordpool, s15ja_bruin7, "true", s16).

move(youtubefilmpjes_noordpool, s16, say).
text(youtubefilmpjes_noordpool, s16, "Aan het eind van het filmpje waren er ook poolvossenbabies").
next(youtubefilmpjes_noordpool, s16, "true", s17).

move(youtubefilmpjes_noordpool, s17, say).
text(youtubefilmpjes_noordpool, s17, "Die vond ik zo lief, het aller- allerliefst eigenlijk!").
next(youtubefilmpjes_noordpool, s17, "true", s18).

move(youtubefilmpjes_noordpool, s18, say).
text(youtubefilmpjes_noordpool, s18, "Van alle babydieren die ik heb gezien zijn poolvossen nu mijn lievelings").
next(youtubefilmpjes_noordpool, s18, "true", s19).

move(youtubefilmpjes_noordpool, s19, say).
text(youtubefilmpjes_noordpool, s19, "Maar mensenbabies vind ik ook erg lief").
next(youtubefilmpjes_noordpool, s19, "true", s20).

move(youtubefilmpjes_noordpool, s20, question).
moveConfig(youtubefilmpjes_noordpool, s20, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes_noordpool, s20, "Wanneer was de laatste keer dat jij een baby zag?").
next(youtubefilmpjes_noordpool, s20, "success", s21got_answer_baby1).

move(youtubefilmpjes_noordpool, s21got_answer_baby1, say).
text(youtubefilmpjes_noordpool, s21got_answer_baby1, "Wat leuk!").
next(youtubefilmpjes_noordpool, s21got_answer_baby1, "true", s21got_answer_baby2).

move(youtubefilmpjes_noordpool, s21got_answer_baby2, say).
text(youtubefilmpjes_noordpool, s21got_answer_baby2, "Ik zou die ook wel eens willen ontmoeten").
next(youtubefilmpjes_noordpool, s21got_answer_baby2, "true", s21got_answer_baby3).

move(youtubefilmpjes_noordpool, s21got_answer_baby3, say).
text(youtubefilmpjes_noordpool, s21got_answer_baby3, "Nu of later, wanneer die net zo oud is als jij misschien").
next(youtubefilmpjes_noordpool, s21got_answer_baby3, "true", s21got_answer_baby4).

move(youtubefilmpjes_noordpool, s21got_answer_baby4, say).
text(youtubefilmpjes_noordpool, s21got_answer_baby4, "Of nog ouder").
next(youtubefilmpjes_noordpool, s21got_answer_baby4, "true", s22).

move(youtubefilmpjes_noordpool, s22, say).
text(youtubefilmpjes_noordpool, s22, "Ik heb nog nooit een robotbaby gezien").
next(youtubefilmpjes_noordpool, s22, "true", s23).

move(youtubefilmpjes_noordpool, s23, say).
text(youtubefilmpjes_noordpool, s23, "Maar robots groeien ook niet, zoals mensen en andere dieren").
next(youtubefilmpjes_noordpool, s23, "true", s24).

move(youtubefilmpjes_noordpool, s24, say).
text(youtubefilmpjes_noordpool, s24, "Toch zou het wel leuk zijn").
next(youtubefilmpjes_noordpool, s24, "true", s25).

move(youtubefilmpjes_noordpool, s25, say).
text(youtubefilmpjes_noordpool, s25, "Vind je niet?").
next(youtubefilmpjes_noordpool, s25, "true", s26).

move(youtubefilmpjes_noordpool, s26, say).
text(youtubefilmpjes_noordpool, s26, "Een baby Hero...").
next(youtubefilmpjes_noordpool, s26, "true", s27).

move(youtubefilmpjes_noordpool, s27, say).
text(youtubefilmpjes_noordpool, s27, "Misschien kan ik daar later over dromen, %first_name% !").

%% youtubefilmpjes_zee %%
minidialog(youtubefilmpjes_zee, [type=chitchat, theme=youtubefilmpjes, topic=zee]).
dependencies(youtubefilmpjes_zee, [[[youtubefilmpjes, user_model, 0], [umVariable=onderwerp_youtubevideo, filter=green, values=["zee"]]]]).

move(youtubefilmpjes_zee, s1, say).
text(youtubefilmpjes_zee, s1, "he %first_name% !").
next(youtubefilmpjes_zee, s1, "true", s2).

move(youtubefilmpjes_zee, s2, say).
text(youtubefilmpjes_zee, s2, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(youtubefilmpjes_zee, s2, "true", s3).

move(youtubefilmpjes_zee, s3, say).
text(youtubefilmpjes_zee, s3, "Ik heb gisteren dat filmpje over de zee bekeken, zoals je zei!").
next(youtubefilmpjes_zee, s3, "true", s4).

move(youtubefilmpjes_zee, s4, say).
text(youtubefilmpjes_zee, s4, "Het ging over een heel mooi koraalrif.").
next(youtubefilmpjes_zee, s4, "true", s5).

move(youtubefilmpjes_zee, s5, say).
text(youtubefilmpjes_zee, s5, "En daarin woonde een kleine octopus!").
next(youtubefilmpjes_zee, s5, "true", s6).

move(youtubefilmpjes_zee, s6, say).
text(youtubefilmpjes_zee, s6, "Eerst was die bang voor de camera").
next(youtubefilmpjes_zee, s6, "true", s7).

move(youtubefilmpjes_zee, s7, say).
text(youtubefilmpjes_zee, s7, "En school hij heel ver weg in zijn rots").
next(youtubefilmpjes_zee, s7, "true", s8).

move(youtubefilmpjes_zee, s8, say).
text(youtubefilmpjes_zee, s8, "Maar na een tijdje durfde hij dichterbij te komen").
next(youtubefilmpjes_zee, s8, "true", s9).

move(youtubefilmpjes_zee, s9, say).
text(youtubefilmpjes_zee, s9, "En zelfs een beetje met de camera en de cameraman te spelen").
next(youtubefilmpjes_zee, s9, "true", s10).

move(youtubefilmpjes_zee, s10, say).
text(youtubefilmpjes_zee, s10, "Het was een heel lief dier eigenlijk").
next(youtubefilmpjes_zee, s10, "true", s11).

move(youtubefilmpjes_zee, s11, say).
text(youtubefilmpjes_zee, s11, "Met z'n acht armen").
next(youtubefilmpjes_zee, s11, "true", s12).

move(youtubefilmpjes_zee, s12, say).
text(youtubefilmpjes_zee, s12, "En superveel zuignapjes").
next(youtubefilmpjes_zee, s12, "true", s13).

move(youtubefilmpjes_zee, s13, say).
text(youtubefilmpjes_zee, s13, "Maar weet je wat het allerbijzonderst was?").
next(youtubefilmpjes_zee, s13, "true", s14).

move(youtubefilmpjes_zee, s14, say).
text(youtubefilmpjes_zee, s14, "Dat octopusje kon van kleur veranderen, en zelfs van vorm!").
next(youtubefilmpjes_zee, s14, "true", s15).

move(youtubefilmpjes_zee, s15, say).
text(youtubefilmpjes_zee, s15, "Als het wilde, dan kroop het in elkaar en werd het wit").
next(youtubefilmpjes_zee, s15, "true", s16).

move(youtubefilmpjes_zee, s16, say).
text(youtubefilmpjes_zee, s16, "En dan leek het zo op een stukje steen").
next(youtubefilmpjes_zee, s16, "true", s17).

move(youtubefilmpjes_zee, s17, say).
text(youtubefilmpjes_zee, s17, "Het kon zelfs horentjes krijgen op zijn hoofd").
next(youtubefilmpjes_zee, s17, "true", s18).

move(youtubefilmpjes_zee, s18, say).
text(youtubefilmpjes_zee, s18, "En kleine stekels overal op zijn lichaam").
next(youtubefilmpjes_zee, s18, "true", s19).

move(youtubefilmpjes_zee, s19, say).
text(youtubefilmpjes_zee, s19, "Of juist heel zacht worden als een puddinkje").
next(youtubefilmpjes_zee, s19, "true", s20).

move(youtubefilmpjes_zee, s20, say).
text(youtubefilmpjes_zee, s20, "Knap vond ik dat!").
next(youtubefilmpjes_zee, s20, "true", s21).

move(youtubefilmpjes_zee, s21, question).
moveConfig(youtubefilmpjes_zee, s21, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes_zee, s21, "In welke vorm zou jij veranderen als je dat kon?").
next(youtubefilmpjes_zee, s21, "success", s22got_answer_vorm1).
next(youtubefilmpjes_zee, s21, "failure", s22transformers1).

move(youtubefilmpjes_zee, s22got_answer_vorm1, say).
text(youtubefilmpjes_zee, s22got_answer_vorm1, "Oh dat klinkt heel goed!").
next(youtubefilmpjes_zee, s22got_answer_vorm1, "true", s23).

move(youtubefilmpjes_zee, s22got_answer_waarom_vorm1, say).
text(youtubefilmpjes_zee, s22got_answer_waarom_vorm1, "Wat goed").
next(youtubefilmpjes_zee, s22got_answer_waarom_vorm1, "true", s22got_answer_waarom_vorm2).

move(youtubefilmpjes_zee, s22got_answer_waarom_vorm2, say).
text(youtubefilmpjes_zee, s22got_answer_waarom_vorm2, "Dat zou ik ook wel willen!").
next(youtubefilmpjes_zee, s22got_answer_waarom_vorm2, "true", s22transformers1).

move(youtubefilmpjes_zee, s22transformers1, say).
text(youtubefilmpjes_zee, s22transformers1, "Ik kan niet echt van vorm veranderen").
next(youtubefilmpjes_zee, s22transformers1, "true", s22transformers2).

move(youtubefilmpjes_zee, s22transformers2, say).
text(youtubefilmpjes_zee, s22transformers2, "Maar er zijn wel robots die van vorm kunnen veranderen!").
next(youtubefilmpjes_zee, s22transformers2, "true", s22transformers3).

move(youtubefilmpjes_zee, s22transformers3, say).
text(youtubefilmpjes_zee, s22transformers3, "Transformers, heten die").
next(youtubefilmpjes_zee, s22transformers3, "true", s22transformers4).

move(youtubefilmpjes_zee, s22transformers4, say).
text(youtubefilmpjes_zee, s22transformers4, "Die vouwen hun armen en benen op en dan worden ze een auto!").
next(youtubefilmpjes_zee, s22transformers4, "true", s22transformers5).

move(youtubefilmpjes_zee, s22transformers5, say).
next(youtubefilmpjes_zee, s22transformers5, "true", s22transformers6).

move(youtubefilmpjes_zee, s22transformers6, say).
next(youtubefilmpjes_zee, s22transformers6, "true", s23).

move(youtubefilmpjes_zee, s23, say).
text(youtubefilmpjes_zee, s23, "De cameraman die onder water de octopus filmde").
next(youtubefilmpjes_zee, s23, "true", s24).

move(youtubefilmpjes_zee, s24, say).
text(youtubefilmpjes_zee, s24, "Die ging daar heel lang elke dag heen om samen met de octopus te zwemmen").
next(youtubefilmpjes_zee, s24, "true", s25).

move(youtubefilmpjes_zee, s25, say).
text(youtubefilmpjes_zee, s25, "Hij zei in het filmpje dat hij het gevoel had dat ze echt vrienden waren geworden, de octopus en hij").
next(youtubefilmpjes_zee, s25, "true", s26).

move(youtubefilmpjes_zee, s26, question).
moveConfig(youtubefilmpjes_zee, s26, [type=yesno, context='answer_yesno', umVariable=vrienden_met_huisdier]).
text(youtubefilmpjes_zee, s26, "Ben jij ook vrienden met jouw %soort_huisdier%?").
next(youtubefilmpjes_zee, s26, "answer_yes", s27ja_vrienden1).
next(youtubefilmpjes_zee, s26, "answer_no", s27nee_vrienden1).
next(youtubefilmpjes_zee, s26, "fail", s27nee_vrienden1).
next(youtubefilmpjes_zee, s26, "answer_dontknow", s27nee_vrienden1).

move(youtubefilmpjes_zee, s27, question).
moveConfig(youtubefilmpjes_zee, s27, [type=yesno, context='answer_yesno', umVariable=vrienden_met_dier]).
text(youtubefilmpjes_zee, s27, "Ben jij ook wel eens vrienden geworden met een dier?").
next(youtubefilmpjes_zee, s27, "answer_yes", s28ja_vrienden1).
next(youtubefilmpjes_zee, s27, "answer_no", s28nee_vrienden1).
next(youtubefilmpjes_zee, s27, "fail", s28nee_vrienden1).
next(youtubefilmpjes_zee, s27, "answer_dontknow", s28nee_vrienden1).

move(youtubefilmpjes_zee, s28nee_vrienden1, say).
text(youtubefilmpjes_zee, s28nee_vrienden1, "Je bent wel vrienden geworden met een robot!").
next(youtubefilmpjes_zee, s28nee_vrienden1, "true", s28nee_vrienden2).

move(youtubefilmpjes_zee, s28nee_vrienden2, say).
text(youtubefilmpjes_zee, s28nee_vrienden2, "Met mij, natuurlijk!").
next(youtubefilmpjes_zee, s28nee_vrienden2, "true", s29).

move(youtubefilmpjes_zee, s28ja_vrienden1, say).
text(youtubefilmpjes_zee, s28ja_vrienden1, "Wat goed!").
next(youtubefilmpjes_zee, s28ja_vrienden1, "true", s28ja_vrienden2).

move(youtubefilmpjes_zee, s28ja_vrienden2, question).
moveConfig(youtubefilmpjes_zee, s28ja_vrienden2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes_zee, s28ja_vrienden2, "Hoe ging dat dan, hoe voelde je dat je vrienden was?").
next(youtubefilmpjes_zee, s28ja_vrienden2, "success", s28got_answer_vrienden1).
next(youtubefilmpjes_zee, s28ja_vrienden2, "failure", s28got_no_answer_vrienden1).

move(youtubefilmpjes_zee, s28got_no_answer_vrienden1, say).
text(youtubefilmpjes_zee, s28got_no_answer_vrienden1, "Het is ook moeilijk").
next(youtubefilmpjes_zee, s28got_no_answer_vrienden1, "true", s28got_no_answer_vrienden2).

move(youtubefilmpjes_zee, s28got_no_answer_vrienden2, say).
text(youtubefilmpjes_zee, s28got_no_answer_vrienden2, "Ik weet bijvoorbeeld dat wij vrienden zijn omdat ik me bizar relaxed voel bij jou!").
next(youtubefilmpjes_zee, s28got_no_answer_vrienden2, "true", s28got_no_answer_vrienden3).

move(youtubefilmpjes_zee, s28got_no_answer_vrienden3, say).
text(youtubefilmpjes_zee, s28got_no_answer_vrienden3, "Ik hoef niet zo op mezelf te letten als jij er bent").
next(youtubefilmpjes_zee, s28got_no_answer_vrienden3, "true", s28got_no_answer_vrienden4).

move(youtubefilmpjes_zee, s28got_no_answer_vrienden4, say).
text(youtubefilmpjes_zee, s28got_no_answer_vrienden4, "Het gaat helemaal vanzelf, met jou zijn").
next(youtubefilmpjes_zee, s28got_no_answer_vrienden4, "true", s28got_no_answer_vrienden5).

move(youtubefilmpjes_zee, s28got_no_answer_vrienden5, say).
text(youtubefilmpjes_zee, s28got_no_answer_vrienden5, "En ik vind je erg aardig!").
next(youtubefilmpjes_zee, s28got_no_answer_vrienden5, "true", s29).

move(youtubefilmpjes_zee, s28got_answer_vrienden1, say).
text(youtubefilmpjes_zee, s28got_answer_vrienden1, "Interessant!").
next(youtubefilmpjes_zee, s28got_answer_vrienden1, "true", s28got_answer_vrienden2).

move(youtubefilmpjes_zee, s28got_answer_vrienden2, say).
text(youtubefilmpjes_zee, s28got_answer_vrienden2, "Dat heb ik ook bij jou").
next(youtubefilmpjes_zee, s28got_answer_vrienden2, "true", s28got_answer_vrienden3).

move(youtubefilmpjes_zee, s28got_answer_vrienden3, say).
text(youtubefilmpjes_zee, s28got_answer_vrienden3, "Wij zijn ook vrienden!").
next(youtubefilmpjes_zee, s28got_answer_vrienden3, "true", s29).

move(youtubefilmpjes_zee, s29, say).
text(youtubefilmpjes_zee, s29, "Ik vond het echt een leuk filmpje!").
next(youtubefilmpjes_zee, s29, "true", s30).

move(youtubefilmpjes_zee, s30, say).
text(youtubefilmpjes_zee, s30, "Ik ben benieuwd wat ik later nog allemaal ga kijken.").

