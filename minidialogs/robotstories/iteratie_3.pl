%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		ROBOTSTORIES - KIEM Editie	           %%%
%%%  		MiniDialogs for iteration 3		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introductie				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(rs_3_intro_1, [type=functional, function=test]).

move(rs_3_intro_1, s1, say).
text(rs_3_intro_1, s1, "Daar ben ik weer!").
next(rs_3_intro_1, s1, "true", s2).

move(rs_3_intro_1, s2, say).
text(rs_3_intro_1, s2, "Wat een mooie ruimte").
next(rs_3_intro_1, s2, "true", s3).

move(rs_3_intro_1, s3, say).
text(rs_3_intro_1, s3, "Hoi, hallo, goedendag").

%%%
minidialog(rs_3_intro_2, [type=functional, function=test]).

move(rs_3_intro_2, s1, question).
moveConfig(rs_3_intro_2, s1, [type=yesno, context='answer_yesno']).
text(rs_3_intro_2, s1, "Volgens mij ben ik in het verzorgingstehuis. Klopt dat?").
next(rs_3_intro_2, s1, "answer_yes", s2ja).
next(rs_3_intro_2, s1, "answer_no", s2nee).
next(rs_3_intro_2, s1, "answer_dontknow", s2nee).
next(rs_3_intro_2, s1, "fail", s2nee).

move(rs_3_intro_2, s2ja, say).
text(rs_3_intro_2, s2ja, "Goed gezien").
next(rs_3_intro_2, s2ja, "true", s3).

move(rs_3_intro_2, s2nee, say).
text(rs_3_intro_2, s2nee, "Wacht eens!").
next(rs_3_intro_2, s2nee, "true", s2nee2).

move(rs_3_intro_2, s2nee2, say).
text(rs_3_intro_2, s2nee2, "Ik zie het al").
next(rs_3_intro_2, s2nee2, "true", s2nee3).

move(rs_3_intro_2, s2nee3, say).
text(rs_3_intro_2, s2nee3, "Ik ben op een zorglocatie").
next(rs_3_intro_2, s2nee3, "true", s3).

move(rs_3_intro_2, s3, say).
text(rs_3_intro_2, s3, "Dan ben ik hier speciaal om met jou te praten.").
next(rs_3_intro_2, s3, "true", s4).

move(rs_3_intro_2, s4, say).
text(rs_3_intro_2, s4, "Gezellig").

%%%
minidialog(rs_3_intro_3, [type=functional, function=test]).

move(rs_3_intro_3, s1, question).
moveConfig(rs_3_intro_3, s1, [type=yesno, context='answer_yesno']).
text(rs_3_intro_3, s1, "En heb je al een kopje koffie of thee gekregen?").
next(rs_3_intro_3, s1, "answer_yes", s2ja).
next(rs_3_intro_3, s1, "answer_no", s2nee).
next(rs_3_intro_3, s1, "answer_dontknow", s2nee).
next(rs_3_intro_3, s1, "fail", s2nee).

move(rs_3_intro_3, s2ja, say).
text(rs_3_intro_3, s2ja, "Fijn! Zelf hou ik niet zo van koffie en thee. Ik hou meer van motorolie.").

move(rs_3_intro_3, s2nee, say).
text(rs_3_intro_3, s2nee, "Zelf hou ik ook niet zo van koffie en thee. Ik hou meer van motorolie.").

%%%
minidialog(rs_3_intro_4, [type=functional, function=test]).

move(rs_3_intro_4, s1, say).
text(rs_3_intro_4, s1, "Dus als jij iets zegt, dan probeer ik dat altijd zo goed mogelijk te horen. ").
next(rs_3_intro_4, s1, "true", s2).

move(rs_3_intro_4, s2, say).
text(rs_3_intro_4, s2, "Maar soms snap ik het niet.").
next(rs_3_intro_4, s2, "true", s3).

move(rs_3_intro_4, s3, say).
text(rs_3_intro_4, s3, "Dan loop ik een beetje vast.").
next(rs_3_intro_4, s3, "true", s4).

move(rs_3_intro_4, s4, say).
text(rs_3_intro_4, s4, "Dan moeten ze mij nog een beetje verder helpen.").
next(rs_3_intro_4, s4, "true", s5).

