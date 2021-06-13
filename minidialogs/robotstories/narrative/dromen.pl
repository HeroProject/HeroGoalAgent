%%%% HEADER %%%%
%% hero_kan_dromen %%
minidialog(hero_kan_dromen, [type=narrative, thread=dromen, position=1]).

move(hero_kan_dromen, s1, say).
text(hero_kan_dromen, s1, "Trouwens, nu je toch hier bent.").
next(hero_kan_dromen, s1, "true", s2).

move(hero_kan_dromen, s2, say).
text(hero_kan_dromen, s2, "Zal ik jou eens wat bizars vertellen?").
next(hero_kan_dromen, s2, "true", s3).

move(hero_kan_dromen, s3, say).
text(hero_kan_dromen, s3, "Ik kan slapen.").
next(hero_kan_dromen, s3, "true", s4).

move(hero_kan_dromen, s4, say).
text(hero_kan_dromen, s4, "Wist je dat?").
next(hero_kan_dromen, s4, "true", s5).

move(hero_kan_dromen, s5, say).
text(hero_kan_dromen, s5, "Ik sta dan uit om mijn batterij weer op te laden.").
next(hero_kan_dromen, s5, "true", s6).

move(hero_kan_dromen, s6, say).
text(hero_kan_dromen, s6, "Als ik niet op tijd uitgezet wordt om mijn batterij op te laden, ben ik soms zo moe dat ik vanzelf uitval.").
next(hero_kan_dromen, s6, "true", s7).

move(hero_kan_dromen, s7, say).
text(hero_kan_dromen, s7, "Stel je voor, dat je zo moe bent dat je uitvalt.").
next(hero_kan_dromen, s7, "true", s8).

move(hero_kan_dromen, s8, say).
text(hero_kan_dromen, s8, "Ben jij wel eens zomaar uitgevallen? Sorry.").
next(hero_kan_dromen, s8, "true", s9).

move(hero_kan_dromen, s9, say).
text(hero_kan_dromen, s9, "In slaap gevallen zeggen jullie.").
next(hero_kan_dromen, s9, "true", s10).

move(hero_kan_dromen, s10, question).
moveConfig(hero_kan_dromen, s10, [type=yesno, context='answer_yesno', umVariable=zomaar_in_slaap_gevallen]).
text(hero_kan_dromen, s10, "Ben jij wel eens zomaar midden op de dag in slaap gevallen?").
next(hero_kan_dromen, s10, "answer_yes", s11ja1).
next(hero_kan_dromen, s10, "answer_no", s11nee1).
next(hero_kan_dromen, s10, "answer_dontknow", s11yesno1).
next(hero_kan_dromen, s10, "fail", s11yesno1).

move(hero_kan_dromen, s11ja1, say).
text(hero_kan_dromen, s11ja1, "Bizar. Dat heb ik dus ook zo vaak!").
next(hero_kan_dromen, s11ja1, "true", s11yesno1).

move(hero_kan_dromen, s11nee1, say).
text(hero_kan_dromen, s11nee1, "Gelukkig maar.").
next(hero_kan_dromen, s11nee1, "true", s11yesno1).

move(hero_kan_dromen, s11yesno1, say).
text(hero_kan_dromen, s11yesno1, "Ik kan het je ook echt niet aanraden.").
next(hero_kan_dromen, s11yesno1, "true", s12).

move(hero_kan_dromen, s12, say).
text(hero_kan_dromen, s12, "En zal ik je dan nog eens iets bizars vertellen?").
next(hero_kan_dromen, s12, "true", s13).

move(hero_kan_dromen, s13, say).
text(hero_kan_dromen, s13, "Ik bedenk soms hele verhalen wanneer ik niet aansta.").
next(hero_kan_dromen, s13, "true", s14).

move(hero_kan_dromen, s14, say).
text(hero_kan_dromen, s14, "Het lijkt alsof het helemaal vanzelf gebeurt.").
next(hero_kan_dromen, s14, "true", s15).

move(hero_kan_dromen, s15, say).
text(hero_kan_dromen, s15, "En dan word ik opeens weer aangezet.").
next(hero_kan_dromen, s15, "true", s16).

move(hero_kan_dromen, s16, say).
text(hero_kan_dromen, s16, "Dan schrik ik wakker en blijkt het allemaal in mijn hoofd gebeurd te zijn.").
next(hero_kan_dromen, s16, "true", s17).

move(hero_kan_dromen, s17, say).
text(hero_kan_dromen, s17, "Misschien weet je waar ik het over heb.").
next(hero_kan_dromen, s17, "true", s18).

move(hero_kan_dromen, s18, question).
moveConfig(hero_kan_dromen, s18, [type=input, context="dromen_hoe_heet_dromen", options=['Dromen'], fast=yes, umVariable=hoe_heet_dromen]).
text(hero_kan_dromen, s18, "Hoe heet dat, wanneer je slaapt en je van alles meemaakt en ineens wordt je wakker?").
next(hero_kan_dromen, s18, "success", s19).
next(hero_kan_dromen, s18, "fail", s19).

move(hero_kan_dromen, s19, say).
text(hero_kan_dromen, s19, "Ik heb het dus even opgezocht op wikipedia.").
next(hero_kan_dromen, s19, "true", s20).

move(hero_kan_dromen, s20, branchingPoint, hoe_heet_dromen).
next(hero_kan_dromen, s20, "success", s21goed1).
next(hero_kan_dromen, s20, "fail", s21fout1).

move(hero_kan_dromen, s21fout1, say).
text(hero_kan_dromen, s21fout1, "Dit heet dromen!").
next(hero_kan_dromen, s21fout1, "true", s22).

move(hero_kan_dromen, s21goed1, say).
text(hero_kan_dromen, s21goed1, "Inderdaad dromen. Bizar.").
next(hero_kan_dromen, s21goed1, "true", s22).

move(hero_kan_dromen, s22, say).
text(hero_kan_dromen, s22, "Een droom.").
start_interaction_probe(hero_kan_dromen, s22).
next(hero_kan_dromen, s22, "true", s23).

move(hero_kan_dromen, s23, question).
moveConfig(hero_kan_dromen, s23, [type=yesno, context='answer_yesno', umVariable=herinnering_van_droom]).
text(hero_kan_dromen, s23, "Herinner jij nog een van je dromen, %first_name% ?").
next(hero_kan_dromen, s23, "answer_yes", s24ja1).
next(hero_kan_dromen, s23, "answer_no", s24nee1).
next(hero_kan_dromen, s23, "answer_dontknow", s24nee1).
next(hero_kan_dromen, s23, "fail", s24nee1).

