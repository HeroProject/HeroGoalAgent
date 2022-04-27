%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SOROCOVA Iteration 1	           %%%
%%%  	   Math Minidialogs for math tutoring robot        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Huisdieren				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Bijeenkomst
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_huisdier_bijeenkomst, [type=chitchat, theme=math, topic=huisdier]).
move(sor_math_huisdier_bijeenkomst, s1, say).
text(sor_math_huisdier_bijeenkomst,  s1, "Ik hoorde laatst wat bizars van een robot vriend van mij.").
math_generate(sor_math_huisdier_bijeenkomst, s1).
set_umvariable(sor_math_huisdier_bijeenkomst, s1, huisdier, duif). 
next(sor_math_huisdier_bijeenkomst,  s1, "true",  s2).

move(sor_math_huisdier_bijeenkomst, s2, say).
text(sor_math_huisdier_bijeenkomst, s2, "Hij vertelde mij dat mensen die een %huisdier% als huisdier hebben soms samen komen.").
next(sor_math_huisdier_bijeenkomst, s2, "true", s3).

move(sor_math_huisdier_bijeenkomst, s3, say).
text(sor_math_huisdier_bijeenkomst, s3, "Dan laten ze de dieren met elkaar spelen.").
next(sor_math_huisdier_bijeenkomst, s3, "true", s4).

move(sor_math_huisdier_bijeenkomst, s4, say).
text(sor_math_huisdier_bijeenkomst, s4, "Elke bezoeker van zo'n bijeenkomst nam niet 1 %huisdier% mee, maar %math_left%. De laatste keer waren er wel %math_right% bezoekers.").
next(sor_math_huisdier_bijeenkomst, s4, "true", s5).

move(sor_math_huisdier_bijeenkomst, s5, say).
text(sor_math_huisdier_bijeenkomst, s5, "Hoe vaak kon mijn robot vriend eene %huisdier% aaien bij de bijeenkomst?").
insert_minidialog(sor_math_huisdier_bijeenkomst, s5, math_next).
insert_minidialog(sor_math_huisdier_bijeenkomst, s5, math_dialog).

% Honden
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_huisdier_hond, [type=chitchat, theme=math, topic=huisdier]).
dependencies(sor_math_huisdier_hond, [[umVariable=huisdier, filter=green, values=["hond"]], 
[[umVariable=huisdier, filter=red, values=["hond"]], [history=sor_math_huisdier_kat, filter=orange], [history=sor_math_eten_konijn, filter=orange]]]).

move(sor_math_huisdier_hond, s1, continuator).
next(sor_math_huisdier_hond, s1, [[umVariable=huisdier, filter=green, values=["hond"]], [personalization=1]], s2permatch).
next(sor_math_huisdier_hond, s1, [[umVariable=huisdier, filter=red, values=["hond"]], [personalization=1]], s2peranders).
next(sor_math_huisdier_hond, s1, [[personalization=0]], s3).
next(sor_math_huisdier_hond, s1, "true", s3).

move(sor_math_huisdier_hond, s2permatch, say).
text(sor_math_huisdier_hond,  s2permatch, "Jij houd van honden. Weetje wat toevallig is?").
next(sor_math_huisdier_hond,  s2permatch, "true",  s3).

move(sor_math_huisdier_hond, s2peranders, say).
text(sor_math_huisdier_hond,  s2peranders, "Het is geen %huisdier%, maar honden zijn ook leuk.").
next(sor_math_huisdier_hond,  s2peranders, "true",  s3).

move(sor_math_huisdier_hond, s3, say).
text(sor_math_huisdier_hond,  s3, "Ik ben honden uitlater geweest.").
math_generate(sor_math_huisdier_hond, s3).
next(sor_math_huisdier_hond,  s3, "true",  s4).

move(sor_math_huisdier_hond, s4, say).
text(sor_math_huisdier_hond, s4, "Kun je dat voorstellen zeg.").
next(sor_math_huisdier_hond, s4, "true", s5).

move(sor_math_huisdier_hond, s5, say).
text(sor_math_huisdier_hond, s5, "Ik heb het maar %math_left% dagen gedaan. Ik moest elke dag %math_right% honden uitlaten.").
next(sor_math_huisdier_hond, s5, "true", s6).

move(sor_math_huisdier_hond, s6, say).
text(sor_math_huisdier_hond, s6, "Hoeveel honden heb ik in totaal uitgelaten?").
insert_minidialog(sor_math_huisdier_hond, s6, math_next).
insert_minidialog(sor_math_huisdier_hond, s6, math_dialog).

