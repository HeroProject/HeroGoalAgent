%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SOROCOVA Iteration 1	           %%%
%%%  	  Chitchat Minidialogs for math tutoring robot     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Dieren				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Huisdieren
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_huisdier, [type=chitchat, theme=dieren, topic=huisdier]).

move(sor_huisdier, s1, say).
text(sor_huisdier, s1, "Weet je waar ik benieuwd naar ben").
next(sor_huisdier, s1, "true", s2).

move(sor_huisdier, s2, question).
moveConfig(sor_huisdier, s2, [type=yesno, context='answer_yesno', umVariable=heeft_huisdier]).
text(sor_huisdier, s2, "Heb jij een huisdier?").
next(sor_huisdier, s2, "answer_yes", s3ja).
next(sor_huisdier, s2, "answer_no", s3nee).
next(sor_huisdier, s2, "answer_dontknow", s3fail).
next(sor_huisdier, s2, "fail", s3fail).

move(sor_huisdier, s3ja, say).
text(sor_huisdier, s3ja, "Leuk!").
next(sor_huisdier, s3ja, "true", s4ja).

move(sor_huisdier, s4ja, question).
moveConfig(sor_huisdier, s4ja, [type=input, context="animals", options=['hond', 'kat', 'konijn', 'cavia', 'vogel', 'slang'], fast=yes, umVariable=huisdier, topics=[success=[huisdier, '_answer']]]).
text(sor_huisdier, s4ja, "Wat voor huisdier heb je?").
next(sor_huisdier, s4ja, "success", s6).

move(sor_huisdier, s3fail, say).
text(sor_huisdier, s3fail, "Ik heb geen huisdier.").
next(sor_huisdier, s3fail, "true", s4nee).

move(sor_huisdier, s3nee, say).
text(sor_huisdier, s3nee, "Ik ook niet.").
next(sor_huisdier, s3nee, "true", s4nee).

move(sor_huisdier, s4nee, say).
text(sor_huisdier, s4nee, "En als je een huisdier zou mogen nemen.").
next(sor_huisdier, s4nee, "true", s5nee).

move(sor_huisdier, s5nee, question).
moveConfig(sor_huisdier, s5nee, [type=input, context="animals", options=['hond', 'kat', 'konijn', 'cavia', 'vogel', 'slang'], fast=yes, umVariable=huisdier, topics=[success=[huisdier, '_answer']]]).
text(sor_huisdier, s5nee, "Welk dier zou je dan kiezen??").
next(sor_huisdier, s5nee, "success", s6).

move(sor_huisdier, s6, say).
text(sor_huisdier, s6, "Cool!").
next(sor_huisdier, s6, "true", s7).

move(sor_huisdier, s7, say).
text(sor_huisdier, s7, "Een %huisdier% lijkt me ook een leuk huisdier.").
next(sor_huisdier, s7, "true", s8).

move(sor_huisdier, s8, continuator).
next(sor_huisdier, s8, [[umVariable=heeft_huisdier, filter=green, values=["answer_yes"]]], s9_wel).
next(sor_huisdier, s8, [[umVariable=heeft_huisdier, filter=red, values=["answer_yes"]]], s9_niet).

move(sor_huisdier, s9_wel, question).
moveConfig(sor_huisdier, s9_wel, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_huisdier, s9_wel, "En, hoe heet je %huisdier%?").
next(sor_huisdier, s9_wel, "success", s10).
move(sor_huisdier, s9_niet, question).
moveConfig(sor_huisdier, s9_niet, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_huisdier, s9_niet, "En hoe zou je jouw %huisdier% dan noemen?").
next(sor_huisdier, s9_niet, "success", s10).
next(sor_huisdier, s9_niet, "fail", s12).

move(sor_huisdier, s10, say).
text(sor_huisdier, s10, "Wat een leuke naam!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Eten				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lievelingseten met een p
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_eten_met_p, [type=chitchat, theme=eten, topic=eten_met_p]).
move(sor_eten_met_p, s1, say).
text(sor_eten_met_p, s1, "En, weet je wat?").
next(sor_eten_met_p, s1, "true", s2).

