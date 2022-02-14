%%%% HEADER %%%%
%% lievelingskleur %%
minidialog(lievelingskleur, [type=chitchat, theme=lievelings, topic=kleur]).

move(lievelingskleur, s1, say).
text(lievelingskleur, s1, "he %first_name% !").
next(lievelingskleur, s1, "true", s2).

move(lievelingskleur, s2, say).
text(lievelingskleur, s2, "Ik vind het leuk dat we elkaar steeds beter leren kennen.").
next(lievelingskleur, s2, "true", s3).

move(lievelingskleur, s3, continuator).
next(lievelingskleur, s3, [[expCondition=memory]], s4memory1).
next(lievelingskleur, s3, [[expCondition=control]], s4control1).
next(lievelingskleur, s3, "true", s5).

move(lievelingskleur, s4control1, say).
text(lievelingskleur, s4control1, "We weten al veel over elkaar.").
next(lievelingskleur, s4control1, "true", s5).

move(lievelingskleur, s4memory1, say).
text(lievelingskleur, s4memory1, "Zo weet ik bijvoorbeeld dat een %lievelingsdier% je lievelingsdier is en dat je later %beroep_van_kind% wil worden.").
next(lievelingskleur, s4memory1, "true", s5).

move(lievelingskleur, s5, say).
text(lievelingskleur, s5, "Wat ik eigenlijk nog niet weet is je lievelingskleur.").
next(lievelingskleur, s5, "true", s6).

move(lievelingskleur, s6, question).
moveConfig(lievelingskleur, s6, [type=input, context="color", options=['rood', 'geel', 'blauw', 'groen', 'roze', 'oranje', 'paars'], fast=yes, umVariable=lievelingskleur]).
text(lievelingskleur, s6, "Wat is eigenlijk jouw lievelingskleur?").
next(lievelingskleur, s6, "rood", s7rood1).
next(lievelingskleur, s6, "oranje", s7oranje1).
next(lievelingskleur, s6, "geel", s7geel1).
next(lievelingskleur, s6, "blauw", s7blauw1).
next(lievelingskleur, s6, "roze", s7roze1).
next(lievelingskleur, s6, "zwart", s7zwart1).
next(lievelingskleur, s6, "wit", s7wit1).
next(lievelingskleur, s6, "_others", s7rest1).
next(lievelingskleur, s6, "fail", s7fail_kleur1).

move(lievelingskleur, s7rood1, say).
text(lievelingskleur, s7rood1, "Ik hou ook van rood!").
next(lievelingskleur, s7rood1, "true", s7rood2).

move(lievelingskleur, s7rood2, say).
text(lievelingskleur, s7rood2, "Ik weet er ook een raadsel mee.").
next(lievelingskleur, s7rood2, "true", s7rood3).

move(lievelingskleur, s7rood3, say).
moveConfig(lievelingskleur, s7rood3, [waitTimer=1500]).
text(lievelingskleur, s7rood3, "Wat is rood en explodeert?").
next(lievelingskleur, s7rood3, "true", s7rood4).

move(lievelingskleur, s7rood4, say).
text(lievelingskleur, s7rood4, "Knalrood!").
next(lievelingskleur, s7rood4, "true", s7eind1).

move(lievelingskleur, s7oranje1, say).
text(lievelingskleur, s7oranje1, "Van oranje word ik altijd vrolijk!").
next(lievelingskleur, s7oranje1, "true", s7oranje2).

move(lievelingskleur, s7oranje2, say).
text(lievelingskleur, s7oranje2, "Ik weet ook een grappig raadsel.").
next(lievelingskleur, s7oranje2, "true", s7oranje3).

move(lievelingskleur, s7oranje3, say).
text(lievelingskleur, s7oranje3, "Wat is oranje en roept").
next(lievelingskleur, s7oranje3, "true", s7oranje4).

move(lievelingskleur, s7oranje4, say).
moveConfig(lievelingskleur, s7oranje4, [waitTimer=1500]).
text(lievelingskleur, s7oranje4, "Ik ben een sinaasappel, ik ben een sinaasappel?").
next(lievelingskleur, s7oranje4, "true", s7oranje5).