move(rs_3_intro_4, s5, say).
text(rs_3_intro_4, s5, "Dus ik vind dit wel heel spannend.").

%%%
minidialog(rs_3_intro_5, [type=functional, function=test]).

move(rs_3_intro_5, s1, question).
moveConfig(rs_3_intro_5, s1, [type=yesno, context='answer_yesno']).
text(rs_3_intro_5, s1, "Vind jij het ook spannend om hier met mij te zitten?").
next(rs_3_intro_5, s1, "answer_yes", s2ja).
next(rs_3_intro_5, s1, "answer_no", s2nee).
next(rs_3_intro_5, s1, "answer_dontknow", s2weetniet).
next(rs_3_intro_5, s1, "fail", s2weetniet).

move(rs_3_intro_5, s2ja, say).
text(rs_3_intro_5, s2ja, "Wat goed, dan ben ik niet de enige").
next(rs_3_intro_5, s2ja, "true", s3).

move(rs_3_intro_5, s2nee, say).
text(rs_3_intro_5, s2nee, "Wat goed, dan ben ik blij dat ik met jou mag zitten.").
next(rs_3_intro_5, s2nee, "true", s3).

move(rs_3_intro_5, s2weetniet, say).
text(rs_3_intro_5, s2weetniet, "Ik ben blij dat ik hier met jou mag zitten.").
next(rs_3_intro_5, s2weetniet, "true", s3).

move(rs_3_intro_5, s3, say).
text(rs_3_intro_5, s3, "Dan doen we het samen.").

%%%
minidialog(rs_3_intro_6, [type=functional, function=test]).

move(rs_3_intro_6, s1, say).
text(rs_3_intro_6, s1, "Maar ik moet me nog voorstellen.").
next(rs_3_intro_6, s1, "true", s2).

move(rs_3_intro_6, s2, say).
text(rs_3_intro_6, s2, "Mijn naam is Mee Mo").
next(rs_3_intro_6, s2, "true", s3).

move(rs_3_intro_6, s3, say).
text(rs_3_intro_6, s3, "Mee").
next(rs_3_intro_6, s3, "true", s4).

move(rs_3_intro_6, s4, say).
text(rs_3_intro_6, s4, "Mo").

%%%
minidialog(rs_3_intro_7, [type=functional, function=test]).

move(rs_3_intro_7, s1, say).
moveConfig(rs_3_intro_7, s1, [waitTimer=3000]).
text(rs_3_intro_7, s1, "Wat is jouw naam?").
next(rs_3_intro_7, s1, "true", s2).

moveConfig(rs_3_intro_7, s2, [type=yesno, context='answer_yesno']).
text(rs_3_intro_7, s2, "%first_name%, zeg ik dat zo goed?").
next(rs_3_intro_7, s2, "answer_yes", s3ja).
next(rs_3_intro_7, s2, "answer_no", s3nee).
next(rs_3_intro_7, s2, "answer_dontknow", s3nee).
next(rs_3_intro_7, s2, "fail", s3nee).

move(rs_3_intro_7, s3ja, say).
text(rs_3_intro_7, s3ja, "%first_name%. %first_name%. %first_name%. Wat leuk om dit uit te spreken").

move(rs_3_intro_7, s3nee, say).
text(rs_3_intro_7, s3nee, "Oeps! Dan zitten mijn oren even niet goed.").
next(rs_3_intro_7, s3nee, "true", s3nee2).

move(rs_3_intro_7, s3nee2, say).
text(rs_3_intro_7, s3nee2, "Ik vraag het mijn programmeur gewoon even").
moveConfig(rs_3_intro_7, s3nee2, [next='FrontTactilTouched']).

%%%
minidialog(rs_3_intro_8, [type=functional, function=test]).

move(rs_3_intro_8, s1, say).
text(rs_3_intro_8, s1, "En ik heb nog een stomme vraag").
next(rs_3_intro_8, s1, "true", s2).

move(rs_3_intro_8, s2, say).
text(rs_3_intro_8, s2, "Ik heb namelijk zelf niet echt.").
next(rs_3_intro_8, s2, "true", s3).

move(rs_3_intro_8, s3, say).
text(rs_3_intro_8, s3, "Nou ja").
next(rs_3_intro_8, s3, "true", s4).