move(sor_eten_met_p, s2, say).
text(sor_eten_met_p, s2, "Ik heb namelijk nog iets bijzonders ontdekt!").
next(sor_eten_met_p, s2, "true", s3).

move(sor_eten_met_p, s3, say).
text(sor_eten_met_p, s3, "Heel veel, eten, dat heel veel kinderen heel lekker vinden").
next(sor_eten_met_p, s3, "true", s4).

move(sor_eten_met_p, s4, say).
text(sor_eten_met_p, s4, "begint met een P!").
next(sor_eten_met_p, s4, "true", s5).

move(sor_eten_met_p, s5, say).
text(sor_eten_met_p, s5, "Zoals: pizza, pasta, pannenkoeken, poffertjes, en patat.").
next(sor_eten_met_p, s5, "true", s6).

move(sor_eten_met_p, s6, question).
moveConfig(sor_eten_met_p, s6, [type=input, context="lievelingseten_met_p", options=['pizza', 'pasta', 'pannenkoeken', 'poffertjes', 'patat'], fast=yes, umVariable=lievelingseten_met_p, topics=[success=[eten, '_answer']]]).
text(sor_eten_met_p, s6, "Welke P vind jij de allerlekkerste P?").
next(sor_eten_met_p, s6, "pizza", s7pizza1).
next(sor_eten_met_p, s6, "pasta", s7pasta1).
next(sor_eten_met_p, s6, "pannenkoeken", s7pannenkoeken1).
next(sor_eten_met_p, s6, "poffertjes", s7poffertjes1).
next(sor_eten_met_p, s6, "patat", s7patat1).
next(sor_eten_met_p, s6, "fail", s7fail_lievelingseten_met_p1).
next(sor_eten_met_p, s6, "_others", s7fail_lievelingseten_met_p1).

move(sor_eten_met_p, s7pizza1, say).
text(sor_eten_met_p, s7pizza1, "Pizza! Pizza! Ooooh pizza!").
next(sor_eten_met_p, s7pizza1, "true", s7pizza2).

move(sor_eten_met_p, s7pizza2, question).
moveConfig(sor_eten_met_p, s7pizza2, [type=yesno, context='answer_yesno', umVariable=pizza_sliert]).
text(sor_eten_met_p, s7pizza2, "Heb je ook wel eens dat de kaas zo erg gesmolten is, dat er een hele sliert tussen je mond en je pizzapunt hangt als je een hap neemt?").
next(sor_eten_met_p, s7pizza2, "answer_yes", s7wel_pizza_sliert1).
next(sor_eten_met_p, s7pizza2, "answer_dontknow", s7wel_pizza_sliert1).
next(sor_eten_met_p, s7pizza2, "fail", s7wel_pizza_sliert1).
next(sor_eten_met_p, s7pizza2, "answer_no", s7wel_pizza_sliert1).

move(sor_eten_met_p, s7wel_pizza_sliert1, say).
text(sor_eten_met_p, s7wel_pizza_sliert1, "Sommige mensen vinden dat er vies uit zien, maar ik niet!").
next(sor_eten_met_p, s7wel_pizza_sliert1, "true", s7wel_pizza_sliert2).

move(sor_eten_met_p, s7wel_pizza_sliert2, say).
text(sor_eten_met_p, s7wel_pizza_sliert2, "Zo'n sliert lijkt op het allerbeste snoer waar ik stroom door krijg.").
next(sor_eten_met_p, s7wel_pizza_sliert2, "true", s7wel_pizza_sliert3).

move(sor_eten_met_p, s7wel_pizza_sliert3, say).
text(sor_eten_met_p, s7wel_pizza_sliert3, "En mamma mia!").
next(sor_eten_met_p, s7wel_pizza_sliert3, "true", s7wel_pizza_sliert4).

move(sor_eten_met_p, s7wel_pizza_sliert4, say).
text(sor_eten_met_p, s7wel_pizza_sliert4, "Als zo'n sliert voor jou proeft zoals stroom voor mij.").
next(sor_eten_met_p, s7wel_pizza_sliert4, "true", s7wel_pizza_sliert5).

move(sor_eten_met_p, s7wel_pizza_sliert5, say).
text(sor_eten_met_p, s7wel_pizza_sliert5, "dan kan zo'n sliert alleen maar bewijs voor een superpizza zijn!").
next(sor_eten_met_p, s7wel_pizza_sliert5, "true", s8).