move(hero_kan_dromen, s24ja1, question).
moveConfig(hero_kan_dromen, s24ja1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(hero_kan_dromen, s24ja1, "Waar ging die dan over?").
next(hero_kan_dromen, s24ja1, "success", s24ja2).
next(hero_kan_dromen, s24ja1, "fail", s24ja2).

move(hero_kan_dromen, s24ja2, say).
text(hero_kan_dromen, s24ja2, "Dat is heel wat zeg!").
stop_interaction_probe(hero_kan_dromen, s24ja2).

move(hero_kan_dromen, s24nee1, say).
text(hero_kan_dromen, s24nee1, "Dat heb ik ook soms!").
next(hero_kan_dromen, s24nee1, "true", s24nee2).

move(hero_kan_dromen, s24nee2, say).
text(hero_kan_dromen, s24nee2, "Dan droom je iets en daarna is het weg!").
stop_interaction_probe(hero_kan_dromen, s24nee2).

%% droom_op_bestelling %%
minidialog(droom_op_bestelling, [type=narrative, thread=dromen, position=2]).

move(droom_op_bestelling, s1, say).
text(droom_op_bestelling, s1, "Weet je wat gek is?").
next(droom_op_bestelling, s1, "true", s2).

move(droom_op_bestelling, s2, say).
text(droom_op_bestelling, s2, "Vannacht toen ik uit stond").
next(droom_op_bestelling, s2, "true", s3).

move(droom_op_bestelling, s3, say).
text(droom_op_bestelling, s3, "Geen stroom kreeg en geen licht gaf").
next(droom_op_bestelling, s3, "true", s4).

move(droom_op_bestelling, s4, say).
text(droom_op_bestelling, s4, "Leek het alsof ik ergens was").
next(droom_op_bestelling, s4, "true", s5).

move(droom_op_bestelling, s5, say).
text(droom_op_bestelling, s5, "Waar ik nog nooit eerder was").
next(droom_op_bestelling, s5, "true", s6).

move(droom_op_bestelling, s6, say).
text(droom_op_bestelling, s6, "Maar ik was er wel in mijn hoofd").
next(droom_op_bestelling, s6, "true", s7).

move(droom_op_bestelling, s7, say).
text(droom_op_bestelling, s7, "Ik droomde dat ik op een leeg grasveld stond").
next(droom_op_bestelling, s7, "true", s8).

move(droom_op_bestelling, s8, say).
text(droom_op_bestelling, s8, "Ik droomde wel maar er gebeurde niets").
next(droom_op_bestelling, s8, "true", s9).

move(droom_op_bestelling, s9, say).
text(droom_op_bestelling, s9, "Ik zou graag willen dat er iets zou gebeuren").
next(droom_op_bestelling, s9, "true", s10).

move(droom_op_bestelling, s10, say).
text(droom_op_bestelling, s10, "Misschien kan jij mij helpen een keer te dromen").
next(droom_op_bestelling, s10, "true", s11).

move(droom_op_bestelling, s11, say).
text(droom_op_bestelling, s11, "Zodat wanneer ik slaap").
next(droom_op_bestelling, s11, "true", s12).

move(droom_op_bestelling, s12, say).
text(droom_op_bestelling, s12, "Ik echt een keer iets meemaak").
next(droom_op_bestelling, s12, "true", s13).

move(droom_op_bestelling, s13, continuator).
next(droom_op_bestelling, s13, [[umVariable=herinnering_van_droom, filter=green, values=["answer_yes"]], [expCondition=memory]], s14herinnert_droom1).
next(droom_op_bestelling, s13, [[expCondition=memory]], s14herinnert_geen_droom1).
next(droom_op_bestelling, s13, [[expCondition=control]], s14control1).
next(droom_op_bestelling, s13, "true", s15).

move(droom_op_bestelling, s14control1, question).
moveConfig(droom_op_bestelling, s14control1, [type=yesno, context='answer_yesno']).
text(droom_op_bestelling, s14control1, "Wil je me een droom vertellen?").
next(droom_op_bestelling, s14control1, "answer_yes", s14vraag_droom1).
next(droom_op_bestelling, s14control1, "answer_no", s14got_no_droom1).
next(droom_op_bestelling, s14control1, "answer_dontknow", s14got_no_droom1).
next(droom_op_bestelling, s14control1, "fail", s14got_no_droom1).

move(droom_op_bestelling, s14herinnert_droom1, say).
text(droom_op_bestelling, s14herinnert_droom1, "Vorige week, zei je dat je wel eens dromen onthield").
next(droom_op_bestelling, s14herinnert_droom1, "true", s14herinnert_droom2).

move(droom_op_bestelling, s14herinnert_droom2, question).
moveConfig(droom_op_bestelling, s14herinnert_droom2, [type=yesno, context='answer_yesno']).
text(droom_op_bestelling, s14herinnert_droom2, "Wil je me nog een droom vertellen?").
next(droom_op_bestelling, s14herinnert_droom2, "answer_yes", s14vraag_droom1).
next(droom_op_bestelling, s14herinnert_droom2, "answer_no", s14got_no_droom1).
next(droom_op_bestelling, s14herinnert_droom2, "answer_dontknow", s14got_no_droom1).
next(droom_op_bestelling, s14herinnert_droom2, "fail", s14got_no_droom1).

move(droom_op_bestelling, s14herinnert_geen_droom1, say).
text(droom_op_bestelling, s14herinnert_geen_droom1, "Vorige week, zei je dat je eigenlijk geen dromen onthield").
next(droom_op_bestelling, s14herinnert_geen_droom1, "true", s14herinnert_geen_droom2).

move(droom_op_bestelling, s14herinnert_geen_droom2, question).
moveConfig(droom_op_bestelling, s14herinnert_geen_droom2, [type=yesno, context='answer_yesno']).
text(droom_op_bestelling, s14herinnert_geen_droom2, "Is dat deze week wel een keertje gelukt?").
next(droom_op_bestelling, s14herinnert_geen_droom2, "answer_yes", s14vraag_droom1).
next(droom_op_bestelling, s14herinnert_geen_droom2, "answer_no", s14got_no_droom1).
next(droom_op_bestelling, s14herinnert_geen_droom2, "answer_dontknow", s14got_no_droom1).
next(droom_op_bestelling, s14herinnert_geen_droom2, "fail", s14got_no_droom1).

move(droom_op_bestelling, s14vraag_droom1, question).
moveConfig(droom_op_bestelling, s14vraag_droom1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(droom_op_bestelling, s14vraag_droom1, "Vertel maar over je droom.").
next(droom_op_bestelling, s14vraag_droom1, "success", s14got_droom1).
next(droom_op_bestelling, s14vraag_droom1, "fail", s14got_no_droom1).

move(droom_op_bestelling, s14got_droom1, say).
text(droom_op_bestelling, s14got_droom1, "Die droom is echt te gek.").
next(droom_op_bestelling, s14got_droom1, "true", s15).

move(droom_op_bestelling, s14got_no_droom1, say).
text(droom_op_bestelling, s14got_no_droom1, "Geeft niets.").
next(droom_op_bestelling, s14got_no_droom1, "true", s14got_no_droom2).

move(droom_op_bestelling, s14got_no_droom2, say).
text(droom_op_bestelling, s14got_no_droom2, "Dan maken we samen een droom.").
next(droom_op_bestelling, s14got_no_droom2, "true", s15).

move(droom_op_bestelling, s15, say).
text(droom_op_bestelling, s15, "In een droom kan dus echt vanalles.").
next(droom_op_bestelling, s15, "true", s16).

move(droom_op_bestelling, s16, say).
text(droom_op_bestelling, s16, "Ik zou in mijn dromen wel iets heel goed willen kunnen.").
next(droom_op_bestelling, s16, "true", s17).

move(droom_op_bestelling, s17, say).
text(droom_op_bestelling, s17, "Als een sportrobot.").
next(droom_op_bestelling, s17, "true", s18).

move(droom_op_bestelling, s18, continuator).
next(droom_op_bestelling, s18, [[umVariable=sport_van_kind, filter=green, values=["_any"]], [expCondition=memory]], s19sport_van_kind1).
next(droom_op_bestelling, s18, "true", s20).

move(droom_op_bestelling, s19sport_van_kind1, say).
text(droom_op_bestelling, s19sport_van_kind1, "Ik zou bijvoorbeeld, net zoals jij, %sport_van_kind% kunnen doen").
next(droom_op_bestelling, s19sport_van_kind1, "true", s20).

move(droom_op_bestelling, s20, say).
text(droom_op_bestelling, s20, "Maar voor deze droom zou ik wel").
next(droom_op_bestelling, s20, "true", s21).

move(droom_op_bestelling, s21, say).
text(droom_op_bestelling, s21, "Snel willen vliegen").
leds(droom_op_bestelling, s21, direct, ['FaceLeds'], ['green']).
next(droom_op_bestelling, s21, "true", s22).

move(droom_op_bestelling, s22, say).
text(droom_op_bestelling, s22, "Of waterdicht kunnen zwemmen").
leds(droom_op_bestelling, s22, direct, ['FaceLeds'], ['blue']).
next(droom_op_bestelling, s22, "true", s23).

move(droom_op_bestelling, s23, say).
text(droom_op_bestelling, s23, "Of randendsnel racen").
leds(droom_op_bestelling, s23, direct, "eyes", "alternate", ['red', 'purple'], 500).
next(droom_op_bestelling, s23, "true", s24).

move(droom_op_bestelling, s24, say).
text(droom_op_bestelling, s24, "Kies maar.").
next(droom_op_bestelling, s24, "true", s25).

move(droom_op_bestelling, s25, say).
text(droom_op_bestelling, s25, "Over wat zou ik moeten dromen?").
leds(droom_op_bestelling, s25, reset).
next(droom_op_bestelling, s25, "true", s26).

move(droom_op_bestelling, s26, question).
moveConfig(droom_op_bestelling, s26, [type=input, context="dromen_vliegen_zwemmen_racen", options=['vliegen', 'zwemmen', 'racen'], fast=yes, umVariable=vlieg_zwem_race]).
text(droom_op_bestelling, s26, "Vliegen, zwemmen of racen?").
next(droom_op_bestelling, s26, "vliegen", s27vliegen1).
next(droom_op_bestelling, s26, "zwemmen", s27zwemmen1).
next(droom_op_bestelling, s26, "racen", s27racen1).
next(droom_op_bestelling, s26, "fail", s27fail1).

move(droom_op_bestelling, s27vliegen1, say).
text(droom_op_bestelling, s27vliegen1, "Vliegen, te gek!").
leds(droom_op_bestelling, s27vliegen1, direct, ['FaceLeds'], ['green']).
next(droom_op_bestelling, s27vliegen1, "true", s27vliegen2).

move(droom_op_bestelling, s27vliegen2, question).
moveConfig(droom_op_bestelling, s27vliegen2, [type=input, context="dromen_snel_rustig", options=['snel', 'rustig'], fast=yes, umVariable=snel_rustig_vl]).
text(droom_op_bestelling, s27vliegen2, "Zal ik snel vliegen of rustig aan?").
next(droom_op_bestelling, s27vliegen2, "snel", s27snel_vl1).
next(droom_op_bestelling, s27vliegen2, "rustig", s27rustig_vl1).
next(droom_op_bestelling, s27vliegen2, "fail", s27rustig_vl1).

move(droom_op_bestelling, s27snel_vl1, say).
text(droom_op_bestelling, s27snel_vl1, "Ja!").
next(droom_op_bestelling, s27snel_vl1, "true", s27snel_vl2).

move(droom_op_bestelling, s27snel_vl2, say).
text(droom_op_bestelling, s27snel_vl2, "Snel snel snel!").
next(droom_op_bestelling, s27snel_vl2, "true", s27vliegen21).

move(droom_op_bestelling, s27rustig_vl1, say).
text(droom_op_bestelling, s27rustig_vl1, "Rustig aan, tijd zat.").
next(droom_op_bestelling, s27rustig_vl1, "true", s27rustig_vl2).

move(droom_op_bestelling, s27rustig_vl2, say).
text(droom_op_bestelling, s27rustig_vl2, "Genieten van het uitzicht.").
next(droom_op_bestelling, s27rustig_vl2, "true", s27vliegen21).

move(droom_op_bestelling, s27vliegen21, question).
moveConfig(droom_op_bestelling, s27vliegen21, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=locatie_vl]).
text(droom_op_bestelling, s27vliegen21, "En naar welk land zal ik vliegen?").
leds(droom_op_bestelling, s27vliegen21, reset).
next(droom_op_bestelling, s27vliegen21, "success", s27locatie1).
next(droom_op_bestelling, s27vliegen21, "fail", s27fail_locatie1).

move(droom_op_bestelling, s27zwemmen1, say).
text(droom_op_bestelling, s27zwemmen1, "Zwemmen, bizar!").
leds(droom_op_bestelling, s27zwemmen1, direct, ['FaceLeds'], ['blue']).
next(droom_op_bestelling, s27zwemmen1, "true", s27zwemmen2).

move(droom_op_bestelling, s27zwemmen2, say).
text(droom_op_bestelling, s27zwemmen2, "Kletsnat.").
next(droom_op_bestelling, s27zwemmen2, "true", s27zwemmen3).

move(droom_op_bestelling, s27zwemmen3, question).
moveConfig(droom_op_bestelling, s27zwemmen3, [type=input, context="dromen_snel_rustig", options=['snel', 'rustig'], fast=yes, umVariable=snel_rustig_zw]).
text(droom_op_bestelling, s27zwemmen3, "Zal ik snel zwemmen of langzaam gaan?").
next(droom_op_bestelling, s27zwemmen3, "snel", s27snel_zw1).
next(droom_op_bestelling, s27zwemmen3, "rustig", s27rustig_zw1).
next(droom_op_bestelling, s27zwemmen3, "fail", s27rustig_zw1).

move(droom_op_bestelling, s27snel_zw1, say).
text(droom_op_bestelling, s27snel_zw1, "Ja!").
next(droom_op_bestelling, s27snel_zw1, "true", s27snel_zw2).

move(droom_op_bestelling, s27snel_zw2, say).
text(droom_op_bestelling, s27snel_zw2, "Speedboot Hero!").
next(droom_op_bestelling, s27snel_zw2, "true", s27zwemmen21).

move(droom_op_bestelling, s27rustig_zw1, say).
text(droom_op_bestelling, s27rustig_zw1, "Rustig aan, tijd zat.").
next(droom_op_bestelling, s27rustig_zw1, "true", s27rustig_zw2).

move(droom_op_bestelling, s27rustig_zw2, say).
text(droom_op_bestelling, s27rustig_zw2, "Beetje snorkelen, je weet zelf.").
next(droom_op_bestelling, s27rustig_zw2, "true", s27zwemmen21).

move(droom_op_bestelling, s27zwemmen21, question).
moveConfig(droom_op_bestelling, s27zwemmen21, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=locatie_zw]).
text(droom_op_bestelling, s27zwemmen21, "En naar welk land zal ik zwemmen?").
leds(droom_op_bestelling, s27zwemmen21, reset).
next(droom_op_bestelling, s27zwemmen21, "success", s27locatie1).
next(droom_op_bestelling, s27zwemmen21, "fail", s27fail_locatie1).