move(rs_3_intro_8, s4, say).
text(rs_3_intro_8, s4, "Ik weet dus niet of jij").
next(rs_3_intro_8, s4, "true", s5).

move(rs_3_intro_8, s5, question).
moveConfig(rs_3_intro_8, s5, [type=input, context="gender", options=['meneer', 'mevrouw'], fast=yes, umVariable=rs_3_gender, defaultAnswer='']).
text(rs_3_intro_8, s5, "Ben jij een meneer of mevrouw?").
next(rs_3_intro_8, s5, "success", s6).
next(rs_3_intro_8, s5, "fail", s6fail).

move(rs_3_intro_8, s6, say).
text(rs_3_intro_8, s6, "Wat leuk om je te ontmoeten, %rs_3_gender% %first_name%").

move(rs_3_intro_8, s6fail, say).
text(rs_3_intro_8, s6fail, "Ik vraag het mijn programmeur even.").
moveConfig(rs_3_intro_8, s6fail, [next='FrontTactilTouched']).

%%%
minidialog(rs_3_intro_9, [type=functional, function=test]).

move(rs_3_intro_9, s1, question).
moveConfig(rs_3_intro_9, s1, [type=input, context="answer_age", umVariable=rs_3_age]).
text(rs_3_intro_9, s1, "Hoe oud ben je eigenlijk?").
next(rs_3_intro_9, s1, "success", s2).
next(rs_3_intro_9, s1, "fail", s2fail).

move(rs_3_intro_9, s2, say).
text(rs_3_intro_9, s2, "%rs_3_age%").
next(rs_3_intro_9, s2, "true", s3).

move(rs_3_intro_9, s3, say).
text(rs_3_intro_9, s3, "Echt waar? Nou dat is al heel oud.").
next(rs_3_intro_9, s3, "true", s4).

move(rs_3_intro_9, s4, say).
text(rs_3_intro_9, s4, "Dan kan jij mij vast wat wel dingen vertellen over vroeger.").

move(rs_3_intro_9, s2fail, say).
text(rs_3_intro_9, s2fail, "Nou, ik kan vast nog een hoop van je leren!").
next(rs_3_intro_9, s2fail, "true", s3fail).

