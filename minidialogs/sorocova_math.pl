%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SOROCOVA Iteration 1	           %%%
%%%  	   Math Minidialogs for math tutoring robot        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Huisdieren				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Verblijven schoonmaken
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_huisdier_schoonmaken, [type=math, theme=huisdier, topic=schoonmaken]).
dependencies(sor_math_huisdier_schoonmaken, [[[history=sor_huisdier, filter=green]]]).

move(sor_math_huisdier_schoonmaken, s1, say).
text(sor_math_huisdier_schoonmaken,  s1, "Ik heb een tijdje gewerkt in het dieren asiel.").
math_generate(sor_math_huisdier_schoonmaken, s1).
set_umvariable(sor_math_huisdier_schoonmaken, s1, huisdier, hamster). 
next(sor_math_huisdier_schoonmaken,  s1, "true",  s2).

move(sor_math_huisdier_schoonmaken, s2, say).
text(sor_math_huisdier_schoonmaken, s2, "Dat is de plek waar huisdieren blijven als ze even geen baasje hebben.").
next(sor_math_huisdier_schoonmaken, s2, "true", s3).

move(sor_math_huisdier_schoonmaken, s3, say).
text(sor_math_huisdier_schoonmaken, s3, "Als robots moesten wij alle hokken, kooien, en aquaria, schoonmaken.").
next(sor_math_huisdier_schoonmaken, s3, "true", s4).

move(sor_math_huisdier_schoonmaken, s4, continuator).
next(sor_math_huisdier_schoonmaken, s4, [[personalization=1]], s4per).
next(sor_math_huisdier_schoonmaken, s4, [[personalization=0]], s4noper).
next(sor_math_huisdier_schoonmaken, s4, "true", s4noper).

move(sor_math_huisdier_schoonmaken, s4per, say).
text(sor_math_huisdier_schoonmaken, s4per, "En weetje wat toevallig is? Ik moest die van de %huisdier% schoonmaken.").
next(sor_math_huisdier_schoonmaken, s4per, "true", s5).

move(sor_math_huisdier_schoonmaken, s4noper, say).
text(sor_math_huisdier_schoonmaken, s4noper, "Ik moest die van de %huisdier% schoonmaken.").
next(sor_math_huisdier_schoonmaken, s4noper, "true", s5).

move(sor_math_huisdier_schoonmaken, s5, say).
text(sor_math_huisdier_schoonmaken, s5, "Er zijn %math_left% verblijven. En in elk verblijf past %math_right% keer een %huisdier%").
next(sor_math_huisdier_schoonmaken, s5, "true", s6).

move(sor_math_huisdier_schoonmaken, s6, say).
text(sor_math_huisdier_schoonmaken, s6, "Hoevaak heb ik een %huisdier% verschoond?").
insert_minidialog(sor_math_huisdier_schoonmaken, s6, math_next).
insert_minidialog(sor_math_huisdier_schoonmaken, s6, math_dialog).

% Bijeenkomst
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_huisdier_bijeenkomst, [type=math, theme=huisdier, topic=bijeenkomst]).
dependencies(sor_math_huisdier_bijeenkomst, [[[history=sor_huisdier, filter=green]]]).

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
text(sor_math_huisdier_bijeenkomst, s5, "Hoe vaak kon mijn robot vriend een %huisdier% aaien, bij de bijeenkomst?").
insert_minidialog(sor_math_huisdier_bijeenkomst, s5, math_next).
insert_minidialog(sor_math_huisdier_bijeenkomst, s5, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Eten met een P			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Koken
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_eten_koken, [type=math, theme=eten, topic=koken]).
dependencies(sor_math_eten_koken, [[[history=sor_eten_met_p, filter=green]]]).

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
minidialog(sor_math_eten_afwassen, [type=math, theme=eten, topic=afwassen]).
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
minidialog(sor_math_eten_ingredienten, [type=math, theme=eten, topic=ingredienten]).
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
minidialog(sor_math_lezen_bibliotheek, [type=math, theme=lezen, topic=bibliotheek]).
dependencies(sor_math_lezen_bibliotheek, [[[history=sor_hob_lezen, filter=green]]]).

move(sor_math_lezen_bibliotheek, s1, continuator).
next(sor_math_lezen_bibliotheek, s1, [[umVariable=leest, filter=green, values=["answer_yes"]], [personalization=1]], s2wel).
next(sor_math_lezen_bibliotheek, s1, [[umVariable=leest, filter=red, values=["answer_yes"]], [personalization=1]], s2niet).
next(sor_math_lezen_bibliotheek, s1, [[personalization=0]], s3).
next(sor_math_lezen_bibliotheek, s1, "true", s3).

move(sor_math_lezen_bibliotheek, s2wel, say).
text(sor_math_lezen_bibliotheek, s2wel, "Als iemand die van lezen houd vind je deze vast leuk.").
next(sor_math_lezen_bibliotheek, s2wel, "true",  s3).

move(sor_math_lezen_bibliotheek, s2niet, say).
text(sor_math_lezen_bibliotheek, s2niet, "Als iemand die ook niet van lezen houdt, snap je vast hoe vreselijk ik dit vond.").
next(sor_math_lezen_bibliotheek, s2niet, "true",  s3).

move(sor_math_lezen_bibliotheek, s3, say).
text(sor_math_lezen_bibliotheek, s3, "Ik heb namelijk een tijdje gewerkt in de bibliotheek").
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
%%% Zwemmen				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Baantjes tellen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_zwemmen_baantjes, [type=math, theme=zwemmen, topic=baantjes]).
dependencies(sor_math_zwemmen_baantjes, [[[history=sor_hob_lezen, filter=green]]]).

move(sor_math_zwemmen_baantjes, s1, continuator).
next(sor_math_zwemmen_baantjes, s1, [[umVariable=zwemt, filter=green, values=["answer_yes"]], [personalization=1]], s2wel).
next(sor_math_zwemmen_baantjes, s1, [[umVariable=zwemt, filter=red, values=["answer_yes"]], [personalization=1]], s2niet).
next(sor_math_zwemmen_baantjes, s1, [[personalization=0]], s3).
next(sor_math_zwemmen_baantjes, s1, "true", s3).

move(sor_math_zwemmen_baantjes, s2wel, say).
text(sor_math_zwemmen_baantjes, s2wel, "Als iemand die van zwemmen houd vind je deze vast leuk.").
next(sor_math_zwemmen_baantjes, s2wel, "true",  s3).

move(sor_math_zwemmen_baantjes, s2niet, say).
text(sor_math_zwemmen_baantjes, s2niet, "Als iemand die ook niet van zwemmen houdt, snap je vast hoe vreslijk ik dit vond.").
next(sor_math_zwemmen_baantjes, s2niet, "true",  s3).

move(sor_math_zwemmen_baantjes, s3, say).
text(sor_math_zwemmen_baantjes, s3, "Ik mocht namelijk geen badmeester meer zijn.").
math_generate(sor_math_zwemmen_baantjes, s3).
next(sor_math_zwemmen_baantjes, s3, "true", s4).

move(sor_math_zwemmen_baantjes, s4, say).
text(sor_math_zwemmen_baantjes, s4, "Ik moest alleen bij houden hoeveel mensen er in het zwembad lagen.").
next(sor_math_zwemmen_baantjes, s4, "true", s5).

move(sor_math_zwemmen_baantjes, s5, say).
text(sor_math_zwemmen_baantjes, s5, "Ons zwembad had %math_left% bannen en op een gemiddelde woensdagmiddag liggen er %math_right% mensen in elke baan.").
next(sor_math_zwemmen_baantjes, s5, "true", s6).

move(sor_math_zwemmen_baantjes, s6, say).
text(sor_math_zwemmen_baantjes, s6, "Hoeveel mensen zwemmen er in totaal?").
insert_minidialog(sor_math_zwemmen_baantjes, s6, math_next).
insert_minidialog(sor_math_zwemmen_baantjes, s6, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Beroep				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Loon van asssitent
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_beroep_loon, [type=math, theme=beroep, topic=loon]).
dependencies(sor_math_beroep_loon, [[[history=sor_beroep, filter=green]]]).

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

