%%%% HEADER %%%%
%% huisdier %%
minidialog(huisdier, [type=chitchat, theme=personalia, topic=huisdier]).

move(huisdier, s1, say).
text(huisdier, s1, "Trouwens").
next(huisdier, s1, "true", s2).

move(huisdier, s2, question).
moveConfig(huisdier, s2, [type=yesno, context='answer_yesno', umVariable=heb_je_huisdier]).
text(huisdier, s2, "Heb jij een huisdier?").
next(huisdier, s2, "answer_yes", s3ja1).
next(huisdier, s2, "answer_no", s3nee1).
next(huisdier, s2, "fail", s3fail1).
next(huisdier, s2, "answer_dontknow", s3fail1).

move(huisdier, s3fail1, say).
text(huisdier, s3fail1, "Ik heb geen huisdier.").
next(huisdier, s3fail1, "true", s3hero_wil_hond1).

move(huisdier, s3nee1, say).
text(huisdier, s3nee1, "Ik ook niet.").
next(huisdier, s3nee1, "true", s3hero_wil_hond1).

move(huisdier, s3ja1, say).
text(huisdier, s3ja1, "Leuk!").
next(huisdier, s3ja1, "true", s3ja2).

move(huisdier, s3ja2, question).
moveConfig(huisdier, s3ja2, [type=input, context="integer", options=[1, '2', 'meer dan 2', 0], fast=yes, umVariable=hoeveel_huisdieren]).
text(huisdier, s3ja2, "Hoeveel huisdieren heb je?").
next(huisdier, s3ja2, 0, s301).
next(huisdier, s3ja2, 1, s311).
next(huisdier, s3ja2, "_others", s32_of_meer1).
next(huisdier, s3ja2, "fail", s3hero_wil_hond1).

move(huisdier, s301, say).
text(huisdier, s301, "Ik heb ook nul huisdieren.").
next(huisdier, s301, "true", s3hero_wil_hond1).

move(huisdier, s32_of_meer1, say).
text(huisdier, s32_of_meer1, "Wow!").
next(huisdier, s32_of_meer1, "true", s32_of_meer2).

move(huisdier, s32_of_meer2, question).
moveConfig(huisdier, s32_of_meer2, [type=yesno, context='answer_yesno', umVariable=ook_hond]).
text(huisdier, s32_of_meer2, "Zit daar ook een hond tussen?").
next(huisdier, s32_of_meer2, "answer_yes", s3ja_o_h1).
next(huisdier, s32_of_meer2, "answer_no", s3nee_o_h1).
next(huisdier, s32_of_meer2, "fail", s3nee_o_h1).
next(huisdier, s32_of_meer2, "answer_dontknow", s3nee_o_h1).

move(huisdier, s3ja_o_h1, question).
moveConfig(huisdier, s3ja_o_h1, [type=input, context="integer", options=[1, '2', 'meer dan 2', 0], fast=yes, umVariable=hoeveelheid_honden]).
text(huisdier, s3ja_o_h1, "Hoeveel honden heb je?").
next(huisdier, s3ja_o_h1, 1, s3hond1).
next(huisdier, s3ja_o_h1, 0, s3nee_o_h1).
next(huisdier, s3ja_o_h1, "fail", s3nee_o_h1).
next(huisdier, s3ja_o_h1, "_others", s3meer_honden1).

move(huisdier, s3meer_honden1, say).
text(huisdier, s3meer_honden1, "Bizar!").
next(huisdier, s3meer_honden1, "true", s3meer_honden2).

move(huisdier, s3meer_honden2, say).
text(huisdier, s3meer_honden2, "Dat klinkt heel erg leuk!").
next(huisdier, s3meer_honden2, "true", s3meer_honden3).

move(huisdier, s3meer_honden3, say).
text(huisdier, s3meer_honden3, "Ik vind kleine honden leuker dan grote.").
next(huisdier, s3meer_honden3, "true", s3meer_honden4).

move(huisdier, s3meer_honden4, say).
text(huisdier, s3meer_honden4, "Ik ben zelf natuurlijk ook niet zo groot.").
next(huisdier, s3meer_honden4, "true", s3meer_honden5).

move(huisdier, s3meer_honden5, question).
moveConfig(huisdier, s3meer_honden5, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=naam_huisdier]).
text(huisdier, s3meer_honden5, "Hoe heet jouw kleinste hond?").
next(huisdier, s3meer_honden5, "true", s3leuke_naam1).

