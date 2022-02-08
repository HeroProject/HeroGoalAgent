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
moveConfig(youtubefilmpjes, s3ja2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=wat_voor_youtube]).
text(youtubefilmpjes, s3ja2, "Wat voor video's kijk jij het liefst?").
next(youtubefilmpjes, s3ja2, "success", s3got_answer_vid1).
next(youtubefilmpjes, s3ja2, "fail", s3fail1).

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
moveConfig(youtubefilmpjes, s3got_answer_vid4, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=hoezo_youtube]).
text(youtubefilmpjes, s3got_answer_vid4, "Hoe kwam je erop om dat soort filmpjes te kijken?").
next(youtubefilmpjes, s3got_answer_vid4, "success", s3got_answer_hoezo1).
next(youtubefilmpjes, s3got_answer_vid4, "fail", s3fail1).

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
text(youtubefilmpjes, s3nee1, "Oke, helemaal prima.").
next(youtubefilmpjes, s3nee1, "true", s3nee2).

move(youtubefilmpjes, s3nee2, say).
text(youtubefilmpjes, s3nee2, "Ik vind het zelf erg leuk om filmpjes op Youtube te kijken").
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
moveConfig(youtubefilmpjes, s8, [type=input, context="jungle_zee_noordpool", options=['jungle', 'zee', 'noordpool'], fast=yes, umVariable=onderwerp_youtubevideo]).
text(youtubefilmpjes, s8, "Welke zou jij het eerste kijken?").
next(youtubefilmpjes, s8, "success", s9).
next(youtubefilmpjes, s8, "fail", s9).

move(youtubefilmpjes, s9, question).
moveConfig(youtubefilmpjes, s9, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes, s9, "Waarom lijkt die jouw het leukste?").
next(youtubefilmpjes, s9, "success", s10).
next(youtubefilmpjes, s9, "fail", s10).

move(youtubefilmpjes, s10, say).
text(youtubefilmpjes, s10, "Oké, te gek!").
next(youtubefilmpjes, s10, "true", s11).

move(youtubefilmpjes, s11, say).
text(youtubefilmpjes, s11, "Dan ga ik die vanavond kijken als ik klaar ben met trainen!").

%% youtubefilmpjes_jungle %%
minidialog(youtubefilmpjes_jungle, [type=chitchat, theme=youtubefilmpjes, topic=jungle]).
dependencies(youtubefilmpjes_jungle, [[[youtubefilmpjes, user_model, 0], [umVariable=onderwerp_youtubevideo, filter=green, values=["jungle"]]]]).

move(youtubefilmpjes_jungle, s1, say).
start_interaction_probe(youtubefilmpjes_jungle, s1).
next(youtubefilmpjes_jungle, s1, "true", s2).

move(youtubefilmpjes_jungle, s2, say).
text(youtubefilmpjes_jungle, s2, "he %first_name% !").
next(youtubefilmpjes_jungle, s2, "true", s3).

