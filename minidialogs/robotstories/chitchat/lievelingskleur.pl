%%%% HEADER %%%%
%% lievelingskleur %%
minidialog(lievelingskleur, [type=chitchat, theme=lievelings, topic=kleur]).

move(lievelingskleur, s1, say).
text(lievelingskleur, s1, "he %first_name% !").
next(lievelingskleur, s1, "true", s2).

move(lievelingskleur, s2, question).
moveConfig(lievelingskleur, s2, [type=input, context="color", options=['rood', 'geel', 'blauw', 'groen'], umVariable=lievelingskleur]).
text(lievelingskleur, s2, "Wat is eigenlijk jouw lievelingskleur?").
next(lievelingskleur, s2, "rood", s3rood1).
next(lievelingskleur, s2, "oranje", s3oranje1).
next(lievelingskleur, s2, "geel", s3geel1).
next(lievelingskleur, s2, "blauw", s3blauw1).
next(lievelingskleur, s2, "paarse", s3paarse1).
next(lievelingskleur, s2, "zwart", s3zwart1).
next(lievelingskleur, s2, "wit", s3wit1).
next(lievelingskleur, s2, "_others", s3rest1).
next(lievelingskleur, s2, "fail", s3fail_kleur1).
next(lievelingskleur, s2, "answer_dontknow", s3fail_kleur1).

move(lievelingskleur, s3rood1, say).
text(lievelingskleur, s3rood1, "Ik hou ook van rood!").
next(lievelingskleur, s3rood1, "true", s3rood2).

move(lievelingskleur, s3rood2, say).
text(lievelingskleur, s3rood2, "Ik weet er ook een raadsel mee.").
next(lievelingskleur, s3rood2, "true", s3rood3).

move(lievelingskleur, s3rood3, say).
text(lievelingskleur, s3rood3, "Wat is rood en explodeert?").
next(lievelingskleur, s3rood3, "true", s3rood4).

move(lievelingskleur, s3rood4, say).
text(lievelingskleur, s3rood4, "Knalrood!").
next(lievelingskleur, s3rood4, "true", s3eind1).

move(lievelingskleur, s3oranje1, say).
text(lievelingskleur, s3oranje1, "Van oranje word ik altijd vrolijk!").
next(lievelingskleur, s3oranje1, "true", s3oranje2).

move(lievelingskleur, s3oranje2, say).
text(lievelingskleur, s3oranje2, "Ik weet ook een grappig raadsel.").
next(lievelingskleur, s3oranje2, "true", s3oranje3).

move(lievelingskleur, s3oranje3, say).
text(lievelingskleur, s3oranje3, "Wat is oranje en roept").
next(lievelingskleur, s3oranje3, "true", s3oranje4).

move(lievelingskleur, s3oranje4, say).
text(lievelingskleur, s3oranje4, "Ik ben een sinaasappel, ik ben een sinaasappel?").
next(lievelingskleur, s3oranje4, "true", s3oranje5).

move(lievelingskleur, s3oranje5, say).
text(lievelingskleur, s3oranje5, "Een mandarijn!").
next(lievelingskleur, s3oranje5, "true", s3eind1).

move(lievelingskleur, s3geel1, say).
text(lievelingskleur, s3geel1, "Geel doet me denken aan de zon en de lente!").
next(lievelingskleur, s3geel1, "true", s3geel2).

move(lievelingskleur, s3geel2, say).
text(lievelingskleur, s3geel2, "Ik weet ook een grappig raadsel over geel.").
next(lievelingskleur, s3geel2, "true", s3geel3).

move(lievelingskleur, s3geel3, say).
text(lievelingskleur, s3geel3, "Wat is geel met bruin en kruipt over de grond?").
next(lievelingskleur, s3geel3, "true", s3geel4).

move(lievelingskleur, s3geel4, say).
text(lievelingskleur, s3geel4, "Een giraf met hoogtevrees!").
next(lievelingskleur, s3geel4, "true", s3eind1).

move(lievelingskleur, s3blauw1, say).
text(lievelingskleur, s3blauw1, "Blauw is heel zeldzaam!").
next(lievelingskleur, s3blauw1, "true", s3blauw2).

move(lievelingskleur, s3blauw2, say).
text(lievelingskleur, s3blauw2, "Wist je dat?").
next(lievelingskleur, s3blauw2, "true", s3blauw3).

move(lievelingskleur, s3blauw3, say).
text(lievelingskleur, s3blauw3, "Ik weet ook een grappig raadsel over blauw.").
next(lievelingskleur, s3blauw3, "true", s3blauw4).

move(lievelingskleur, s3blauw4, say).
text(lievelingskleur, s3blauw4, "Wat is blauw en weegt niet veel?").
next(lievelingskleur, s3blauw4, "true", s3blauw5).

move(lievelingskleur, s3blauw5, say).
text(lievelingskleur, s3blauw5, "Lichtblauw!").
next(lievelingskleur, s3blauw5, "true", s3eind1).

