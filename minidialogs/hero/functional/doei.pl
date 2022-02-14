%%%% HEADER %%%%
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

%% doei_3 %%
minidialog(doei_3, [type=functional, function=goodbye]).

move(doei_3, s1, say).
start_interaction_probe(doei_3, s1).
next(doei_3, s1, "true", s2).

move(doei_3, s2, continuator).
next(doei_3, s2, [[expCondition=memory]], s3memory1).
next(doei_3, s2, [[expCondition=control]], s3control1).
next(doei_3, s2, "true", s4).

move(doei_3, s3memory1, say).
text(doei_3, s3memory1, "We zijn bijna weer door onze tijd heen voor vandaag, %first_name% ").
next(doei_3, s3memory1, "true", s3memory2).

move(doei_3, s3memory2, say).
text(doei_3, s3memory2, "Zo blij dat ik te weten ben gekomen dat je van %lievelingseten_met_p% houd").
next(doei_3, s3memory2, "true", s3memory3).

move(doei_3, s3memory3, say).
text(doei_3, s3memory3, "En dat %lievelingskleur% je lievelingskleur is.").
next(doei_3, s3memory3, "true", s3memory4).

move(doei_3, s3memory4, say).
text(doei_3, s3memory4, "De volgende keer gaan we een yell maken voor de robospelen, zin in!").
next(doei_3, s3memory4, "true", s4).

move(doei_3, s3control1, say).
text(doei_3, s3control1, "We zijn bijna door onze tijd heen.").
next(doei_3, s3control1, "true", s3control2).

move(doei_3, s3control2, say).
text(doei_3, s3control2, "Het was leuk om met jou te kletsen.").
next(doei_3, s3control2, "true", s3control3).

move(doei_3, s3control3, say).
text(doei_3, s3control3, "Leuk dat ik weer zo veel over je te weten ben gekomen.").
next(doei_3, s3control3, "true", s3control4).

move(doei_3, s3control4, say).
text(doei_3, s3control4, "Volgende keer weer verder.").
next(doei_3, s3control4, "true", s4).

move(doei_3, s4, say).
text(doei_3, s4, "Maar nog even over vandaag.").
next(doei_3, s4, "true", s5).

