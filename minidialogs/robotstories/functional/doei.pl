%%%% HEADER %%%%
%% doei_2 %%
minidialog(doei_2, [type=functional, function=goodbye]).

move(doei_2, s1, say).
start_interaction_probe(doei_2, s1).
next(doei_2, s1, "true", s2).

move(doei_2, s2, continuator).
next(doei_2, s2, [[expCondition=memory]], s3memory1).
next(doei_2, s2, [[expCondition=control]], s3control1).
next(doei_2, s2, "true", s4).

move(doei_2, s3memory1, say).
text(doei_2, s3memory1, "We zijn bijna weer door onze tijd heen voor vandaag, %first_name% ").
next(doei_2, s3memory1, "true", s3memory2).

move(doei_2, s3memory2, say).
text(doei_2, s3memory2, "Fijn dat we vandaag weer konden kletsen.").
next(doei_2, s3memory2, "true", s3memory3).

move(doei_2, s3memory3, say).
text(doei_2, s3memory3, "De volgende keer gaan we goed oefenen voor de robo spelen").
next(doei_2, s3memory3, "true", s3memory4).

move(doei_2, s3memory4, say).
text(doei_2, s3memory4, "En als het gelukt is, zal ik je van alles over mijn droom vertellen.").
next(doei_2, s3memory4, "true", s4).

move(doei_2, s3control1, say).
text(doei_2, s3control1, "We zijn bijna door onze tijd heen.").
next(doei_2, s3control1, "true", s3control2).

move(doei_2, s3control2, say).
text(doei_2, s3control2, "Het was leuk om met jou te kletsen.").
next(doei_2, s3control2, "true", s4).

move(doei_2, s4, say).
text(doei_2, s4, "Maar nog even over vandaag.").
stop_interaction_probe(doei_2, s4).
next(doei_2, s4, "true", s5).

move(doei_2, s5, question).
moveConfig(doei_2, s5, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(doei_2, s5, "Wat vond je het leukste van ons gesprek vandaag?").
next(doei_2, s5, "success", s6).
next(doei_2, s5, "fail", s6).

move(doei_2, s6, say).
text(doei_2, s6, "Dat was ook leuk!").
next(doei_2, s6, "true", s7).

move(doei_2, s7, say).
text(doei_2, s7, "Dan is het nu echt tijd om doei te zeggen.").
next(doei_2, s7, "true", s8).

move(doei_2, s8, say).
text(doei_2, s8, "Doei %first_name% , tot snel!").

%% doei_1 %%
minidialog(doei_1, [type=functional, function=goodbye]).

move(doei_1, s1, say).
text(doei_1, s1, "Ik vond het leuk om kennis met je te maken, %first_name% ").
next(doei_1, s1, "true", s2).

move(doei_1, s2, question).
moveConfig(doei_1, s2, [type=yesno, context='answer_yesno']).
text(doei_1, s2, "Vond jij het ook leuk").
next(doei_1, s2, "answer_yes", s3ja1).
next(doei_1, s2, "answer_no", s3nee1).
next(doei_1, s2, "answer_dontknow", s3nee1).
next(doei_1, s2, "fail", s3fail1).

move(doei_1, s3ja1, say).
text(doei_1, s3ja1, "Fijn om te horen!").
next(doei_1, s3ja1, "true", s4).

move(doei_1, s3nee1, say).
text(doei_1, s3nee1, "Oh, dan zal ik de volgende keer wat beter mijn best doen.").
next(doei_1, s3nee1, "true", s4).

move(doei_1, s3fail1, say).
text(doei_1, s3fail1, "Mooi").
next(doei_1, s3fail1, "true", s4).

move(doei_1, s4, say).
start_interaction_probe(doei_1, s4).
next(doei_1, s4, "true", s5).

move(doei_1, s5, continuator).
next(doei_1, s5, [[expCondition=memory]], s6memory1).
next(doei_1, s5, [[expCondition=control]], s6control1).
next(doei_1, s5, "true", s7).

move(doei_1, s6memory1, say).
text(doei_1, s6memory1, "Misschien kun je me de volgende keer over een droom vertellen.").
next(doei_1, s6memory1, "true", s6memory2).

move(doei_1, s6memory2, say).
text(doei_1, s6memory2, "Als het je lukt om er eentje te onthouden.").
next(doei_1, s6memory2, "true", s6memory3).

move(doei_1, s6memory3, say).
text(doei_1, s6memory3, "En als ik het durf, dan ga ik me inschrijven voor de robo spelen").
next(doei_1, s6memory3, "true", s7).

move(doei_1, s6control1, say).
text(doei_1, s6control1, "Ben benieuwd waar we het de volgende keer over gaan hebben.").
next(doei_1, s6control1, "true", s7).

move(doei_1, s7, say).
text(doei_1, s7, "Dan is het nu echt tijd om doei te zeggen.").
next(doei_1, s7, "true", s8).

move(doei_1, s8, say).
text(doei_1, s8, "Doei %first_name% , tot snel!").
next(doei_1, s8, "true", s9).

move(doei_1, s9, say).
stop_interaction_probe(doei_1, s9).
next(doei_1, s9, "true", s10).

move(doei_1, s10, say).
audio(doei_1, s10, id, handshake_sound).
anim(doei_1, s10, id, handshake_motion).

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