move(lievelingskleur, s3paarse1, say).
text(lievelingskleur, s3paarse1, "paarse vind ik nou echt een bizar mooie kleur.").
next(lievelingskleur, s3paarse1, "true", s3paarse2).

move(lievelingskleur, s3paarse2, say).
text(lievelingskleur, s3paarse2, "Ik weet een leuk raadsel.").
next(lievelingskleur, s3paarse2, "true", s3paarse3).

move(lievelingskleur, s3paarse3, say).
text(lievelingskleur, s3paarse3, "Wat is paarse en chagrijnig?").
next(lievelingskleur, s3paarse3, "true", s3paarse4).

move(lievelingskleur, s3paarse4, say).
text(lievelingskleur, s3paarse4, "Een fram boos!").
next(lievelingskleur, s3paarse4, "true", s3eind1).

move(lievelingskleur, s3zwart1, say).
text(lievelingskleur, s3zwart1, "Zwart!").
next(lievelingskleur, s3zwart1, "true", s3zwart2).

move(lievelingskleur, s3zwart2, say).
text(lievelingskleur, s3zwart2, "Dat is leuk. Ik ben ook een beetje zwart.").
next(lievelingskleur, s3zwart2, "true", s3zwart3).

move(lievelingskleur, s3zwart3, say).
text(lievelingskleur, s3zwart3, "Ik ben ook een beetje zwart.").
next(lievelingskleur, s3zwart3, "true", s3zwart4).

move(lievelingskleur, s3zwart4, say).
text(lievelingskleur, s3zwart4, "Of misschien eerder donkergrijs.").
next(lievelingskleur, s3zwart4, "true", s3zwart5).

move(lievelingskleur, s3zwart5, say).
text(lievelingskleur, s3zwart5, "Hoe dan ook, ik weet een leuk raadsel!").
next(lievelingskleur, s3zwart5, "true", s3zwart6).

move(lievelingskleur, s3zwart6, say).
text(lievelingskleur, s3zwart6, "Wat is zwart en wit en springt op en neer?").
next(lievelingskleur, s3zwart6, "true", s3zwart7).

move(lievelingskleur, s3zwart7, say).
text(lievelingskleur, s3zwart7, "Een spring win!").
next(lievelingskleur, s3zwart7, "true", s3eind1).

move(lievelingskleur, s3wit1, say).
text(lievelingskleur, s3wit1, "Wat leuk, ik ben ook vooral wit.").
next(lievelingskleur, s3wit1, "true", s3wit2).

move(lievelingskleur, s3wit2, say).
text(lievelingskleur, s3wit2, "Dus ik vind het ook een mooie kleur!").
next(lievelingskleur, s3wit2, "true", s3wit3).

move(lievelingskleur, s3wit3, say).
text(lievelingskleur, s3wit3, "Ik weet een leuk raadsel.").
next(lievelingskleur, s3wit3, "true", s3wit4).

move(lievelingskleur, s3wit4, say).
text(lievelingskleur, s3wit4, "Het is wit, je kunt het eten, maar het ontploft?").
next(lievelingskleur, s3wit4, "true", s3wit5).

move(lievelingskleur, s3wit5, say).
text(lievelingskleur, s3wit5, "Boem kool!").
next(lievelingskleur, s3wit5, "true", s3eind1).

move(lievelingskleur, s3rest1, say).
text(lievelingskleur, s3rest1, "Dat is een mooie kleur!").
next(lievelingskleur, s3rest1, "true", s3rest2).

move(lievelingskleur, s3rest2, say).
text(lievelingskleur, s3rest2, "Ik hou ook van %lievelingskleur%.").
next(lievelingskleur, s3rest2, "true", s3mop1).

move(lievelingskleur, s3fail_kleur1, say).
text(lievelingskleur, s3fail_kleur1, "Moeilijk, toch?").
next(lievelingskleur, s3fail_kleur1, "true", s3fail_kleur2).

move(lievelingskleur, s3fail_kleur2, say).
text(lievelingskleur, s3fail_kleur2, "Ik zou superveel lievelingskleuren hebben").
next(lievelingskleur, s3fail_kleur2, "true", s3fail_kleur3).

move(lievelingskleur, s3fail_kleur3, say).
text(lievelingskleur, s3fail_kleur3, "Als dat kon.").
next(lievelingskleur, s3fail_kleur3, "true", s3fail_kleur4).

move(lievelingskleur, s3fail_kleur4, say).
text(lievelingskleur, s3fail_kleur4, "Maar...").
next(lievelingskleur, s3fail_kleur4, "true", s3mop1).

move(lievelingskleur, s3mop1, say).
text(lievelingskleur, s3mop1, "De mijne is denk ik blauw.").
next(lievelingskleur, s3mop1, "true", s3mop2).

move(lievelingskleur, s3mop2, say).
text(lievelingskleur, s3mop2, "Ik weet een leuke mop.").
next(lievelingskleur, s3mop2, "true", s3mop3).