% Katten
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_huisdier_kat, [type=chitchat, theme=math, topic=huisdier]).
dependencies(sor_math_huisdier_kat, [[umVariable=huisdier, filter=green, values=["kat", "poes"]], 
[[umVariable=huisdier, filter=red, values=["kat", "poes"]], [history=sor_math_huisdier_hond, filter=orange], [history=sor_math_eten_konijn, filter=orange]]]).

move(sor_math_huisdier_kat, s1, continuator).
next(sor_math_huisdier_kat, s1, [[umVariable=huisdier, filter=green, values=["kat", "poes"]], [personalization=1]], s2permatch).
next(sor_math_huisdier_kat, s1, [[umVariable=huisdier, filter=red, values=["kat", "poes"]], [personalization=1]], s2peranders).
next(sor_math_huisdier_kat, s1, [[personalization=0]], s3).
next(sor_math_huisdier_kat, s1, "true", s3).

move(sor_math_huisdier_kat, s2permatch, say).
text(sor_math_huisdier_kat,  s2permatch, "Jij houd van katten. Weetje wat toevallig is?").
next(sor_math_huisdier_kat,  s2permatch, "true",  s3).

move(sor_math_huisdier_kat, s2peranders, say).
text(sor_math_huisdier_kat,  s2peranders, "Het is geen %huisdier%, maar katten zijn ook leuk.").
next(sor_math_huisdier_kat,  s2peranders, "true",  s3).

move(sor_math_huisdier_kat, s3, say).
text(sor_math_huisdier_kat,  s3, "Ik ben ooit eens ingezet om kattenbakken schoon te maken.").
math_generate(sor_math_huisdier_kat, s3).
next(sor_math_huisdier_kat,  s3, "true",  s4).

move(sor_math_huisdier_kat, s4, say).
text(sor_math_huisdier_kat, s4, "Mensen vinden dat blijkbaar een vies klusje.").
next(sor_math_huisdier_kat, s4, "true", s5).

move(sor_math_huisdier_kat, s5, say).
text(sor_math_huisdier_kat, s5, "Na %math_left% dagen kwam ik er achter dat ik het ook vies vond. Elke dag heb ik %math_right% kattenbakken schoon gemaakt.").
next(sor_math_huisdier_kat, s5, "true", s6).

move(sor_math_huisdier_kat, s6, say).
text(sor_math_huisdier_kat, s6, "Hoeveel kattenbakken heb ik in totaal schoon gemaakt?").
insert_minidialog(sor_math_huisdier_kat, s6, math_next).
insert_minidialog(sor_math_huisdier_kat, s6, math_dialog).

% Konijnen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_huisdier_konijn, [type=chitchat, theme=math, topic=huisdier]).
dependencies(sor_math_huisdier_konijn, [[umVariable=huisdier, filter=green, values=["konijn", "haas"]], 
[[umVariable=huisdier, filter=red, values=["konijn", "haas"]], [history=sor_math_huisdier_hond, filter=orange], [history=sor_math_eten_kat, filter=orange]]]).

move(sor_math_huisdier_konijn, s1, continuator).
next(sor_math_huisdier_konijn, s1, [[umVariable=huisdier, filter=green, values=["konijn", "haas"]], [personalization=1]], s2permatch).
next(sor_math_huisdier_konijn, s1, [[umVariable=huisdier, filter=red, values=["konijn", "haas"]], [personalization=1]], s2peranders).
next(sor_math_huisdier_konijn, s1, [[personalization=0]], s3).
next(sor_math_huisdier_konijn, s1, "true", s3).

move(sor_math_huisdier_konijn, s2permatch, say).
text(sor_math_huisdier_konijn,  s2permatch, "Jij houd van konijnen. Weetje wat toevallig is?").
next(sor_math_huisdier_konijn,  s2permatch, "true",  s3).

move(sor_math_huisdier_konijn, s2peranders, say).
text(sor_math_huisdier_konijn,  s2peranders, "Het is geen %huisdier%, maar konijnen zijn ook leuk.").
next(sor_math_huisdier_konijn,  s2peranders, "true",  s3).

move(sor_math_huisdier_konijn, s3, say).
text(sor_math_huisdier_konijn,  s3, "Ik kan heel goed konijnen tellen.").
math_generate(sor_math_huisdier_konijn, s3).
next(sor_math_huisdier_konijn,  s3, "true",  s4).