move(sor_eten_met_p, s7pasta1, say).
text(sor_eten_met_p, s7pasta1, "Fantastico!").
next(sor_eten_met_p, s7pasta1, "true", s7pasta2).

move(sor_eten_met_p, s7pasta2, say).
text(sor_eten_met_p, s7pasta2, "Dat is Italiaans voor geweldig!").
next(sor_eten_met_p, s7pasta2, "true", s7pasta3).

move(sor_eten_met_p, s7pasta3, say).
text(sor_eten_met_p, s7pasta3, "Dat heb ik geleerd van Italiaanse robots die pasta maken.").
next(sor_eten_met_p, s7pasta3, "true", s7pasta4).

move(sor_eten_met_p, s7pasta4, say).
text(sor_eten_met_p, s7pasta4, "Robots kunnen natuurlijk geen pasta eten,").
next(sor_eten_met_p, s7pasta4, "true", s7pasta5).

move(sor_eten_met_p, s7pasta5, say).
text(sor_eten_met_p, s7pasta5, "maar al die verschillende vormpjes vinden wij te gek!").
next(sor_eten_met_p, s7pasta5, "true", s8).

move(sor_eten_met_p, s7pannenkoeken1, say).
text(sor_eten_met_p, s7pannenkoeken1, "Pannenkoeken lijken mij ook heel lekker!").
next(sor_eten_met_p, s7pannenkoeken1, "true", s7pannenkoeken2).

move(sor_eten_met_p, s7pannenkoeken2, say).
text(sor_eten_met_p, s7pannenkoeken2, "Ik heb gezien dat jullie daar stroop op doen.").
next(sor_eten_met_p, s7pannenkoeken2, "true", s7pannenkoeken3).

move(sor_eten_met_p, s7pannenkoeken3, say).
text(sor_eten_met_p, s7pannenkoeken3, "Dat lijkt wel een beetje op motorolie!").
next(sor_eten_met_p, s7pannenkoeken3, "true", s7pannenkoeken4).

move(sor_eten_met_p, s7pannenkoeken4, say).
text(sor_eten_met_p, s7pannenkoeken4, "In de toekomst komen er vast pannenkoekenhuizen voor mensen en robots samen.").
next(sor_eten_met_p, s7pannenkoeken4, "true", s7pannenkoeken5).

move(sor_eten_met_p, s7pannenkoeken5, say).
text(sor_eten_met_p, s7pannenkoeken5, "Daar hebben ze dan pannenkoeken met stroop voor jou").
next(sor_eten_met_p, s7pannenkoeken5, "true", s7pannenkoeken6).

move(sor_eten_met_p, s7pannenkoeken6, say).
text(sor_eten_met_p, s7pannenkoeken6, "en harde schijven met motorolie voor mij!").
next(sor_eten_met_p, s7pannenkoeken6, "true", s8).

move(sor_eten_met_p, s7poffertjes1, say).
text(sor_eten_met_p, s7poffertjes1, "Poffertjes vind ik er ook lekker uit zien!").
next(sor_eten_met_p, s7poffertjes1, "true", s7poffertjes2).

move(sor_eten_met_p, s7poffertjes2, say).
text(sor_eten_met_p, s7poffertjes2, "En het woord klinkt ook heel lekker.").
next(sor_eten_met_p, s7poffertjes2, "true", s7poffertjes3).

move(sor_eten_met_p, s7poffertjes3, say).
text(sor_eten_met_p, s7poffertjes3, "Pof pof poffertje!").
next(sor_eten_met_p, s7poffertjes3, "true", s7poffertjes4).

move(sor_eten_met_p, s7poffertjes4, say).
text(sor_eten_met_p, s7poffertjes4, "En het rijmt op wat jij bent als je heel veel poffertjes krijgt").
next(sor_eten_met_p, s7poffertjes4, "true", s7poffertjes5).

move(sor_eten_met_p, s7poffertjes5, say).
text(sor_eten_met_p, s7poffertjes5, "dan ben je een echt boffertje!").
next(sor_eten_met_p, s7poffertjes5, "true", s8).