% Collega's
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_beroep_collega, [type=math, theme=beroep, topic=collega]).
dependencies(sor_math_beroep_collega, [[[history=sor_math_beroep_loon, filter=green]]]).

move(sor_math_beroep_collega, s1, say).
math_generate(sor_math_beroep_collega, s1).
set_umvariable(sor_math_beroep_collega, s1, beroep_van_kind, piloot). 
next(sor_math_beroep_collega,  s1, "true",  s2).

move(sor_math_beroep_collega, s2, say).
text(sor_math_beroep_collega, s2, "De %beroep_van_kind% waar ik assistent van ben geweest.").
next(sor_math_beroep_collega, s2, "true", s3).

move(sor_math_beroep_collega, s3, say).
text(sor_math_beroep_collega, s3, "Die werkte bij een bedrijf met %math_left% afdelingen. En in elke afdeling werkte %math_right% collega's.").
next(sor_math_beroep_collega, s3, "true", s4).

move(sor_math_beroep_collega, s4, say).
text(sor_math_beroep_collega, s4, "Hoeveel collega's had mijn %beroep_van_kind% in totaal?").
insert_minidialog(sor_math_beroep_collega, s4, math_next).
insert_minidialog(sor_math_beroep_collega, s4, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Youtube				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Jungle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_youtube_jungle, [type=math, theme=youtube, topic=jungle]).
dependencies(sor_math_youtube_jungle, [[[history=sor_youtube, filter=green], [umVariable=onderwerp_youtubevideo, filter=green, values=["jungle"]]]]).

move(sor_math_youtube_jungle, s1, continuator).
next(sor_math_youtube_jungle, s1, [[personalization=1]], s2).
next(sor_math_youtube_jungle, s1, [[personalization=0]], s6).
next(sor_math_youtube_jungle, s1, "true", s6).

move(sor_math_youtube_jungle, s2, say).
text(sor_math_youtube_jungle, s2, "he %first_name% !").
next(sor_math_youtube_jungle, s2, "true", s3).

move(sor_math_youtube_jungle, s3, say).
text(sor_math_youtube_jungle, s3, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(sor_math_youtube_jungle, s3, "true", s4).

move(sor_math_youtube_jungle, s4, say).
text(sor_math_youtube_jungle, s4, "Ik heb gisteren dat filmpje over de jungle bekeken, zoals je zei!").
next(sor_math_youtube_jungle, s4, "true", s5).

move(sor_math_youtube_jungle, s5, say).
text(sor_math_youtube_jungle, s5, "De voice-over in het youtube filmpje vertelde over een troep apen").
next(sor_math_youtube_jungle, s5, "true", s6).

move(sor_math_youtube_jungle, s6, say).
text(sor_math_youtube_jungle, s6, "De apen slingerde van boom tot boom door de jungle heen.").
next(sor_math_youtube_jungle, s6, "true", s7).

move(sor_math_youtube_jungle, s7, say).
text(sor_math_youtube_jungle, s7, "Op een gegeven moment zaten er %math_left% apen in een boom.").
next(sor_math_youtube_jungle, s7, "true", s8).

move(sor_math_youtube_jungle, s8, say).
text(sor_math_youtube_jungle, s8, "En er waren %math_right% bomen waar apen in zaten.").
next(sor_math_youtube_jungle, s8, "true", s9).

move(sor_math_youtube_jungle, s9, say).
text(sor_math_youtube_jungle, s9, "Hoeveel apen waren er in totaal?").
insert_minidialog(sor_math_youtube_jungle, s9, math_next).
insert_minidialog(sor_math_youtube_jungle, s9, math_dialog).

% Noordpool
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_youtube_noordpool, [type=math, theme=youtube, topic=noordpool]).
dependencies(sor_math_youtube_noordpool, [[[history=sor_youtube, filter=green], [umVariable=onderwerp_youtubevideo, filter=green, values=["noordpool"]]]]).

move(sor_math_youtube_noordpool, s1, continuator).
next(sor_math_youtube_noordpool, s1, [[personalization=1]], s2).
next(sor_math_youtube_noordpool, s1, [[personalization=0]], s6).
next(sor_math_youtube_noordpool, s1, "true", s6).

move(sor_math_youtube_noordpool, s2, say).
text(sor_math_youtube_noordpool, s2, "he %first_name% !").
next(sor_math_youtube_noordpool, s2, "true", s3).

move(sor_math_youtube_noordpool, s3, say).
text(sor_math_youtube_noordpool, s3, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(sor_math_youtube_noordpool, s3, "true", s4).

move(sor_math_youtube_noordpool, s4, say).
text(sor_math_youtube_noordpool, s4, "Ik heb gisteren dat filmpje over de noordpool bekeken, zoals je zei!").
next(sor_math_youtube_noordpool, s4, "true", s5).

move(sor_math_youtube_noordpool, s5, say).
text(sor_math_youtube_noordpool, s5, "De voice-over in het youtube filmpje vertelde over een roedel, poolvossen").
next(sor_math_youtube_noordpool, s5, "true", s6).

move(sor_math_youtube_noordpool, s6, say).
text(sor_math_youtube_noordpool, s6, "Een poolvossen baande hun weg door de sneeuw.").
next(sor_math_youtube_noordpool, s6, "true", s7).

move(sor_math_youtube_noordpool, s7, say).
text(sor_math_youtube_noordpool, s7, "Ik telde %math_left% sporen in de sneeuw. ").
next(sor_math_youtube_noordpool, s7, "true", s8).

move(sor_math_youtube_noordpool, s8, say).
text(sor_math_youtube_noordpool, s8, "En in elk spoor zag ik %math_right% staartjes boven de sneeuw uitsteken.").
next(sor_math_youtube_noordpool, s8, "true", s9).

move(sor_math_youtube_noordpool, s9, say).
text(sor_math_youtube_noordpool, s9, "Hoeveel poolvossen waren er in totaal?").
insert_minidialog(sor_math_youtube_noordpool, s9, math_next).
insert_minidialog(sor_math_youtube_noordpool, s9, math_dialog).

% Tropische zee
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_youtube_tropische_zee, [type=math, theme=youtube, topic=zee]).
dependencies(sor_math_youtube_tropische_zee, [[[history=sor_youtube, filter=green], [umVariable=onderwerp_youtubevideo, filter=green, values=["zee"]]]]).

move(sor_math_youtube_tropische_zee, s1, continuator).
next(sor_math_youtube_tropische_zee, s1, [[personalization=1]], s2).
next(sor_math_youtube_tropische_zee, s1, [[personalization=0]], s6).
next(sor_math_youtube_tropische_zee, s1, "true", s6).

move(sor_math_youtube_tropische_zee, s2, say).
text(sor_math_youtube_tropische_zee, s2, "he %first_name% !").
next(sor_math_youtube_tropische_zee, s2, "true", s3).

move(sor_math_youtube_tropische_zee, s3, say).
text(sor_math_youtube_tropische_zee, s3, "Weet je nog dat we het hadden over YouTube filmpjes?").
next(sor_math_youtube_tropische_zee, s3, "true", s4).

move(sor_math_youtube_tropische_zee, s4, say).
text(sor_math_youtube_tropische_zee, s4, "Ik heb gisteren dat filmpje over de tropische zee bekeken, zoals je zei!").
next(sor_math_youtube_tropische_zee, s4, "true", s5).

move(sor_math_youtube_tropische_zee, s5, say).
text(sor_math_youtube_tropische_zee, s5, "De voice-over in het youtube filmpje vertelde over octopussen").
next(sor_math_youtube_tropische_zee, s5, "true", s6).

move(sor_math_youtube_tropische_zee, s6, say).
text(sor_math_youtube_tropische_zee, s6, "Ik telde %math_left% octopussen.").
next(sor_math_youtube_tropische_zee, s6, "true", s7).