move(sor_math_huisdier_konijn, s4, say).
text(sor_math_huisdier_konijn, s4, "Ik bezocht allerlei veldjes buiten en daar zaten ze dan.").
next(sor_math_huisdier_konijn, s4, "true", s5).

move(sor_math_huisdier_konijn, s5, say).
text(sor_math_huisdier_konijn, s5, "Ik heb op een dag wel %math_left% veldjes bezocht. Op elk veldje telde ik %math_right% konijnen.").
next(sor_math_huisdier_konijn, s5, "true", s6).

move(sor_math_huisdier_konijn, s6, say).
text(sor_math_huisdier_konijn, s6, "Hoeveel konijnen heb ik die dag in totaal geteld?").
insert_minidialog(sor_math_huisdier_konijn, s6, math_next).
insert_minidialog(sor_math_huisdier_konijn, s6, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Eten met een P			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Koken
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_eten_koken, [type=chitchat, theme=math, topic=eten]).
move(sor_math_eten_koken, s1, say).
text(sor_math_eten_koken,  s1, "Ik heb ook een tijdje gewerkt als robot kok in een restaurant.").
math_generate(sor_math_eten_koken, s1).
set_umvariable(sor_math_eten_koken, s1, lievelingseten_met_p, raviolie). 
next(sor_math_eten_koken,  s1, "true",  s2).

move(sor_math_eten_koken, s2, say).
text(sor_math_eten_koken, s2, "En %lievelingseten_met_p% staat op het menu.").
next(sor_math_eten_koken, s2, "true", s3).

move(sor_math_eten_koken, s3, say).
text(sor_math_eten_koken, s3, "De robot chef heeft %math_left% gasten en maakt voor elke gast %math_right% %lievelingseten_met_p%.").
next(sor_math_eten_koken, s3, "true", s4).

move(sor_math_eten_koken, s4, say).
text(sor_math_eten_koken, s4, "Hoeveel %lievelingseten_met_p% maakt de robot chef in totaal?").
insert_minidialog(sor_math_eten_koken, s4, math_next).
insert_minidialog(sor_math_eten_koken, s4, math_dialog).

% Afwassen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_eten_afwassen, [type=chitchat, theme=math, topic=eten]).
dependencies(sor_math_eten_afwassen, [[[history=sor_math_eten_koken, filter=green]]]).

move(sor_math_eten_afwassen, s1, say).
text(sor_math_eten_afwassen,  s1, "Na al het koken komt de afwas.").
math_generate(sor_math_eten_afwassen, s1).
next(sor_math_eten_afwassen,  s1, "true",  s2).

move(sor_math_eten_afwassen, s2, say).
text(sor_math_eten_afwassen, s2, "Aan het einde van de avond zijn er %math_left% stapels vuile borden en elke stapel bestaat uit %math_right% borden.").
next(sor_math_eten_afwassen, s2, "true", s3).

move(sor_math_eten_afwassen, s3, say).
text(sor_math_eten_afwassen, s3, "Hoeveel borden moeten er afgewassen worden?").
insert_minidialog(sor_math_eten_afwassen, s3, math_next).
insert_minidialog(sor_math_eten_afwassen, s3, math_dialog).

% Ingredienten
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_eten_ingredienten, [type=chitchat, theme=math, topic=eten]).
dependencies(sor_math_eten_ingredienten, [[[history=sor_math_eten_koken, filter=green]]]).

move(sor_math_eten_ingredienten, s1, say).
text(sor_math_eten_ingredienten,  s1, "Er is 1 ingredient heel belangrijk").
math_generate(sor_math_eten_ingredienten, s1).
set_umvariable(sor_math_eten_ingredienten, s1, lievelingseten_met_p, oliebollen). 
next(sor_math_eten_ingredienten,  s1, "true",  s2).

move(sor_math_eten_ingredienten, s2, continuator).
next(sor_math_eten_ingredienten, s2, [[umVariable=lievelingseten_met_p, filter=red, values=["patat"]]], s3meel).
next(sor_math_eten_ingredienten, s2, [[umVariable=lievelingseten_met_p, filter=green, values=["patat"]]], s3aardappel).

move(sor_math_eten_ingredienten, s3meel, say).
text(sor_math_eten_ingredienten, s3meel, "bij het maken van %lievelingseten_met_p%, en dat is meel.").
next(sor_math_eten_ingredienten, s3meel, "true", s4meel).

move(sor_math_eten_ingredienten, s4meel, say).
text(sor_math_eten_ingredienten, s4meel, "In het restaurant gebruikten we elke avond %math_left% zakken meel en in elke zak zit %math_right% gram.").
next(sor_math_eten_ingredienten, s4meel, "true", s5meel).