move(lievelingskleur, s7oranje5, say).
text(lievelingskleur, s7oranje5, "Een mandarijn!").
next(lievelingskleur, s7oranje5, "true", s7eind1).

move(lievelingskleur, s7geel1, say).
text(lievelingskleur, s7geel1, "Geel doet me denken aan de zon en de lente!").
next(lievelingskleur, s7geel1, "true", s7geel2).

move(lievelingskleur, s7geel2, say).
text(lievelingskleur, s7geel2, "Ik weet ook een grappig raadsel over geel.").
next(lievelingskleur, s7geel2, "true", s7geel3).

move(lievelingskleur, s7geel3, say).
moveConfig(lievelingskleur, s7geel3, [waitTimer=1500]).
text(lievelingskleur, s7geel3, "Wat is geel met bruin en kruipt over de grond?").
next(lievelingskleur, s7geel3, "true", s7geel4).

move(lievelingskleur, s7geel4, say).
text(lievelingskleur, s7geel4, "Een giraf met hoogtevrees!").
next(lievelingskleur, s7geel4, "true", s7eind1).

move(lievelingskleur, s7blauw1, say).
text(lievelingskleur, s7blauw1, "Blauw is heel zeldzaam!").
next(lievelingskleur, s7blauw1, "true", s7blauw2).

move(lievelingskleur, s7blauw2, say).
text(lievelingskleur, s7blauw2, "Wist je dat?").
next(lievelingskleur, s7blauw2, "true", s7blauw3).

move(lievelingskleur, s7blauw3, say).
text(lievelingskleur, s7blauw3, "Ik weet ook een grappig raadsel over blauw.").
next(lievelingskleur, s7blauw3, "true", s7blauw4).

move(lievelingskleur, s7blauw4, say).
moveConfig(lievelingskleur, s7blauw4, [waitTimer=1500]).
text(lievelingskleur, s7blauw4, "Wat is blauw en weegt niet veel?").
next(lievelingskleur, s7blauw4, "true", s7blauw5).

move(lievelingskleur, s7blauw5, say).
text(lievelingskleur, s7blauw5, "Lichtblauw!").
next(lievelingskleur, s7blauw5, "true", s7eind1).

move(lievelingskleur, s7roze1, say).
text(lievelingskleur, s7roze1, "rò hze vind ik nou echt een bizar mooie kleur.").
next(lievelingskleur, s7roze1, "true", s7roze2).

move(lievelingskleur, s7roze2, say).
text(lievelingskleur, s7roze2, "Ik weet een leuk raadsel.").
next(lievelingskleur, s7roze2, "true", s7roze3).

move(lievelingskleur, s7roze3, say).
moveConfig(lievelingskleur, s7roze3, [waitTimer=1500]).
text(lievelingskleur, s7roze3, "Wat is rò hze en chagrijnig?").
next(lievelingskleur, s7roze3, "true", s7roze4).

move(lievelingskleur, s7roze4, say).
text(lievelingskleur, s7roze4, "Een fram boos!").
next(lievelingskleur, s7roze4, "true", s7eind1).

move(lievelingskleur, s7zwart1, say).
text(lievelingskleur, s7zwart1, "Zwart!").
next(lievelingskleur, s7zwart1, "true", s7zwart2).

move(lievelingskleur, s7zwart2, say).
text(lievelingskleur, s7zwart2, "Dat is leuk.").
next(lievelingskleur, s7zwart2, "true", s7zwart3).

move(lievelingskleur, s7zwart3, say).
text(lievelingskleur, s7zwart3, "Ik ben ook een beetje zwart.").
next(lievelingskleur, s7zwart3, "true", s7zwart4).

move(lievelingskleur, s7zwart4, say).
text(lievelingskleur, s7zwart4, "Of misschien eerder donkergrijs.").
next(lievelingskleur, s7zwart4, "true", s7zwart5).

move(lievelingskleur, s7zwart5, say).
text(lievelingskleur, s7zwart5, "Hoe dan ook, ik weet een leuk raadsel!").
next(lievelingskleur, s7zwart5, "true", s7zwart6).

move(lievelingskleur, s7zwart6, say).
moveConfig(lievelingskleur, s7zwart6, [waitTimer=1500]).
text(lievelingskleur, s7zwart6, "Wat is zwart en wit en springt op en neer?").
next(lievelingskleur, s7zwart6, "true", s7zwart7).