move(droom_op_bestelling, s27racen1, say).
text(droom_op_bestelling, s27racen1, "Racen als een race-auto.").
leds(droom_op_bestelling, s27racen1, direct, "eyes", "alternate", ['red', 'purple'], 500).
next(droom_op_bestelling, s27racen1, "true", s27racen2).

move(droom_op_bestelling, s27racen2, say).
text(droom_op_bestelling, s27racen2, "Wielen aan mijn enkels en knieën.").
next(droom_op_bestelling, s27racen2, "true", s27racen3).

move(droom_op_bestelling, s27racen3, question).
moveConfig(droom_op_bestelling, s27racen3, [type=input, context="dromen_snel_rustig", options=['snel', 'rustig'], fast=yes, umVariable=snel_rustig_rc]).
text(droom_op_bestelling, s27racen3, "Zal ik snel of rustig rijden?").
next(droom_op_bestelling, s27racen3, "snel", s27snel_rc1).
next(droom_op_bestelling, s27racen3, "rustig", s27rustig_rc1).
next(droom_op_bestelling, s27racen3, "fail", s27rustig_rc1).

move(droom_op_bestelling, s27snel_rc1, say).
text(droom_op_bestelling, s27snel_rc1, "Ja!").
next(droom_op_bestelling, s27snel_rc1, "true", s27snel_rc2).

move(droom_op_bestelling, s27snel_rc2, say).
text(droom_op_bestelling, s27snel_rc2, "Vol door de bocht, bizar.").
next(droom_op_bestelling, s27snel_rc2, "true", s27racen21).

move(droom_op_bestelling, s27rustig_rc1, say).
text(droom_op_bestelling, s27rustig_rc1, "Ja precies, kalm aan.").
next(droom_op_bestelling, s27rustig_rc1, "true", s27rustig_rc2).

move(droom_op_bestelling, s27rustig_rc2, say).
text(droom_op_bestelling, s27rustig_rc2, "Ik heb ook helemaal geen rijbewijs").
next(droom_op_bestelling, s27rustig_rc2, "true", s27racen21).

move(droom_op_bestelling, s27racen21, question).
moveConfig(droom_op_bestelling, s27racen21, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=locatie_rc]).
text(droom_op_bestelling, s27racen21, "En naar welk land zal ik racen?").
leds(droom_op_bestelling, s27racen21, reset).
next(droom_op_bestelling, s27racen21, "success", s27locatie1).
next(droom_op_bestelling, s27racen21, "fail", s27fail_locatie1).

move(droom_op_bestelling, s27fail_locatie1, say).
text(droom_op_bestelling, s27fail_locatie1, "Ik heb zin om naar Frankrijk te gaan.").
next(droom_op_bestelling, s27fail_locatie1, "true", s27fail_locatie2).

move(droom_op_bestelling, s27fail_locatie2, say).
text(droom_op_bestelling, s27fail_locatie2, "Mike heeft me verteld dat het daar supermooi is").
next(droom_op_bestelling, s27fail_locatie2, "true", s27locatie1).

move(droom_op_bestelling, s27locatie1, say).
text(droom_op_bestelling, s27locatie1, "Ik ben daar nog nooit geweest.").
next(droom_op_bestelling, s27locatie1, "true", s27locatie2).

move(droom_op_bestelling, s27locatie2, say).
text(droom_op_bestelling, s27locatie2, "Ik weet helemaal niet wat daar te doen is.").
next(droom_op_bestelling, s27locatie2, "true", s27locatie3).

move(droom_op_bestelling, s27locatie3, question).
moveConfig(droom_op_bestelling, s27locatie3, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=tedoen_locatie]).
text(droom_op_bestelling, s27locatie3, "Wat zou jij gaan doen?").
next(droom_op_bestelling, s27locatie3, "success", s27plan_locatie1).
next(droom_op_bestelling, s27locatie3, "fail", s27geen_plan_locatie1).

move(droom_op_bestelling, s27plan_locatie1, say).
text(droom_op_bestelling, s27plan_locatie1, "Wat een goed idee.").
next(droom_op_bestelling, s27plan_locatie1, "true", s27plan_locatie2).

move(droom_op_bestelling, s27plan_locatie2, say).
text(droom_op_bestelling, s27plan_locatie2, "Ik sla het gelijk op.").
next(droom_op_bestelling, s27plan_locatie2, "true", s27plan_locatie3).

move(droom_op_bestelling, s27plan_locatie3, say).
text(droom_op_bestelling, s27plan_locatie3, "seeving, seeving.").
next(droom_op_bestelling, s27plan_locatie3, "true", s27plan_locatie4).

move(droom_op_bestelling, s27plan_locatie4, say).
text(droom_op_bestelling, s27plan_locatie4, "Nog steeds seeving.").
next(droom_op_bestelling, s27plan_locatie4, "true", s28).