move(sor_math_youtube_tropische_zee, s7, say).
text(sor_math_youtube_tropische_zee, s7, "En ik telke %math_right% zuignapjes per octopus.").
next(sor_math_youtube_tropische_zee, s7, "true", s8).

move(sor_math_youtube_tropische_zee, s8, say).
text(sor_math_youtube_tropische_zee, s8, "Hoeveel zuignapjes telde ik in totaal?").
insert_minidialog(sor_math_youtube_tropische_zee, s8, math_next).
insert_minidialog(sor_math_youtube_tropische_zee, s8, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Bos en strand			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Zandkorrels
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_strand_korrels, [type=math, theme=strand, topic=zandkorrels]).
dependencies(sor_math_strand_korrels, [[[history=sor_bos_strand, filter=green]]]).

move(sor_math_strand_korrels, s1, continuator).
next(sor_math_strand_korrels, s1, [[umVariable=houdt_van_strand, filter=green, values=["answer_yes"]], [personalization=1]], s2wel).
next(sor_math_strand_korrels, s1, [[umVariable=houdt_van_strand, filter=red, values=["answer_yes"]], [personalization=1]], s2niet).
next(sor_math_strand_korrels, s1, [[personalization=0]], s3).
next(sor_math_strand_korrels, s1, "true", s3).

move(sor_math_strand_korrels, s2wel, say).
text(sor_math_strand_korrels, s2wel, "Omdat jij van het strand houd, snap je vast dat ik deze opdracht best leuk vond.").
next(sor_math_strand_korrels, s2wel, "true", s3).

move(sor_math_strand_korrels, s2niet, say).
text(sor_math_strand_korrels, s2niet, "Omdat jij ook niet van het strand houd, snap je vast dat ik deze opdracht vreselijk vond.").
next(sor_math_strand_korrels, s2niet, "true", s3).

move(sor_math_strand_korrels, s3, say).
text(sor_math_strand_korrels, s3, "Toen ik bij de strandwacht werkte moest ik zandkorrels tellen, van een klein stukje strand.").
next(sor_math_strand_korrels, s3, "true", s4).

move(sor_math_strand_korrels, s4, say).
text(sor_math_strand_korrels, s4, "Ik heb dat stukje strand opgedeeld in %math_left% vakjes en in elk vakje zaten %math_right% zandkorrels.").
next(sor_math_strand_korrels, s4, "true", s5).

move(sor_math_strand_korrels, s5, say).
text(sor_math_strand_korrels, s5, "Hoeveel zandkorrels waren er in totaal?").
insert_minidialog(sor_math_strand_korrels, s5, math_next).
insert_minidialog(sor_math_strand_korrels, s5, math_dialog).

% Blaadjes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_bos_blaadjes, [type=math, theme=strand, topic=zandkorrels]).
dependencies(sor_math_bos_blaadjes, [[[history=sor_bos_strand, filter=green]]]).

move(sor_math_bos_blaadjes, s1, continuator).
next(sor_math_bos_blaadjes, s1, [[umVariable=houdt_van_bos, filter=green, values=["answer_yes"]], [personalization=1]], s2wel).
next(sor_math_bos_blaadjes, s1, [[umVariable=houdt_van_bos, filter=red, values=["answer_yes"]], [personalization=1]], s2niet).
next(sor_math_bos_blaadjes, s1, [[personalization=0]], s3).
next(sor_math_bos_blaadjes, s1, "true", s3).

move(sor_math_bos_blaadjes, s2wel, say).
text(sor_math_bos_blaadjes, s2wel, "Omdat jij van het bos houd, snap je vast dat ik deze opdracht best leuk vond.").
next(sor_math_bos_blaadjes, s2wel, "true", s3).

move(sor_math_bos_blaadjes, s2niet, say).
text(sor_math_bos_blaadjes, s2niet, "Omdat jij ook niet van het bos houd, snap je vast dat ik deze opdracht vreselijk vond.").
next(sor_math_bos_blaadjes, s2niet, "true", s3).

move(sor_math_bos_blaadjes, s3, say).
text(sor_math_bos_blaadjes, s3, "Ik heb een tijdje in de herfst, als boswachter gewerkt.").
next(sor_math_bos_blaadjes, s3, "true", s4).

move(sor_math_bos_blaadjes, s4, say).
text(sor_math_bos_blaadjes, s4, "Ik moest toen tellen hoeveel blaadjes er nog in de bomen zaten.").
next(sor_math_bos_blaadjes, s4, "true", s5).

move(sor_math_bos_blaadjes, s5, say).
text(sor_math_bos_blaadjes, s5, "Ik moest de blaadjes in %math_left% bomen tellen en in elke boom zaten nog %math_right% blaadjes.").
next(sor_math_bos_blaadjes, s5, "true", s6).

move(sor_math_bos_blaadjes, s6, say).
text(sor_math_bos_blaadjes, s6, "Hoeveel blaadjes waren er in totaal?").
insert_minidialog(sor_math_bos_blaadjes, s6, math_next).
insert_minidialog(sor_math_bos_blaadjes, s6, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Kleur				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Stiften
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_kleur_stiften, [type=math, theme=kleur, topic=stiften]).
dependencies(sor_math_kleur_stiften, [[[history=sor_kleur, filter=green]]]).

move(sor_math_kleur_stiften, s1, say).
text(sor_math_kleur_stiften,  s1, "Zoals je weet ben ik gek op kleuren.").
math_generate(sor_math_kleur_stiften, s1).
next(sor_math_kleur_stiften,  s1, "true",  s2).

move(sor_math_kleur_stiften, s2, continuator).
next(sor_math_kleur_stiften, s2, [[umVariable=lievelingskleur, filter=green, values=["_any"]], [personalization=1]], s3per).
next(sor_math_kleur_stiften, s2, [[personalization=0]], s3noper).
next(sor_math_kleur_stiften, s2, "true", s3noper).

move(sor_math_kleur_stiften, s3per, say).
text(sor_math_kleur_stiften, s3per, "Ik spaar daarom stiften met de kleur %lievelingskleur%").
leds(sor_math_kleur_stiften, s3per, direct, ["ChestLeds"], [lievelingskleur]).
next(sor_math_kleur_stiften, s3per, "true", s4per).

move(sor_math_kleur_stiften, s4per, say).
text(sor_math_kleur_stiften, s4per, "Wacht eens even. Dat is jouw lievelingskleur. Wat leuk!").
next(sor_math_kleur_stiften, s4per, "true", s5).

move(sor_math_kleur_stiften, s3noper, say).
set_umvariable(sor_math_kleur_stiften, s3noper, lievelingskleur, bruin). 
next(sor_math_kleur_stiften,  s3noper, "true",  s4noper).

move(sor_math_kleur_stiften, s4noper, say).
text(sor_math_kleur_stiften, s4noper, "Ik spaar daarom stiften met de kleur %lievelingskleur%").
leds(sor_math_kleur_stiften, s4noper, direct, ["ChestLeds"], [lievelingskleur]).
next(sor_math_kleur_stiften, s4noper, "true", s5noper).

move(sor_math_kleur_stiften, s5noper, say).
text(sor_math_kleur_stiften, s5noper, "Dat vind ik een mooie kleur.").
next(sor_math_kleur_stiften, s5noper, "true", s5).

move(sor_math_kleur_stiften, s5, say).
text(sor_math_kleur_stiften, s5, "Ik heb %math_left% doosjes met stiften en in elk doosje zitten %math_right% stiften met de kleur %lievelingskleur%.").
next(sor_math_kleur_stiften, s5, "true", s6).

move(sor_math_kleur_stiften, s6, say).
text(sor_math_kleur_stiften, s6, "Hoeveel stiften met de kleur %lievelingskleur% heb ik?").
leds(sor_math_kleur_stiften, s6, reset).
insert_minidialog(sor_math_kleur_stiften, s6, math_next).
insert_minidialog(sor_math_kleur_stiften, s6, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Muziek				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Concert
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_muziek_concert, [type=math, theme=muziek, topic=concert]).
dependencies(sor_math_muziek_concert, [[[history=sor_hob_muziek, filter=green]]]).