move(lievelingskleur, s7zwart7, say).
text(lievelingskleur, s7zwart7, "Een spring win!").
next(lievelingskleur, s7zwart7, "true", s7eind1).

move(lievelingskleur, s7wit1, say).
text(lievelingskleur, s7wit1, "Wat leuk, ik ben ook vooral wit.").
next(lievelingskleur, s7wit1, "true", s7wit2).

move(lievelingskleur, s7wit2, say).
text(lievelingskleur, s7wit2, "Dus ik vind het ook een mooie kleur!").
next(lievelingskleur, s7wit2, "true", s7wit3).

move(lievelingskleur, s7wit3, say).
text(lievelingskleur, s7wit3, "Ik weet een leuk raadsel.").
next(lievelingskleur, s7wit3, "true", s7wit4).

move(lievelingskleur, s7wit4, say).
moveConfig(lievelingskleur, s7wit4, [waitTimer=1500]).
text(lievelingskleur, s7wit4, "Het is wit, je kunt het eten, maar het ontploft?").
next(lievelingskleur, s7wit4, "true", s7wit5).

move(lievelingskleur, s7wit5, say).
text(lievelingskleur, s7wit5, "Boem kool!").
next(lievelingskleur, s7wit5, "true", s7eind1).

move(lievelingskleur, s7rest1, say).
text(lievelingskleur, s7rest1, "Dat is een mooie kleur!").
next(lievelingskleur, s7rest1, "true", s7rest2).

move(lievelingskleur, s7rest2, say).
text(lievelingskleur, s7rest2, "Ik hou ook van %lievelingskleur%.").
next(lievelingskleur, s7rest2, "true", s7mop1).

move(lievelingskleur, s7fail_kleur1, say).
text(lievelingskleur, s7fail_kleur1, "Moeilijk, toch?").
next(lievelingskleur, s7fail_kleur1, "true", s7fail_kleur2).

move(lievelingskleur, s7fail_kleur2, say).
text(lievelingskleur, s7fail_kleur2, "Ik zou superveel lievelingskleuren hebben").
next(lievelingskleur, s7fail_kleur2, "true", s7fail_kleur3).

move(lievelingskleur, s7fail_kleur3, say).
text(lievelingskleur, s7fail_kleur3, "Als dat kon.").
next(lievelingskleur, s7fail_kleur3, "true", s7fail_kleur4).

move(lievelingskleur, s7fail_kleur4, say).
text(lievelingskleur, s7fail_kleur4, "Maar.").
next(lievelingskleur, s7fail_kleur4, "true", s7mop1).

move(lievelingskleur, s7mop1, say).
text(lievelingskleur, s7mop1, "De mijne is denk ik blauw.").
next(lievelingskleur, s7mop1, "true", s7mop2).

move(lievelingskleur, s7mop2, say).
text(lievelingskleur, s7mop2, "Ik weet een leuke mop.").
next(lievelingskleur, s7mop2, "true", s7mop3).

move(lievelingskleur, s7mop3, say).
moveConfig(lievelingskleur, s7mop3, [waitTimer=1500]).
text(lievelingskleur, s7mop3, "Wat is blauw en weegt niet veel?").
next(lievelingskleur, s7mop3, "true", s7mop4).

move(lievelingskleur, s7mop4, say).
text(lievelingskleur, s7mop4, "Lichtblauw!").
next(lievelingskleur, s7mop4, "true", s7eind1).

move(lievelingskleur, s7eind1, say).
audio(lievelingskleur, s7eind1, file, "resources/sounds/badum_tss.wav").
next(lievelingskleur, s7eind1, "true", s7eind2).

move(lievelingskleur, s7eind2, question).
moveConfig(lievelingskleur, s7eind2, [type=yesno, context='answer_yesno', umVariable=was_mop_grappig]).
text(lievelingskleur, s7eind2, "Vond je dat grappig?").
next(lievelingskleur, s7eind2, "answer_yes", s7grappig1).
next(lievelingskleur, s7eind2, "answer_no", s7niet_grappig1).
next(lievelingskleur, s7eind2, "answer_dontknow", s7niet_grappig1).
next(lievelingskleur, s7eind2, "fail", s7fail_grappig1).