move(droom_op_bestelling, s27geen_plan_locatie1, say).
text(droom_op_bestelling, s27geen_plan_locatie1, "Ik bedenk wel wat als ik aankom!").
next(droom_op_bestelling, s27geen_plan_locatie1, "true", s28).

move(droom_op_bestelling, s28, say).
anim(droom_op_bestelling, s28, file, "resources/gestures/bow.json").
next(droom_op_bestelling, s28, "true", s29).

move(droom_op_bestelling, s29, question).
moveConfig(droom_op_bestelling, s29, [type=yesno, context='answer_yesno', umVariable=raars_toevoegen]).
text(droom_op_bestelling, s29, "Zou je nog iets heel raars willen toevoegen aan deze droom, ja of nee?").
next(droom_op_bestelling, s29, "answer_yes", s30ja_toev1).
next(droom_op_bestelling, s29, "answer_no", s30nee_toev1).
next(droom_op_bestelling, s29, "answer_dontknow", s30nee_toev1).
next(droom_op_bestelling, s29, "fail", s30nee_toev1).

move(droom_op_bestelling, s30ja_toev1, say).
text(droom_op_bestelling, s30ja_toev1, "Oké, oké.").
next(droom_op_bestelling, s30ja_toev1, "true", s30ja_toev2).

move(droom_op_bestelling, s30ja_toev2, say).
text(droom_op_bestelling, s30ja_toev2, "Kom maar op!").
next(droom_op_bestelling, s30ja_toev2, "true", s30ja_toev3).

move(droom_op_bestelling, s30ja_toev3, question).
moveConfig(droom_op_bestelling, s30ja_toev3, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=bizarre_toevoeging]).
text(droom_op_bestelling, s30ja_toev3, "Wat zou je nog meer willen toevoegen aan deze droom?").
next(droom_op_bestelling, s30ja_toev3, "success", s30toegevoegd1).
next(droom_op_bestelling, s30ja_toev3, "fail", s30nee_toev1).

move(droom_op_bestelling, s30toegevoegd1, say).
text(droom_op_bestelling, s30toegevoegd1, "Bizar!").
next(droom_op_bestelling, s30toegevoegd1, "true", s30toegevoegd2).

move(droom_op_bestelling, s30toegevoegd2, question).
moveConfig(droom_op_bestelling, s30toegevoegd2, [type=yesno, context='answer_yesno', umVariable=raars_toevoegen_2]).
text(droom_op_bestelling, s30toegevoegd2, "Wil je nog meer toevoegen?").
next(droom_op_bestelling, s30toegevoegd2, "answer_yes", s30ja_toev_21).
next(droom_op_bestelling, s30toegevoegd2, "answer_no", s30nee_toev1).
next(droom_op_bestelling, s30toegevoegd2, "answer_dontknow", s30nee_toev1).
next(droom_op_bestelling, s30toegevoegd2, "fail", s30nee_toev1).

move(droom_op_bestelling, s30ja_toev_21, question).
moveConfig(droom_op_bestelling, s30ja_toev_21, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=bizarre_toevoeging_2]).
text(droom_op_bestelling, s30ja_toev_21, "Wat dan?").
next(droom_op_bestelling, s30ja_toev_21, "success", s30toegevoegd_21).
next(droom_op_bestelling, s30ja_toev_21, "fail", s30nee_toev1).

move(droom_op_bestelling, s30toegevoegd_21, say).
text(droom_op_bestelling, s30toegevoegd_21, "Oke!").
next(droom_op_bestelling, s30toegevoegd_21, "true", s30toegevoegd_22).

move(droom_op_bestelling, s30toegevoegd_22, say).
text(droom_op_bestelling, s30toegevoegd_22, "Volgens mij hebben we nu een vrije gekke droom.").
next(droom_op_bestelling, s30toegevoegd_22, "true", s31).

move(droom_op_bestelling, s30nee_toev1, say).
text(droom_op_bestelling, s30nee_toev1, "Nee precies").
next(droom_op_bestelling, s30nee_toev1, "true", s30nee_toev2).

move(droom_op_bestelling, s30nee_toev2, say).
text(droom_op_bestelling, s30nee_toev2, "volgens mij is onze droom bizar genoeg zo.").
next(droom_op_bestelling, s30nee_toev2, "true", s30nee_toev3).

move(droom_op_bestelling, s30nee_toev3, say).
text(droom_op_bestelling, s30nee_toev3, "Je hebt gelijk.").
next(droom_op_bestelling, s30nee_toev3, "true", s31).

move(droom_op_bestelling, s31, say).
text(droom_op_bestelling, s31, "Ik hoop dat ik deze droom de volgende keer kan dromen.").
next(droom_op_bestelling, s31, "true", s32).

move(droom_op_bestelling, s32, say).
text(droom_op_bestelling, s32, "En dat ik wakker wordt met een spannend avontuur in mijn Hero hoofd.").
next(droom_op_bestelling, s32, "true", s33).

move(droom_op_bestelling, s33, say).
text(droom_op_bestelling, s33, "Doe je handen eens in de luchtf.").
next(droom_op_bestelling, s33, "true", s34).

move(droom_op_bestelling, s34, say).
anim(droom_op_bestelling, s34, file, "resources/gestures/arms_in_air.json").
leds(droom_op_bestelling, s34, direct, "all", "blink", ['yellow', 'purple', 'orange', 'blue', 'white', 'red'], 500).
next(droom_op_bestelling, s34, "true", s35).

move(droom_op_bestelling, s35, say).
text(droom_op_bestelling, s35, "Zo.").
next(droom_op_bestelling, s35, "true", s36).

move(droom_op_bestelling, s36, say).
text(droom_op_bestelling, s36, "Op deze manier kan ik proberen vanavond in te loggen in jouw droom.").
leds(droom_op_bestelling, s36, reset).
next(droom_op_bestelling, s36, "true", s37).

move(droom_op_bestelling, s37, say).
text(droom_op_bestelling, s37, "Als het goed is krijg je vannacht, als je droomt").
next(droom_op_bestelling, s37, "true", s38).

move(droom_op_bestelling, s38, say).
text(droom_op_bestelling, s38, "een zogenaamde pop-up te zien in jouw droom.").
next(droom_op_bestelling, s38, "true", s39).

move(droom_op_bestelling, s39, say).
text(droom_op_bestelling, s39, "Daarin staat:").
next(droom_op_bestelling, s39, "true", s40).

move(droom_op_bestelling, s40, say).
text(droom_op_bestelling, s40, "Hero probeert in te loggen in uw droom.").
next(droom_op_bestelling, s40, "true", s41).

move(droom_op_bestelling, s41, say).
text(droom_op_bestelling, s41, "Geeft u hier toestemming voor?").
next(droom_op_bestelling, s41, "true", s42).

move(droom_op_bestelling, s42, say).
text(droom_op_bestelling, s42, "Als je dan gewoon in je droom op OK klikt").
next(droom_op_bestelling, s42, "true", s43).

move(droom_op_bestelling, s43, say).
text(droom_op_bestelling, s43, "dan komt het allemaal goed.").

%% autonome_droom %%
minidialog(autonome_droom, [type=narrative, thread=dromen, position=3]).

move(autonome_droom, s1, say).
text(autonome_droom, s1, "%first_name% !").
next(autonome_droom, s1, "true", s2).

move(autonome_droom, s2, say).
text(autonome_droom, s2, "Weet je wat ik vannacht heb gedroomd?").
next(autonome_droom, s2, "true", s3).

move(autonome_droom, s3, say).
text(autonome_droom, s3, "Ik was een robothond met vier poten.").
next(autonome_droom, s3, "true", s4).

move(autonome_droom, s4, say).
text(autonome_droom, s4, "Ik kon apporteren, stokken vangen en brieven posten.").
next(autonome_droom, s4, "true", s5).

move(autonome_droom, s5, question).
moveConfig(autonome_droom, s5, [type=input, context="animals", options=['hond', 'kat', 'dolfijn', 'tijger', 'adelaar'], fast=yes, umVariable=dier_dat_kind_wil_zijn]).
text(autonome_droom, s5, "Welk dier zou jij graag willen zijn? ").
next(autonome_droom, s5, "success", s6).
next(autonome_droom, s5, "fail", s6).

move(autonome_droom, s6, continuator).
next(autonome_droom, s6, [[expCondition=memory], [umVariable=lievelingsdier, filter=green, values=["dier_dat_kind_wil_zijn"]]], s7is_lievelingsdier1).
next(autonome_droom, s6, "true", s7nieuw_dier1).

move(autonome_droom, s7is_lievelingsdier1, question).
moveConfig(autonome_droom, s7is_lievelingsdier1, [type=yesno, context='answer_yesno']).
text(autonome_droom, s7is_lievelingsdier1, "Hee! %dier_dat_kind_wil_zijn% was toch ook jouw lievelingsdier?").
next(autonome_droom, s7is_lievelingsdier1, "answer_yes", s7dier_is_lievelingsdier1).
next(autonome_droom, s7is_lievelingsdier1, "answer_no", s7dier_is_niet_lievelingsdier1).
next(autonome_droom, s7is_lievelingsdier1, "fail", s7dier_is_niet_lievelingsdier1).
next(autonome_droom, s7is_lievelingsdier1, "answer_dontknow", s7dier_is_niet_lievelingsdier1).