move(sor_eten_met_p, s7patat1, say).
text(sor_eten_met_p, s7patat1, "Als ik een mens was, zou ik dat ook de lekkerste P vinden!").
next(sor_eten_met_p, s7patat1, "true", s7patat2).

move(sor_eten_met_p, s7patat2, say).
text(sor_eten_met_p, s7patat2, "Ik vind vooral de frituurpan leuk.").
next(sor_eten_met_p, s7patat2, "true", s7patat3).

move(sor_eten_met_p, s7patat3, say).
text(sor_eten_met_p, s7patat3, "Die lijkt op het badje met olie waar ik soms even in wordt gelegd.").
next(sor_eten_met_p, s7patat3, "true", s7patat4).

move(sor_eten_met_p, s7patat4, say).
text(sor_eten_met_p, s7patat4, "Dat helpt als ik een beetje vastgeroest ben.").
next(sor_eten_met_p, s7patat4, "true", s7patat5).

move(sor_eten_met_p, s7patat5, say).
text(sor_eten_met_p, s7patat5, "Misschien mag ik de volgende keer wel in de frituurpan zwemmen!").
next(sor_eten_met_p, s7patat5, "true", s7patat6).

move(sor_eten_met_p, s7patat6, say).
text(sor_eten_met_p, s7patat6, "Maar die moet dan wel uitstaan natuurlijk.").
next(sor_eten_met_p, s7patat6, "true", s7patat7).

move(sor_eten_met_p, s7patat7, say).
text(sor_eten_met_p, s7patat7, "anders kom ik eruit als een Hero-kroket!").
next(sor_eten_met_p, s7patat7, "true", s8).

move(sor_eten_met_p, s8, question).
moveConfig(sor_eten_met_p, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_eten_met_p, s8, "Wat vind jij eigenlijk lekker aan %lievelingseten_met_p%?").
next(sor_eten_met_p, s8, "success", s9).
next(sor_eten_met_p, s8, "fail", s9).

move(sor_eten_met_p, s9, say).
text(sor_eten_met_p, s9, "Zo dat klinkt goed.").
next(sor_eten_met_p, s9, "true", s10).

move(sor_eten_met_p, s10, say).
text(sor_eten_met_p, s10, "Ik hoop dat er snel een robot variant komt van %lievelingseten_met_p%.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Hobbies				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lezen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_hob_lezen, [type=chitchat, theme=hobbies, topic=lezen]).
move(sor_hob_lezen, s1, say).
text(sor_hob_lezen, s1, "Weet je waar ik ook een tijdje heb gewerkt.").
next(sor_hob_lezen, s1, "true", s2).

move(sor_hob_lezen, s2, say).
text(sor_hob_lezen, s2, "In de bibliotheek.").
next(sor_hob_lezen, s2, "true", s3).

move(sor_hob_lezen, s3, question).
moveConfig(sor_hob_lezen, s3, [type=yesno, context='answer_yesno', umVariable=leest, topics=[success=[answer_yes, lezen]]]).
text(sor_hob_lezen, s3, "Hou jij eigenlijk van lezen?").
next(sor_hob_lezen, s3, "answer_yes", s4ja).
next(sor_hob_lezen, s3, "answer_no", s4nee).
next(sor_hob_lezen, s3, "answer_dontknow", s4nee).
next(sor_hob_lezen, s3, "fail", s4nee).

move(sor_hob_lezen, s4ja, say).
text(sor_hob_lezen, s4ja, "Leuk, ik ook.").
next(sor_hob_lezen, s4ja, "true", s5ja).

move(sor_hob_lezen, s5ja, say).
text(sor_hob_lezen, s5ja, "Daar heb ik straks nog wel een rekenvraag over.").

move(sor_hob_lezen, s4nee, say).
text(sor_hob_lezen, s4nee, "Ik vind lezen ook lastig. In de bieb heb ik wel veel kunnen oefenen.").

% Youtube
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_youtube, [type=chitchat, theme=hobbies, topic=youtube]).

move(sor_youtube, s1, say).
text(sor_youtube, s1, "Zeg, %first_name% ,").
next(sor_youtube, s1, "true", s2).