move(sor_math_muziek_concert, s1, continuator).
next(sor_math_muziek_concert, s1, [[umVariable=houdt_van_muziek, filter=green, values=["answer_yes"]], [personalization=1]], s2wel).
next(sor_math_muziek_concert, s1, [[umVariable=houdt_van_muziek, filter=red, values=["answer_yes"]], [personalization=1]], s3).
next(sor_math_muziek_concert, s1, [[personalization=0]], s3).
next(sor_math_muziek_concert, s1, "true", s3).

move(sor_math_muziek_concert, s2wel, say).
text(sor_math_muziek_concert, s2wel, "Omdat jij van muziek houd, heb ik dit rekenprobleem speciaal voor jou toegevoegd.").
next(sor_math_muziek_concert, s2wel, "true", s3).

move(sor_math_muziek_concert, s3, say).
text(sor_math_muziek_concert,  s3, "Wist je dat ik roadie geweest ben?").
math_generate(sor_math_muziek_concert, s3).
set_umvariable(sor_math_muziek_concert, s3, muziekinstrument, trompet). 
next(sor_math_muziek_concert,  s3, "true",  s4).

move(sor_math_muziek_concert, s4, say).
text(sor_math_muziek_concert, s4, "Een roadie reist mee met muzikanten, wanneer ze concerten geven.").
next(sor_math_muziek_concert, s4, "true", s5).

move(sor_math_muziek_concert, s5, say).
text(sor_math_muziek_concert, s5, "En dan zorgen ze voor de muziekinstrumenten.").
next(sor_math_muziek_concert, s5, "true", s6).

move(sor_math_muziek_concert, s6, say).
text(sor_math_muziek_concert, s6, "Ik mocht zorgen voor de %muziekinstrument%.").
next(sor_math_muziek_concert, s6, "true", s7).

move(sor_math_muziek_concert, s7, say).
text(sor_math_muziek_concert, s7, "Elke muziekant neemt altijd %math_left% reserve instrumenten mee. Er waren %math_right% muzikanten die een %muziekinstrument% bespelen.").
next(sor_math_muziek_concert, s7, "true", s8).

move(sor_math_muziek_concert, s8, say).
text(sor_math_muziek_concert, s8, "Hoevaak moest ik een %muziekinstrument% klaarzetten voor de muziekanten?").
insert_minidialog(sor_math_muziek_concert, s8, math_next).
insert_minidialog(sor_math_muziek_concert, s8, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Saus				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Snackbar
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_saus_snackbar, [type=math, theme=saus, topic=snackbar]).
dependencies(sor_math_saus_snackbar, [[[history=sor_eten_saus, filter=green]]]).

move(sor_math_saus_snackbar, s1, say).
text(sor_math_saus_snackbar,  s1, "Zoals je misschien nog weet, heb ik een tijd in de snackbar gewerkt.").
math_generate(sor_math_saus_snackbar, s1).
next(sor_math_saus_snackbar,  s1, "true",  s2).

move(sor_math_saus_snackbar, s2, continuator).
next(sor_math_saus_snackbar, s2, [[umVariable=lievelingssaus, filter=green, values=["_any"]], [personalization=1]], s3per).
next(sor_math_saus_snackbar, s2, [[personalization=0]], s3noper).
next(sor_math_saus_snackbar, s2, "true", s3noper).

move(sor_math_saus_snackbar, s3per, say).
text(sor_math_saus_snackbar, s3per, "Er ging zoveel van jouw lievelingssaus, %lievelingssaus%, doorheen op een dag.").
next(sor_math_saus_snackbar, s3per, "true", s5).

move(sor_math_saus_snackbar, s3noper, say).
set_umvariable(sor_math_saus_snackbar, s3noper, lievelingssaus, mayonaise). 
next(sor_math_saus_snackbar, s3noper, "true", s4noper).

move(sor_math_saus_snackbar, s4noper, say).
text(sor_math_saus_snackbar, s4noper, "Er ging zoveel %lievelingssaus% overheen ").
next(sor_math_saus_snackbar, s4noper, "true", s5).

move(sor_math_saus_snackbar, s5, say).
text(sor_math_saus_snackbar, s5, "Wel %math_right% bakken %lievelingssaus% per dag. En in elke bak zat %math_left% liter %lievelingssaus%.").
next(sor_math_saus_snackbar, s5, "true", s6).

move(sor_math_saus_snackbar, s6, say).
text(sor_math_saus_snackbar, s6, "Hoeveel liter %lievelingssaus% werd er per dag gegeten?").
insert_minidialog(sor_math_saus_snackbar, s6, math_next).
insert_minidialog(sor_math_saus_snackbar, s6, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Boederijdier			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Tellen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_boederijdier_tellen, [type=math, theme=boederijdier, topic=tellen]).
dependencies(sor_math_boederijdier_tellen, [[[history=sor_boederijdier, filter=green]]]).

move(sor_math_boederijdier_tellen, s1, say).
text(sor_math_boederijdier_tellen,  s1, "Ik heb dus een tijdje op een boederij gewerkt").
math_generate(sor_math_boederijdier_tellen, s1).
set_umvariable(sor_math_boederijdier_tellen, s1, boederijdier, ezel). 
next(sor_math_boederijdier_tellen,  s1, "true",  s2).

move(sor_math_boederijdier_tellen, s2, say).
text(sor_math_boederijdier_tellen, s2, "Ik moest in de gaten houden of elke %boederijdier% nog in het weiland stond.").
next(sor_math_boederijdier_tellen, s2, "true", s3).

move(sor_math_boederijdier_tellen, s3, say).
text(sor_math_boederijdier_tellen, s3, "Er waren %math_left% weilanden. En in elk weiland moet er %math_right% keer een %boederijdier% zijn.").
next(sor_math_boederijdier_tellen, s3, "true", s4).

move(sor_math_boederijdier_tellen, s4, say).
text(sor_math_boederijdier_tellen, s4, "Hoeveel moest ik er in totaal in de gaten houden?").
insert_minidialog(sor_math_boederijdier_tellen, s4, math_next).
insert_minidialog(sor_math_boederijdier_tellen, s4, math_dialog).

% Voeren
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_boederijdier_voeren, [type=math, theme=boederijdier, topic=voeren]).
dependencies(sor_math_boederijdier_voeren, [[[history=sor_math_boederijdier_tellen, filter=green]]]).

move(sor_math_boederijdier_voeren, s1, say).
text(sor_math_boederijdier_voeren,  s1, "De dieren op de boederij moeten ook eten.").
math_generate(sor_math_boederijdier_voeren, s1).
set_umvariable(sor_math_boederijdier_voeren, s1, boederijdier, ezel). 
next(sor_math_boederijdier_voeren,  s1, "true",  s2).

move(sor_math_boederijdier_voeren, s2, say).
text(sor_math_boederijdier_voeren, s2, "Ik mocht de %boederijdier% voeren.").
next(sor_math_boederijdier_voeren, s2, "true", s3).

move(sor_math_boederijdier_voeren, s3, say).
text(sor_math_boederijdier_voeren, s3, "%math_left% schepjes voer per %boederijdier%. In de stal stonden er %math_right%.").
next(sor_math_boederijdier_voeren, s3, "true", s4).

move(sor_math_boederijdier_voeren, s4, say).
text(sor_math_boederijdier_voeren, s4, "Hoeveel schepjes moest ik in totaal in de voer bak doen?").
insert_minidialog(sor_math_boederijdier_voeren, s4, math_next).
insert_minidialog(sor_math_boederijdier_voeren, s4, math_dialog).

% Wassen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_boederijdier_wassen, [type=math, theme=boederijdier, topic=wassen]).
dependencies(sor_math_boederijdier_wassen, [[[history=sor_math_boederijdier_tellen, filter=green]]]).

