%%%% HEADER %%%%
%% draadjesschool %%
minidialog(draadjesschool, [type=chitchat, theme=verschillen_robot_mens, topic=school]).

move(draadjesschool, s1, say).
text(draadjesschool, s1, "Jij leert heel veel dingen op een mensenschool, met allemaal andere kinderen!").
next(draadjesschool, s1, "true", s2).

move(draadjesschool, s2, say).
text(draadjesschool, s2, "Dat lijkt mij superleuk.").
next(draadjesschool, s2, "true", s3).

move(draadjesschool, s3, say).
text(draadjesschool, s3, "Ik ga ook naar een soort robotschool, maar in mijn eentje.").
next(draadjesschool, s3, "true", s4).

move(draadjesschool, s4, say).
text(draadjesschool, s4, "Ik hoef alleen maar stil te zitten.").
next(draadjesschool, s4, "true", s5).

move(draadjesschool, s5, say).
text(draadjesschool, s5, "Zo.").
next(draadjesschool, s5, "true", s6).

move(draadjesschool, s6, say).
text(draadjesschool, s6, "En dan komt alle kennis zo via een draadje mijn achterhoofd in.").
next(draadjesschool, s6, "true", s7).

move(draadjesschool, s7, say).
next(draadjesschool, s7, "true", s8).

move(draadjesschool, s8, question).
moveConfig(draadjesschool, s8, [type=yesno, context='answer_yesno', umVariable=zie_je_gaatje]).
text(draadjesschool, s8, "Zie je het gaatje?").
next(draadjesschool, s8, "answer_yes", s9ja1).
next(draadjesschool, s8, "answer_no", s9nee1).
next(draadjesschool, s8, "answer_dontknow", s9nee1).
next(draadjesschool, s8, "fail", s9nee1).

move(draadjesschool, s9ja1, say).
text(draadjesschool, s9ja1, "Goed!").
next(draadjesschool, s9ja1, "true", s10).

move(draadjesschool, s9nee1, say).
text(draadjesschool, s9nee1, "Het zit hier!").
next(draadjesschool, s9nee1, "true", s10).

move(draadjesschool, s10, say).
text(draadjesschool, s10, "Het is heel handig om via een draadje te leren.").
next(draadjesschool, s10, "true", s11).

move(draadjesschool, s11, say).
text(draadjesschool, s11, "Maar wel een beetje eenzaam.").
next(draadjesschool, s11, "true", s12).

move(draadjesschool, s12, say).
text(draadjesschool, s12, "En soms krijg ik kennis door het draadje die ik niet begrijp.").
next(draadjesschool, s12, "true", s13).

move(draadjesschool, s13, say).
text(draadjesschool, s13, "Zoals: volwassenen kunnen zo lang opblijven als ze willen.").
next(draadjesschool, s13, "true", s14).

move(draadjesschool, s14, say).
text(draadjesschool, s14, "En toch gaan ze soms best vroeg naar bed.").
next(draadjesschool, s14, "true", s15).

move(draadjesschool, s15, question).
moveConfig(draadjesschool, s15, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(draadjesschool, s15, "Vertel me eens, waarom doen volwassenen dat?").
next(draadjesschool, s15, "success", s16).
next(draadjesschool, s15, "fail", s16).

move(draadjesschool, s16, say).
text(draadjesschool, s16, "Wauw!").
next(draadjesschool, s16, "true", s17).

move(draadjesschool, s17, say).
text(draadjesschool, s17, "Wat handig dat ik jou nu allerlei dingen kan vragen!").
next(draadjesschool, s17, "true", s18).

move(draadjesschool, s18, say).
text(draadjesschool, s18, "Ik leer veel liever van mensen dan via mijn draadje.").
next(draadjesschool, s18, "true", s19).

move(draadjesschool, s19, say).
text(draadjesschool, s19, "Zelf ga ik nooit naar bed.").
next(draadjesschool, s19, "true", s20).

move(draadjesschool, s20, say).
text(draadjesschool, s20, "Ik val wel soms uit, maar daar hoef ik niet voor te liggen.").
next(draadjesschool, s20, "true", s21).

move(draadjesschool, s21, say).
text(draadjesschool, s21, "Ik zit gewoon zo, en dan gaat mijn stroom uit").
audio(draadjesschool, s21, server, "resources/sounds/nog_te_zoeken_uit_riedeltje.wav").
next(draadjesschool, s21, "true", s22).

move(draadjesschool, s22, say).
text(draadjesschool, s22, "Maar nu ben ik aan, ik deed maar alsof.").