move(lievelingskleur, s7grappig1, say).
text(lievelingskleur, s7grappig1, "Haha").
next(lievelingskleur, s7grappig1, "true", s7grappig2).

move(lievelingskleur, s7grappig2, say).
text(lievelingskleur, s7grappig2, "Hoera!").
next(lievelingskleur, s7grappig2, "true", s7grappig3).

move(lievelingskleur, s7grappig3, say).
text(lievelingskleur, s7grappig3, "Misschien is er wel een ronde bij de robo spelen").
next(lievelingskleur, s7grappig3, "true", s7grappig4).

move(lievelingskleur, s7grappig4, say).
text(lievelingskleur, s7grappig4, "waarin robots elkaar grapjes moeten vertellen!").
next(lievelingskleur, s7grappig4, "true", s7grappig5).

move(lievelingskleur, s7grappig5, say).
text(lievelingskleur, s7grappig5, "Die zou ik zeker winnen!").

move(lievelingskleur, s7niet_grappig1, say).
text(lievelingskleur, s7niet_grappig1, "Het was wel een beetje flauw, hè?").
next(lievelingskleur, s7niet_grappig1, "true", s7vertel1).

move(lievelingskleur, s7fail_grappig1, say).
text(lievelingskleur, s7fail_grappig1, "Ik vond het wel geinig").
next(lievelingskleur, s7fail_grappig1, "true", s7fail_grappig2).

move(lievelingskleur, s7fail_grappig2, say).
text(lievelingskleur, s7fail_grappig2, "Maar misschien kende je hem al.").
next(lievelingskleur, s7fail_grappig2, "true", s7fail_grappig3).

move(lievelingskleur, s7fail_grappig3, say).
text(lievelingskleur, s7fail_grappig3, "Of vond je hem flauw.").
next(lievelingskleur, s7fail_grappig3, "true", s7vertel1).

move(lievelingskleur, s7vertel1, question).
moveConfig(lievelingskleur, s7vertel1, [type=yesno, context='answer_yesno', umVariable=betere_grap]).
text(lievelingskleur, s7vertel1, "Weet jij een betere grap?").
next(lievelingskleur, s7vertel1, "answer_yes", s7grap1).
next(lievelingskleur, s7vertel1, "answer_no", s7geen_grap1).
next(lievelingskleur, s7vertel1, "answer_dontknow", s7geen_grap1).
next(lievelingskleur, s7vertel1, "fail", s7geen_grap1).

move(lievelingskleur, s7grap1, question).
moveConfig(lievelingskleur, s7grap1, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=grap]).
text(lievelingskleur, s7grap1, "Vertel!").
next(lievelingskleur, s7grap1, "success", s7goeie_grap1).
next(lievelingskleur, s7grap1, "fail", s7geen_grap1).

move(lievelingskleur, s7goeie_grap1, say).
text(lievelingskleur, s7goeie_grap1, "Hahehahehehaheha").
next(lievelingskleur, s7goeie_grap1, "true", s7goeie_grap2).

move(lievelingskleur, s7goeie_grap2, say).
text(lievelingskleur, s7goeie_grap2, "Wat ben jij grappig!").
next(lievelingskleur, s7goeie_grap2, "true", s7goeie_grap3).

move(lievelingskleur, s7goeie_grap3, say).
text(lievelingskleur, s7goeie_grap3, "Die ga ik meteen opslaan.").
next(lievelingskleur, s7goeie_grap3, "true", s7robo1).

move(lievelingskleur, s7geen_grap1, say).
text(lievelingskleur, s7geen_grap1, "Geeft niets.").
next(lievelingskleur, s7geen_grap1, "true", s7geen_grap2).

move(lievelingskleur, s7geen_grap2, say).
text(lievelingskleur, s7geen_grap2, "Ik zal er wel later een paar opzoeken op het internet").
next(lievelingskleur, s7geen_grap2, "true", s7robo1).

move(lievelingskleur, s7robo1, say).
text(lievelingskleur, s7robo1, "Voor het geval de robo spelen een moppenronde heeft!").