move(sor_youtube, s2, question).
moveConfig(sor_youtube, s2, [type=yesno, context='answer_yesno', umVariable=youtube_kijken]).
text(sor_youtube, s2, "Kijk jij ook graag filmpjes op YouTube?").
next(sor_youtube, s2, "answer_yes", s3ja1).
next(sor_youtube, s2, "answer_no", s3nee1).
next(sor_youtube, s2, "fail", s3fail1).
next(sor_youtube, s2, "answer_dontknow", s3fail1).

move(sor_youtube, s3ja1, say).
text(sor_youtube, s3ja1, "Cool!").
next(sor_youtube, s3ja1, "true", s3ja2).

move(sor_youtube, s3ja2, question).
moveConfig(sor_youtube, s3ja2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_youtube, s3ja2, "Wat voor video's kijk jij het liefst?").
next(sor_youtube, s3ja2, "success", s3got_answer_vid1).
next(sor_youtube, s3ja2, "fail", s3fail1).

move(sor_youtube, s3got_answer_vid1, say).
text(sor_youtube, s3got_answer_vid1, "Wauw!").
next(sor_youtube, s3got_answer_vid1, "true", s3got_answer_vid2).

move(sor_youtube, s3got_answer_vid2, say).
text(sor_youtube, s3got_answer_vid2, "Dat klinkt leuk.").
next(sor_youtube, s3got_answer_vid2, "true", s3got_answer_vid3).

move(sor_youtube, s3got_answer_vid3, say).
text(sor_youtube, s3got_answer_vid3, "Ik zal ook eens zoiets opzoeken.").
next(sor_youtube, s3got_answer_vid3, "true", s3got_answer_vid4).

move(sor_youtube, s3got_answer_vid4, question).
moveConfig(sor_youtube, s3got_answer_vid4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_youtube, s3got_answer_vid4, "Hoe kwam je erop om dat soort filmpjes te kijken?").
next(sor_youtube, s3got_answer_vid4, "success", s3got_answer_hoezo1).
next(sor_youtube, s3got_answer_vid4, "fail", s3fail1).

move(sor_youtube, s3got_answer_hoezo1, say).
text(sor_youtube, s3got_answer_hoezo1, "Aha! Leuk om te weten, %first_name% !").
next(sor_youtube, s3got_answer_hoezo1, "true", s3got_answer_hoezo2).

move(sor_youtube, s3got_answer_hoezo2, say).
text(sor_youtube, s3got_answer_hoezo2, "Ik vind het leuk om filmpjes te kijken over de natuur").
next(sor_youtube, s3got_answer_hoezo2, "true", s3got_answer_hoezo3).

move(sor_youtube, s3got_answer_hoezo3, say).
text(sor_youtube, s3got_answer_hoezo3, "En over dieren").
next(sor_youtube, s3got_answer_hoezo3, "true", s3got_answer_hoezo4).

move(sor_youtube, s3got_answer_hoezo4, say).
text(sor_youtube, s3got_answer_hoezo4, "Omdat ik zelf helemaal geen dier ben").
next(sor_youtube, s3got_answer_hoezo4, "true", s3got_answer_hoezo5).

move(sor_youtube, s3got_answer_hoezo5, say).
text(sor_youtube, s3got_answer_hoezo5, "En toch kan ik dingen die dieren ook kunnen!").
next(sor_youtube, s3got_answer_hoezo5, "true", s4).

move(sor_youtube, s3nee1, say).
text(sor_youtube, s3nee1, "Oke, helemaal prima.").
next(sor_youtube, s3nee1, "true", s3nee2).

move(sor_youtube, s3nee2, say).
text(sor_youtube, s3nee2, "Ik vind het zelf erg leuk om filmpjes op Youtube te kijken").
next(sor_youtube, s3nee2, "true", s3nee3).

move(sor_youtube, s3nee3, say).
text(sor_youtube, s3nee3, "al heb ik er nog niet zo heel veel gezien.").
next(sor_youtube, s3nee3, "true", s3nee4).

move(sor_youtube, s3nee4, say).
text(sor_youtube, s3nee4, "Maar filmpjes over de natuur en over dieren vind ik superleuk!").
next(sor_youtube, s3nee4, "true", s4).

