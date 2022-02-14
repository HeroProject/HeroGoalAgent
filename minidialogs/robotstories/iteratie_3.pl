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

%%%
minidialog(rs_3_intro_8, [type=functional, function=test]).