move(huisdier, s3nee_o_h1, question).
moveConfig(huisdier, s3nee_o_h1, [type=input, context="animals", options=['kat', 'konijn', 'cavia', 'een ander dier'], fast=yes, umVariable=soort_huisdier]).
text(huisdier, s3nee_o_h1, "Wat voor andere dieren heb je dan?").
next(huisdier, s3nee_o_h1, "_others", s3ander_dier1).
next(huisdier, s3nee_o_h1, "fail", s3hero_wil_hond1).
next(huisdier, s3nee_o_h1, "answer_dontknow", s3hero_wil_hond1).

move(huisdier, s311, question).
moveConfig(huisdier, s311, [type=input, context="animals", options=['kat', 'hond', 'cavia', 'een ander dier'], fast=yes, umVariable=soort_huisdier]).
text(huisdier, s311, "En wat voor soort dier heb je?").
next(huisdier, s311, "hond", s3hond1).
next(huisdier, s311, "_others", s3ander_dier1).
next(huisdier, s311, "fail", s3hero_wil_hond1).
next(huisdier, s311, "answer_dontknow", s3hero_wil_hond1).

move(huisdier, s3hond1, say).
text(huisdier, s3hond1, "Cool!").
next(huisdier, s3hond1, "true", s3hond2).

move(huisdier, s3hond2, say).
text(huisdier, s3hond2, "Ik vind honden leuk.").
next(huisdier, s3hond2, "true", s3hond3).

move(huisdier, s3hond3, say).
text(huisdier, s3hond3, "Die zijn supergoed in mensen helpen.").
next(huisdier, s3hond3, "true", s3naam_dier1).

move(huisdier, s3ander_dier1, say).
text(huisdier, s3ander_dier1, "Cool!").
next(huisdier, s3ander_dier1, "true", s3ander_dier2).

move(huisdier, s3ander_dier2, say).
text(huisdier, s3ander_dier2, "Een %soort_huisdier% lijkt me ook een leuk huisdier.").
next(huisdier, s3ander_dier2, "true", s3naam_dier1).

move(huisdier, s3naam_dier1, question).
moveConfig(huisdier, s3naam_dier1, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=naam_huisdier]).
text(huisdier, s3naam_dier1, "Hoe heet je %soort_huisdier%?").
next(huisdier, s3naam_dier1, "success", s3leuke_naam1).
next(huisdier, s3naam_dier1, "fail", s3got_no_answer_naam1).

move(huisdier, s3got_no_answer_naam1, say).
text(huisdier, s3got_no_answer_naam1, "Geeft niks").
next(huisdier, s3got_no_answer_naam1, "true", s3got_no_answer_naam2).

move(huisdier, s3got_no_answer_naam2, say).
text(huisdier, s3got_no_answer_naam2, "Het mag ook geheim blijven").
next(huisdier, s3got_no_answer_naam2, "true", s3hero_wil_hond1).

move(huisdier, s3leuke_naam1, say).
text(huisdier, s3leuke_naam1, "Wat een leuke naam!").
next(huisdier, s3leuke_naam1, "true", s3leuke_naam2).

move(huisdier, s3leuke_naam2, say).
text(huisdier, s3leuke_naam2, "Als ik ooit een %soort_huisdier% krijg, noem ik hem ook zo.").
next(huisdier, s3leuke_naam2, "true", s3hero_wil_hond1).

move(huisdier, s3hero_wil_hond1, say).
text(huisdier, s3hero_wil_hond1, "Ik zou heel graag een hond willen.").
next(huisdier, s3hero_wil_hond1, "true", s3hero_wil_hond2).

move(huisdier, s3hero_wil_hond2, say).
text(huisdier, s3hero_wil_hond2, "Honden zijn supergoed in mensen helpen.").
next(huisdier, s3hero_wil_hond2, "true", s3hero_wil_hond3).

move(huisdier, s3hero_wil_hond3, say).
text(huisdier, s3hero_wil_hond3, "Van mijn hond zou ik van alles over mensen kunnen leren.").
next(huisdier, s3hero_wil_hond3, "true", s3hero_wil_hond4).

move(huisdier, s3hero_wil_hond4, say).
text(huisdier, s3hero_wil_hond4, "Ook als jij niet in de buurt bent om mee te praten!").