move(lievelingskleur, s3mop3, say).
text(lievelingskleur, s3mop3, "Wat is blauw en weegt niet veel?").
next(lievelingskleur, s3mop3, "true", s3mop4).

move(lievelingskleur, s3mop4, say).
text(lievelingskleur, s3mop4, "Lichtblauw!").
next(lievelingskleur, s3mop4, "true", s3eind1).

move(lievelingskleur, s3eind1, say).
next(lievelingskleur, s3eind1, "true", s3eind2).

move(lievelingskleur, s3eind2, question).
moveConfig(lievelingskleur, s3eind2, [type=yesno, context='answer_yesno', umVariable=was_mop_grappig]).
text(lievelingskleur, s3eind2, "Vond je dat grappig?").
next(lievelingskleur, s3eind2, "answer_yes", s3grappig1).
next(lievelingskleur, s3eind2, "answer_no", s3niet_grappig1).
next(lievelingskleur, s3eind2, "answer_dontknow", s3niet_grappig1).
next(lievelingskleur, s3eind2, "fail", s3fail_grappig1).

move(lievelingskleur, s3grappig1, say).
text(lievelingskleur, s3grappig1, "Haha").
next(lievelingskleur, s3grappig1, "true", s3grappig2).

move(lievelingskleur, s3grappig2, say).
text(lievelingskleur, s3grappig2, "Hoera!").
next(lievelingskleur, s3grappig2, "true", s3grappig3).

move(lievelingskleur, s3grappig3, say).
text(lievelingskleur, s3grappig3, "Misschien is er wel een ronde bij de Robospelen").
next(lievelingskleur, s3grappig3, "true", s3grappig4).

move(lievelingskleur, s3grappig4, say).
text(lievelingskleur, s3grappig4, "waarin robots elkaar grapjes moeten vertellen!").
next(lievelingskleur, s3grappig4, "true", s3grappig5).

move(lievelingskleur, s3grappig5, say).
text(lievelingskleur, s3grappig5, "Die zou ik zeker winnen!").

move(lievelingskleur, s3niet_grappig1, say).
text(lievelingskleur, s3niet_grappig1, "Het was wel een beetje flauw, hè?").
next(lievelingskleur, s3niet_grappig1, "true", s3vertel1).

move(lievelingskleur, s3fail_grappig1, say).
text(lievelingskleur, s3fail_grappig1, "Ik vond het wel geinig").
next(lievelingskleur, s3fail_grappig1, "true", s3fail_grappig2).

move(lievelingskleur, s3fail_grappig2, say).
text(lievelingskleur, s3fail_grappig2, "Maar misschien kende je hem al.").
next(lievelingskleur, s3fail_grappig2, "true", s3fail_grappig3).

move(lievelingskleur, s3fail_grappig3, say).
text(lievelingskleur, s3fail_grappig3, "Of vond je hem flauw.").
next(lievelingskleur, s3fail_grappig3, "true", s3vertel1).

move(lievelingskleur, s3vertel1, question).
moveConfig(lievelingskleur, s3vertel1, [type=yesno, context='answer_yesno', umVariable=betere_grap]).
text(lievelingskleur, s3vertel1, "Weet jij een betere grap?").
next(lievelingskleur, s3vertel1, "answer_yes", s3grap1).
next(lievelingskleur, s3vertel1, "answer_no", s3geen_grap1).
next(lievelingskleur, s3vertel1, "answer_dontknow", s3geen_grap1).
next(lievelingskleur, s3vertel1, "fail", s3geen_grap1).

move(lievelingskleur, s3grap1, question).
moveConfig(lievelingskleur, s3grap1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(lievelingskleur, s3grap1, "Vertel!").
next(lievelingskleur, s3grap1, "success", s3goeie_grap1).
next(lievelingskleur, s3grap1, "failure", s3geen_grap1).

move(lievelingskleur, s3goeie_grap1, say).
text(lievelingskleur, s3goeie_grap1, "Hahahahaha").
next(lievelingskleur, s3goeie_grap1, "true", s3goeie_grap2).

move(lievelingskleur, s3goeie_grap2, say).
text(lievelingskleur, s3goeie_grap2, "Wat ben jij grappig!").
next(lievelingskleur, s3goeie_grap2, "true", s3goeie_grap3).

move(lievelingskleur, s3goeie_grap3, say).
text(lievelingskleur, s3goeie_grap3, "Die ga ik meteen opslaan.").
next(lievelingskleur, s3goeie_grap3, "true", s3robo1).

move(lievelingskleur, s3geen_grap1, say).
text(lievelingskleur, s3geen_grap1, "Geeft niets.").
next(lievelingskleur, s3geen_grap1, "true", s3geen_grap2).

move(lievelingskleur, s3geen_grap2, say).
text(lievelingskleur, s3geen_grap2, "Ik zal er wel later een paar opzoeken op het internet").
next(lievelingskleur, s3geen_grap2, "true", s3robo1).

move(lievelingskleur, s3robo1, say).
text(lievelingskleur, s3robo1, "Voor het geval de robospelen een moppenronde heeft!").