move(autonome_droom, s7dier_is_lievelingsdier1, say).
text(autonome_droom, s7dier_is_lievelingsdier1, "Ik wist het wel!").
next(autonome_droom, s7dier_is_lievelingsdier1, "true", s7dier_is_lievelingsdier2).

move(autonome_droom, s7dier_is_lievelingsdier2, say).
text(autonome_droom, s7dier_is_lievelingsdier2, "Als jij dan in jouw droom je eigen lievelingsdier bent").
next(autonome_droom, s7dier_is_lievelingsdier2, "true", s7dier_is_lievelingsdier3).

move(autonome_droom, s7dier_is_lievelingsdier3, say).
text(autonome_droom, s7dier_is_lievelingsdier3, "Dan ben je ook je eigen baasje").
next(autonome_droom, s7dier_is_lievelingsdier3, "true", s7dier_is_lievelingsdier4).

move(autonome_droom, s7dier_is_lievelingsdier4, say).
text(autonome_droom, s7dier_is_lievelingsdier4, "Dan besta je twee keer!").
next(autonome_droom, s7dier_is_lievelingsdier4, "true", s7dier_is_lievelingsdier5).

move(autonome_droom, s7dier_is_lievelingsdier5, say).
text(autonome_droom, s7dier_is_lievelingsdier5, "Heb je jezelf zomaar gekopieerd").
next(autonome_droom, s7dier_is_lievelingsdier5, "true", s7dier_is_lievelingsdier6).

move(autonome_droom, s7dier_is_lievelingsdier6, say).
text(autonome_droom, s7dier_is_lievelingsdier6, "Maar een %dier_dat_kind_wil_zijn% dus, bizar.").
next(autonome_droom, s7dier_is_lievelingsdier6, "true", s8).

move(autonome_droom, s7dier_is_niet_lievelingsdier1, say).
text(autonome_droom, s7dier_is_niet_lievelingsdier1, "Oeps, dan heb ik dat verkeerd onthouden.").
next(autonome_droom, s7dier_is_niet_lievelingsdier1, "true", s7dier_is_niet_lievelingsdier2).

move(autonome_droom, s7dier_is_niet_lievelingsdier2, say).
text(autonome_droom, s7dier_is_niet_lievelingsdier2, "Maar je wil dus een %dier_dat_kind_wil_zijn% zijn.").
next(autonome_droom, s7dier_is_niet_lievelingsdier2, "true", s8).

move(autonome_droom, s7nieuw_dier1, say).
text(autonome_droom, s7nieuw_dier1, "Bizar!").
next(autonome_droom, s7nieuw_dier1, "true", s7nieuw_dier2).

move(autonome_droom, s7nieuw_dier2, say).
text(autonome_droom, s7nieuw_dier2, "Een %dier_dat_kind_wil_zijn%").
next(autonome_droom, s7nieuw_dier2, "true", s8).

move(autonome_droom, s8, question).
moveConfig(autonome_droom, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(autonome_droom, s8, "Waar wonen die in het wild?").
next(autonome_droom, s8, "success", s9).
next(autonome_droom, s8, "fail", s9).

move(autonome_droom, s9, say).
text(autonome_droom, s9, "Cool, dat wist ik niet").
next(autonome_droom, s9, "true", s10).

move(autonome_droom, s10, say).
text(autonome_droom, s10, "Als ik een robothond zou zijn").
next(autonome_droom, s10, "true", s11).

move(autonome_droom, s11, say).
text(autonome_droom, s11, "en jij een %dier_dat_kind_wil_zijn%").
next(autonome_droom, s11, "true", s12).

move(autonome_droom, s12, say).
text(autonome_droom, s12, "dan zouden we beste vrienden worden.").
next(autonome_droom, s12, "true", s13).

move(autonome_droom, s13, say).
text(autonome_droom, s13, "En allemaal leuke dingen doen!").
next(autonome_droom, s13, "true", s14).

move(autonome_droom, s14, say).
text(autonome_droom, s14, "Samen rondrennen of witte broodjes eten in het park").
next(autonome_droom, s14, "true", s15).

move(autonome_droom, s15, say).
text(autonome_droom, s15, "Jij eet dan witte broodjes").
next(autonome_droom, s15, "true", s16).

move(autonome_droom, s16, say).
text(autonome_droom, s16, "en ik kijk dan hoe jij witte broodjes eet.").
next(autonome_droom, s16, "true", s17).

move(autonome_droom, s17, say).
text(autonome_droom, s17, "Vannacht droomde ik ook zoiets.").
next(autonome_droom, s17, "true", s18).

move(autonome_droom, s18, say).
text(autonome_droom, s18, "Ik was een robothond en jij mijn baasje.").
next(autonome_droom, s18, "true", s19).

move(autonome_droom, s19, say).
text(autonome_droom, s19, "We renden over grasvelden").
next(autonome_droom, s19, "true", s20).

move(autonome_droom, s20, say).
text(autonome_droom, s20, "en deden kunstjes, oefeningen en trucs.").
next(autonome_droom, s20, "true", s21).

move(autonome_droom, s21, say).
text(autonome_droom, s21, "Jij wilde me leren hoe ik moest blaffen.").
next(autonome_droom, s21, "true", s22).

move(autonome_droom, s22, say).
text(autonome_droom, s22, "Hoe klinkt dat ook alweer als een hond blaft?").
next(autonome_droom, s22, "true", s23).

move(autonome_droom, s23, continuator).
next(autonome_droom, s23, [[umVariable=leukste_onderdeel, filter=green, values=["verblaffen"]]], s24blaf_bekend1).
next(autonome_droom, s23, "true", s24blaf_onbekend1).

move(autonome_droom, s24blaf_onbekend1, say).
text(autonome_droom, s24blaf_onbekend1, "Ik ben op zoek naar een goed honden blaf geluid").
next(autonome_droom, s24blaf_onbekend1, "true", s24blaf_onbekend2).

move(autonome_droom, s24blaf_onbekend2, say).
text(autonome_droom, s24blaf_onbekend2, "Mag jij kiezen.").
next(autonome_droom, s24blaf_onbekend2, "true", s24blaf_onbekend3).

move(autonome_droom, s24blaf_onbekend3, say).
prepare_sound_anim(autonome_droom, s24blaf_onbekend3).
moveConfig(autonome_droom, s24blaf_onbekend3, [umVariable=hondenblaf, option1="resources/sounds/dog_bark1.wav", option2="resources/sounds/dog_bark2.wav", recordTime=2500, continue_with=luister_naar_droom_blaf]).

move(autonome_droom, s24blaf_bekend1, say).
text(autonome_droom, s24blaf_bekend1, "Jij had vorige week een leuke hondenblaf gemaakt.").
next(autonome_droom, s24blaf_bekend1, "true", s24blaf_bekend2).

move(autonome_droom, s24blaf_bekend2, say).
text(autonome_droom, s24blaf_bekend2, "Even luisteren.").
next(autonome_droom, s24blaf_bekend2, "true", s24blaf_bekend3).

move(autonome_droom, s24blaf_bekend3, say).
audio(autonome_droom, s24blaf_bekend3, id, hondenblaf).
next(autonome_droom, s24blaf_bekend3, "true", s24blaf_bekend4).

move(autonome_droom, s24blaf_bekend4, say).
text(autonome_droom, s24blaf_bekend4, "Ja! Bizar.").
next(autonome_droom, s24blaf_bekend4, "true", s24blaf_bekend5).

move(autonome_droom, s24blaf_bekend5, say).
text(autonome_droom, s24blaf_bekend5, "Een echte hond.").
next(autonome_droom, s24blaf_bekend5, "true", s24blaf_bekend6).

move(autonome_droom, s24blaf_bekend6, say).
text(autonome_droom, s24blaf_bekend6, "Zo leerde je mij ook blaffen in de droom.").
next(autonome_droom, s24blaf_bekend6, "true", s24blaf_bekend7).

move(autonome_droom, s24blaf_bekend7, say).
text(autonome_droom, s24blaf_bekend7, "En zitten.").
next(autonome_droom, s24blaf_bekend7, "true", s24blaf_bekend8).

move(autonome_droom, s24blaf_bekend8, say).
text(autonome_droom, s24blaf_bekend8, "Je zei zit en toen deed ik.").
next(autonome_droom, s24blaf_bekend8, "true", s24blaf_bekend9).

move(autonome_droom, s24blaf_bekend9, say).
rest(autonome_droom, s24blaf_bekend9).
next(autonome_droom, s24blaf_bekend9, "true", s24blaf_bekend10).

move(autonome_droom, s24blaf_bekend10, say).
text(autonome_droom, s24blaf_bekend10, "Doe maar mee als je wilt.").
next(autonome_droom, s24blaf_bekend10, "true", s24blaf_bekend11).

move(autonome_droom, s24blaf_bekend11, say).
text(autonome_droom, s24blaf_bekend11, "En staan.").
wakeup(autonome_droom, s24blaf_bekend11).
next(autonome_droom, s24blaf_bekend11, "true", s24blaf_bekend12).

move(autonome_droom, s24blaf_bekend12, say).
text(autonome_droom, s24blaf_bekend12, "En zitten.").
rest(autonome_droom, s24blaf_bekend12).
next(autonome_droom, s24blaf_bekend12, "true", s24blaf_bekend13).

move(autonome_droom, s24blaf_bekend13, say).
text(autonome_droom, s24blaf_bekend13, "En staan.").
wakeup(autonome_droom, s24blaf_bekend13).
next(autonome_droom, s24blaf_bekend13, "true", s24blaf_bekend14).

move(autonome_droom, s24blaf_bekend14, say).
text(autonome_droom, s24blaf_bekend14, "Zo, ga jij nu maar weer zitten").
next(autonome_droom, s24blaf_bekend14, "true", s24blaf_bekend15).

move(autonome_droom, s24blaf_bekend15, say).
text(autonome_droom, s24blaf_bekend15, "dan blijf ik nog even staan.").
next(autonome_droom, s24blaf_bekend15, "true", s24blaf_bekend16).

move(autonome_droom, s24blaf_bekend16, say).
text(autonome_droom, s24blaf_bekend16, "Het is net een oefening voor de Robospelen op deze manier.").
next(autonome_droom, s24blaf_bekend16, "true", s24blaf_bekend17).

move(autonome_droom, s24blaf_bekend17, say).
text(autonome_droom, s24blaf_bekend17, "Ik droomde trouwens ook dat ik een hond was").
next(autonome_droom, s24blaf_bekend17, "true", s24blaf_bekend18).

move(autonome_droom, s24blaf_bekend18, say).
text(autonome_droom, s24blaf_bekend18, "Die kon %vlieg_zwem_race%").
next(autonome_droom, s24blaf_bekend18, "true", s24blaf_bekend19).

move(autonome_droom, s24blaf_bekend19, say).
text(autonome_droom, s24blaf_bekend19, "precies zoals we samen hebben bedacht.").
next(autonome_droom, s24blaf_bekend19, "true", s24blaf_bekend20).

move(autonome_droom, s24blaf_bekend20, say).
text(autonome_droom, s24blaf_bekend20, "Weet je nog?").
next(autonome_droom, s24blaf_bekend20, "true", s24blaf_bekend21).

move(autonome_droom, s24blaf_bekend21, say).
text(autonome_droom, s24blaf_bekend21, "Was alles maar zo gemakkelijk en leuk als in een droom.").

%% robospelen_droom %%
minidialog(robospelen_droom, [type=narrative, thread=dromen, position=4]).

move(robospelen_droom, s1, say).
text(robospelen_droom, s1, "De Robospelen zitten echt in mijn hoofd hoor!").
next(robospelen_droom, s1, "true", s2).

move(robospelen_droom, s2, say).
text(robospelen_droom, s2, "Ik kan aan bijna niets anders meer denken!").
next(robospelen_droom, s2, "true", s3).

move(robospelen_droom, s3, say).
text(robospelen_droom, s3, "Het is echt bizar!").
next(robospelen_droom, s3, "true", s4).

move(robospelen_droom, s4, say).
text(robospelen_droom, s4, "Ik heb er vannacht ook weer over moeten dromen.").
next(robospelen_droom, s4, "true", s5).

move(robospelen_droom, s5, question).
moveConfig(robospelen_droom, s5, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=droom_vannacht]).
text(robospelen_droom, s5, "Waarover heb jij vannacht gedroomd?").
next(robospelen_droom, s5, "success", s6got_answer_dv1).
next(robospelen_droom, s5, "fail", s6got_no_answer_dv1).