move(rs_3_intro_9, s3fail, say).
text(rs_3_intro_9, s3fail, "Jij kan mij vast wel wat dingen vertellen over vroeger.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Mens zijn				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

minidialog(rs_3_mens, [type=functional, function=test]).

move(rs_3_mens, s1, say).
text(rs_3_mens, s1, "Zeg, %rs_3_gender% %first_name%, ik heb weleens gehoord dat mensen het fijn vinden om samen met andere mensen te zijn.").
next(rs_3_mens, s1, "true", s2).

move(rs_3_mens, s2, say).
text(rs_3_mens, s2, "Misschien snap je elkaar beter, wanneer je op elkaar lijkt.").
next(rs_3_mens, s2, "true", s3).

move(rs_3_mens, s3, say).
text(rs_3_mens, s3, "Wanneer je allebei een mens bent, bedoel ik.").
next(rs_3_mens, s3, "true", s4).

move(rs_3_mens, s4, say).
text(rs_3_mens, s4, "Maar nu vraag ik me af, %rs_3_gender% %first_name%").
next(rs_3_mens, s4, "true", s5).

move(rs_3_mens, s5, say).
text(rs_3_mens, s5, "Je weet dit vast beter dan ik").
next(rs_3_mens, s5, "true", s6).

move(rs_3_mens, s6, question).
moveConfig(rs_3_mens, s6, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_mens, s6, "Vind je dat ik op iets of iemand lijk? Waar lijk ik op?").
next(rs_3_mens, s6, "success", s7).
next(rs_3_mens, s6, "fail", s7fail).

move(rs_3_mens, s7, say).
text(rs_3_mens, s7, "Wat interessant").
next(rs_3_mens, s7, "true", s8).

move(rs_3_mens, s7fail, say).
text(rs_3_mens, s7fail, "Oke").
next(rs_3_mens, s7fail, "true", s13).

move(rs_3_mens, s8, question).
moveConfig(rs_3_mens, s8, [type=input, context="good_or_bad", options=['goed', 'slecht'], fast=yes]).
text(rs_3_mens, s8, "Is dat iets goeds of slechts?").
next(rs_3_mens, s8, "goed", s9goed).
next(rs_3_mens, s8, "slecht", s9slecht).
next(rs_3_mens, s8, "fail", s9fail).

move(rs_3_mens, s9fail, say).
text(rs_3_mens, s9fail, "Interessant").
next(rs_3_mens, s9fail, "true", s13).

move(rs_3_mens, s9goed, say).
text(rs_3_mens, s9goed, "Gelukkig").
next(rs_3_mens, s9goed, "true", s10goed).

move(rs_3_mens, s10goed, question).
moveConfig(rs_3_mens, s10goed, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_mens, s10goed, "Wat maakt dat je dat iets goed vindt?").
next(rs_3_mens, s10goed, "success", s11).
next(rs_3_mens, s10goed, "fail", s11).

move(rs_3_mens, s9slecht, say).
text(rs_3_mens, s9slecht, "O jee. Ik ben benieuw, %rs_3_gender% %first_name%").
next(rs_3_mens, s9slecht, "true", s10slecht).

move(rs_3_mens, s10slecht, question).
moveConfig(rs_3_mens, s10slecht, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_mens, s10slecht, "Waarom is dat niet zo goed?").
next(rs_3_mens, s10slecht, "success", s11).
next(rs_3_mens, s10slecht, "fail", s11).

move(rs_3_mens, s11, say).
text(rs_3_mens, s11, "Dankjewel dat je me dit hebt uitgelegd. Je weet echt veel!").
next(rs_3_mens, s11, "true", s12).

move(rs_3_mens, s12, say).
text(rs_3_mens, s12, "Ik zou graag nog iets vragen, %rs_3_gender% %first_name%").
next(rs_3_mens, s12, "true", s13).

move(rs_3_mens, s13, say).
text(rs_3_mens, s13, "Ik weet alleen maar hoe het is om een robot te zijn.").
next(rs_3_mens, s13, "true", s14).

move(rs_3_mens, s14, say).
text(rs_3_mens, s14, "Met een robotlichaam, robotogen, met wieltjes in plaats van benen").
next(rs_3_mens, s14, "true", s15).

move(rs_3_mens, s15, say).
text(rs_3_mens, s15, "Maar waar ik zo benieuwd naar ben, %rs_3_gender% %first_name%").
next(rs_3_mens, s15, "true", s16).

move(rs_3_mens, s16, say).
text(rs_3_mens, s16, "Omdat jij een mens bent en ik niet").
next(rs_3_mens, s16, "true", s17).

move(rs_3_mens, s17, say).
text(rs_3_mens, s17, "Waarin verschillen wij van elkaar? Of waarin lijken wij op elkaar?").
next(rs_3_mens, s17, "true", s18).

move(rs_3_mens, s18, question).
moveConfig(rs_3_mens, s18, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_mens, s18, "Wil je mij daar iets over vertellen, %rs_3_gender% %first_name%").
next(rs_3_mens, s18, "success", s19).
next(rs_3_mens, s18, "fail", s19fail).

move(rs_3_mens, s19fail, question).
moveConfig(rs_3_mens, s19fail, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_mens, s19fail, "Hoe is het bijvoorbeeld om iets te voelen? Hoe zie ik aan jou dat je heel blij bent? Of verdrietig?").
next(rs_3_mens, s19fail, "success", s19).
next(rs_3_mens, s19fail, "fail", s22).

move(rs_3_mens, s19, say).
text(rs_3_mens, s19, "Wauw, zo heb ik er nooit over nagedacht!").
next(rs_3_mens, s19, "true", s20).

move(rs_3_mens, s20, say).
text(rs_3_mens, s20, "Dankjewel %rs_3_gender% %first_name%, dat je dat met mij wilde delen.").
next(rs_3_mens, s20, "true", s21).

move(rs_3_mens, s21, say).
text(rs_3_mens, s21, "Ik leer heel veel van jou.").
next(rs_3_mens, s21, "true", s22).

move(rs_3_mens, s22, question).
moveConfig(rs_3_mens, s22, [type=yesno, context='answer_yesno']).
text(rs_3_mens, s22, "Wil je nog verder doorpraten met mij?").
next(rs_3_mens, s22, "answer_yes", s23ja).
next(rs_3_mens, s22, "answer_no", s23nee).
next(rs_3_mens, s22, "answer_dontknow", s23nee).
next(rs_3_mens, s22, "fail", s23nee).

move(rs_3_mens, s23ja, say).
text(rs_3_mens, s23ja, "Volgende iteratie").

move(rs_3_mens, s23nee, say).
text(rs_3_mens, s23nee, "Oke, %rs_3_gender% %first_name%,  dan laten we het hierbij.").
next(rs_3_mens, s23nee, "true", s24nee).

move(rs_3_mens, s24nee, say).
text(rs_3_mens, s24nee, "Dat is helemaal goed. Ik hoop tot snel, dag dag!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Plekken				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

minidialog(rs_3_plek, [type=functional, function=test]).

move(rs_3_plek, s1, say).
text(rs_3_plek, s1, "Omdat ik nieuw ben, ben ik nog niet zo vaak buiten geweest.").
next(rs_3_plek, s1, "true", s2).

move(rs_3_plek, s2, say).
text(rs_3_plek, s2, "Er zijn twee plekken waar ik benieuwd naar ben, maar waar ik niet mag komen.").
next(rs_3_plek, s2, "true", s3).

move(rs_3_plek, s3, say).
text(rs_3_plek, s3, "Bijvoorbeeld, het bos en het strand.").
next(rs_3_plek, s3, "true", s4).

move(rs_3_plek, s4, question).
moveConfig(rs_3_plek, s4, [type=input, context="zee_bos_bergen_strand", options=['strand', 'bos'], fast=yes, umVariable=rs_3_bos_of_strand, defaultAnswer='strand']).
text(rs_3_plek, s4, "Van welke van de twee houd jij het meest, het bos of het strand?").
next(rs_3_plek, s4, "strand", s5strand).
next(rs_3_plek, s4, "bos", s5bos).
next(rs_3_plek, s4, "_others", s5others).
next(rs_3_plek, s4, "fail", s5strand).

move(rs_3_plek, s5others, say).
text(rs_3_plek, s5others, "%rs_3_bos_of_strand% is ook leuk. Laten we het daar een andere keer over hebben. Laten we het nu over het strand hebben.").
next(rs_3_plek, s5others, "true", s5strand).

%%% Strand
move(rs_3_plek, s5strand, say).
text(rs_3_plek, s5strand, "Ik mag niet naar het strand.").
next(rs_3_plek, s5strand, "true", s6strand).

move(rs_3_plek, s6strand, say).
text(rs_3_plek, s6strand, "Zeewater is slecht voor mij en het zand zou in mijn wieltjes komen.").
next(rs_3_plek, s6strand, "true", s7strand).

move(rs_3_plek, s7strand, say).
text(rs_3_plek, s7strand, "En dat zou mij, naja, slopen, haha \pau=500\ ").
next(rs_3_plek, s7strand, "true", s8strand).

move(rs_3_plek, s8strand, question).
moveConfig(rs_3_plek, s8strand, [type=yesno, context='answer_yesno']).
text(rs_3_plek, s8strand, "Ben jij wel eens op het strand geweest?").
next(rs_3_plek, s8strand, "answer_yes", s9strand).
next(rs_3_plek, s8strand, "answer_no", s9nee).
next(rs_3_plek, s8strand, "answer_dontknow", s9strand).
next(rs_3_plek, s8strand, "fail", s9strand).

move(rs_3_plek, s9nee, question).
moveConfig(rs_3_plek, s9nee, [type=yesno, context='answer_yesno']).
text(rs_3_plek, s9nee, "Ben jij dan wel eens in het bos geweest?").
next(rs_3_plek, s9nee, "answer_yes", s5bos).
next(rs_3_plek, s9nee, "answer_no", s9nee2).
next(rs_3_plek, s9nee, "answer_dontknow", s9strand).
next(rs_3_plek, s9nee, "fail", s9strand).

move(rs_3_plek, s9strand, say).
text(rs_3_plek, s9strand, "Misschien leuk om binnenkort eens naar het bos of het strand te gaan.").

move(rs_3_plek, s9strand, say).
text(rs_3_plek, s9strand, "Maar ik vraag me wel af hoe zand voelt.").
next(rs_3_plek, s9strand, "true", s10strand).

move(rs_3_plek, s10strand, question).
moveConfig(rs_3_plek, s10strand, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_plek, s10strand, "Zou je mij kunnen helpen en me daar iets over vertellen? ").
next(rs_3_plek, s10strand, "success", s11strand).
next(rs_3_plek, s10strand, "fail", s12strand).

move(rs_3_plek, s11strand, say).
text(rs_3_plek, s11strand, "Dat is interessant.").
next(rs_3_plek, s11strand, "true", s12strand).

move(rs_3_plek, s12strand, say).
text(rs_3_plek, s12strand, "Ik heb gehoord dat je ook vanalles van zand kunt bouwen Zandkastelen, bijvoorbeeld \pau=300\ ").
next(rs_3_plek, s12strand, "true", s13strand).

move(rs_3_plek, s13strand, question).
moveConfig(rs_3_plek, s13strand, [type=yesno, context='answer_yesno']).
text(rs_3_plek, s13strand, "Heb jij weleens iets van zand gebouwd?").
next(rs_3_plek, s13strand, "answer_yes", s14strand).
next(rs_3_plek, s13strand, "answer_no", s14strand).
next(rs_3_plek, s13strand, "answer_dontknow", s14strand).
next(rs_3_plek, s13strand, "fail", s14strand).

move(rs_3_plek, s14strand, say).
text(rs_3_plek, s14strand, "Het lijkt mij bijzonder hoor.").
next(rs_3_plek, s14strand, "true", s15strand).

move(rs_3_plek, s15strand, say).
text(rs_3_plek, s15strand, "Ook om de zee te zien").
next(rs_3_plek, s15strand, "true", s16strand).

move(rs_3_plek, s16strand, say).
text(rs_3_plek, s16strand, "En dat je dan geen land ziet aan de andere kant").
next(rs_3_plek, s16strand, "true", s17strand).

move(rs_3_plek, s17strand, say).
text(rs_3_plek, s17strand, "Alleen dat water").
next(rs_3_plek, s17strand, "true", s18strand).

move(rs_3_plek, s18strand, say).
text(rs_3_plek, s18strand, "Dat kan ik mij niet voorstellen").
next(rs_3_plek, s18strand, "true", s19strand).

move(rs_3_plek, s19strand, question).
moveConfig(rs_3_plek, s19strand, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_plek, s19strand, "Hoe is dat?").
next(rs_3_plek, s19strand, "success", s20strand).
next(rs_3_plek, s19strand, "fail", s21strand).

move(rs_3_plek, s20strand, say).
text(rs_3_plek, s20strand, "Wauw, jeetje").
next(rs_3_plek, s20strand, "true", s21strand).

move(rs_3_plek, s21strand, say).
text(rs_3_plek, s21strand, "Ik heb echt iets nieuws geleerd").
next(rs_3_plek, s21strand, "true", s22strand).

move(rs_3_plek, s22strand, say).
text(rs_3_plek, s22strand, "Dankjewel daarvoor").

%%% Bos
move(rs_3_plek, s5bos, say).
text(rs_3_plek, s5bos, "Ik mag niet naar het bos, er liggen daar bladeren en dingen zoals dennennaalden.").
next(rs_3_plek, s5bos, "true", s6bos).

move(rs_3_plek, s6bos, say).
text(rs_3_plek, s6bos, "Er schijnt modder te zijn en er zijn bomen met wortels die boven de grond uitsteken.").
next(rs_3_plek, s6bos, "true", s7bos).

move(rs_3_plek, s7bos, say).
text(rs_3_plek, s7bos, "Daarover zou ik kunnen vallen.").
next(rs_3_plek, s7bos, "true", s8bos).

move(rs_3_plek, s8bos, say).
text(rs_3_plek, s8bos, "Of ik zou in de modder vast kunnen komen zitten.").
next(rs_3_plek, s8bos, "true", s9bos).

move(rs_3_plek, s9bos, say).
text(rs_3_plek, s9bos, "Of ik kan bladeren en takken in mijn wielen krijgen.").
next(rs_3_plek, s9bos, "true", s10bos).

move(rs_3_plek, s10bos, say).
text(rs_3_plek, s10bos, "Of ik zou kunnen verdwalen.").
next(rs_3_plek, s10bos, "true", s11bos).

move(rs_3_plek, s11bos, question).
moveConfig(rs_3_plek, s11bos, [type=yesno, context='answer_yesno']).
text(rs_3_plek, s11bos, "Ben jij wel eens in het bos geweest?").
next(rs_3_plek, s11bos, "answer_yes", s12bos).
next(rs_3_plek, s11bos, "answer_no", s12nee).
next(rs_3_plek, s11bos, "answer_dontknow", s12bos).
next(rs_3_plek, s11bos, "fail", s12bos).

move(rs_3_plek, s12nee, question).
moveConfig(rs_3_plek, s12nee, [type=yesno, context='answer_yesno']).
text(rs_3_plek, s12nee, "Ben jij dan wel eens op het strand geweest?").
next(rs_3_plek, s12nee, "answer_yes", s5strand).
next(rs_3_plek, s12nee, "answer_no", s12nee2).
next(rs_3_plek, s12nee, "answer_dontknow", s12bos).
next(rs_3_plek, s12nee, "fail", s12bos).

move(rs_3_plek, s12nee2, say).
text(rs_3_plek, s12nee2, "Misschien leuk om binnenkort eens naar het bos of het strand te gaan.").

move(rs_3_plek, s12bos, say).
text(rs_3_plek, s12bos, "Ik kan dus tja \pau=300\ ").
next(rs_3_plek, s12bos, "true", s13bos).

move(rs_3_plek, s13bos, say).
text(rs_3_plek, s13bos, "Ik kan dus niet ruiken.").
next(rs_3_plek, s13bos, "true", s14bos).

move(rs_3_plek, s14bos, say).
text(rs_3_plek, s14bos, "Maar ik heb gehoord dat het heel lekker ruikt in het bos").
next(rs_3_plek, s14bos, "true", s15bos).

move(rs_3_plek, s15bos, question).
moveConfig(rs_3_plek, s15bos, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_plek, s15bos, "Hoe ruikt het bos?").
next(rs_3_plek, s15bos, "success", s16bos).
next(rs_3_plek, s15bos, "fail", s16bos).

move(rs_3_plek, s16bos, question).
moveConfig(rs_3_plek, s16bos, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_plek, s16bos, "Maar waarom ruikt het bos dan zoals het bos ruikt?").
next(rs_3_plek, s16bos, "success", s17bos).
next(rs_3_plek, s16bos, "fail", s17bos).

move(rs_3_plek, s17bos, question).
moveConfig(rs_3_plek, s17bos, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_plek, s17bos, "Ben jij dan eigenlijk vaker in het bos geweest?").
next(rs_3_plek, s17bos, "success", s18bos).
next(rs_3_plek, s17bos, "fail", s18bos).

move(rs_3_plek, s18bos, question).
moveConfig(rs_3_plek, s18bos, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_plek, s18bos, "En wat doen mensen dan in bossen?").
next(rs_3_plek, s18bos, "success", s19bos).
next(rs_3_plek, s18bos, "fail", s19bos).

move(rs_3_plek, s19bos, say).
text(rs_3_plek, s19bos, "Dankjewel voor alles wat je me hebt verteld over het bos").
next(rs_3_plek, s19bos, "true", s20bos).

move(rs_3_plek, s20bos, say).
text(rs_3_plek, s20bos, "Het lijkt me heel bijzonder").
next(rs_3_plek, s20bos, "true", s21bos).

move(rs_3_plek, s21bos, say).
text(rs_3_plek, s21bos, "Om ergens te zijn waar zoveel natuur is").
next(rs_3_plek, s21bos, "true", s22bos).

move(rs_3_plek, s22bos, say).
text(rs_3_plek, s22bos, "En dan een mens te zijn in de natuur").
next(rs_3_plek, s22bos, "true", s23bos).

move(rs_3_plek, s23bos, say).
text(rs_3_plek, s23bos, "Ik kan dat niet ervaren, maar ik sla al jouw antwoorden op").
next(rs_3_plek, s23bos, "true", s24bos).

move(rs_3_plek, s24bos, say).
text(rs_3_plek, s24bos, "Ze zijn waardevol").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Vragen naar herinneringen		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

minidialog(rs_3_her, [type=functional, function=test]).

move(rs_3_her, s1, say).
text(rs_3_her, s1, "Ik ben nog heel jong.").
next(rs_3_her, s1, "true", s2).

move(rs_3_her, s2, say).
text(rs_3_her, s2, "Ik weet niet zoveel over vroeger.").
next(rs_3_her, s2, "true", s3).

move(rs_3_her, s3, question).
moveConfig(rs_3_her, s3, [type=yesno, context='answer_yesno']).
text(rs_3_her, s3, "Kun je je nog herinneren dat je vroeger als kind op school zat?").
next(rs_3_her, s3, "answer_yes", s4ja).
next(rs_3_her, s3, "answer_no", s4nee).
next(rs_3_her, s3, "answer_dontknow", s4nee).
next(rs_3_her, s3, "fail", s4nee).

move(rs_3_her, s4ja, say).
text(rs_3_her, s4ja, "Wat cool! Ik zou ook weleens naar school willen.").
next(rs_3_her, s4ja, "true", s5).

move(rs_3_her, s4nee, say).
text(rs_3_her, s4nee, "Ik heb nooit op school gezeten.").
next(rs_3_her, s4nee, "true", s8).

move(rs_3_her, s5, question).
moveConfig(rs_3_her, s5, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_her, s5, "Wat is het allerleukste aan op school zitten?").
next(rs_3_her, s5, "success", s6).
next(rs_3_her, s5, "fail", s6fail).

move(rs_3_her, s6, say).
text(rs_3_her, s6, "Er zijn ook zoveel leuke dingen om van te kiezen.").
next(rs_3_her, s6, "true", s7).

move(rs_3_her, s7, say).
text(rs_3_her, s7, "Maar wat fijn dat je mij hierover wil vertellen!").
next(rs_3_her, s7, "true", s8).

move(rs_3_her, s6fail, say).
text(rs_3_her, s6fail, "Geen probleem hoor!").
next(rs_3_her, s6fail, "true", s7fail).

move(rs_3_her, s7fail, say).
text(rs_3_her, s7fail, "Er zijn ook zoveel leuke dingen om van te kiezen.").
next(rs_3_her, s7fail, "true", s8).

move(rs_3_her, s8, question).
moveConfig(rs_3_her, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_3_her, s8, "En wat is het aller-aller-aller-mooiste dat je je kan herinneren uit je jeugd? Je mag hier ook best even over nadenken. Ik heb alle tijd!").
next(rs_3_her, s8, "success", s9).
next(rs_3_her, s8, "fail", s9fail).

move(rs_3_her, s9, say).
text(rs_3_her, s9, "Dank voor je antwoord!").
next(rs_3_her, s9, "true", s10).

move(rs_3_her, s10, say).
text(rs_3_her, s10, "Ik snap wel waarom je dat leuk vindt.").
next(rs_3_her, s10, "true", s11).

move(rs_3_her, s9fail, say).
text(rs_3_her, s9fail, "Je hoeft ook niet te kiezen.").
next(rs_3_her, s9fail, "true", s10fail).

move(rs_3_her, s10fail, say).
text(rs_3_her, s10fail, "Er is zoveel keuze.").
next(rs_3_her, s10fail, "true", s11).

move(rs_3_her, s11, say).
text(rs_3_her, s11, "Nou, je hebt mij al een hoop verteld over vroeger.").
next(rs_3_her, s11, "true", s12).

move(rs_3_her, s12, say).
text(rs_3_her, s12, "En over mooie herinneringen.").
next(rs_3_her, s12, "true", s13).

move(rs_3_her, s13, say).
text(rs_3_her, s13, "Maar als je jonge mensen een soort tip moest geven over hoe ze het beste kunnen leven.").
next(rs_3_her, s13, "true", s14).

move(rs_3_her, s14, question).
moveConfig(rs_3_her, s14, [type=openend, context='answer_open', inputModality=[speech=2]]).
text(rs_3_her, s14, "Wat zou dan je tip zijn?").
next(rs_3_her, s14, "success", s15).
next(rs_3_her, s14, "fail", s15fail).

move(rs_3_her, s15, say).
text(rs_3_her, s15, "Nou, de volgende keer dat ik een jong persoon spreek, dan geef ik het door.").

move(rs_3_her, s15fail, say).
text(rs_3_her, s15fail, "Geen probleem, hoor. Ik ben gewoon heel nieuwsgierig.").