move(sor_math_boederijdier_wassen, s1, say).
text(sor_math_boederijdier_wassen,  s1, "De dieren op de boederij moeten ook gewassen worden.").
math_generate(sor_math_boederijdier_wassen, s1).
set_umvariable(sor_math_boederijdier_wassen, s1, boederijdier, ezel). 
next(sor_math_boederijdier_wassen,  s1, "true",  s2).

move(sor_math_boederijdier_wassen, s2, say).
text(sor_math_boederijdier_wassen, s2, "Ik mocht de %boederijdier% wassen.").
next(sor_math_boederijdier_wassen, s2, "true", s3).

move(sor_math_boederijdier_wassen, s3, say).
text(sor_math_boederijdier_wassen, s3, "Ik moest %math_left% keer heen en weer met mijn borstel per %boederijdier%. In de stal stonden er %math_right%.").
next(sor_math_boederijdier_wassen, s3, "true", s4).

move(sor_math_boederijdier_wassen, s4, say).
text(sor_math_boederijdier_wassen, s4, "Hoevaak ben ik heen en weer gegaan met mijn borstel?").
insert_minidialog(sor_math_boederijdier_wassen, s4, math_next).
insert_minidialog(sor_math_boederijdier_wassen, s4, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ruimte				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Telescoop
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_ruimte_telescoop, [type=math, theme=ruimte, topic=telescoop]).
dependencies(sor_math_ruimte_telescoop, [[[history=sor_ruimterobots, filter=green]]]).

move(sor_math_ruimte_telescoop, s1, continuator).
next(sor_math_ruimte_telescoop, s1, [[umVariable=wil_ruimte_in, filter=green, values=["answer_yes"]], [personalization=1]], s2wel).
next(sor_math_ruimte_telescoop, s1, [[umVariable=wil_ruimte_in, filter=red, values=["answer_yes"]], [personalization=1]], s2niet).
next(sor_math_ruimte_telescoop, s1, [[personalization=0]], s3).
next(sor_math_ruimte_telescoop, s1, "true", s3).

move(sor_math_ruimte_telescoop, s2wel, say).
text(sor_math_ruimte_telescoop, s2wel, "Vorige keer vertelde je me dat je wel met een raket de ruimte in wil. Voordat je dat kunt doen moet je de ruimte eerst goed bekijken.").
next(sor_math_ruimte_telescoop, s2wel, "true", s3).

move(sor_math_ruimte_telescoop, s2niet, say).
text(sor_math_ruimte_telescoop, s2niet, "Vorige keer vertelde je me dat je niet met een raket de ruimte in wil. Gelukkig kun je de ruimte goed bekijken, hier veilig op aarde.").
next(sor_math_ruimte_telescoop, s2niet, "true", s3).

move(sor_math_ruimte_telescoop, s3, say).
text(sor_math_ruimte_telescoop,  s3, "De ruimte goed bekijken doe je met een telescoop").
math_generate(sor_math_ruimte_telescoop, s3).
next(sor_math_ruimte_telescoop,  s3, "true",  s4).

move(sor_math_ruimte_telescoop, s4, continuator).
next(sor_math_ruimte_telescoop, s4, [[umVariable=ruimtelocatie, filter=green, values=["sterren"]], [personalization=1]], s5sterren).
next(sor_math_ruimte_telescoop, s4, [[umVariable=ruimtelocatie, filter=green, values=["_any"]], [personalization=1]], s5rest).
next(sor_math_ruimte_telescoop, s4, [[personalization=0]], s5noper).
next(sor_math_ruimte_telescoop, s4, "true", s5noper).

move(sor_math_ruimte_telescoop, s5sterren, say).
text(sor_math_ruimte_telescoop, s5sterren, "Je kunt heel goed naar de sterren kijken. Hee daar wilde jij heen toch.").
next(sor_math_ruimte_telescoop, s5sterren, "true", s6).

move(sor_math_ruimte_telescoop, s5rest, say).
text(sor_math_ruimte_telescoop, s5rest, "Als je goed zoekt dan kun je een stukje %ruimtelocatie% zien. Hee, daar wilde jij heen toch.").
next(sor_math_ruimte_telescoop, s5rest, "true", s6).

move(sor_math_ruimte_telescoop, s5noper, say).
text(sor_math_ruimte_telescoop, s5noper, "Je kunt dan de planeten goed bekijken.").
next(sor_math_ruimte_telescoop, s5noper, "true", s6).

move(sor_math_ruimte_telescoop, s6, say).
text(sor_math_ruimte_telescoop, s6, "Ik moest juist de sterren gaan tellen.").
next(sor_math_ruimte_telescoop, s6, "true", s7).

move(sor_math_ruimte_telescoop, s7, say).
text(sor_math_ruimte_telescoop, s7, "Ik heb in totaal %math_left% uur door de telescoop gekeken. En elk uur kon ik %math_right% sterren tellen.").
next(sor_math_ruimte_telescoop, s7, "true", s8).

move(sor_math_ruimte_telescoop, s8, say).
text(sor_math_ruimte_telescoop, s8, "Hoeveel sterren heb ik in totaal gezien?").
insert_minidialog(sor_math_ruimte_telescoop, s8, math_next).
insert_minidialog(sor_math_ruimte_telescoop, s8, math_dialog).

% Satalieten
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_ruimte_sataliet, [type=math, theme=ruimte, topic=sataliet]).
dependencies(sor_math_ruimte_sataliet, [[[history=sor_math_ruimte_telescoop, filter=green]]]).

move(sor_math_ruimte_sataliet, s1, say).
text(sor_math_ruimte_sataliet,  s1, "Weetje wat ik ook door de telescoop goed zag?").
math_generate(sor_math_ruimte_sataliet, s1).
next(sor_math_ruimte_sataliet,  s1, "true",  s2).

move(sor_math_ruimte_sataliet, s2, say).
text(sor_math_ruimte_sataliet, s2, "Satalieten").
next(sor_math_ruimte_sataliet, s2, "true", s3).

move(sor_math_ruimte_sataliet, s3, say).
text(sor_math_ruimte_sataliet, s3, "Ik heb %math_left% uur gezocht naar satlieten met de telescoop. Elk uur kwamen er %math_right% voorbij.").
next(sor_math_ruimte_sataliet, s3, "true", s4).

move(sor_math_ruimte_sataliet, s4, say).
text(sor_math_ruimte_sataliet, s4, "Hoeveel satalieten heb ik toen gezien?").
insert_minidialog(sor_math_ruimte_sataliet, s4, math_next).
insert_minidialog(sor_math_ruimte_sataliet, s4, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Buitenspelen			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Toernooi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_buitenspelen_toernooi, [type=math, theme=buitenspelen, topic=toernooi]).
dependencies(sor_math_buitenspelen_toernooi, [[[history=sor_hob_buitenspelen, filter=green]]]).

move(sor_math_buitenspelen_toernooi, s1, continuator).
next(sor_math_buitenspelen_toernooi, s1, [[umVariable=houdt_van_buitenspelen, filter=green, values=["answer_yes"]], [personalization=1]], s2wel).
next(sor_math_buitenspelen_toernooi, s1, [[umVariable=houdt_van_buitenspelen, filter=red, values=["answer_yes"]], [personalization=1]], s2niet).
next(sor_math_buitenspelen_toernooi, s1, [[personalization=0]], s3).
next(sor_math_buitenspelen_toernooi, s1, "true", s3).

move(sor_math_buitenspelen_toernooi, s2wel, say).
text(sor_math_buitenspelen_toernooi, s2wel, "Zeg %first_name%, vorige keer vertelde je me dat je graag buiten speelt.").
next(sor_math_buitenspelen_toernooi, s2wel, "true", s3).

move(sor_math_buitenspelen_toernooi, s2niet, say).
text(sor_math_buitenspelen_toernooi, s2niet, "Zeg %first_name%, vorige keer vertelde je me dat je niet graag buiten speelt.").
next(sor_math_buitenspelen_toernooi, s2niet, "true", s3).

