state(hero_kan_dromen, s1, say).
text(hero_kan_dromen, s1, "Trouwens, nu je toch hier bent...").
next(hero_kan_dromen, s1, "true", s2).

state(hero_kan_dromen, s2, say).
text(hero_kan_dromen, s2, "Zal ik jou eens wat bizars vertellen?").
next(hero_kan_dromen, s2, "true", s3).

state(hero_kan_dromen, s3, say).
text(hero_kan_dromen, s3, "Ik kan slapen.").
next(hero_kan_dromen, s3, "true", s4).

state(hero_kan_dromen, s4, say).
text(hero_kan_dromen, s4, "Wist je dat?").
next(hero_kan_dromen, s4, "true", s5).

state(hero_kan_dromen, s5, say).
text(hero_kan_dromen, s5, "Ik sta dan uit om mijn batterij weer op te laden.").
next(hero_kan_dromen, s5, "true", s6).

state(hero_kan_dromen, s6, say).
text(hero_kan_dromen, s6, "Als ik niet op tijd uitgezet wordt om mijn batterij op te laden, ben ik soms zo moe dat ik vanzelf uitval.").
next(hero_kan_dromen, s6, "true", s7).

state(hero_kan_dromen, s7, say).
text(hero_kan_dromen, s7, "Stel je voor, dat je zo moe bent dat je uitvalt.").
next(hero_kan_dromen, s7, "true", s8).

state(hero_kan_dromen, s8, say).
text(hero_kan_dromen, s8, "Ben jij wel eens zomaar uitgevallen? Sorry.").
next(hero_kan_dromen, s8, "true", s9).

state(hero_kan_dromen, s9, say).
text(hero_kan_dromen, s9, "In slaap gevallen zeggen jullie.").
next(hero_kan_dromen, s9, "true", s10).

state(hero_kan_dromen, s10, question).
stateConfig(hero_kan_dromen, s10, [type=yesno, context='answer_yesno']).
text(hero_kan_dromen, s10, "Ben jij wel eens zomaar midden op de dag in slaap gevallen?").
next(hero_kan_dromen, s10, "answer_yes", s11ja1).
next(hero_kan_dromen, s10, "answer_no", s11nee1).
next(hero_kan_dromen, s10, "answer_dontknow", s11yesno1).
next(hero_kan_dromen, s10, "fail", s11yesno1).

state(hero_kan_dromen, s11ja1, say).
text(hero_kan_dromen, s11ja1, "Bizar. Dat heb ik dus ook zo vaak!").
next(hero_kan_dromen, s11ja1, "true", s11yesno1).

state(hero_kan_dromen, s11nee1, say).
text(hero_kan_dromen, s11nee1, "Gelukkig maar.").
next(hero_kan_dromen, s11nee1, "true", s11yesno1).

state(hero_kan_dromen, s11yesno1, say).
text(hero_kan_dromen, s11yesno1, "Ik kan het je ook echt niet aanraden.").
next(hero_kan_dromen, s11yesno1, "true", s12).

state(hero_kan_dromen, s12, say).
text(hero_kan_dromen, s12, "En zal ik je dan nog eens iets bizars vertellen?").
next(hero_kan_dromen, s12, "true", s13).

state(hero_kan_dromen, s13, say).
text(hero_kan_dromen, s13, "Ik bedenk soms hele verhalen wanneer ik niet aansta.").
next(hero_kan_dromen, s13, "true", s14).

state(hero_kan_dromen, s14, say).
text(hero_kan_dromen, s14, "Het lijkt alsof het helemaal vanzelf gebeurt.").
next(hero_kan_dromen, s14, "true", s15).

state(hero_kan_dromen, s15, say).
text(hero_kan_dromen, s15, "En dan word ik opeens weer aangezet.").
next(hero_kan_dromen, s15, "true", s16).

state(hero_kan_dromen, s16, say).
text(hero_kan_dromen, s16, "Dan schrik ik wakker en blijkt het allemaal in mijn hoofd gebeurd te zijn.").
next(hero_kan_dromen, s16, "true", s17).

state(hero_kan_dromen, s17, say).
text(hero_kan_dromen, s17, "Misschien weet je waar ik het over heb.").
next(hero_kan_dromen, s17, "true", s18).

state(hero_kan_dromen, s18, question).
stateConfig(hero_kan_dromen, s18, [type=input, context="hoe_heet_dromen_antwoorden", options=['Dromen', 'dromen'], umVariable=hoe_heet_dromen]).
text(hero_kan_dromen, s18, "Hoe heet dat, wanneer je slaapt en je van alles meemaakt en ineens wordt je wakker?").
next(hero_kan_dromen, s18, "success", s19).
next(hero_kan_dromen, s18, "fail", s19).

state(hero_kan_dromen, s19, say).
text(hero_kan_dromen, s19, "Ik heb het dus even opgezocht op wikipedia.").
next(hero_kan_dromen, s19, "true", s20).

state(hero_kan_dromen, s20, branchingPoint).
state(hero_kan_dromen, s20, [branchDecider=entity, branchSource=hoe_heet_dromen]).
next(hero_kan_dromen, s20, "success", s21goed1).
next(hero_kan_dromen, s20, "fail", s21fout1).

state(hero_kan_dromen, s21fout1, say).
text(hero_kan_dromen, s21fout1, "Dit heet dromen!").
next(hero_kan_dromen, s21fout1, "true", s22).

state(hero_kan_dromen, s21goed1, say).
text(hero_kan_dromen, s21goed1, "Inderdaad dromen. Bizar.").
next(hero_kan_dromen, s21goed1, "true", s22).

state(hero_kan_dromen, s22, say).
text(hero_kan_dromen, s22, "Een droom.").
next(hero_kan_dromen, s22, "true", s23).

state(hero_kan_dromen, s23, question).
stateConfig(hero_kan_dromen, s23, [type=yesno, context='answer_yesno']).
text(hero_kan_dromen, s23, "Herinner jij je laatste droom nog?").
next(hero_kan_dromen, s23, "answer_yes", s24ja1).
next(hero_kan_dromen, s23, "answer_no", s24nee1).
next(hero_kan_dromen, s23, "answer_dontknow", s24nee1).
next(hero_kan_dromen, s23, "fail", s24nee1).

state(hero_kan_dromen, s24ja1, question).
stateConfig(hero_kan_dromen, s24ja1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(hero_kan_dromen, s24ja1, "Waar ging die dan over?").
next(hero_kan_dromen, s24ja1, "success", s24ja2).
next(hero_kan_dromen, s24ja1, "fail", s24ja2).

state(hero_kan_dromen, s24ja2, say).
text(hero_kan_dromen, s24ja2, "Dat is heel wat zeg!").

state(hero_kan_dromen, s24nee1, say).
text(hero_kan_dromen, s24nee1, "Dat heb ik ook soms!").
next(hero_kan_dromen, s24nee1, "true", s24nee2).

state(hero_kan_dromen, s24nee2, say).
text(hero_kan_dromen, s24nee2, "Dan droom je iets en daarna is het weg!").

