%%%% HEADER %%%%
%% draadjesschool %%
minidialog(draadjesschool, [type=chitchat, theme=verschillen_robot_mens, topic=school]).

move(draadjesschool, s1, say).
text(draadjesschool, s1, "Ga zo verder over de robo spelen, maar was ook benieuwd naar jouw school.").
next(draadjesschool, s1, "true", s2).

move(draadjesschool, s2, say).
text(draadjesschool, s2, "Jij leert heel veel dingen op een mensenschool, met allemaal andere kinderen!").
next(draadjesschool, s2, "true", s3).

move(draadjesschool, s3, say).
text(draadjesschool, s3, "Dat lijkt mij superleuk.").
next(draadjesschool, s3, "true", s4).

move(draadjesschool, s4, say).
text(draadjesschool, s4, "Ik ga ook naar een soort robotschool, maar in mijn eentje.").
next(draadjesschool, s4, "true", s5).

move(draadjesschool, s5, say).
text(draadjesschool, s5, "Ik hoef alleen maar stil te zitten.").
next(draadjesschool, s5, "true", s6).

move(draadjesschool, s6, say).
text(draadjesschool, s6, "Zo.").
rest(draadjesschool, s6).
next(draadjesschool, s6, "true", s7).

move(draadjesschool, s7, say).
text(draadjesschool, s7, "En dan komt alle kennis zo via een draadje mijn achterhoofd in.").
next(draadjesschool, s7, "true", s8).

move(draadjesschool, s8, say).
text(draadjesschool, s8, "Even weer staan hoor").
wakeup(draadjesschool, s8).
next(draadjesschool, s8, "true", s9).

move(draadjesschool, s9, say).
text(draadjesschool, s9, "Kijk").
anim(draadjesschool, s9, file, "resources/gestures/point_to_ethernet.json").
next(draadjesschool, s9, "true", s10).

move(draadjesschool, s10, question).
moveConfig(draadjesschool, s10, [type=yesno, context='answer_yesno', umVariable=zie_je_gaatje]).
text(draadjesschool, s10, "Zie je het gaátje?").
next(draadjesschool, s10, "answer_yes", s11ja1).
next(draadjesschool, s10, "answer_no", s11nee1).
next(draadjesschool, s10, "answer_dontknow", s11nee1).
next(draadjesschool, s10, "fail", s11nee1).

move(draadjesschool, s11ja1, say).
text(draadjesschool, s11ja1, "Goed!").
next(draadjesschool, s11ja1, "true", s12).

move(draadjesschool, s11nee1, say).
text(draadjesschool, s11nee1, "Het zit hier!").
next(draadjesschool, s11nee1, "true", s12).

move(draadjesschool, s12, say).
text(draadjesschool, s12, "Het is heel handig om via een draadje te leren.").
go_to_posture(draadjesschool, s12).
next(draadjesschool, s12, "true", s13).

move(draadjesschool, s13, say).
text(draadjesschool, s13, "Maar wel een beetje eenzaam.").
next(draadjesschool, s13, "true", s14).

move(draadjesschool, s14, say).
text(draadjesschool, s14, "En soms krijg ik kennis door het draadje die ik niet begrijp.").
next(draadjesschool, s14, "true", s15).

move(draadjesschool, s15, say).
text(draadjesschool, s15, "Zoals: volwassenen kunnen zo lang opblijven als ze willen.").
next(draadjesschool, s15, "true", s16).

move(draadjesschool, s16, say).
text(draadjesschool, s16, "En toch gaan ze soms best vroeg naar bed.").
next(draadjesschool, s16, "true", s17).

move(draadjesschool, s17, question).
moveConfig(draadjesschool, s17, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_gaan_volwassenen_slapen]).
text(draadjesschool, s17, "Vertel me eens, waarom doen volwassenen dat?").
next(draadjesschool, s17, "success", s18).
next(draadjesschool, s17, "fail", s18).

move(draadjesschool, s18, say).
text(draadjesschool, s18, "Wauw!").
next(draadjesschool, s18, "true", s19).

move(draadjesschool, s19, say).
text(draadjesschool, s19, "Wat handig dat ik jou nu allerlei dingen kan vragen!").
next(draadjesschool, s19, "true", s20).

move(draadjesschool, s20, say).
text(draadjesschool, s20, "Ik leer veel liever van mensen dan via mijn draadje.").
next(draadjesschool, s20, "true", s21).

move(draadjesschool, s21, say).
text(draadjesschool, s21, "Zelf ga ik nooit naar bed.").
next(draadjesschool, s21, "true", s22).

move(draadjesschool, s22, say).
text(draadjesschool, s22, "Ik val wel soms uit, maar daar hoef ik niet voor te liggen.").
next(draadjesschool, s22, "true", s23).

move(draadjesschool, s23, say).
text(draadjesschool, s23, "Ik zit gewoon zo, en dan gaat mijn stroom uit").
audio(draadjesschool, s23, file, "resources/sounds/power_down.wav").
rest(draadjesschool, s23).
next(draadjesschool, s23, "true", s24).

move(draadjesschool, s24, say).
text(draadjesschool, s24, "Maar nu ben ik aan, ik deed maar alsof.").
wakeup(draadjesschool, s24).

