%%%% HEADER %%%%
%% doei_was_het_leuk %%
minidialog(doei_was_het_leuk, [type=functional, function=goodbye]).
dependencies(doei_was_het_leuk, [[[eerste_begroeting_secret_handshake, follow_up, 0]]]).

move(doei_was_het_leuk, s1, say).
text(doei_was_het_leuk, s1, "Het is alweer tijd!").
next(doei_was_het_leuk, s1, "true", s2).

move(doei_was_het_leuk, s2, say).
text(doei_was_het_leuk, s2, "Ik vond het superleuk om met je te kletsen").
next(doei_was_het_leuk, s2, "true", s3).

move(doei_was_het_leuk, s3, question).
moveConfig(doei_was_het_leuk, s3, [type=yesno, context='answer_yesno', umVariable=was_kletsen_leuk]).
text(doei_was_het_leuk, s3, "Vond jij het ook leuk om met mij te kletsen?").
next(doei_was_het_leuk, s3, "answer_yes", s4ja1).
next(doei_was_het_leuk, s3, "answer_no", s4nee1).
next(doei_was_het_leuk, s3, "answer_dontknow", s4nee1).
next(doei_was_het_leuk, s3, "fail", s4nee1).

move(doei_was_het_leuk, s4ja1, say).
text(doei_was_het_leuk, s4ja1, "Wat fijn om te horen!").
next(doei_was_het_leuk, s4ja1, "true", s4ja2).

move(doei_was_het_leuk, s4ja2, say).
text(doei_was_het_leuk, s4ja2, "Laten we de volgende keer lekker verder kletsen.").
next(doei_was_het_leuk, s4ja2, "true", s5).

move(doei_was_het_leuk, s4nee1, say).
text(doei_was_het_leuk, s4nee1, "Nou wat jammer zeg, volgende keer beter.").
next(doei_was_het_leuk, s4nee1, "true", s4nee2).

move(doei_was_het_leuk, s4nee2, say).
text(doei_was_het_leuk, s4nee2, "Dan zorg ik dat de volgende keer extra leuke dingen doen.").
next(doei_was_het_leuk, s4nee2, "true", s5).

move(doei_was_het_leuk, s5, say).
text(doei_was_het_leuk, s5, "Laten we onze secret handshake nog een keer doen!").
next(doei_was_het_leuk, s5, "true", s6).

move(doei_was_het_leuk, s6, say).
next(doei_was_het_leuk, s6, "true", s7).

move(doei_was_het_leuk, s7, say).
text(doei_was_het_leuk, s7, "Tot de volgende keer, %first_name% !").

%% doei_secret_handshake_1 %%
minidialog(doei_secret_handshake_1, [type=functional, function=goodbye]).
dependencies(doei_secret_handshake_1, [[[eerste_begroeting_secret_handshake, follow_up, 0]]]).

move(doei_secret_handshake_1, s1, say).
text(doei_secret_handshake_1, s1, "Ik moet alweer bijna gaan!").
next(doei_secret_handshake_1, s1, "true", s2).

move(doei_secret_handshake_1, s2, say).
text(doei_secret_handshake_1, s2, "Laten we onze secret handshake nog een keer doen.").
next(doei_secret_handshake_1, s2, "true", s3).

move(doei_secret_handshake_1, s3, say).
next(doei_secret_handshake_1, s3, "true", s4).

move(doei_secret_handshake_1, s4, say).
text(doei_secret_handshake_1, s4, "Cool.").
next(doei_secret_handshake_1, s4, "true", s5).

move(doei_secret_handshake_1, s5, say).
text(doei_secret_handshake_1, s5, "Dag lieve %first_name% !").
next(doei_secret_handshake_1, s5, "true", s6).

move(doei_secret_handshake_1, s6, say).
text(doei_secret_handshake_1, s6, "Tot de volgende keer!").

%% doei_slaaphouding %%
minidialog(doei_slaaphouding, [type=functional, function=goodbye]).
dependencies(doei_slaaphouding, [[[slaaphouding, user_model, 0]]]).

move(doei_slaaphouding, s1, say).
text(doei_slaaphouding, s1, "Ik moet weer gaan!").
next(doei_slaaphouding, s1, "true", s2).

move(doei_slaaphouding, s2, say).
text(doei_slaaphouding, s2, "Dag lieve %first_name% , tot de volgende keer!").
next(doei_slaaphouding, s2, "true", s3).

move(doei_slaaphouding, s3, say).
text(doei_slaaphouding, s3, "Slaap lekker op je %slaaphouding_kind%").

