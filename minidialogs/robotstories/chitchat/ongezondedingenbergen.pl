%%%% HEADER %%%%
%% ongezondedingenbergen %%
minidialog(ongezondedingenbergen, [type=chitchat, theme=personalia, topic=ongezonde_dingen]).

move(ongezondedingenbergen, s1, say).
text(ongezondedingenbergen, s1, "Trouwens %first_name% ").
next(ongezondedingenbergen, s1, "true", s2).

move(ongezondedingenbergen, s2, say).
text(ongezondedingenbergen, s2, "ik dagdroomde voor je kwam over later.").
next(ongezondedingenbergen, s2, "true", s3).

move(ongezondedingenbergen, s3, say).
text(ongezondedingenbergen, s3, "Later ben ik een heel handige robot, dankzij jou!").
next(ongezondedingenbergen, s3, "true", s4).

move(ongezondedingenbergen, s4, say).
text(ongezondedingenbergen, s4, "En toen had ik ineens een leuk idee!").
next(ongezondedingenbergen, s4, "true", s5).

move(ongezondedingenbergen, s5, say).
text(ongezondedingenbergen, s5, "Stel nou dat er een wedstrijd was...").
next(ongezondedingenbergen, s5, "true", s6).

move(ongezondedingenbergen, s6, say).
text(ongezondedingenbergen, s6, "En de prijzen waren bergen ijs, chocola, koekjes, snoep, of chips.").
next(ongezondedingenbergen, s6, "true", s7).

move(ongezondedingenbergen, s7, say).
text(ongezondedingenbergen, s7, "Welke berg zou jij dan het liefste willen winnen?").
next(ongezondedingenbergen, s7, "true", s8).

move(ongezondedingenbergen, s8, question).
moveConfig(ongezondedingenbergen, s8, [type=input, context="food", options=['ijs', 'chocola', 'koekjes', 'snoep', 'chips'], umVariable=ongezonde_dingen_bergen]).
text(ongezondedingenbergen, s8, "Een berg ijs, een berg chocola, een berg koekjes, een berg snoep, of een berg chips?").
next(ongezondedingenbergen, s8, "ijs", s9keuze_gemaakt1).
next(ongezondedingenbergen, s8, "chocola", s9keuze_gemaakt1).
next(ongezondedingenbergen, s8, "koekjes", s9keuze_gemaakt1).
next(ongezondedingenbergen, s8, "snoep", s9keuze_gemaakt1).
next(ongezondedingenbergen, s8, "chips", s9keuze_gemaakt1).
next(ongezondedingenbergen, s8, "_others", s9keuze_gemaakt1).
next(ongezondedingenbergen, s8, "fail", s9fail_ongezonde_dingen_bergen1).

move(ongezondedingenbergen, s9keuze_gemaakt1, say).
text(ongezondedingenbergen, s9keuze_gemaakt1, "Een berg %ongezonde_dingen_bergen%, dat zal ik onthouden!").
next(ongezondedingenbergen, s9keuze_gemaakt1, "true", s9keuze_gemaakt2).

move(ongezondedingenbergen, s9keuze_gemaakt2, say).
text(ongezondedingenbergen, s9keuze_gemaakt2, "Want ik dacht ineens: %first_name%  helpt mij zo goed!").
next(ongezondedingenbergen, s9keuze_gemaakt2, "true", s10).

move(ongezondedingenbergen, s9fail_ongezonde_dingen_bergen1, say).
text(ongezondedingenbergen, s9fail_ongezonde_dingen_bergen1, "Ik vind het ook moeilijk kiezen!").
next(ongezondedingenbergen, s9fail_ongezonde_dingen_bergen1, "true", s9fail_ongezonde_dingen_bergen2).

move(ongezondedingenbergen, s9fail_ongezonde_dingen_bergen2, say).
text(ongezondedingenbergen, s9fail_ongezonde_dingen_bergen2, "Ik vroeg het voor mijn idee.").
next(ongezondedingenbergen, s9fail_ongezonde_dingen_bergen2, "true", s10).

move(ongezondedingenbergen, s10, say).
text(ongezondedingenbergen, s10, "Als ik later een heel handige robot ben").
next(ongezondedingenbergen, s10, "true", s11).

move(ongezondedingenbergen, s11, say).
text(ongezondedingenbergen, s11, "Misschien kan ik dan wel zelf de RoboSpelen organiseren!").
next(ongezondedingenbergen, s11, "true", s12).

move(ongezondedingenbergen, s12, say).
text(ongezondedingenbergen, s12, "Ik zou het dan veranderen naar een RoboSpelen voor samenwerkingen tussen robots en kinderen!").
next(ongezondedingenbergen, s12, "true", s13).