move(robospelen_droom, s6got_answer_dv1, say).
text(robospelen_droom, s6got_answer_dv1, "Dat is interessant.").
next(robospelen_droom, s6got_answer_dv1, "true", s6got_answer_dv2).

move(robospelen_droom, s6got_answer_dv2, say).
text(robospelen_droom, s6got_answer_dv2, "Ik zal je over mijn droom vertellen.").
next(robospelen_droom, s6got_answer_dv2, "true", s7).

move(robospelen_droom, s6got_no_answer_dv1, say).
text(robospelen_droom, s6got_no_answer_dv1, "Soms weet ik het ook niet meer.").
next(robospelen_droom, s6got_no_answer_dv1, "true", s6got_no_answer_dv2).

move(robospelen_droom, s6got_no_answer_dv2, say).
text(robospelen_droom, s6got_no_answer_dv2, "Maar dit keer wel!").
next(robospelen_droom, s6got_no_answer_dv2, "true", s7).

move(robospelen_droom, s7, say).
text(robospelen_droom, s7, "Vannacht droomde ik heel erg veel tegelijkertijd.").
next(robospelen_droom, s7, "true", s8).

move(robospelen_droom, s8, say).
text(robospelen_droom, s8, "Het was een hele wilde droom!").
next(robospelen_droom, s8, "true", s9).

move(robospelen_droom, s9, say).
text(robospelen_droom, s9, "Ik zat in een achtbaan.").
next(robospelen_droom, s9, "true", s10).

move(robospelen_droom, s10, continuator).
next(robospelen_droom, s10, [[expCondition=memory]], s11memory1).
next(robospelen_droom, s10, [[expCondition=control]], s11control1).
next(robospelen_droom, s10, "true", s12).

move(robospelen_droom, s11memory1, say).
text(robospelen_droom, s11memory1, "De achtbaan was helemaal %lievelingskleur%, jouw lievelingskleur").
next(robospelen_droom, s11memory1, "true", s12).

move(robospelen_droom, s11control1, say).
text(robospelen_droom, s11control1, "De achtbaan was helemaal geel.").
next(robospelen_droom, s11control1, "true", s12).

move(robospelen_droom, s12, say).
text(robospelen_droom, s12, "Het karretje van de achtbaan had een stuur en achter het stuur zat jij").
next(robospelen_droom, s12, "true", s13).

move(robospelen_droom, s13, say).
text(robospelen_droom, s13, "Er was een grote splitsing in de achtbaan en je stuurde naar links").
next(robospelen_droom, s13, "true", s14).

move(robospelen_droom, s14, say).
text(robospelen_droom, s14, "Toen reden langs een beeldscherm waarop onze ontmoeting te zien was").
next(robospelen_droom, s14, "true", s15).

move(robospelen_droom, s15, say).
text(robospelen_droom, s15, "Wat een fijne herinnering was dat zeg, toen kenden we elkaar nog helemaal niet zo goed als nu!").
next(robospelen_droom, s15, "true", s16).

move(robospelen_droom, s16, say).
text(robospelen_droom, s16, "Jij zat tegenover me").
next(robospelen_droom, s16, "true", s17).

move(robospelen_droom, s17, say).
text(robospelen_droom, s17, "En ik stond hier").
next(robospelen_droom, s17, "true", s18).

move(robospelen_droom, s18, say).
text(robospelen_droom, s18, "Eigenlijk precies zoals nu behalve terug in de tijd").
next(robospelen_droom, s18, "true", s19).

move(robospelen_droom, s19, say).
text(robospelen_droom, s19, "En in mijn droom had jij een bizar hoedje op").
next(robospelen_droom, s19, "true", s20).

move(robospelen_droom, s20, continuator).
next(robospelen_droom, s20, [[expCondition=memory]], s21memory1).
next(robospelen_droom, s20, [[expCondition=control]], s21control1).
next(robospelen_droom, s20, "true", s22).

move(robospelen_droom, s21memory1, say).
text(robospelen_droom, s21memory1, "Je vertelde me dat je later %beroep_van_kind% wilde worden.").
next(robospelen_droom, s21memory1, "true", s22).

move(robospelen_droom, s21control1, say).
text(robospelen_droom, s21control1, "En we keken elkaar aan.").
next(robospelen_droom, s21control1, "true", s22).

move(robospelen_droom, s22, continuator).
next(robospelen_droom, s22, [[umVariable=vlieg_zwem_race, filter=green, values=["vliegen"]], [expCondition=memory]], s23memory_vliegen1).
next(robospelen_droom, s22, [[umVariable=vlieg_zwem_race, filter=green, values=["vliegen"]], [expCondition=memory]], s23memory_zwemmen1).
next(robospelen_droom, s22, [[umVariable=vlieg_zwem_race, filter=green, values=["vliegen"]], [expCondition=memory]], s23memory_racen1).
next(robospelen_droom, s22, [[expCondition=control]], s23control1).
next(robospelen_droom, s22, "true", s24).

move(robospelen_droom, s23memory_vliegen1, say).
text(robospelen_droom, s23memory_vliegen1, "Daarna ging de achtbaan recht omhoog").
next(robospelen_droom, s23memory_vliegen1, "true", s23memory_vliegen2).