move(doei_3, s5, question).
moveConfig(doei_3, s5, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(doei_3, s5, "Wat vond je het leukste van ons gesprek vandaag?").
next(doei_3, s5, "success", s6).
next(doei_3, s5, "fail", s6).

move(doei_3, s6, say).
text(doei_3, s6, "Dat was ook leuk!").
next(doei_3, s6, "true", s7).

move(doei_3, s7, say).
text(doei_3, s7, "Dan is het nu echt tijd om doei te zeggen.").
next(doei_3, s7, "true", s8).

move(doei_3, s8, say).
text(doei_3, s8, "Doei %first_name% , tot snel!").
next(doei_3, s8, "true", s9).

move(doei_3, s9, continuator).
next(doei_3, s9, [[expCondition=memory]], s10memory1).
next(doei_3, s9, [[expCondition=control]], s10control1).
next(doei_3, s9, "true", s11).

move(doei_3, s10control1, say).
anim(doei_3, s10control1, file, "resources/gestures/wave1.json").
next(doei_3, s10control1, "true", s11).

move(doei_3, s10memory1, say).
audio(doei_3, s10memory1, id, handshake_sound).
anim(doei_3, s10memory1, id, handshake_motion).
next(doei_3, s10memory1, "true", s11).

move(doei_3, s11, say).
stop_interaction_probe(doei_3, s11).

%% doei_4 %%
minidialog(doei_4, [type=functional, function=goodbye]).

move(doei_4, s1, continuator).
next(doei_4, s1, [[expCondition=memory]], s2memory1).
next(doei_4, s1, [[expCondition=control]], s2control1).
next(doei_4, s1, "true", s3).

move(doei_4, s2memory1, say).
text(doei_4, s2memory1, "We zijn bijna weer door onze tijd heen voor vandaag, %first_name% ").
next(doei_4, s2memory1, "true", s2memory2).

move(doei_4, s2memory2, say).
text(doei_4, s2memory2, "Zo leuk dat we het nog even over jouw lievelings eten %lievelingseten_met_p% konden hebben").
next(doei_4, s2memory2, "true", s2memory3).

move(doei_4, s2memory3, say).
text(doei_4, s2memory3, "Ik ga vanavond het youtube filmpje over de %onderwerp_youtubevideo% kijken, ik kom er de volgende keer op terug.").
next(doei_4, s2memory3, "true", s2memory4).

move(doei_4, s2memory4, say).
text(doei_4, s2memory4, "Ik zal je dan ook alles vertellen over hoe de robo spelen zijn afgelopen.").
next(doei_4, s2memory4, "true", s3).

move(doei_4, s2control1, say).
text(doei_4, s2control1, "We zijn bijna door onze tijd heen.").
next(doei_4, s2control1, "true", s2control2).

move(doei_4, s2control2, say).
text(doei_4, s2control2, "Het was leuk om met jou te kletsen.").
next(doei_4, s2control2, "true", s2control3).

move(doei_4, s2control3, say).
text(doei_4, s2control3, "Volgende keer weer verder.").
next(doei_4, s2control3, "true", s3).

move(doei_4, s3, say).
text(doei_4, s3, "Maar nog even over vandaag.").
next(doei_4, s3, "true", s4).

move(doei_4, s4, question).
moveConfig(doei_4, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(doei_4, s4, "Wat vond je het leukste van ons gesprek vandaag?").
next(doei_4, s4, "success", s5).
next(doei_4, s4, "fail", s5).

move(doei_4, s5, say).
text(doei_4, s5, "Dat was ook leuk!").
next(doei_4, s5, "true", s6).

move(doei_4, s6, say).
text(doei_4, s6, "Dan is het nu echt tijd om doei te zeggen.").
next(doei_4, s6, "true", s7).

move(doei_4, s7, say).
text(doei_4, s7, "Doei %first_name% , tot snel!").
next(doei_4, s7, "true", s8).

move(doei_4, s8, continuator).
next(doei_4, s8, [[expCondition=memory]], s9memory1).
next(doei_4, s8, [[expCondition=control]], s9control1).

move(doei_4, s9control1, say).
anim(doei_4, s9control1, file, "resources/gestures/wave1.json").

move(doei_4, s9memory1, say).
audio(doei_4, s9memory1, id, handshake_sound).
anim(doei_4, s9memory1, id, handshake_motion).

%% doei_5 %%
minidialog(doei_5, [type=functional, function=goodbye]).

move(doei_5, s1, say).
text(doei_5, s1, "Zo %first_name% , nu zijn we echt bijna bij het einde gekomen.").
next(doei_5, s1, "true", s2).

move(doei_5, s2, say).
text(doei_5, s2, "Dit is voorlopig de laatste keer dat we elkaar spreken").
next(doei_5, s2, "true", s3).

move(doei_5, s3, say).
text(doei_5, s3, "Ik wil je graag bedanken voor onze fijne gesprekken").
start_interaction_probe(doei_5, s3).
next(doei_5, s3, "true", s4).

move(doei_5, s4, continuator).
next(doei_5, s4, [[expCondition=memory]], s5memory1).
next(doei_5, s4, [[expCondition=control]], s5control1).
next(doei_5, s4, "true", s6).

move(doei_5, s5memory1, say).
text(doei_5, s5memory1, "Ik wens je veel success op school en met je missie om %beroep_van_kind% te worden.").
next(doei_5, s5memory1, "true", s5memory2).

move(doei_5, s5memory2, say).
text(doei_5, s5memory2, "Wie weet dat de volgende keer dat je me ziet dat ik een %kledingstuk% in het %kleur_kledingstuk% draag").
next(doei_5, s5memory2, "true", s5memory3).

move(doei_5, s5memory3, say).
text(doei_5, s5memory3, "En dat we samen %lievelingseten_met_p% kunnen eten. Jij de mensen variant en ik de robot variant.").
next(doei_5, s5memory3, "true", s5memory4).

move(doei_5, s5memory4, say).
stop_interaction_probe(doei_5, s5memory4).
next(doei_5, s5memory4, "true", s6).

move(doei_5, s5control1, say).
text(doei_5, s5control1, "Ik wens je veel success op school.").
next(doei_5, s5control1, "true", s5control2).

move(doei_5, s5control2, say).
text(doei_5, s5control2, "Wie weet komen we elkaar nog eens tegen.").
next(doei_5, s5control2, "true", s5control3).

move(doei_5, s5control3, say).
text(doei_5, s5control3, "En ik wens je ook een fijne zomer toe!").
next(doei_5, s5control3, "true", s5control4).

move(doei_5, s5control4, say).
stop_interaction_probe(doei_5, s5control4).
next(doei_5, s5control4, "true", s6).

move(doei_5, s6, question).
moveConfig(doei_5, s6, [type=yesno, context='answer_yesno']).
text(doei_5, s6, "Wil je nog wat tegen mij zeggen?").
next(doei_5, s6, "answer_yes", s7ja1).
next(doei_5, s6, "answer_no", s7nee1).
next(doei_5, s6, "answer_dontknow", s7nee1).
next(doei_5, s6, "fail", s7nee1).

move(doei_5, s7ja1, question).
moveConfig(doei_5, s7ja1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(doei_5, s7ja1, "Vertel maar, ik luister.").
next(doei_5, s7ja1, "success", s7ja2).
next(doei_5, s7ja1, "fail", s7ja2).

move(doei_5, s7ja2, say).
text(doei_5, s7ja2, "Wat fijn om van je te horen, %first_name% ").
next(doei_5, s7ja2, "true", s8).

move(doei_5, s7nee1, say).
text(doei_5, s7nee1, "Helemaal prima.").
next(doei_5, s7nee1, "true", s8).

move(doei_5, s8, say).
text(doei_5, s8, "Dan is het nu echt tijd om doei te zeggen.").
next(doei_5, s8, "true", s9).

move(doei_5, s9, continuator).
next(doei_5, s9, [[expCondition=memory]], s10memory1).
next(doei_5, s9, [[expCondition=control]], s10control1).
next(doei_5, s9, "true", s11).

move(doei_5, s10control1, say).
text(doei_5, s10control1, "Dan is dit de laatste keer dat ik naar je zwaai.").
anim(doei_5, s10control1, file, "resources/gestures/wave1.json").
next(doei_5, s10control1, "true", s11).

move(doei_5, s10memory1, say).
text(doei_5, s10memory1, "Dan is dit de laatste keer dat we onze geheimde handdruk kunnden doen.").
next(doei_5, s10memory1, "true", s10memory2).

move(doei_5, s10memory2, say).
audio(doei_5, s10memory2, id, handshake_sound).
anim(doei_5, s10memory2, id, handshake_motion).
next(doei_5, s10memory2, "true", s11).

move(doei_5, s11, say).
text(doei_5, s11, "Doei %first_name% ").
next(doei_5, s11, "true", s12).

move(doei_5, s12, say).
text(doei_5, s12, "Het ga je goed!").

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

%% demo_doei_1 %%
minidialog(demo_doei_1, [type=functional, function=goodbye]).

move(demo_doei_1, s1, say).
text(demo_doei_1, s1, "Ik vond het leuk om kennis met je te maken, %first_name% ").
next(demo_doei_1, s1, "true", s2).

move(demo_doei_1, s2, question).
moveConfig(demo_doei_1, s2, [type=yesno, context='answer_yesno']).
text(demo_doei_1, s2, "Vond jij het ook leuk").
next(demo_doei_1, s2, "answer_yes", s3ja1).
next(demo_doei_1, s2, "answer_no", s3nee1).
next(demo_doei_1, s2, "answer_dontknow", s3nee1).
next(demo_doei_1, s2, "fail", s3fail1).

move(demo_doei_1, s3ja1, say).
text(demo_doei_1, s3ja1, "Fijn om te horen!").
next(demo_doei_1, s3ja1, "true", s5).

move(demo_doei_1, s3nee1, say).
text(demo_doei_1, s3nee1, "Oh, dan zal ik de volgende keer wat beter mijn best doen.").
next(demo_doei_1, s3nee1, "true", s5).

move(demo_doei_1, s3fail1, say).
text(demo_doei_1, s3fail1, "Mooi").
next(demo_doei_1, s3fail1, "true", s5).

move(demo_doei_1, s5, continuator).
next(demo_doei_1, s5, [[expCondition=memory]], s6memory1).
next(demo_doei_1, s5, [[expCondition=control]], s6control1).
next(demo_doei_1, s5, "true", s7).

move(demo_doei_1, s6memory1, say).
text(demo_doei_1, s6memory1, "Misschien kun je me de volgende keer helpen met het %leukste_onderdeel% onderdeel van de Robo spelen.").
next(demo_doei_1, s6memory1, "true", s7).

move(demo_doei_1, s6control1, say).
text(demo_doei_1, s6control1, "Ben benieuwd waar we het de volgende keer over gaan hebben.").
next(demo_doei_1, s6control1, "true", s7).

move(demo_doei_1, s7, say).
text(demo_doei_1, s7, "Dan is het nu echt tijd om doei te zeggen.").
next(demo_doei_1, s7, "true", s8).

move(demo_doei_1, s8, say).
text(demo_doei_1, s8, "Doei %first_name% , tot snel!").
next(demo_doei_1, s8, "true", s10).

move(demo_doei_1, s10, say).
audio(demo_doei_1, s10, id, handshake_sound).
anim(demo_doei_1, s10, id, handshake_motion).