move(sor_math_buitenspelen_toernooi, s3, continuator).
next(sor_math_buitenspelen_toernooi, s3, [[umVariable=houdt_van_buitenspelen, filter=green, values=["answer_yes"]], [umVariable=buitenspel, filter=green, values=["_any"]], [personalization=1]], s4peryes).
next(sor_math_buitenspelen_toernooi, s3, [[umVariable=houdt_van_buitenspelen, filter=red, values=["answer_yes"]], [umVariable=buitenspel, filter=green, values=["_any"]], [personalization=1]], s4perno).
next(sor_math_buitenspelen_toernooi, s3, [[umVariable=buitenspel, filter=red, values=["_any"]], [personalization=1]], s4gen).
next(sor_math_buitenspelen_toernooi, s3, [[personalization=0]], s4gen).
next(sor_math_buitenspelen_toernooi, s3, "true", s4gen).

move(sor_math_buitenspelen_toernooi, s4gen, say).
set_umvariable(sor_math_buitenspelen_toernooi, s4gen, buitenspel, tikkertje). 
next(sor_math_buitenspelen_toernooi,  s4gen, "true",  s5gen).

move(sor_math_buitenspelen_toernooi, s5gen, continuator).
next(sor_math_buitenspelen_toernooi, s5gen, [[umVariable=houdt_van_buitenspelen, filter=green, values=["answer_yes"]], [personalization=1]], s4peryes).
next(sor_math_buitenspelen_toernooi, s5gen, [[umVariable=houdt_van_buitenspelen, filter=red, values=["answer_yes"]], [personalization=1]], s4perno).
next(sor_math_buitenspelen_toernooi, s5gen, [[personalization=0]], s5noper).
next(sor_math_buitenspelen_toernooi, s5gen, "true", s5noper).

move(sor_math_buitenspelen_toernooi, s4peryes, say).
text(sor_math_buitenspelen_toernooi, s4peryes, "Dan wil je vast mee doen aan een %buitenspel% toernooi.").
next(sor_math_buitenspelen_toernooi, s4peryes, "true", s6).

move(sor_math_buitenspelen_toernooi, s4perno, say).
text(sor_math_buitenspelen_toernooi, s4perno, "Dan wil je vast niet mee doen aan een %buitenspel% toernooi.").
next(sor_math_buitenspelen_toernooi, s4perno, "true", s6).

move(sor_math_buitenspelen_toernooi, s5noper, say).
text(sor_math_buitenspelen_toernooi, s5noper, "Je gelooft het nooit.").
next(sor_math_buitenspelen_toernooi, s5noper, "true", s6).

move(sor_math_buitenspelen_toernooi, s6, say).
math_generate(sor_math_buitenspelen_toernooi, s6).
text(sor_math_buitenspelen_toernooi, s6, "Ik moest laatst scheidsrechter zijn bij een %buitenspel% toernooi.").
next(sor_math_buitenspelen_toernooi, s6, "true", s7).

move(sor_math_buitenspelen_toernooi, s7, say).
text(sor_math_buitenspelen_toernooi, s7, "Er werd %buitenspel% gespeeld op %math_left% verschillende velden. En op elk veld deden %math_right% kinderen mee.").
next(sor_math_buitenspelen_toernooi, s7, "true", s8).

move(sor_math_buitenspelen_toernooi, s8, say).
text(sor_math_buitenspelen_toernooi, s8, "Hoeveel kinderen deden in totaal mee?").
insert_minidialog(sor_math_buitenspelen_toernooi, s8, math_next).
insert_minidialog(sor_math_buitenspelen_toernooi, s8, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Fruit			                   	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Smoothies
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_fruit_smoothies, [type=math, theme=fruit, topic=smoothie]).
dependencies(sor_math_fruit_smoothies, [[[history=sor_eten_fruit, filter=green]]]).

move(sor_math_fruit_smoothies, s1, say).
text(sor_math_fruit_smoothies,  s1, "Ik heb gisteravond een smoethie gemaakt.").
math_generate(sor_math_fruit_smoothies, s1).
next(sor_math_fruit_smoothies,  s1, "true",  s2).

move(sor_math_fruit_smoothies, s2, continuator).
next(sor_math_fruit_smoothies, s2, [[umVariable=lievelingsfruit, filter=green, values=["_any"]], [personalization=1]], s2bekend).
next(sor_math_fruit_smoothies, s2, [[umVariable=lievelingsfruit, filter=red, values=["_any"]], [personalization=1]], s2onbekend).
next(sor_math_fruit_smoothies, s2, [[personalization=0]], s2onbekend).
next(sor_math_fruit_smoothies, s2, "true", s2onbekend).

move(sor_math_fruit_smoothies, s2bekend, say).
text(sor_math_fruit_smoothies, s2bekend, "Ik heb daar %lievelingsfruit% ingedaan. Jouw lievelingsfruit.").
next(sor_math_fruit_smoothies, s2bekend, "true", s4).

move(sor_math_fruit_smoothies, s2onbekend, say).
set_umvariable(sor_math_fruit_smoothies, s2onbekend, lievelingsfruit, aardbei). 
next(sor_math_fruit_smoothies, s2onbekend, "true", s3onbekend).

move(sor_math_fruit_smoothies, s3onbekend, say).
text(sor_math_fruit_smoothies, s3onbekend, "Ik heb daar %lievelingsfruit% ingedaan.").
next(sor_math_fruit_smoothies, s3onbekend, "true", s4).

move(sor_math_fruit_smoothies, s4, say).
text(sor_math_fruit_smoothies, s4, "Ik heb niet 1 smoethie gemaakt, maar %math_left%. En in elke smoethie stopte ik %math_right% %lievelingsfruit%").
next(sor_math_fruit_smoothies, s4, "true", s5).

move(sor_math_fruit_smoothies, s5, say).
text(sor_math_fruit_smoothies, s5, "Hoeveel %lievelingsfruit% heb ik in totaal gebruikt?").
insert_minidialog(sor_math_fruit_smoothies, s5, math_next).
insert_minidialog(sor_math_fruit_smoothies, s5, math_dialog).

% Jam
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_fruit_jam, [type=math, theme=fruit, topic=jam]).
dependencies(sor_math_fruit_jam, [[[history=sor_math_fruit_smoothies, filter=green]]]).

move(sor_math_fruit_jam, s1, say).
text(sor_math_fruit_jam,  s1, "Naast smoethie heb ik ook jam gemaakt.").
math_generate(sor_math_fruit_jam, s1).
set_umvariable(sor_math_fruit_jam, s1, lievelingsfruit, aardbei). 
next(sor_math_fruit_jam,  s1, "true",  s2).

move(sor_math_fruit_jam, s2, say).
text(sor_math_fruit_jam, s2, "Ik heb %math_left% potten %lievelingsfruit% jam gemaakt. In elke pot moesten wel %math_right% %lievelingsfruit%.").
next(sor_math_fruit_jam, s2, "true", s3).

move(sor_math_fruit_jam, s3, say).
text(sor_math_fruit_jam, s3, "Hoeveel %lievelingsfruit% heb ik gebruikt?").
insert_minidialog(sor_math_fruit_jam, s3, math_next).
insert_minidialog(sor_math_fruit_jam, s3, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Wilde dieren		                   	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Op vakantie
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_wilddier_vakantie, [type=math, theme=wilddier, topic=vakantie]).
dependencies(sor_math_wilddier_vakantie, [[[history=sor_wilddier, filter=green]]]).

move(sor_math_wilddier_vakantie, s1, say).
text(sor_math_wilddier_vakantie,  s1, "Ook robots gaan wel eens op vakantie").
math_generate(sor_math_wilddier_vakantie, s1).
set_umvariable(sor_math_wilddier_vakantie, s1, wilddier, luiaard). 
next(sor_math_wilddier_vakantie,  s1, "true",  s2).