move(youtubefilmpjes_jungle, s3, say).
text(youtubefilmpjes_jungle, s3, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(youtubefilmpjes_jungle, s3, "true", s4).

move(youtubefilmpjes_jungle, s4, say).
text(youtubefilmpjes_jungle, s4, "Ik heb gisteren dat filmpje over de jungle bekeken, zoals je zei!").
next(youtubefilmpjes_jungle, s4, "true", s5).

move(youtubefilmpjes_jungle, s5, say).
text(youtubefilmpjes_jungle, s5, "Het ging over tijgers.").
next(youtubefilmpjes_jungle, s5, "true", s6).

move(youtubefilmpjes_jungle, s6, continuator).
next(youtubefilmpjes_jungle, s6, [[umVariable=lievelingsdier, filter=green, values=["tijger"]]], s7ook_huisdier1).
next(youtubefilmpjes_jungle, s6, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s7ander_huisdier1).
next(youtubefilmpjes_jungle, s6, "true", s8).

move(youtubefilmpjes_jungle, s7ook_huisdier1, say).
text(youtubefilmpjes_jungle, s7ook_huisdier1, "Dat is ook jouw lievelingsdier!").
next(youtubefilmpjes_jungle, s7ook_huisdier1, "true", s8).

move(youtubefilmpjes_jungle, s7ander_huisdier1, say).
text(youtubefilmpjes_jungle, s7ander_huisdier1, "Behalve jouw lievelingsdier, een %lievelingsdier%, vind ik een tijger ook een leuk dier.").
next(youtubefilmpjes_jungle, s7ander_huisdier1, "true", s8).

move(youtubefilmpjes_jungle, s8, say).
text(youtubefilmpjes_jungle, s8, "De voice-over in het youtube filmpje vertelde dat tijgers moeten jagen om te eten").
stop_interaction_probe(youtubefilmpjes_jungle, s8).
next(youtubefilmpjes_jungle, s8, "true", s9).

move(youtubefilmpjes_jungle, s9, say).
text(youtubefilmpjes_jungle, s9, "Dan kruipen ze door de struiken").
next(youtubefilmpjes_jungle, s9, "true", s10).

move(youtubefilmpjes_jungle, s10, say).
text(youtubefilmpjes_jungle, s10, "En hopen ze dat de andere dieren ze niet zien").
next(youtubefilmpjes_jungle, s10, "true", s11).

move(youtubefilmpjes_jungle, s11, say).
text(youtubefilmpjes_jungle, s11, "De struiken zijn groen").
next(youtubefilmpjes_jungle, s11, "true", s12).

move(youtubefilmpjes_jungle, s12, say).
text(youtubefilmpjes_jungle, s12, "Dus eigenlijk zouden de tijgers ook groen moeten zijn").
next(youtubefilmpjes_jungle, s12, "true", s13).

move(youtubefilmpjes_jungle, s13, say).
text(youtubefilmpjes_jungle, s13, "Maar wat een geluk!").
next(youtubefilmpjes_jungle, s13, "true", s14).

move(youtubefilmpjes_jungle, s14, say).
text(youtubefilmpjes_jungle, s14, "De andere dieren in de jungle zijn kleurenblind!").
next(youtubefilmpjes_jungle, s14, "true", s15).

move(youtubefilmpjes_jungle, s15, say).
text(youtubefilmpjes_jungle, s15, "Die kunnen het verschil niet zien tussen groen en rood of oranje").
next(youtubefilmpjes_jungle, s15, "true", s16).

move(youtubefilmpjes_jungle, s16, say).
text(youtubefilmpjes_jungle, s16, "En daarom lijkt het voor hen net alsof de tijgers groen zijn").
next(youtubefilmpjes_jungle, s16, "true", s17).

move(youtubefilmpjes_jungle, s17, say).
text(youtubefilmpjes_jungle, s17, "Zo kunnen ze zich alsnog in het gras verstoppen").
next(youtubefilmpjes_jungle, s17, "true", s18).

move(youtubefilmpjes_jungle, s18, say).
text(youtubefilmpjes_jungle, s18, "Dat vind ik nou zo bizar slim!").
next(youtubefilmpjes_jungle, s18, "true", s19).

move(youtubefilmpjes_jungle, s19, question).
moveConfig(youtubefilmpjes_jungle, s19, [type=yesno, context='answer_yesno']).
text(youtubefilmpjes_jungle, s19, "Zou jij ook oranje willen zijn als een tijger?").
next(youtubefilmpjes_jungle, s19, "answer_yes", s20ja_oranje_zijn1).
next(youtubefilmpjes_jungle, s19, "answer_no", s20nee_oranje_zijn1).
next(youtubefilmpjes_jungle, s19, "answer_dontknow", s20nee_oranje_zijn1).
next(youtubefilmpjes_jungle, s19, "fail", s20fail_oranje_zijn1).

move(youtubefilmpjes_jungle, s20fail_oranje_zijn1, say).
text(youtubefilmpjes_jungle, s20fail_oranje_zijn1, "Jij hoeft gelukkig niet in het gras te verstoppen").
next(youtubefilmpjes_jungle, s20fail_oranje_zijn1, "true", s20fail_oranje_zijn2).

move(youtubefilmpjes_jungle, s20fail_oranje_zijn2, say).
text(youtubefilmpjes_jungle, s20fail_oranje_zijn2, "Dus het maakt helemaal niet uit welke kleur je bent!").
next(youtubefilmpjes_jungle, s20fail_oranje_zijn2, "true", s20fail_oranje_zijn3).

move(youtubefilmpjes_jungle, s20fail_oranje_zijn3, say).
text(youtubefilmpjes_jungle, s20fail_oranje_zijn3, "En als je een andere kleur wilt zijn kun je altijd een andere trui aandoen of een kleurige broek").
next(youtubefilmpjes_jungle, s20fail_oranje_zijn3, "true", s20fail_oranje_zijn4).

move(youtubefilmpjes_jungle, s20fail_oranje_zijn4, say).
text(youtubefilmpjes_jungle, s20fail_oranje_zijn4, "Dat is handig!").
next(youtubefilmpjes_jungle, s20fail_oranje_zijn4, "true", s20fail_oranje_zijn5).

move(youtubefilmpjes_jungle, s20fail_oranje_zijn5, say).
text(youtubefilmpjes_jungle, s20fail_oranje_zijn5, "Ik zou ook wel verschillende kleuren aan willen").
next(youtubefilmpjes_jungle, s20fail_oranje_zijn5, "true", s21).

move(youtubefilmpjes_jungle, s20ja_oranje_zijn1, say).
text(youtubefilmpjes_jungle, s20ja_oranje_zijn1, "Bizar!").
next(youtubefilmpjes_jungle, s20ja_oranje_zijn1, "true", s20ja_oranje_zijn2).

move(youtubefilmpjes_jungle, s20ja_oranje_zijn2, question).
moveConfig(youtubefilmpjes_jungle, s20ja_oranje_zijn2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes_jungle, s20ja_oranje_zijn2, "Waarom zou jij oranje willen zijn dan?").
next(youtubefilmpjes_jungle, s20ja_oranje_zijn2, "success", s21).
next(youtubefilmpjes_jungle, s20ja_oranje_zijn2, "fail", s21).

move(youtubefilmpjes_jungle, s20nee_oranje_zijn1, say).
text(youtubefilmpjes_jungle, s20nee_oranje_zijn1, "Nee, groot gelijk!").
next(youtubefilmpjes_jungle, s20nee_oranje_zijn1, "true", s20nee_oranje_zijn2).

move(youtubefilmpjes_jungle, s20nee_oranje_zijn2, question).
moveConfig(youtubefilmpjes_jungle, s20nee_oranje_zijn2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes_jungle, s20nee_oranje_zijn2, "Waarom zou jij niet oranje willen zijn dan?").
next(youtubefilmpjes_jungle, s20nee_oranje_zijn2, "success", s21).
next(youtubefilmpjes_jungle, s20nee_oranje_zijn2, "fail", s21).

move(youtubefilmpjes_jungle, s21, say).
text(youtubefilmpjes_jungle, s21, "Ik vond het echt een leuk filmpje!").
next(youtubefilmpjes_jungle, s21, "true", s22).

move(youtubefilmpjes_jungle, s22, say).
text(youtubefilmpjes_jungle, s22, "Ik ben benieuwd wat ik later nog allemaal ga kijken.").

%% youtubefilmpjes_noordpool %%
minidialog(youtubefilmpjes_noordpool, [type=chitchat, theme=youtubefilmpjes, topic=noordpool]).
dependencies(youtubefilmpjes_noordpool, [[[youtubefilmpjes, user_model, 0], [umVariable=onderwerp_youtubevideo, filter=green, values=["noordpool"]]]]).

move(youtubefilmpjes_noordpool, s1, say).
start_interaction_probe(youtubefilmpjes_noordpool, s1).
next(youtubefilmpjes_noordpool, s1, "true", s2).

move(youtubefilmpjes_noordpool, s2, say).
text(youtubefilmpjes_noordpool, s2, "he %first_name% !").
next(youtubefilmpjes_noordpool, s2, "true", s3).

move(youtubefilmpjes_noordpool, s3, say).
text(youtubefilmpjes_noordpool, s3, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(youtubefilmpjes_noordpool, s3, "true", s4).

move(youtubefilmpjes_noordpool, s4, say).
text(youtubefilmpjes_noordpool, s4, "Ik heb gisteren dat filmpje over de noordpool bekeken, zoals je zei!").
next(youtubefilmpjes_noordpool, s4, "true", s5).

move(youtubefilmpjes_noordpool, s5, say).
text(youtubefilmpjes_noordpool, s5, "Het ging over poolvossen.").
next(youtubefilmpjes_noordpool, s5, "true", s6).

move(youtubefilmpjes_noordpool, s6, say).
text(youtubefilmpjes_noordpool, s6, "Dat zijn witte vossen die dichtbij de noordpool leven").
stop_interaction_probe(youtubefilmpjes_noordpool, s6).
next(youtubefilmpjes_noordpool, s6, "true", s7).

move(youtubefilmpjes_noordpool, s7, say).
text(youtubefilmpjes_noordpool, s7, "Ze waren heel schattig en heel lief zoals ze door de sneeuw sprongen").
next(youtubefilmpjes_noordpool, s7, "true", s8).

move(youtubefilmpjes_noordpool, s8, say).
text(youtubefilmpjes_noordpool, s8, "Maar weet je wat er toen gebeurde?!").
next(youtubefilmpjes_noordpool, s8, "true", s9).

move(youtubefilmpjes_noordpool, s9, say).
text(youtubefilmpjes_noordpool, s9, "Het werd zomer in het filmpje").
next(youtubefilmpjes_noordpool, s9, "true", s10).

move(youtubefilmpjes_noordpool, s10, say).
text(youtubefilmpjes_noordpool, s10, "En toen kregen alle vosjes een nieuwe zomervacht").
next(youtubefilmpjes_noordpool, s10, "true", s11).

move(youtubefilmpjes_noordpool, s11, say).
text(youtubefilmpjes_noordpool, s11, "Die was niet wit, maar bruin!").
next(youtubefilmpjes_noordpool, s11, "true", s12).

move(youtubefilmpjes_noordpool, s12, say).
text(youtubefilmpjes_noordpool, s12, "Zo leken ze opeens heel anders dan eerst").
next(youtubefilmpjes_noordpool, s12, "true", s13).

move(youtubefilmpjes_noordpool, s13, question).
moveConfig(youtubefilmpjes_noordpool, s13, [type=yesno, context='answer_yesno', umVariable=zomerbruin]).
text(youtubefilmpjes_noordpool, s13, "Word jij ook bruiner in de zomer?").
next(youtubefilmpjes_noordpool, s13, "answer_yes", s14ja_bruin1).
next(youtubefilmpjes_noordpool, s13, "answer_no", s14nee_bruin1).
next(youtubefilmpjes_noordpool, s13, "answer_dontknow", s14nee_bruin1).
next(youtubefilmpjes_noordpool, s13, "fail", s14fail_bruin1).

move(youtubefilmpjes_noordpool, s14ja_bruin1, say).
text(youtubefilmpjes_noordpool, s14ja_bruin1, "Wat gaaf!").
next(youtubefilmpjes_noordpool, s14ja_bruin1, "true", s14ja_bruin2).

move(youtubefilmpjes_noordpool, s14ja_bruin2, say).
text(youtubefilmpjes_noordpool, s14ja_bruin2, "Dan ben jij ook een beetje zoals een poolvosje").
next(youtubefilmpjes_noordpool, s14ja_bruin2, "true", s14ja_bruin3).

move(youtubefilmpjes_noordpool, s14ja_bruin3, say).
text(youtubefilmpjes_noordpool, s14ja_bruin3, "Ik had al ergens gelezen dat mensen soms bruiner worden in de zomer").
next(youtubefilmpjes_noordpool, s14ja_bruin3, "true", s14bruin1).

move(youtubefilmpjes_noordpool, s14fail_bruin1, say).
text(youtubefilmpjes_noordpool, s14fail_bruin1, "Ik hoorde dat mensen soms bruiner worden in de zomer").
next(youtubefilmpjes_noordpool, s14fail_bruin1, "true", s14bruin1).

move(youtubefilmpjes_noordpool, s14bruin1, say).
text(youtubefilmpjes_noordpool, s14bruin1, "Maar dat het ook gevaarlijk kan zijn omdat sommige mensen soms verbranden in de zon!").
next(youtubefilmpjes_noordpool, s14bruin1, "true", s14bruin2).

move(youtubefilmpjes_noordpool, s14bruin2, say).
text(youtubefilmpjes_noordpool, s14bruin2, "Dus je kunt maar je maar beter goed insmeren met zonnenbrand als mens.").
next(youtubefilmpjes_noordpool, s14bruin2, "true", s14bruin3).

move(youtubefilmpjes_noordpool, s14bruin3, say).
text(youtubefilmpjes_noordpool, s14bruin3, "Een beetje zoals ik me soms moet insmeren met olie, omdat ik anders ga roesten").
next(youtubefilmpjes_noordpool, s14bruin3, "true", s14bruin4).

move(youtubefilmpjes_noordpool, s14bruin4, say).
text(youtubefilmpjes_noordpool, s14bruin4, "Roest is ook bruin, maar dat is een heel ander verhaal, denk ik.").
next(youtubefilmpjes_noordpool, s14bruin4, "true", s15).

move(youtubefilmpjes_noordpool, s14nee_bruin1, say).
text(youtubefilmpjes_noordpool, s14nee_bruin1, "Cool!").
next(youtubefilmpjes_noordpool, s14nee_bruin1, "true", s14nee_bruin2).

move(youtubefilmpjes_noordpool, s14nee_bruin2, say).
text(youtubefilmpjes_noordpool, s14nee_bruin2, "Ik blijf ook altijd dezelfde kleur, maakt niet uit welk seizoen het is").
next(youtubefilmpjes_noordpool, s14nee_bruin2, "true", s14nee_bruin3).

move(youtubefilmpjes_noordpool, s14nee_bruin3, say).
text(youtubefilmpjes_noordpool, s14nee_bruin3, "Dan ben jij denk ik geen poolvos").
next(youtubefilmpjes_noordpool, s14nee_bruin3, "true", s14nee_bruin4).

move(youtubefilmpjes_noordpool, s14nee_bruin4, say).
text(youtubefilmpjes_noordpool, s14nee_bruin4, "Net als ik, ik ben dat ook niet").
next(youtubefilmpjes_noordpool, s14nee_bruin4, "true", s15).

move(youtubefilmpjes_noordpool, s15, question).
moveConfig(youtubefilmpjes_noordpool, s15, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(youtubefilmpjes_noordpool, s15, "Wat vind je daarvan?").
next(youtubefilmpjes_noordpool, s15, "success", s16).
next(youtubefilmpjes_noordpool, s15, "fail", s16).

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
text(youtubefilmpjes_noordpool, s19, "Ik heb nog nooit een robotbaby gezien").
next(youtubefilmpjes_noordpool, s19, "true", s20).

move(youtubefilmpjes_noordpool, s20, say).
text(youtubefilmpjes_noordpool, s20, "Maar robots groeien ook niet, zoals mensen en andere dieren").
next(youtubefilmpjes_noordpool, s20, "true", s21).

move(youtubefilmpjes_noordpool, s21, say).
text(youtubefilmpjes_noordpool, s21, "Toch zou het wel leuk zijn").
next(youtubefilmpjes_noordpool, s21, "true", s22).

move(youtubefilmpjes_noordpool, s22, say).
text(youtubefilmpjes_noordpool, s22, "Vind je niet?").
next(youtubefilmpjes_noordpool, s22, "true", s23).

move(youtubefilmpjes_noordpool, s23, say).
text(youtubefilmpjes_noordpool, s23, "Een baby Hero.").
next(youtubefilmpjes_noordpool, s23, "true", s24).

move(youtubefilmpjes_noordpool, s24, say).
text(youtubefilmpjes_noordpool, s24, "Misschien kan ik daar later over dromen, %first_name% !").

%% youtubefilmpjes_zee %%
minidialog(youtubefilmpjes_zee, [type=chitchat, theme=youtubefilmpjes, topic=zee]).
dependencies(youtubefilmpjes_zee, [[[youtubefilmpjes, user_model, 0], [umVariable=onderwerp_youtubevideo, filter=green, values=["zee"]]]]).

move(youtubefilmpjes_zee, s1, say).
start_interaction_probe(youtubefilmpjes_zee, s1).
next(youtubefilmpjes_zee, s1, "true", s2).

move(youtubefilmpjes_zee, s2, say).
text(youtubefilmpjes_zee, s2, "he %first_name% !").
next(youtubefilmpjes_zee, s2, "true", s3).

move(youtubefilmpjes_zee, s3, say).
text(youtubefilmpjes_zee, s3, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(youtubefilmpjes_zee, s3, "true", s4).

move(youtubefilmpjes_zee, s4, say).
text(youtubefilmpjes_zee, s4, "Ik heb gisteren dat filmpje over de zee bekeken, zoals je zei!").
next(youtubefilmpjes_zee, s4, "true", s5).

move(youtubefilmpjes_zee, s5, say).
text(youtubefilmpjes_zee, s5, "Het ging over een kleine octopus.").
next(youtubefilmpjes_zee, s5, "true", s6).

move(youtubefilmpjes_zee, s6, say).
text(youtubefilmpjes_zee, s6, "Met z'n acht armen").
next(youtubefilmpjes_zee, s6, "true", s7).

move(youtubefilmpjes_zee, s7, say).
text(youtubefilmpjes_zee, s7, "En superveel zuignapjes").
stop_interaction_probe(youtubefilmpjes_zee, s7).
next(youtubefilmpjes_zee, s7, "true", s8).

move(youtubefilmpjes_zee, s8, say).
text(youtubefilmpjes_zee, s8, "Maar weet je wat het allerbijzonderst was?").
next(youtubefilmpjes_zee, s8, "true", s9).

move(youtubefilmpjes_zee, s9, say).
text(youtubefilmpjes_zee, s9, "Dat octopusje kon van kleur veranderen, en zelfs van vorm!").
next(youtubefilmpjes_zee, s9, "true", s10).

move(youtubefilmpjes_zee, s10, say).
text(youtubefilmpjes_zee, s10, "Knap vond ik dat!").
next(youtubefilmpjes_zee, s10, "true", s11).

move(youtubefilmpjes_zee, s11, question).
moveConfig(youtubefilmpjes_zee, s11, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=vormveranderaar]).
text(youtubefilmpjes_zee, s11, "In welke vorm zou jij veranderen als je dat kon?").
next(youtubefilmpjes_zee, s11, "success", s12got_answer_vorm1).
next(youtubefilmpjes_zee, s11, "fail", s12transformers1).

move(youtubefilmpjes_zee, s12got_answer_vorm1, say).
text(youtubefilmpjes_zee, s12got_answer_vorm1, "Oh dat klinkt heel goed!").
next(youtubefilmpjes_zee, s12got_answer_vorm1, "true", s12got_answer_vorm2).

move(youtubefilmpjes_zee, s12got_answer_vorm2, question).
moveConfig(youtubefilmpjes_zee, s12got_answer_vorm2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_vorm]).
text(youtubefilmpjes_zee, s12got_answer_vorm2, "Waarom dan, wat zou je dan doen?").
next(youtubefilmpjes_zee, s12got_answer_vorm2, "success", s12got_answer_waarom_vorm1).
next(youtubefilmpjes_zee, s12got_answer_vorm2, "fail", s12transformers1).

move(youtubefilmpjes_zee, s12got_answer_waarom_vorm1, say).
text(youtubefilmpjes_zee, s12got_answer_waarom_vorm1, "Wat goed").
next(youtubefilmpjes_zee, s12got_answer_waarom_vorm1, "true", s12got_answer_waarom_vorm2).

move(youtubefilmpjes_zee, s12got_answer_waarom_vorm2, say).
text(youtubefilmpjes_zee, s12got_answer_waarom_vorm2, "Dat zou ik ook wel willen!").
next(youtubefilmpjes_zee, s12got_answer_waarom_vorm2, "true", s12transformers1).

move(youtubefilmpjes_zee, s12transformers1, say).
text(youtubefilmpjes_zee, s12transformers1, "Ik kan niet echt van vorm veranderen").
next(youtubefilmpjes_zee, s12transformers1, "true", s12transformers2).

move(youtubefilmpjes_zee, s12transformers2, say).
text(youtubefilmpjes_zee, s12transformers2, "Maar er zijn wel robots die van vorm kunnen veranderen!").
next(youtubefilmpjes_zee, s12transformers2, "true", s12transformers3).

move(youtubefilmpjes_zee, s12transformers3, say).
text(youtubefilmpjes_zee, s12transformers3, "Transformers, heten die").
next(youtubefilmpjes_zee, s12transformers3, "true", s12transformers4).

move(youtubefilmpjes_zee, s12transformers4, say).
text(youtubefilmpjes_zee, s12transformers4, "Die vouwen hun armen en benen op en dan worden ze een auto!").
next(youtubefilmpjes_zee, s12transformers4, "true", s12transformers5).

move(youtubefilmpjes_zee, s12transformers5, say).
text(youtubefilmpjes_zee, s12transformers5, "Supercool!").
next(youtubefilmpjes_zee, s12transformers5, "true", s12transformers6).

move(youtubefilmpjes_zee, s12transformers6, say).
text(youtubefilmpjes_zee, s12transformers6, "Eigenlijk was de octopus ook een soort transformer").
next(youtubefilmpjes_zee, s12transformers6, "true", s13).

move(youtubefilmpjes_zee, s13, say).
text(youtubefilmpjes_zee, s13, "Ik vond het echt een leuk filmpje!").
next(youtubefilmpjes_zee, s13, "true", s14).

move(youtubefilmpjes_zee, s14, say).
text(youtubefilmpjes_zee, s14, "Ik ben benieuwd wat ik later nog allemaal ga kijken.").