move(ongezondedingenbergen, s13, say).
text(ongezondedingenbergen, s13, "Alleen heb jij niks aan een supergrote geheugenkaart natuurlijk.").
next(ongezondedingenbergen, s13, "true", s14).

move(ongezondedingenbergen, s14, say).
text(ongezondedingenbergen, s14, "Dus wilde ik alvast voor jou een andere prijs verzinnen!").
next(ongezondedingenbergen, s14, "true", s15).

move(ongezondedingenbergen, s15, question).
moveConfig(ongezondedingenbergen, s15, [type=yesno, context='answer_yesno', umVariable=goede_prijs]).
text(ongezondedingenbergen, s15, "Vind je dat de leukste prijs, zo'n hele berg?").
next(ongezondedingenbergen, s15, "answer_yes", s16goede_prijs1).
next(ongezondedingenbergen, s15, "answer_no", s16niet_goede_prijs1).
next(ongezondedingenbergen, s15, "fail", s16niet_goede_prijs1).
next(ongezondedingenbergen, s15, "answer_dontknow", s16niet_goede_prijs1).

move(ongezondedingenbergen, s16goede_prijs1, say).
text(ongezondedingenbergen, s16goede_prijs1, "Gelukkig maar!").
next(ongezondedingenbergen, s16goede_prijs1, "true", s16goede_prijs2).

move(ongezondedingenbergen, s16goede_prijs2, say).
text(ongezondedingenbergen, s16goede_prijs2, "Dan zal ik dit goed onthouden voor later.").

move(ongezondedingenbergen, s16niet_goede_prijs1, say).
text(ongezondedingenbergen, s16niet_goede_prijs1, "Aha!").
next(ongezondedingenbergen, s16niet_goede_prijs1, "true", s16niet_goede_prijs2).

move(ongezondedingenbergen, s16niet_goede_prijs2, say).
text(ongezondedingenbergen, s16niet_goede_prijs2, "Dan is het maar goed dat we het er nu al over hebben.").
next(ongezondedingenbergen, s16niet_goede_prijs2, "true", s16niet_goede_prijs3).

move(ongezondedingenbergen, s16niet_goede_prijs3, question).
moveConfig(ongezondedingenbergen, s16niet_goede_prijs3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ongezondedingenbergen, s16niet_goede_prijs3, "Wat zou je dan liever willen hebben?").
next(ongezondedingenbergen, s16niet_goede_prijs3, "success", s16got_prijs1).
next(ongezondedingenbergen, s16niet_goede_prijs3, "failure", s16got_no_prijs1).

move(ongezondedingenbergen, s16got_prijs1, say).
text(ongezondedingenbergen, s16got_prijs1, "Bizar!").
next(ongezondedingenbergen, s16got_prijs1, "true", s16got_prijs2).

move(ongezondedingenbergen, s16got_prijs2, say).
text(ongezondedingenbergen, s16got_prijs2, "Wat een super idee!").
next(ongezondedingenbergen, s16got_prijs2, "true", s16got_prijs3).

move(ongezondedingenbergen, s16got_prijs3, say).
text(ongezondedingenbergen, s16got_prijs3, "Dat ga ik meteen opslaan voor later!").
next(ongezondedingenbergen, s16got_prijs3, "true", s16got_prijs4).

move(ongezondedingenbergen, s16got_prijs4, say).
text(ongezondedingenbergen, s16got_prijs4, "Opslaan... Opslaan...").
next(ongezondedingenbergen, s16got_prijs4, "true", s16got_prijs5).

move(ongezondedingenbergen, s16got_prijs5, say).
text(ongezondedingenbergen, s16got_prijs5, "Dankjewel %first_name% !").

move(ongezondedingenbergen, s16got_no_prijs1, say).
text(ongezondedingenbergen, s16got_no_prijs1, "Ik vind het ook moeilijk").
next(ongezondedingenbergen, s16got_no_prijs1, "true", s16got_no_prijs2).

move(ongezondedingenbergen, s16got_no_prijs2, say).
text(ongezondedingenbergen, s16got_no_prijs2, "Het duurt denk ik nog best heel lang").
next(ongezondedingenbergen, s16got_no_prijs2, "true", s16got_no_prijs3).

move(ongezondedingenbergen, s16got_no_prijs3, say).
text(ongezondedingenbergen, s16got_no_prijs3, "voor ik de Robospelen mag organiseren").
next(ongezondedingenbergen, s16got_no_prijs3, "true", s16got_no_prijs4).

move(ongezondedingenbergen, s16got_no_prijs4, say).
text(ongezondedingenbergen, s16got_no_prijs4, "Dus je kan er nog een paar jaar over nadenken!").