move(robospelen_droom, s23memory_zwemmen1, say).
text(robospelen_droom, s23memory_zwemmen1, "Daarna ging de achtbaan recht omlaag!").
next(robospelen_droom, s23memory_zwemmen1, "true", s23memory_zwemmen2).

move(robospelen_droom, s23memory_racen1, say).
text(robospelen_droom, s23memory_racen1, "Daarna ging de achtbaan recht omlaag!").
next(robospelen_droom, s23memory_racen1, "true", s23memory_racen2).

move(robospelen_droom, s23memory_vliegen2, say).
text(robospelen_droom, s23memory_vliegen2, "En vlogen we zo, zoals je een tijdje geleden koos, door de lucht.").
next(robospelen_droom, s23memory_vliegen2, "true", s24).

move(robospelen_droom, s23memory_zwemmen2, say).
text(robospelen_droom, s23memory_zwemmen2, "En plonsten we in het water om, zoals je een tijdje geleden koos, te gaan zwemmen.").
next(robospelen_droom, s23memory_zwemmen2, "true", s24).

move(robospelen_droom, s23memory_racen2, say).
text(robospelen_droom, s23memory_racen2, "En scheurden we zo, zoals je een tijdje geleden koos, de race baan op.").
next(robospelen_droom, s23memory_racen2, "true", s24).

move(robospelen_droom, s23control1, say).
text(robospelen_droom, s23control1, "Daarna ging de achtbaan recht omlaag!").
next(robospelen_droom, s23control1, "true", s23control2).

move(robospelen_droom, s23control2, say).
text(robospelen_droom, s23control2, "Door het water").
next(robospelen_droom, s23control2, "true", s24).

move(robospelen_droom, s24, say).
text(robospelen_droom, s24, "Het was een droom dus ik liep niet vast").
next(robospelen_droom, s24, "true", s25).

move(robospelen_droom, s25, say).
text(robospelen_droom, s25, "En er was weer een groot scherm").
next(robospelen_droom, s25, "true", s26).

move(robospelen_droom, s26, say).
text(robospelen_droom, s26, "Daarop zag ik het rò hze bos!").
next(robospelen_droom, s26, "true", s27).

move(robospelen_droom, s27, say).
text(robospelen_droom, s27, "We liepen samen over het pad").
next(robospelen_droom, s27, "true", s28).

move(robospelen_droom, s28, say).
text(robospelen_droom, s28, "Toen ging de achtbaan dwars door het beeldscherm heen").
next(robospelen_droom, s28, "true", s29).

move(robospelen_droom, s29, say).
text(robospelen_droom, s29, "Vlak langs ons heen en zig zag door de rò hze bomen").
next(robospelen_droom, s29, "true", s30).

move(robospelen_droom, s30, say).
text(robospelen_droom, s30, "Naar het laatste beeldscherm").
next(robospelen_droom, s30, "true", s31).

move(robospelen_droom, s31, say).
text(robospelen_droom, s31, "Maar dat is geen herinnering!").
next(robospelen_droom, s31, "true", s32).

move(robospelen_droom, s32, say).
text(robospelen_droom, s32, "Dat ben ik in de toekomst, op de Robospelen!").
next(robospelen_droom, s32, "true", s33).

move(robospelen_droom, s33, say).
text(robospelen_droom, s33, "Het is bizar").
next(robospelen_droom, s33, "true", s34).

move(robospelen_droom, s34, say).
text(robospelen_droom, s34, "Ik sta daar klaar voor de eerste ronde").
next(robospelen_droom, s34, "true", s35).

move(robospelen_droom, s35, say).
text(robospelen_droom, s35, "En ik kijk mijn tegenstanders aan").
next(robospelen_droom, s35, "true", s36).

move(robospelen_droom, s36, say).
text(robospelen_droom, s36, "En toen klonk de grote afteller").
next(robospelen_droom, s36, "true", s37).

move(robospelen_droom, s37, say).
text(robospelen_droom, s37, "Vlak voordat de Robospelen echt begonnen was de droom voorbij").

%% dromen_conclusie %%
minidialog(dromen_conclusie, [type=narrative, thread=dromen, position=5]).

move(dromen_conclusie, s1, continuator).
next(dromen_conclusie, s1, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s2dier1).
next(dromen_conclusie, s1, "true", s2geen_dier1).

move(dromen_conclusie, s2dier1, say).
text(dromen_conclusie, s2dier1, "Vannacht droomde ik trouwens over de %lievelingsdier% uit het rò hze bos!").
next(dromen_conclusie, s2dier1, "true", s3).

move(dromen_conclusie, s2geen_dier1, say).
text(dromen_conclusie, s2geen_dier1, "Vannacht droomde ik trouwens over het egeltje uit het rò hze bos!").
next(dromen_conclusie, s2geen_dier1, "true", s3).

move(dromen_conclusie, s3, say).
text(dromen_conclusie, s3, "We zaten op een picknickkleed en aten batterijtjes met knoflooksaus").
next(dromen_conclusie, s3, "true", s4).

move(dromen_conclusie, s4, say).
text(dromen_conclusie, s4, "en dronken motorolie met een rietje en een paraplu.").
next(dromen_conclusie, s4, "true", s5).

move(dromen_conclusie, s5, say).
text(dromen_conclusie, s5, "Jij was er ook!").
next(dromen_conclusie, s5, "true", s6).

move(dromen_conclusie, s6, say).
text(dromen_conclusie, s6, "Je at pizza, pasta, pannenkoeken, poffertjes, en patat").
next(dromen_conclusie, s6, "true", s7).

move(dromen_conclusie, s7, say).
text(dromen_conclusie, s7, "Alles door elkaar").
next(dromen_conclusie, s7, "true", s8).

move(dromen_conclusie, s8, say).
text(dromen_conclusie, s8, "Je had ook een drankje.").
next(dromen_conclusie, s8, "true", s9).

move(dromen_conclusie, s9, question).
moveConfig(dromen_conclusie, s9, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=drankje]).
text(dromen_conclusie, s9, "Wat voor een drankje zou je drinken bij een picknick?").
next(dromen_conclusie, s9, "success", s10got_drankje1).
next(dromen_conclusie, s9, "fail", s10got_no_drankje1).

move(dromen_conclusie, s10got_drankje1, say).
text(dromen_conclusie, s10got_drankje1, "Lekker! Doe mij ook maar eentje!").
next(dromen_conclusie, s10got_drankje1, "true", s11).

move(dromen_conclusie, s10got_no_drankje1, say).
text(dromen_conclusie, s10got_no_drankje1, "Wat dacht je van iets heel kouds?").
next(dromen_conclusie, s10got_no_drankje1, "true", s10got_no_drankje2).

move(dromen_conclusie, s10got_no_drankje2, say).
text(dromen_conclusie, s10got_no_drankje2, "Met ijsklontjes en in een glitterglas").
next(dromen_conclusie, s10got_no_drankje2, "true", s10got_no_drankje3).

move(dromen_conclusie, s10got_no_drankje3, say).
text(dromen_conclusie, s10got_no_drankje3, "Het zou sowieso een super lekker drankje zijn").
next(dromen_conclusie, s10got_no_drankje3, "true", s11).

move(dromen_conclusie, s11, continuator).
next(dromen_conclusie, s11, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s12dier1).
next(dromen_conclusie, s11, "true", s12geen_dier1).

move(dromen_conclusie, s12dier1, say).
text(dromen_conclusie, s12dier1, "%lievelingsdier% en ik hadden een goed picknickgesprek over herinneringen en fantasie").
next(dromen_conclusie, s12dier1, "true", s13).

move(dromen_conclusie, s12geen_dier1, say).
text(dromen_conclusie, s12geen_dier1, "De egel en ik hadden een goed picknickgesprek over herinneringen en fantasie").
next(dromen_conclusie, s12geen_dier1, "true", s13).

move(dromen_conclusie, s13, question).
moveConfig(dromen_conclusie, s13, [type=input, context="conclusie_her_fan", options=['herinneringen', 'fantasie'], fast=yes, umVariable=herinneringen_of_fantasie]).
text(dromen_conclusie, s13, "Zal ik je eerst vertellen over herinneringen of eerst over fantasie?").
next(dromen_conclusie, s13, "herinneringen", s14herinneringen1).
next(dromen_conclusie, s13, "fantasie", s14fantasie1).
next(dromen_conclusie, s13, "fail", s14fail_hf1).

move(dromen_conclusie, s14fail_hf1, say).
text(dromen_conclusie, s14fail_hf1, "Ik vertel je eerst wel over de herinneringen!").
next(dromen_conclusie, s14fail_hf1, "true", s14fail_hf2).

move(dromen_conclusie, s14fail_hf2, say).
text(dromen_conclusie, s14fail_hf2, "In die volgorde ging het in mijn droom ook").
next(dromen_conclusie, s14fail_hf2, "true", s14herinneringen1).

