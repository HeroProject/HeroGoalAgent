move(dagdromen_sport, s1, say).
text(dagdromen_sport, s1, "Weet je wat ik me wel eens afvraag?").
%next(dagdromen_sport, s1, "true", s2).

move(dagdromen_sport, s2, say).
text(dagdromen_sport, s2, "Of ik een sportrobot zou kunnen zijn.").
next(dagdromen_sport, s2, "true", s3).

move(dagdromen_sport, s3, question).
moveConfig(dagdromen_sport, s3, [type=yesno, context='answer_yesno']).
text(dagdromen_sport, s3, "Speel jij een sport?").
next(dagdromen_sport, s3, "answer_yes", s4ja1).
next(dagdromen_sport, s3, "answer_no", s4nee1).
next(dagdromen_sport, s3, "answer_dontknow", s4nee1).
next(dagdromen_sport, s3, "fail", s4nee1).

move(dagdromen_sport, s4ja1, question).
moveConfig(dagdromen_sport, s4ja1, [type=input, context="answer_sports", options=['Voetbal', 'Hockey', 'Zwemmen', 'Dansen', 'Judo'], umVariable=sport_van_kind]).
text(dagdromen_sport, s4ja1, "Welke sport doe je dan?").
next(dagdromen_sport, s4ja1, "success", s4wel_sport1).
next(dagdromen_sport, s4ja1, "fail", s4wel_sport_21).

move(dagdromen_sport, s4nee1, question).
moveConfig(dagdromen_sport, s4nee1, [type=yesno, context='answer_yesno']).
text(dagdromen_sport, s4nee1, "Ben je wel geïnteresseerd in sport").
next(dagdromen_sport, s4nee1, "answer_yes", s4interesse1).
next(dagdromen_sport, s4nee1, "answer_no", s4geen_sport1).
next(dagdromen_sport, s4nee1, "answer_dontknow", s4geen_sport1).
next(dagdromen_sport, s4nee1, "fail", s4geen_sport1).

move(dagdromen_sport, s4interesse1, question).
moveConfig(dagdromen_sport, s4interesse1, [type=input, context="answer_sports", options=['Voetbal', 'Hockey', 'Zwemmen', 'Dansen', 'Judo'], umVariable=sport_van_kind]).
text(dagdromen_sport, s4interesse1, "Welke sport zou je wel eens willen doen?").
next(dagdromen_sport, s4interesse1, "success", s4wel_sport1).
next(dagdromen_sport, s4interesse1, "fail", s4wel_sport_21).

move(dagdromen_sport, s4wel_sport1, say).
text(dagdromen_sport, s4wel_sport1, "Wauw, %sport_van_kind%!").
next(dagdromen_sport, s4wel_sport1, "true", s4wel_sport_21).

move(dagdromen_sport, s4wel_sport_21, say).
text(dagdromen_sport, s4wel_sport_21, "Misschien is het ook wel iets voor mij.").
next(dagdromen_sport, s4wel_sport_21, "true", s4wel_sport_22).

move(dagdromen_sport, s4wel_sport_22, question).
moveConfig(dagdromen_sport, s4wel_sport_22, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(dagdromen_sport, s4wel_sport_22, "Wat vind jij er zo leuk aan?").
next(dagdromen_sport, s4wel_sport_22, "success", s4wel_sport_23).
next(dagdromen_sport, s4wel_sport_22, "fail", s4wel_sport_23).

move(dagdromen_sport, s4wel_sport_23, say).
text(dagdromen_sport, s4wel_sport_23, "Klinkt erg gaaf, als ik dat zo hoor!").
next(dagdromen_sport, s4wel_sport_23, "true", s5).

move(dagdromen_sport, s4geen_sport1, say).
text(dagdromen_sport, s4geen_sport1, "Dat snap ik helemaal. Ik ben er ook niet zo goed in.").
next(dagdromen_sport, s4geen_sport1, "true", s4geen_sport2).

move(dagdromen_sport, s4geen_sport2, say).
text(dagdromen_sport, s4geen_sport2, "Voor ons zijn er een hoop andere leuke dingen om te doen.").

move(dagdromen_sport, s5, say).
text(dagdromen_sport, s5, "Soms kijk ik uit het raam en denk ik aan later.").
next(dagdromen_sport, s5, "true", s6).

move(dagdromen_sport, s6, say).
text(dagdromen_sport, s6, "Soms kijk ik uit het raam en zie ik mezelf als sportrobot.").
next(dagdromen_sport, s6, "true", s7).

move(dagdromen_sport, s7, question).
moveConfig(dagdromen_sport, s7, [type=yesno, context='answer_yesno']).
text(dagdromen_sport, s7, "Denk je dat ik een goede sportrobot kan worden?").
next(dagdromen_sport, s7, "answer_yes", s8ja1).
next(dagdromen_sport, s7, "answer_no", s8nee1).
next(dagdromen_sport, s7, "answer_dontknow", s8nee1).
next(dagdromen_sport, s7, "fail", s8nee1).

move(dagdromen_sport, s8nee1, say).
text(dagdromen_sport, s8nee1, "Hmm, dan zal ik er nog eens beter over nadenken.").

move(dagdromen_sport, s8ja1, say).
text(dagdromen_sport, s8ja1, "Wat lief van je!").