move(sor_math_wilddier_vakantie, s2, say).
text(sor_math_wilddier_vakantie, s2, "Vorige zomer was ik op safari.").
next(sor_math_wilddier_vakantie, s2, "true", s3).

move(sor_math_wilddier_vakantie, s3, say).
text(sor_math_wilddier_vakantie, s3, "Ik heb %math_left%  dagen in een jeep rond gereden met mijn robot vrienden.").
next(sor_math_wilddier_vakantie, s3, "true", s4).

move(sor_math_wilddier_vakantie, s4, say).
text(sor_math_wilddier_vakantie, s4, "Elke dag zagen wel %math_right% keer een %wilddier%.").
next(sor_math_wilddier_vakantie, s4, "true", s5).

move(sor_math_wilddier_vakantie, s5, say).
text(sor_math_wilddier_vakantie, s5, "Hoevaak hebben we een %wilddier% gezien op onze vakantie?").
insert_minidialog(sor_math_wilddier_vakantie, s5, math_next).
insert_minidialog(sor_math_wilddier_vakantie, s5, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Superkracht			                   	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Mensen redden
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_superkracht_redden, [type=math, theme=superkracht, topic=redden]).
dependencies(sor_math_superkracht_redden, [[[history=sor_superkracht, filter=green]]]).

move(sor_math_superkracht_redden, s1, say).
math_generate(sor_math_superkracht_redden, s1).
next(sor_math_superkracht_redden,  s1, "true",  s2).

move(sor_math_superkracht_redden, s2, continuator).
next(sor_math_superkracht_redden, s2, [[umVariable=superkracht, filter=green, values=["sterk"]], [personalization=1]], s2sterk).
next(sor_math_superkracht_redden, s2, [[umVariable=superkracht, filter=green, values=["dieren"]], [personalization=1]], s2dieren).
next(sor_math_superkracht_redden, s2, [[umVariable=superkracht, filter=green, values=["gedachten"]], [personalization=1]], s2gedachten).
next(sor_math_superkracht_redden, s2, [[umVariable=superkracht, filter=green, values=["onzichtbaar"]], [personalization=1]], s2onzichtbaar).
next(sor_math_superkracht_redden, s2, [[umVariable=superkracht, filter=red, values=["_any"]], [personalization=1]], s2onbekend).
next(sor_math_superkracht_redden, s2, [[personalization=0]], s2onbekend).
next(sor_math_superkracht_redden, s2, "true", s2onbekend).

move(sor_math_superkracht_redden, s2sterk, say).
text(sor_math_superkracht_redden, s2sterk, "Stel je voor, je zou een superheld zijn met jouw favoriete superkracht. Je zou dan super sterk zijn.").
next(sor_math_superkracht_redden, s2sterk, "true", s3).

move(sor_math_superkracht_redden, s2dieren, say).
text(sor_math_superkracht_redden, s2dieren, "Stel je voor, je zou een superheld zijn met jouw favoriete superkracht. Je zou dan met dieren kunnen praten.").
next(sor_math_superkracht_redden, s2dieren, "true", s3).

move(sor_math_superkracht_redden, s2gedachten, say).
text(sor_math_superkracht_redden, s2gedachten, "Stel je voor, je zou een superheld zijn met jouw favoriete superkracht. Je zou dan gedachten kunnen lezen.").
next(sor_math_superkracht_redden, s2gedachten, "true", s3).

move(sor_math_superkracht_redden, s2onzichtbaar, say).
text(sor_math_superkracht_redden, s2onzichtbaar, "Stel je voor, je zou een superheld zijn met jouw favoriete superkracht. Je zou dan ontzichtbaar kunnen worden.").
next(sor_math_superkracht_redden, s2onzichtbaar, "true", s3).

move(sor_math_superkracht_redden, s2onbekend, say).
text(sor_math_superkracht_redden, s2onbekend, "Stel je voor, je zou een superheld zijn en je zou gedachten kunnen lezen.").
next(sor_math_superkracht_redden, s2onbekend, "true", s3).

move(sor_math_superkracht_redden, s3, say).
text(sor_math_superkracht_redden, s3, "Als je voor %math_left% dagen superheld zou zijn.").
next(sor_math_superkracht_redden, s3, "true", s4).

move(sor_math_superkracht_redden, s4, say).
text(sor_math_superkracht_redden, s4, "En je zou per dag %math_right% mensen kunnen redden.").
next(sor_math_superkracht_redden, s4, "true", s5).

move(sor_math_superkracht_redden, s5, say).
text(sor_math_superkracht_redden, s5, "Hoeveel mensen zou je dan in totaal kunnen redden?").
insert_minidialog(sor_math_superkracht_redden, s5, math_next).
insert_minidialog(sor_math_superkracht_redden, s5, math_dialog).

% Collega superhelden
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_superkracht_collega, [type=math, theme=superkracht, topic=collega]).
dependencies(sor_math_superkracht_collega, [[[history=sor_math_superkracht_redden, filter=green]]]).

move(sor_math_superkracht_collega, s1, say).
text(sor_math_superkracht_collega, s1, "Gelukkig zijn superhelden vaak niet alleen.").
math_generate(sor_math_superkracht_collega, s1).
next(sor_math_superkracht_collega,  s1, "true",  s2).

move(sor_math_superkracht_collega, s2, continuator).
next(sor_math_superkracht_collega, s2, [[umVariable=superkracht, filter=green, values=["sterk"]], [personalization=1]], s2sterk).
next(sor_math_superkracht_collega, s2, [[umVariable=superkracht, filter=green, values=["dieren"]], [personalization=1]], s2dieren).
next(sor_math_superkracht_collega, s2, [[umVariable=superkracht, filter=green, values=["gedachten"]], [personalization=1]], s2gedachten).
next(sor_math_superkracht_collega, s2, [[umVariable=superkracht, filter=green, values=["onzichtbaar"]], [personalization=1]], s2onzichtbaar).
next(sor_math_superkracht_collega, s2, [[umVariable=superkracht, filter=red, values=["_any"]], [personalization=1]], s2onbekend).
next(sor_math_superkracht_collega, s2, [[personalization=0]], s2onbekend).
next(sor_math_superkracht_collega, s2, "true", s2onbekend).

move(sor_math_superkracht_collega, s2sterk, say).
text(sor_math_superkracht_collega, s2sterk, "Naast jou als held met superkracht, zijn er anderen die met dieren kunnen praten, gedachten kunnen lezen en onzichtbaar zijn.").
next(sor_math_superkracht_collega, s2sterk, "true", s3).

move(sor_math_superkracht_collega, s2dieren, say).
text(sor_math_superkracht_collega, s2dieren, "Jij kan met dieren praten, maar de anderen zijn super sterk, kunnen gedachten lezen, of zijn onzichtbaar.").
next(sor_math_superkracht_collega, s2dieren, "true", s3).

move(sor_math_superkracht_collega, s2gedachten, say).
text(sor_math_superkracht_collega, s2gedachten, "Jij kan gedachten lezen, maar de anderen zijn super sterk, kunnen met dieren praten, of zijn onzichtbaar.").
next(sor_math_superkracht_collega, s2gedachten, "true", s3).

move(sor_math_superkracht_collega, s2onzichtbaar, say).
text(sor_math_superkracht_collega, s2onzichtbaar, "Jij kan onzichtbaar zijn, maar de anderen zijn super sterk, kunnen met dieren praten, of kunnen gedachten lezen.").
next(sor_math_superkracht_collega, s2onzichtbaar, "true", s3).

move(sor_math_superkracht_collega, s2onbekend, say).
text(sor_math_superkracht_collega, s2onbekend, "Ze komen vaak in groepjes met allerlei verschillende krachten.").
next(sor_math_superkracht_collega, s2onbekend, "true", s3).

move(sor_math_superkracht_collega, s3, say).
text(sor_math_superkracht_collega, s3, "Stel, elke stad heeft %math_left% verschillende superhelden.").
next(sor_math_superkracht_collega, s3, "true", s4).