move(dromen_conclusie, s14herinneringen1, say).
text(dromen_conclusie, s14herinneringen1, "Herinneringen zijn de beelden die je opslaat in je database").
next(dromen_conclusie, s14herinneringen1, "true", s14herinneringen2).

move(dromen_conclusie, s14herinneringen2, say).
text(dromen_conclusie, s14herinneringen2, "en later terug kan kijken alsof je met een achtbaankarretje langs televisieschermen rijdt.").
next(dromen_conclusie, s14herinneringen2, "true", s14herinneringen3).

move(dromen_conclusie, s14herinneringen3, continuator).
next(dromen_conclusie, s14herinneringen3, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s14herinneringen_dier1).
next(dromen_conclusie, s14herinneringen3, "true", s14herinneringen_geen_dier1).

move(dromen_conclusie, s14herinneringen_dier1, say).
text(dromen_conclusie, s14herinneringen_dier1, "%lievelingsdier% vertelde dat je herinneringen nodig hebt om goed te kunnen dromen.").
next(dromen_conclusie, s14herinneringen_dier1, "true", s14herinneringen_21).

move(dromen_conclusie, s14herinneringen_geen_dier1, say).
text(dromen_conclusie, s14herinneringen_geen_dier1, "De egel vertelde dat je herinneringen nodig hebt om goed te kunnen dromen.").
next(dromen_conclusie, s14herinneringen_geen_dier1, "true", s14herinneringen21).

move(dromen_conclusie, s14herinneringen21, say).
text(dromen_conclusie, s14herinneringen21, "Niet alle herinneringen zijn leuk of perfect").
next(dromen_conclusie, s14herinneringen21, "true", s14herinneringen22).

move(dromen_conclusie, s14herinneringen22, say).
text(dromen_conclusie, s14herinneringen22, "en van sommige herinneringen word je ook geen leuke of perfecte Robot.").
next(dromen_conclusie, s14herinneringen22, "true", s14herinneringen23).

move(dromen_conclusie, s14herinneringen23, say).
text(dromen_conclusie, s14herinneringen23, "Maar alle herinneringen horen wel bij je!").
next(dromen_conclusie, s14herinneringen23, "true", s14herinneringen24).

move(dromen_conclusie, s14herinneringen24, say).
text(dromen_conclusie, s14herinneringen24, "Zonder mijn herinneringen was ik geen complete Hero!").
next(dromen_conclusie, s14herinneringen24, "true", s14herinneringen25).

move(dromen_conclusie, s14herinneringen25, say).
text(dromen_conclusie, s14herinneringen25, "Daarna hadden we het over fantasie!").
next(dromen_conclusie, s14herinneringen25, "true", s14fantasie1).

move(dromen_conclusie, s14fantasie1, say).
text(dromen_conclusie, s14fantasie1, "Fantasie is dat je dingen voor je kan zien die er misschien in het echt helemaal niet zijn!").
next(dromen_conclusie, s14fantasie1, "true", s14fantasie2).

move(dromen_conclusie, s14fantasie2, say).
text(dromen_conclusie, s14fantasie2, "Fantasie is erg belangrijk om te kunnen dromen.").
next(dromen_conclusie, s14fantasie2, "true", s14fantasie3).

move(dromen_conclusie, s14fantasie3, say).
text(dromen_conclusie, s14fantasie3, "Zo kan je bijvoorbeeld verzinnen wat je de volgende dag wil doen of wat je later worden wil.").
next(dromen_conclusie, s14fantasie3, "true", s14fantasie4).

move(dromen_conclusie, s14fantasie4, continuator).
next(dromen_conclusie, s14fantasie4, [[umVariable=herinneringen_of_fantasie, filter=green, values=["fantasie"]]], s14herinneringen_na_fantasie1).
next(dromen_conclusie, s14fantasie4, "true", s15).

move(dromen_conclusie, s14herinneringen_na_fantasie1, say).
text(dromen_conclusie, s14herinneringen_na_fantasie1, "En daarna hadden we het over dromen!").
next(dromen_conclusie, s14herinneringen_na_fantasie1, "true", s14herinneringen_na_fantasie2).

move(dromen_conclusie, s14herinneringen_na_fantasie2, say).
text(dromen_conclusie, s14herinneringen_na_fantasie2, "Herinneringen zijn de beelden die je opslaat in je database").
next(dromen_conclusie, s14herinneringen_na_fantasie2, "true", s14herinneringen_na_fantasie3).

move(dromen_conclusie, s14herinneringen_na_fantasie3, say).
text(dromen_conclusie, s14herinneringen_na_fantasie3, "en later terug kan kijken alsof je met een achtbaankarretje langs televisieschermen rijdt.").
next(dromen_conclusie, s14herinneringen_na_fantasie3, "true", s14herinneringen_na_fantasie4).

move(dromen_conclusie, s14herinneringen_na_fantasie4, continuator).
next(dromen_conclusie, s14herinneringen_na_fantasie4, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s14herinneringen_na_fantasie_dier1).
next(dromen_conclusie, s14herinneringen_na_fantasie4, "true", s14herinneringen_na_fantasie_geen_dier1).

move(dromen_conclusie, s14herinneringen_na_fantasie_dier1, say).
text(dromen_conclusie, s14herinneringen_na_fantasie_dier1, "%lievelingsdier% vertelde dat je herinneringen nodig hebt om goed te kunnen dromen.").
next(dromen_conclusie, s14herinneringen_na_fantasie_dier1, "true", s14herinneringen_na_fantasie_21).

move(dromen_conclusie, s14herinneringen_na_fantasie_geen_dier1, say).
text(dromen_conclusie, s14herinneringen_na_fantasie_geen_dier1, "De egel vertelde dat je herinneringen nodig hebt om goed te kunnen dromen.").
next(dromen_conclusie, s14herinneringen_na_fantasie_geen_dier1, "true", s14herinneringen_na_fantasie_21).

move(dromen_conclusie, s14herinneringen_na_fantasie_21, say).
text(dromen_conclusie, s14herinneringen_na_fantasie_21, "Niet alle herinneringen zijn leuk of perfect").
next(dromen_conclusie, s14herinneringen_na_fantasie_21, "true", s14herinneringen_na_fantasie_22).

move(dromen_conclusie, s14herinneringen_na_fantasie_22, say).
text(dromen_conclusie, s14herinneringen_na_fantasie_22, "en van sommige herinneringen word je ook geen leuke of perfecte Robot.").
next(dromen_conclusie, s14herinneringen_na_fantasie_22, "true", s14herinneringen_na_fantasie_23).

move(dromen_conclusie, s14herinneringen_na_fantasie_23, say).
text(dromen_conclusie, s14herinneringen_na_fantasie_23, "Maar alle herinneringen horen wel bij je!").
next(dromen_conclusie, s14herinneringen_na_fantasie_23, "true", s14herinneringen_na_fantasie_24).

move(dromen_conclusie, s14herinneringen_na_fantasie_24, say).
text(dromen_conclusie, s14herinneringen_na_fantasie_24, "Zonder mijn herinneringen was ik geen complete Hero!").
next(dromen_conclusie, s14herinneringen_na_fantasie_24, "true", s15).

move(dromen_conclusie, s15, say).
text(dromen_conclusie, s15, "Met de juiste hoeveelheid fantasie en met herinneringen kan je te gekke dromen maken.").
next(dromen_conclusie, s15, "true", s16).

move(dromen_conclusie, s16, say).
text(dromen_conclusie, s16, "Ik ben daarom erg blij dat jij mij hebt leren dromen!").
next(dromen_conclusie, s16, "true", s17).

move(dromen_conclusie, s17, say).
text(dromen_conclusie, s17, "Zonder jou had ik nooit over al die dingen kunnen dromen").
next(dromen_conclusie, s17, "true", s18).

move(dromen_conclusie, s18, say).
text(dromen_conclusie, s18, "En zonder te dromen over de Robospelen was ik nooit zover gekomen!").
next(dromen_conclusie, s18, "true", s19).

move(dromen_conclusie, s19, say).
text(dromen_conclusie, s19, "Zonder te dromen had ik waarschijnlijk niet eens meegedaan.").
next(dromen_conclusie, s19, "true", s20).

move(dromen_conclusie, s20, say).
text(dromen_conclusie, s20, "Maar dat heb ik allemaal niet zelf bedacht hoor").
next(dromen_conclusie, s20, "true", s21).

move(dromen_conclusie, s21, continuator).
next(dromen_conclusie, s21, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s22dier1).
next(dromen_conclusie, s21, "true", s22geen_dier1).

move(dromen_conclusie, s22dier1, say).
text(dromen_conclusie, s22dier1, "Dat zei onze %lievelingsdier% vannacht tegen me toen ik droomde").

move(dromen_conclusie, s22geen_dier1, say).
text(dromen_conclusie, s22geen_dier1, "Dat zei ons egeltje vannacht tegen me toen ik droomde").