move(sor_math_eten_ingredienten, s5meel, say).
text(sor_math_eten_ingredienten, s5meel, "Hoeveel gram meel wordt er elke avond gebruikt?").
insert_minidialog(sor_math_eten_ingredienten, s5meel, math_next).
insert_minidialog(sor_math_eten_ingredienten, s5meel, math_dialog).

move(sor_math_eten_ingredienten, s3aardappel, say).
text(sor_math_eten_ingredienten, s3aardappel, "Bij het maken van %lievelingseten_met_p%, en dat zijn aardappelen.").
next(sor_math_eten_ingredienten, s3aardappel, "true", s4aardappel).

move(sor_math_eten_ingredienten, s4aardappel, say).
text(sor_math_eten_ingredienten, s4aardappel, "In het restaurant gebruikten we elke avond %math_left% zakken aardappelen en in elke zak zitten %math_right% aardappelen.").
next(sor_math_eten_ingredienten, s4aardappel, "true", s5aardappel).

move(sor_math_eten_ingredienten, s5aardappel, say).
text(sor_math_eten_ingredienten, s5aardappel, "Hoeveel aardappelen worden er elke avond gebruikt?").
insert_minidialog(sor_math_eten_ingredienten, s5aardappel, math_next).
insert_minidialog(sor_math_eten_ingredienten, s5aardappel, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Lezen				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Boeken in bibliotheek
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_lezen_bibliotheek, [type=chitchat, theme=math, topic=lezen]).

move(sor_math_lezen_bibliotheek, s1, continuator).
next(sor_math_lezen_bibliotheek, s1, [[umVariable=leest, filter=green, values=["answer_yes"]], [personalization=1]], s2lezer).
next(sor_math_lezen_bibliotheek, s1, [[umVariable=leest, filter=red, values=["answer_yes"]], [personalization=1]], s3).
next(sor_math_lezen_bibliotheek, s1, [[personalization=0]], s3).
next(sor_math_lezen_bibliotheek, s1, "true", s3).

move(sor_math_lezen_bibliotheek, s2lezer, say).
text(sor_math_lezen_bibliotheek,  s2lezer, "Als iemand die van lezen houd vind je deze vast leuk.").
next(sor_math_lezen_bibliotheek,  s2lezer, "true",  s3).

move(sor_math_lezen_bibliotheek, s3, say).
text(sor_math_lezen_bibliotheek, s3, "Ik heb een tijdje gewerkt in de bibliotheek").
math_generate(sor_math_lezen_bibliotheek, s3).
next(sor_math_lezen_bibliotheek, s3, "true", s4).

move(sor_math_lezen_bibliotheek, s4, say).
text(sor_math_lezen_bibliotheek, s4, "Daar hebben ze %math_left% kasten vol boeken, en in elke kast zitten %math_right% boeken.").
next(sor_math_lezen_bibliotheek, s4, "true", s5).

move(sor_math_lezen_bibliotheek, s5, say).
text(sor_math_lezen_bibliotheek, s5, "Hoeveel boeken zijn er in de bieb in totaal?").
insert_minidialog(sor_math_lezen_bibliotheek, s5, math_next).
insert_minidialog(sor_math_lezen_bibliotheek, s5, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Beroep				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Loon van asssitent
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_beroep_loon, [type=chitchat, theme=math, topic=beroep]).
move(sor_math_beroep_loon, s1, say).
text(sor_math_beroep_loon,  s1, "Ik heb een tijdje gewerkt als assistent").
math_generate(sor_math_beroep_loon, s1).
set_umvariable(sor_math_beroep_loon, s1, beroep_van_kind, piloot). 
next(sor_math_beroep_loon,  s1, "true",  s2).

move(sor_math_beroep_loon, s2, say).
text(sor_math_beroep_loon, s2, "van een %beroep_van_kind%.").
next(sor_math_beroep_loon, s2, "true", s3).

move(sor_math_beroep_loon, s3, say).
text(sor_math_beroep_loon, s3, "Ik verdiende toen %math_left% euro per uur en ik heb in totaal %math_right% uur gewerkt.").
next(sor_math_beroep_loon, s3, "true", s4).

move(sor_math_beroep_loon, s4, say).
text(sor_math_beroep_loon, s4, "Hoeveel heb ik in totaal verdiend als %beroep_van_kind% assistent?").
insert_minidialog(sor_math_beroep_loon, s4, math_next).
insert_minidialog(sor_math_beroep_loon, s4, math_dialog).