move(sor_youtube, s3fail1, say).
text(sor_youtube, s3fail1, "Ik kijk heel graag filmpjes over de natuur en over dieren.").
next(sor_youtube, s3fail1, "true", s4).

move(sor_youtube, s4, say).
text(sor_youtube, s4, "Ik heb er drie die ik zeker nog wil kijken:").
next(sor_youtube, s4, "true", s5).

move(sor_youtube, s5, say).
text(sor_youtube, s5, "Één over de jungle").
next(sor_youtube, s5, "true", s6).

move(sor_youtube, s6, say).
text(sor_youtube, s6, "één over de noordpool").
next(sor_youtube, s6, "true", s7).

move(sor_youtube, s7, say).
text(sor_youtube, s7, "en één over de tropische zee.").
next(sor_youtube, s7, "true", s8).

move(sor_youtube, s8, question).
moveConfig(sor_youtube, s8, [type=input, context="jungle_zee_noordpool", options=['jungle', 'zee', 'noordpool'], fast=yes, umVariable=onderwerp_youtubevideo, topics=[success=[youtube, '_answer']]]).
text(sor_youtube, s8, "Welke zou jij het eerste kijken?").
next(sor_youtube, s8, "success", s9).
next(sor_youtube, s8, "fail", s9).

move(sor_youtube, s9, question).
moveConfig(sor_youtube, s9, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_youtube, s9, "Waarom lijkt die jouw het leukste?").
next(sor_youtube, s9, "success", s10).
next(sor_youtube, s9, "fail", s10).

move(sor_youtube, s10, say).
text(sor_youtube, s10, "Oké, te gek!").
next(sor_youtube, s10, "true", s11).

move(sor_youtube, s11, say).
text(sor_youtube, s11, "Dan ga ik die vanavond kijken als ik klaar ben!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Personalia				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Beroep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_beroep, [type=chitchat, theme=personalia, topic=beroep]).

move(sor_beroep, s1, say).
text(sor_beroep, s1, "Soms kijk ik uit het raam en denk ik helemaal niets.").
next(sor_beroep, s1, "true", s2).

move(sor_beroep, s2, say).
text(sor_beroep, s2, "Soms denk ik wel iets.").
next(sor_beroep, s2, "true", s3).

move(sor_beroep, s3, say).
text(sor_beroep, s3, "Dan denk ik na over kleine dingen.").
next(sor_beroep, s3, "true", s4).

move(sor_beroep, s4, say).
text(sor_beroep, s4, "Soms denk ik na over grote dingen.").
next(sor_beroep, s4, "true", s5).

move(sor_beroep, s5, say).
text(sor_beroep, s5, "Dan denk ik na over de toekomst.").
next(sor_beroep, s5, "true", s6).

move(sor_beroep, s6, say).
text(sor_beroep, s6, "Over wat ik allemaal nog wil doen.").
next(sor_beroep, s6, "true", s7).

move(sor_beroep, s7, say).
text(sor_beroep, s7, "Of wat ik later worden wil.").
next(sor_beroep, s7, "true", s8).

move(sor_beroep, s8, question).
moveConfig(sor_beroep, s8, [type=input, context="professions", options=['Dokter', 'Politieagent', 'Influencer', 'Voetballer', 'Leraar', 'Kunstenaar'], fast=yes, topics=[success=[beroep, '_answer']], umVariable=beroep_van_kind]).
text(sor_beroep, s8, "Wat wil jij later worden?").
next(sor_beroep, s8, "success", s9).
next(sor_beroep, s8, "fail", s9f).

move(sor_beroep, s9, question).
moveConfig(sor_beroep, s9, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_beroep, s9, "Wat lijkt je zo leuk om %beroep_van_kind% te worden?").
next(sor_beroep, s9, "success", s10).
next(sor_beroep, s9, "fail", s10).

move(sor_beroep, s9f, question).
moveConfig(sor_beroep, s9f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_beroep, s9f, "Dat beroep ken ik niet. Wat moet je dan doen?").
next(sor_beroep, s9f, "success", s10).
next(sor_beroep, s9f, "fail", s10).

move(sor_beroep, s10, say).
text(sor_beroep, s10, "Facinerend! Fijn dat je me dit hebt kunnen leren, ik sla het meteen op").