move(sor_math_superkracht_collega, s4, say).
text(sor_math_superkracht_collega, s4, "Hoeveel superhelden zitten er dan in %math_right% steden?").
insert_minidialog(sor_math_superkracht_collega, s4, math_next).
insert_minidialog(sor_math_superkracht_collega, s4, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Knutselen			                  	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Kasteel
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_knutselen_kasteel, [type=math, theme=knutselen, topic=kasteel]).
dependencies(sor_math_knutselen_kasteel, [[[history=sor_hob_knutselen, filter=green]]]).

move(sor_math_knutselen_kasteel, s1, continuator).
next(sor_math_knutselen_kasteel, s1, [[umVariable=knutselt, filter=green, values=["answer_yes"]], [personalization=1]], s2wel).
next(sor_math_knutselen_kasteel, s1, [[umVariable=knutselt, filter=red, values=["answer_yes"]], [personalization=1]], s2niet).
next(sor_math_knutselen_kasteel, s1, [[personalization=0]], s3).
next(sor_math_knutselen_kasteel, s1, "true", s3).

move(sor_math_knutselen_kasteel, s2wel, say).
text(sor_math_knutselen_kasteel, s2wel, "Jij snapt dit vast, omdat je van knutselen houdt.").
next(sor_math_knutselen_kasteel, s2wel, "true", s3).

move(sor_math_knutselen_kasteel, s2niet, say).
text(sor_math_knutselen_kasteel, s2niet, "Je houd dan niet van knutselen, maar misschien kun je me toch helpen met deze vraag.").
next(sor_math_knutselen_kasteel, s2niet, "true", s3).

move(sor_math_knutselen_kasteel, s3, say).
text(sor_math_knutselen_kasteel, s3, "Ik wil een kasteel maken uit lucifer stokjes.").
math_generate(sor_math_knutselen_kasteel, s3).
next(sor_math_knutselen_kasteel, s3, "true", s4).

move(sor_math_knutselen_kasteel, s4, say).
text(sor_math_knutselen_kasteel, s4, "Het kasteel bestaat uit %math_left% delen. Elk deel bestaat uit %math_right% lucifer stokjes.").
next(sor_math_knutselen_kasteel, s4, "true", s5).

move(sor_math_knutselen_kasteel, s5, say).
text(sor_math_knutselen_kasteel, s5, "Hoeveel lucifer stokjes heb ik dan in totaal nodig?").
insert_minidialog(sor_math_knutselen_kasteel, s5, math_next).
insert_minidialog(sor_math_knutselen_kasteel, s5, math_dialog).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Kleding			                   	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Uitdelen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
minidialog(sor_math_kleding_uitdelen, [type=math, theme=kleding, topic=uitdelen]).
dependencies(sor_math_kleding_uitdelen, [[[history=sor_robotkleren, filter=green]]]).

move(sor_math_kleding_uitdelen, s1, say).
math_generate(sor_math_kleding_uitdelen, s1).
next(sor_math_kleding_uitdelen,  s1, "true",  s2).

move(sor_math_kleding_uitdelen, s2, continuator).
next(sor_math_kleding_uitdelen, s2, [[personalization=1]], s2per).
next(sor_math_kleding_uitdelen, s2, [[personalization=0]], s2noper).
next(sor_math_kleding_uitdelen, s2, "true", s2noper).

move(sor_math_kleding_uitdelen, s2per, say).
text(sor_math_kleding_uitdelen, s2per, "Jij ziet je wel voor je dat ik een %kledingstuk% draag.").
next(sor_math_kleding_uitdelen, s2per, "true", s3per).

move(sor_math_kleding_uitdelen, s3per, say).
text(sor_math_kleding_uitdelen, s3per, "Ik zou die graag willen uitedelen aan al mijn robot vriendjes.").
next(sor_math_kleding_uitdelen, s3per, "true", s4).

move(sor_math_kleding_uitdelen, s2noper, say).
set_umvariable(sor_math_kleding_uitdelen, s2noper, kledingstuk, pet). 
next(sor_math_kleding_uitdelen, s2noper, "true", s3noper).

move(sor_math_kleding_uitdelen, s3noper, say).
text(sor_math_kleding_uitdelen, s3noper, "Ik zou graag al mijn robot vriendjes een %kledingstuk% willen geven.").
next(sor_math_kleding_uitdelen, s3noper, "true", s4).

move(sor_math_kleding_uitdelen, s4, say).
text(sor_math_kleding_uitdelen, s4, "Niet 1 %kledingstuk, maar %math_left%. En ik heb %math_right% robot vriendjes.").
next(sor_math_kleding_uitdelen, s4, "true", s5).

move(sor_math_kleding_uitdelen, s5, say).
text(sor_math_kleding_uitdelen, s5, "Hoevaak moet ik een %kledingstuk% laten maken?").
insert_minidialog(sor_math_kleding_uitdelen, s5, math_next).
insert_minidialog(sor_math_kleding_uitdelen, s5, math_dialog).

% Stof
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_kleding_stof, [type=math, theme=kleding, topic=stof]).
dependencies(sor_math_kleding_stof, [[[history=sor_math_kleding_uitdelen, filter=green]]]).

move(sor_math_kleding_stof, s1, say).
text(sor_math_kleding_stof,  s1, "Er is trouwens best veel stof nodig.").
math_generate(sor_math_kleding_stof, s1).
set_umvariable(sor_math_kleding_stof, s1, kledingstuk, pet). 
next(sor_math_kleding_stof,  s1, "true",  s2).

move(sor_math_kleding_stof, s2, say).
text(sor_math_kleding_stof, s2, "Om zo vaak een %kledingstuk% te maken.").
next(sor_math_kleding_stof, s2, "true", s3).

move(sor_math_kleding_stof, s3, say).
text(sor_math_kleding_stof, s3, "Ik wil dat er %math_left% verschillende kleuren worden gebruikt in de %kledingstuk%. Van elke kleur hebben we %math_right% meter stof nodig.").
next(sor_math_kleding_stof, s3, "true", s4).

move(sor_math_kleding_stof, s4, say).
text(sor_math_kleding_stof, s4, "Hoeveel meter stof hebben we in totaal nodig?").
insert_minidialog(sor_math_kleding_stof, s4, math_next).
insert_minidialog(sor_math_kleding_stof, s4, math_dialog).

% modeshow
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_math_kleding_modeshow, [type=math, theme=kleding, topic=modeshow]).
dependencies(sor_math_kleding_modeshow, [[[history=sor_math_kleding_uitdelen, filter=green]]]).

move(sor_math_kleding_modeshow, s1, say).
text(sor_math_kleding_modeshow,  s1, "Weetje wat leuk is om te doen.").
math_generate(sor_math_kleding_modeshow, s1).
set_umvariable(sor_math_kleding_modeshow, s1, kledingstuk, pet). 
next(sor_math_kleding_modeshow,  s1, "true",  s2).

move(sor_math_kleding_modeshow, s2, say).
text(sor_math_kleding_modeshow, s2, "Om een paar robot vrienden uit de nodigen om hun %kledingstuk% te showen. \pau=300\ Een echte mode show.").
next(sor_math_kleding_modeshow, s2, "true", s3).

move(sor_math_kleding_modeshow, s3, say).
text(sor_math_kleding_modeshow, s3, "Ik wil dat er %math_left% vrienden meedoen in de modeshow. En ze mogen allemaal %math_right% kledingstukken showen. Natuurlijk ook hun %kledingstuk%.").
next(sor_math_kleding_modeshow, s3, "true", s4).

move(sor_math_kleding_modeshow, s4, say).
text(sor_math_kleding_modeshow, s4, "Hoeveel kledingstukken laten ze in totaal zien?").
insert_minidialog(sor_math_kleding_modeshow, s4, math_next).
insert_minidialog(sor_math_kleding_modeshow, s4, math_dialog).

