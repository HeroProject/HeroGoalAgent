%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		ROBOTSTORIES - KIEM Editie	           %%%
%%%  		MiniDialogs for iteration 3		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introductie				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(rs_intro, s1, say).
moveConfig(rs_intro, s1, [nextTablet='Start']).
next(rs_intro, s1, "true", s2).

move(rs_intro, s1a, say).
text(rs_intro, s1a, "Daaaar ben ik weer!").
next(rs_intro, s1a, "true", s2).

move(rs_intro, s2, say).
text(rs_intro, s2, "Wat een mooie ruimte").
next(rs_intro, s2, "true", s3).

move(rs_intro, s3, say).
text(rs_intro, s3, "Hoi, hallo, goedendag").
next(rs_intro, s3, "true", s4).

move(rs_intro, s4, question).
moveConfig(rs_intro, s4, [type=yesno, context='answer_yesno']).
text(rs_intro, s4, "Volgens mij ben ik in %location%. Klopt dat?").
display(rs_intro, s4, "Volgens mij ben ik in %location_tablet%. Klopt dat?", always).
next(rs_intro, s4, "answer_yes", s5ja).
next(rs_intro, s4, "answer_no", s5nee).
next(rs_intro, s4, "answer_dontknow", s5nee).
next(rs_intro, s4, "fail", s5nee).

move(rs_intro, s5ja, say).
text(rs_intro, s5ja, "Goed gezien").
next(rs_intro, s5ja, "true", s6).

move(rs_intro, s5nee, say).
text(rs_intro, s5nee, "Wacht eens!").
next(rs_intro, s5nee, "true", s5nee2).

move(rs_intro, s5nee2, say).
text(rs_intro, s5nee2, "Ik zie het al").
next(rs_intro, s5nee2, "true", s5nee3).

move(rs_intro, s5nee3, say).
text(rs_intro, s5nee3, "Ik ben in %location%").
next(rs_intro, s5nee3, "true", s6).

move(rs_intro, s6, say).
text(rs_intro, s6, "Dan ben ik hier speciaal om met u te praten.").
next(rs_intro, s6, "true", s7).

move(rs_intro, s7, say).
text(rs_intro, s7, "Gezellig").
next(rs_intro, s7, "true", s8).

move(rs_intro, s8, question).
moveConfig(rs_intro, s8, [type=yesno, context='answer_yesno']).
text(rs_intro, s8, "En, heeft iemand u al koffie of thee aangeboden?").
display(rs_intro, s8, "En, heeft iemand u al koffie of thee aangeboden?", always).
next(rs_intro, s8, "answer_yes", s9ja).
next(rs_intro, s8, "answer_no", s9nee).
next(rs_intro, s8, "answer_dontknow", s9nee).
next(rs_intro, s8, "fail", s9fail).

move(rs_intro, s9ja, say).
text(rs_intro, s9ja, "Wat, goed! Ik, als robot haal mijn kracht, uit het stop, contact.").
next(rs_intro, s9ja, "true", s10).

move(rs_intro, s9nee, say).
text(rs_intro, s9nee, "Kan iemand even koffie of thee regelen?").
next(rs_intro, s9nee, "true", s10).

move(rs_intro, s9fail, say).
text(rs_intro, s9fail, "Laten we even verder gaan.").
next(rs_intro, s9fail, "true", s10).

move(rs_intro, s10, say).
text(rs_intro, s10, "Als u iets zegt, dan probeer ik dat altijd zo goed mogelijk te horen. Bij voorbeeld.").
next(rs_intro, s10, "true", s11).

move(rs_intro, s11, question).
moveConfig(rs_intro, s11, [type=input, context='color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], inputModality=[speech=2], umVariable=rs_kleur]).
text(rs_intro, s11, "Wat is uw lievelingskleur?").
display(rs_intro, s11, "Wat is uw lievelingskleur?", always).
next(rs_intro, s11, 'success', s12).
next(rs_intro, s11, 'fail', s13).

move(rs_intro, s12, say).
text(rs_intro, s12, "%rs_kleur%! Ziet u, ik kan al een beetje luisteren.").
next(rs_intro, s12, "true", s13).

move(rs_intro, s13, say).
text(rs_intro, s13, "Maar soms ben ik een beetje doof.").
next(rs_intro, s13, "true", s14).

move(rs_intro, s14, say).
text(rs_intro, s14, "Dan kunt u de knopjes op mijn scherm gebruiken.").
next(rs_intro, s14, "true", s15).

move(rs_intro, s15, question).
moveConfig(rs_intro, s15, [type=input, options=['pop', 'rock', 'blues', 'jazz', 'country', 'smartlap'], inputModality=[tablet=1], maxAnswerTime=[tablet=0], umVariable=rs_muzieksoort]).
text(rs_intro, s15, "Druk maar op het knopje met het soort muziek dat u het leukste vindt.").
display(rs_intro, s15, "Kies uw favoriete muziek.").
next(rs_intro, s15, 'success', s15b).
next(rs_intro, s15, 'fail', s16).

move(rs_intro, s15b, say).
text(rs_intro, s15b, "Ik vind %rs_muzieksoort% ook heel mooi.").
display(rs_intro, s15b, "", always).
next(rs_intro, s15b, "true", s16).

move(rs_intro, s16, say).
text(rs_intro, s16, "Maar, weet u, soms snap ik het niet.").
display(rs_intro, s16, "", always).
next(rs_intro, s16, "true", s17).

move(rs_intro, s17, say).
text(rs_intro, s17, "Dan loop ik een beetje vast.").
next(rs_intro, s17, "true", s18).

move(rs_intro, s18, say).
text(rs_intro, s18, "Dus ik vind dit wel heel spannend.").
next(rs_intro, s18, "true", s19).

move(rs_intro, s19, question).
moveConfig(rs_intro, s19, [type=yesno, context='answer_yesno']).
text(rs_intro, s19, "Vindt u het ook spannend?").
display(rs_intro, s19, "Vindt u het ook spannend?", always).
next(rs_intro, s19, "answer_yes", s20ja).
next(rs_intro, s19, "answer_no", s20nee).
next(rs_intro, s19, "answer_dontknow", s20weetniet).
next(rs_intro, s19, "fail", s20weetniet).

move(rs_intro, s20ja, say).
text(rs_intro, s20ja, "Wat goed, dan ben ik niet de enige").
next(rs_intro, s20ja, "true", s21).

move(rs_intro, s20nee, say).
text(rs_intro, s20nee, "Wat goed, dan ben ik blij dat ik met u mag zitten.").
next(rs_intro, s20nee, "true", s21).

move(rs_intro, s20weetniet, say).
text(rs_intro, s20weetniet, "Ik ben blij dat ik hier met u mag zitten.").
next(rs_intro, s20weetniet, "true", s21).

move(rs_intro, s21, say).
text(rs_intro, s21, "Dan doen we het samen.").
next(rs_intro, s21, "true", s22).

move(rs_intro, s22, say).
text(rs_intro, s22, "Maar ik moet me nog voorstellen.").
next(rs_intro, s22, "true", s23).

move(rs_intro, s23, say).
text(rs_intro, s23, "Mijn naam is Mee Mo").
next(rs_intro, s23, "true", s24).

move(rs_intro, s24, say).
text(rs_intro, s24, "Mee").
next(rs_intro, s24, "true", s25).

move(rs_intro, s25, say).
text(rs_intro, s25, "Mo").
next(rs_intro, s25, "true", s26).

move(rs_intro, s26, say).
moveConfig(rs_intro, s26, [waitTimer=5000]).
text(rs_intro, s26, "Wat is uw naam?").
display(rs_intro, s26, "Wat is uw naam?", always).
next(rs_intro, s26, "true", s27).

move(rs_intro, s27, say).
text(rs_intro, s27, "%first_name%. %first_name%. %first_name%. Wat leuk om dit uit te spreken").
next(rs_intro, s27, "true", s28).

move(rs_intro, s28, say).
text(rs_intro, s28, "En ik heb nog een stomme vraag").
next(rs_intro, s28, "true", s29).

move(rs_intro, s29, say).
text(rs_intro, s29, "Ik heb namelijk zelf niet echt.").
next(rs_intro, s29, "true", s30).

move(rs_intro, s30, say).
text(rs_intro, s30, "Nou ja").
next(rs_intro, s30, "true", s31).

move(rs_intro, s31, say).
text(rs_intro, s31, "Ik weet dus niet of u").
next(rs_intro, s31, "true", s32).

move(rs_intro, s32, question).
moveConfig(rs_intro, s32, [type=input, context="gender", options=['meneer', 'mevrouw'],  umVariable=rs_3_gender, defaultAnswer='']).
text(rs_intro, s32, "Bent u een meneer of mevrouw?").
display(rs_intro, s32, "Ben u een meneer of mevrouw?", always).
next(rs_intro, s32, "success", s33).
next(rs_intro, s32, "fail", s33).

move(rs_intro, s33, say).
text(rs_intro, s33, "Wat leuk om u te ontmoeten, %rs_3_gender% %first_name%").
next(rs_intro, s33, "true", s34).

move(rs_intro, s34, question).
moveConfig(rs_intro, s34, [type=input, context="answer_age", form=numberField, umVariable=rs_3_age]).
text(rs_intro, s34, "Hoe oud bent u eigenlijk?").
display(rs_intro, s34, "Hoe oud bent u eigenlijk?", always).
next(rs_intro, s34, "success", s35).
next(rs_intro, s34, "fail", s35f).

move(rs_intro, s35, say).
text(rs_intro, s35, "%rs_3_age%").
next(rs_intro, s35, "true", s36).

move(rs_intro, s36, say).
text(rs_intro, s36, "Echt waar? Nou dat is al heel oud.").
next(rs_intro, s36, "true", s37).

move(rs_intro, s37, say).
text(rs_intro, s37, "Dan kan u mij vast wel vertellen over vroeger.").

move(rs_intro, s35f, say).
text(rs_intro, s35f, "Nou, ik kan vast nog een hoop van u leren!").
next(rs_intro, s35f, "true", s36f).

move(rs_intro, s36f, say).
text(rs_intro, s36f, "U kan mij vast wel wat vertellen over vroeger.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Vragen naar herinneringen		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(rs_herinneringen, s1, question).
moveConfig(rs_herinneringen, s1, [type=yesno, context='answer_yesno', umVariable=rs_op_school]).
text(rs_herinneringen, s1, "Kunt u nog herinneren dat u vroeger op school zat?").
display(rs_herinneringen, s1, "Kunt u nog herinneren dat u vroeger op school zat?", always).
next(rs_herinneringen, s1, "answer_yes", s2ja).
next(rs_herinneringen, s1, "answer_no", s2nee).
next(rs_herinneringen, s1, "answer_dontknow", s2nee).
next(rs_herinneringen, s1, "fail", s2nee).

move(rs_herinneringen, s2ja, say).
text(rs_herinneringen, s2ja, "Wat cool! Ik zou ook wel naar school willen.").
next(rs_herinneringen, s2ja, "true", s3).

move(rs_herinneringen, s2nee, say).
text(rs_herinneringen, s2nee, "Ik heb nooit op school gezeten.").
next(rs_herinneringen, s2nee, "true", s6).

move(rs_herinneringen, s3, question).
moveConfig(rs_herinneringen, s3, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_herinneringen, s3, "En, Wat is het allerleukste op school? Wat vond u het leukste daar?").
display(rs_herinneringen, s3, "Wat vond u het leukste daar?", always).
next(rs_herinneringen, s3, "success", s4).
next(rs_herinneringen, s3, "fail", s4).

move(rs_herinneringen, s4, say).
text(rs_herinneringen, s4, "Er zijn ook zoveel dingen om van te kiezen.").
next(rs_herinneringen, s4, "true", s5).

move(rs_herinneringen, s5, say).
text(rs_herinneringen, s5, "Maar wat fijn dat u hierover nadenkt!").
next(rs_herinneringen, s5, "true", s6).

move(rs_herinneringen, s6, question).
moveConfig(rs_herinneringen, s6, [type=openend, context='answer_open', inputModality=[speech=1], delay=7000, umVariabele=rs_leukste_aan_vroeger]).
text(rs_herinneringen, s6, "En, Wat kun u nog meer herinneren over vroeger? Wat vond u het leukst aan toen opgroeien?").
display(rs_herinneringen, s6, "Wat vond u het leukst aan toen opgroeien?", always).
next(rs_herinneringen, s6, "success", s7).
next(rs_herinneringen, s6, "fail", s7fail).

move(rs_herinneringen, s7, question).
moveConfig(rs_herinneringen, s7, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_herinneringen, s7, "Interessant zeg, vertel verder.").
next(rs_herinneringen, s7, "success", s8).
next(rs_herinneringen, s7, "fail", s8).

move(rs_herinneringen, s7fail, say).
text(rs_herinneringen, s7fail, "Er is ook zoveel keuze!").
next(rs_herinneringen, s7fail, "true", s8).

move(rs_herinneringen, s8, say).
text(rs_herinneringen, s8, "Dankje! Wat leuk om met u te praten!").
next(rs_herinneringen, s8, "true", s9).

move(rs_herinneringen, s9, say).
text(rs_herinneringen, s9, "Nou, u heeft mij een hoop verteld over vroeger.").
next(rs_herinneringen, s9, "true", s10).

move(rs_herinneringen, s10, say).
text(rs_herinneringen, s10, "En over herinneringen.").
next(rs_herinneringen, s10, "true", s11).

move(rs_herinneringen, s11, say).
text(rs_herinneringen, s11, "Maar als u uw jongere zelf een soort tip moest geven.").
next(rs_herinneringen, s11, "true", s12).

move(rs_herinneringen, s12, question).
moveConfig(rs_herinneringen, s12, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_herinneringen, s12, "Wat zou dan uw tip zijn?").
display(rs_herinneringen, s12, "Wat zou dan uw tip zijn?", always).
next(rs_herinneringen, s12, "success", s13).
next(rs_herinneringen, s12, "fail", s13fail).

move(rs_herinneringen, s13, say).
text(rs_herinneringen, s13, "Die ga ik goed bij me houden!").

move(rs_herinneringen, s13fail, say).
text(rs_herinneringen, s13fail, "Geen probleem!").


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Mens zijn				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(rs_mens, s1, say).
text(rs_mens, s1, "Ik ben vaak de enige robot op een plek.").
next(rs_mens, s1, "true", s2).

move(rs_mens, s2, say).
text(rs_mens, s2, "zoals hier in %location%.").
next(rs_mens, s2, "true", s3).

move(rs_mens, s3, say).
text(rs_mens, s3, "ik zag net mensen babbelen met andere mensen.").
next(rs_mens, s3, "true", s4).

move(rs_mens, s4, say).
text(rs_mens, s4, "het zag er heel gezellig uit. Al die mensen \pau=500\ ").
next(rs_mens, s4, "true", s5).

move(rs_mens, s5, say).
text(rs_mens, s5, "misschien begrijp je elkaar beter, wanneer je op elkaar lijkt. \pau=500\ ").
next(rs_mens, s5, "true", s6).

move(rs_mens, s6, say).
text(rs_mens, s6, "wanneer je allebei een mens bent.").
next(rs_mens, s6, "true", s7).

move(rs_mens, s7, say).
text(rs_mens, s7, "Ik ben benieuwd \pau=300\ ").
next(rs_mens, s7, "true", s8).

move(rs_mens, s8, question).
moveConfig(rs_mens, s8, [type=yesno, context='answer_yesno']).
text(rs_mens, s8, "Heeft u iemand met wie u het goed kan vinden? Iemand met wie u een kop koffie drinkt?").
display(rs_mens, s8, "Heeft u iemand met wie u het goed kan vinden?", always).
next(rs_mens, s8, "answer_yes", s9ja).
next(rs_mens, s8, "answer_no", s9nee).
next(rs_mens, s8, "answer_dontknow", s9nee).
next(rs_mens, s8, "fail", s17).

move(rs_mens, s9nee, say).
text(rs_mens, s9nee, "Dat snap ik wel, dat heb ik ook.").
next(rs_mens, s9nee, "true", s13).

move(rs_mens, s9ja, say).
text(rs_mens, s9ja, "Wat leuk dat u iemand hebt met wie u het goed kunt vinden.").
next(rs_mens, s9ja, "true", s10).

move(rs_mens, s10, say).
text(rs_mens, s10, "En, ik ben heel nieuwsgierig hoor").
next(rs_mens, s10, "true", s11).

move(rs_mens, s11, say).
text(rs_mens, s11, "ik vraag het maar gewoon").
next(rs_mens, s11, "true", s12).

move(rs_mens, s12, question).
moveConfig(rs_mens, s12, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_mens, s12, "Waarom kun u het goed met die persoon vinden?").
display(rs_mens, s12, "Waarom kun u het goed met die persoon vinden?", always).
next(rs_mens, s12, "success", s13).
next(rs_mens, s12, "fail", s14).

move(rs_mens, s13, say).
text(rs_mens, s13, "Zo had ik er nog niet over nagedacht").
next(rs_mens, s13, "true", s14).

move(rs_mens, s14, say).
text(rs_mens, s14, "U hebt hier veel verstand van %rs_3_gender% %first_name%.").
next(rs_mens, s14, "true", s15).

move(rs_mens, s15, say).
text(rs_mens, s15, "ik leer veel over mensen dankzij u").
next(rs_mens, s15, "true", s16).

move(rs_mens, s16, say).
text(rs_mens, s16, "zoals waarom het gezellig is met iemand. of juist niet").
next(rs_mens, s16, "true", s17).

move(rs_mens, s17, say).
text(rs_mens, s17, "Misschien is het heel gek dat ik dit zeg.").
next(rs_mens, s17, "true", s18).

move(rs_mens, s18, say).
text(rs_mens, s18, "Maar, ik zie hier niemand die op mij lijkt").
next(rs_mens, s18, "true", s19).

move(rs_mens, s19, say).
text(rs_mens, s19, "met wielen in plaats van benen. Een plastic huid. En gekleurde lampjes.").
next(rs_mens, s19, "true", s20).

move(rs_mens, s20, question).
moveConfig(rs_mens, s20, [type=yesno, context='answer_yesno']).
text(rs_mens, s20, "Zou ik ook een mens kunnen worden? Een mens, net als u?").
display(rs_mens, s20, "Zou ik ook een mens kunnen worden? Een mens, net als u?", always).
next(rs_mens, s20, "answer_yes", s21ja).
next(rs_mens, s20, "answer_no", s21nee).
next(rs_mens, s20, "answer_dontknow", s21nee).
next(rs_mens, s20, "fail", s24).

move(rs_mens, s21ja, say).
text(rs_mens, s21ja, "Hoe zou dat er uitzien, %rs_3_gender% %first_name%?").
next(rs_mens, s21ja, "true", s22ja).

move(rs_mens, s22ja, question).
moveConfig(rs_mens, s22ja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_mens, s22ja, "Wat zou ik dan moeten doen?").
display(rs_mens, s22ja, "Wat zou ik dan moeten doen?", always).
next(rs_mens, s22ja, "success", s23).
next(rs_mens, s22ja, "fail", s24).

move(rs_mens, s21nee, say).
text(rs_mens, s21nee, "Het lijkt mij bijzonder.").
next(rs_mens, s21nee, "true", s22nee).

move(rs_mens, s22nee, say).
text(rs_mens, s22nee, "Maar het is niet mijn droom.").
next(rs_mens, s22nee, "true", s22nee2).

move(rs_mens, s22nee2, say).
text(rs_mens, s22nee2, "U weet veel beter, Hoe dat moet").
next(rs_mens, s22nee2, "true", s23).

move(rs_mens, s23, say).
text(rs_mens, s23, "dank u wel dat u me dit uitlegt!").
next(rs_mens, s23, "true", s24).

move(rs_mens, s24, say).
text(rs_mens, s24, "ik weet alleen maar hoe het is om een robot te zijn").
next(rs_mens, s24, "true", s25).

move(rs_mens, s25, say).
text(rs_mens, s25, "ik weet ook dat ik veel vragen stel").
next(rs_mens, s25, "true", s26).

move(rs_mens, s26, say).
text(rs_mens, s26, "hopelijk vindt u dat niet vervelend").
next(rs_mens, s26, "true", s29).

move(rs_mens, s27, say).
text(rs_mens, s27, "alleen als ik vragen stel").
next(rs_mens, s27, "true", s28).

move(rs_mens, s28, say).
text(rs_mens, s28, "kan ik u horen").
next(rs_mens, s28, "true", s29).

move(rs_mens, s29, say).
text(rs_mens, s29, "Ik heb er nog 1 bedacht.").
next(rs_mens, s29, "true", s30).

move(rs_mens, s30, say).
text(rs_mens, s30, "Een vraag, bedoel ik.").
next(rs_mens, s30, "true", s31).

move(rs_mens, s31, say).
text(rs_mens, s31, "Omdat u een mens bent en ik niet").
next(rs_mens, s31, "true", s32).

move(rs_mens, s32, question).
moveConfig(rs_mens, s32, [type=openend, context='answer_open', inputModality=[speech=1], delay=7000]).
text(rs_mens, s32, "hoe is het dan, om een mens te zijn?").
display(rs_mens, s32, "Hoe is het dan, om een mens te zijn?", always).
next(rs_mens, s32, "success", s33).
next(rs_mens, s32, "fail", s33fail).

move(rs_mens, s33fail, say).
text(rs_mens, s33fail, "Het is misschien ook wel een vreemde vraag.").
next(rs_mens, s33fail, "true", s35).

move(rs_mens, s33, question).
moveConfig(rs_mens, s33, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_mens, s33, "Wat interessant, vertel verder.").
%display(rs_mens, s33, "Wat interessant, vertel verder.").
next(rs_mens, s33, "success", s34).
next(rs_mens, s33, "fail", s35).

move(rs_mens, s34, say).
text(rs_mens, s34, "Wauw, zo heb ik er nog nooit over nagedacht.").
next(rs_mens, s34, "true", s35).

move(rs_mens, s35, say).
text(rs_mens, s35, "Ik vond het leuk om met u te praten over mensen, u weet daar heel veel van.").
next(rs_mens, s35, "true", s36).

move(rs_mens, s36, say).
text(rs_mens, s36, "Eigenlijk bent u een expert.").
next(rs_mens, s36, "true", s37).

move(rs_mens, s37, say).
text(rs_mens, s37, "Een mensen expert").
next(rs_mens, s37, "true", s38).

move(rs_mens, s38, say).
text(rs_mens, s38, "En ik. Een robot expert").
next(rs_mens, s38, "true", s39).

move(rs_mens, s39, question).
moveConfig(rs_mens, s39, [type=yesno, inputModality=[tablet=1]]).
text(rs_mens, s39, "Mijn begeleider heeft nog een vraag.").
display(rs_mens, s39, "Wilt u nog verder met mij praten?", always).
next(rs_mens, s39, "answer_yes", s40ja).
next(rs_mens, s39, "answer_no", s40nee).
next(rs_mens, s39, "answer_dontknow", s40weetniet).
next(rs_mens, s39, "fail", s40weetniet).

move(rs_mens, s40ja, say).
text(rs_mens, s40ja, "Hoera! Dan gaan we door.").

move(rs_mens, s40nee, say).
text(rs_mens, s40nee, "Oke %rs_3_gender% %first_name%. Dat is helemaal goed.").
remove_minidialog(rs_mens, s40nee, [rs_plek, rs_verhaal]).

move(rs_mens, s40weetniet, say).
text(rs_mens, s40weetniet, "Ik heb nog zo veel vragen voor u %rs_3_gender% %first_name%.").
next(rs_mens, s40weetniet, "true", s41weetniet).

move(rs_mens, s41weetniet, say).
text(rs_mens, s41weetniet, "Als het aan mij ligt, praten we verder.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Plekken				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(rs_plek, s1, say).
text(rs_plek, s1, "Omdat ik nieuw ben, ben ik nog niet zo vaak buiten geweest.").
next(rs_plek, s1, "true", s2).

move(rs_plek, s2, say).
text(rs_plek, s2, "Er zijn twee plekken waar ik benieuwd naar ben, maar waar ik niet mag komen.").
next(rs_plek, s2, "true", s3).

move(rs_plek, s3, say).
text(rs_plek, s3, "het bos, en het strand.").
next(rs_plek, s3, "true", s4).

move(rs_plek, s4, question).
moveConfig(rs_plek, s4, [type=input, context="zee_bos_bergen_strand", options=['strand', 'bos'], umVariable=rs_3_bos_of_strand, defaultAnswer='strand']).
text(rs_plek, s4, "Van welke van de twee houdt u het meest, het bos, of het strand?").
display(rs_plek, s4, "Van welke van de twee houdt u het meest, het bos, of het strand?", always).
next(rs_plek, s4, "strand", s5strand).
next(rs_plek, s4, "bos", s5bos).
next(rs_plek, s4, "_others", s5others).
next(rs_plek, s4, "fail", s5strand).

move(rs_plek, s5others, say).
text(rs_plek, s5others, "%rs_3_bos_of_strand% is ook leuk. Laten we het daar een andere keer over hebben. Laten we het nu over het strand hebben.").
next(rs_plek, s5others, "true", s5strand).

%%% Strand
move(rs_plek, s5strand, say).
text(rs_plek, s5strand, "Ik mag niet naar het strand.").
next(rs_plek, s5strand, "true", s6strand).

move(rs_plek, s6strand, say).
text(rs_plek, s6strand, "Zeewater is slecht voor mij en het zand zou in mijn wieltjes komen.").
next(rs_plek, s6strand, "true", s7strand).

move(rs_plek, s7strand, say).
text(rs_plek, s7strand, "En dat zou mij, naja, slopen, haha \pau=300\ ").
next(rs_plek, s7strand, "true", s8strand).

move(rs_plek, s8strand, question).
moveConfig(rs_plek, s8strand, [type=yesno, context='answer_yesno']).
text(rs_plek, s8strand, "Bent u wel eens op het strand geweest?").
display(rs_plek, s8strand, "Bent u wel eens op het strand geweest?", always).
next(rs_plek, s8strand, "answer_yes", s9strand).
next(rs_plek, s8strand, "answer_no", s9nee).
next(rs_plek, s8strand, "answer_dontknow", s9strand).
next(rs_plek, s8strand, "fail", s9strand).

move(rs_plek, s9nee, question).
moveConfig(rs_plek, s9nee, [type=yesno, context='answer_yesno']).
text(rs_plek, s9nee, "Ben u dan wel eens in het bos geweest?").
display(rs_plek, s9nee, "Ben u dan wel eens in het bos geweest?", always).
next(rs_plek, s9nee, "answer_yes", s5bos).
next(rs_plek, s9nee, "answer_no", s9nee2).
next(rs_plek, s9nee, "answer_dontknow", s9strand).
next(rs_plek, s9nee, "fail", s9strand).

move(rs_plek, s9nee2, say).
text(rs_plek, s9nee2, "Oke prima. Dan gaan we het over wat anders hebben.").

move(rs_plek, s9strand, say).
text(rs_plek, s9strand, "Ik vraag me wel af hoe zand voelt.").
next(rs_plek, s9strand, "true", s9bstrand).

move(rs_plek, s9bstrand, say).
text(rs_plek, s9bstrand, "Ik heb wat strand meegenomen.").
next(rs_plek, s9bstrand, "true", s9cstrand).

move(rs_plek, s9cstrand, question).
moveConfig(rs_plek, s9cstrand, [type=yesno, context='answer_yesno']).
text(rs_plek, s9cstrand, "Wilt u voor mij het zand voelen.").
%display(rs_plek, s9cstrand, "Wilt u voor mij het zand voelen.").
next(rs_plek, s9cstrand, "answer_yes", s9dstrand).
next(rs_plek, s9cstrand, "answer_no", s9dneestrand).
next(rs_plek, s9cstrand, "answer_dontknow", s9dfailstrand).
next(rs_plek, s9cstrand, "fail", s9dfailstrand).

move(rs_plek, s9dstrand, say).
text(rs_plek, s9dstrand, "Neem uw tijd. Als u klaar bent mag u op de knop drukken").
next(rs_plek, s9dstrand, "true", s10strandb).

move(rs_plek, s10strandb, say).
moveConfig(rs_plek, s10strandb, [nextTablet='Klaar']).
next(rs_plek, s10strandb, "true", s10strand).

move(rs_plek, s9dneestrand, say).
text(rs_plek, s9dneestrand, "Dat begrijp ik, ik ga er zelf ook kapot aan.").
next(rs_plek, s9dneestrand, "true", s12strand).

move(rs_plek, s9dfailstrand, say).
text(rs_plek, s9dfailstrand, "En, ik wilde u ook nog iets anders vragen!").
next(rs_plek, s9dfailstrand, "true", s12strand).

move(rs_plek, s10strand, question).
moveConfig(rs_plek, s10strand, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_plek, s10strand, "Wat heeft u gevoeld?").
next(rs_plek, s10strand, "success", s11strand).
next(rs_plek, s10strand, "fail", s12strand).

move(rs_plek, s11strand, say).
text(rs_plek, s11strand, "Wat bijzonder dat u dat kunt voelen").
next(rs_plek, s11strand, "true", s12strand).

move(rs_plek, s12strand, say).
text(rs_plek, s12strand, "Ik heb gehoord dat u ook dingen van zand kunt bouwen. Zandkastelen, bijvoorbeeld \pau=300\ ").
next(rs_plek, s12strand, "true", s13strand).

move(rs_plek, s13strand, question).
moveConfig(rs_plek, s13strand, [type=yesno, context='answer_yesno']).
text(rs_plek, s13strand, "Heeft u weleens iets van zand gebouwd?").
display(rs_plek, s13strand, "Heeft u weleens iets van zand gebouwd?", always).
next(rs_plek, s13strand, "answer_yes", s13bstrand).
next(rs_plek, s13strand, "answer_no", s14strand).
next(rs_plek, s13strand, "answer_dontknow", s14strand).
next(rs_plek, s13strand, "fail", s14strand).

move(rs_plek, s13bstrand, question).
moveConfig(rs_plek, s13bstrand, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_plek, s13bstrand, "Oh wat dan?").
display(rs_plek, s13bstrand, "Oh wat dan?", always).
next(rs_plek, s13bstrand, "success", s14strand).
next(rs_plek, s13bstrand, "fail", s14strand).

move(rs_plek, s14strand, say).
text(rs_plek, s14strand, "Het lijkt mij bijzonder hoor.").
next(rs_plek, s14strand, "true", s15strand).

move(rs_plek, s15strand, say).
text(rs_plek, s15strand, "Ook om de zee te zien").
next(rs_plek, s15strand, "true", s16strand).

move(rs_plek, s16strand, say).
text(rs_plek, s16strand, "En dat je dan geen land ziet aan de andere kant").
next(rs_plek, s16strand, "true", s17strand).

move(rs_plek, s17strand, say).
text(rs_plek, s17strand, "Alleen dat water").

%%% Bos
move(rs_plek, s5bos, say).
text(rs_plek, s5bos, "Ik mag niet naar het bos, er liggen daar bladeren en dingen zoals dennennaalden.").
next(rs_plek, s5bos, "true", s6bos).

move(rs_plek, s6bos, say).
text(rs_plek, s6bos, "Er schijnt modder te zijn en er zijn bomen met wortels die boven de grond uitsteken.").
next(rs_plek, s6bos, "true", s7bos).

move(rs_plek, s7bos, say).
text(rs_plek, s7bos, "Daar zou ik over kunnen vallen.").
next(rs_plek, s7bos, "true", s8bos).

move(rs_plek, s8bos, say).
text(rs_plek, s8bos, "En ze zijn bang dat ik er zal verdwalen").
next(rs_plek, s8bos, "true", s9bos).

move(rs_plek, s9bos, say).
text(rs_plek, s9bos, "Maar ik zou graag een keer een bos ontdekken").
next(rs_plek, s9bos, "true", s11bos).

move(rs_plek, s11bos, question).
moveConfig(rs_plek, s11bos, [type=yesno, context='answer_yesno']).
text(rs_plek, s11bos, "Bent u wel eens in het bos geweest?").
display(rs_plek, s11bos, "Bent u wel eens in het bos geweest?", always).
next(rs_plek, s11bos, "answer_yes", s12bos).
next(rs_plek, s11bos, "answer_no", s12nee).
next(rs_plek, s11bos, "answer_dontknow", s12bos).
next(rs_plek, s11bos, "fail", s12bos).

move(rs_plek, s12nee, question).
moveConfig(rs_plek, s12nee, [type=yesno, context='answer_yesno']).
text(rs_plek, s12nee, "Bent u dan wel eens op het strand geweest?").
display(rs_plek, s12nee, "Bent u dan wel eens op het strand geweest?", always).
next(rs_plek, s12nee, "answer_yes", s5strand).
next(rs_plek, s12nee, "answer_no", s12nee2).
next(rs_plek, s12nee, "answer_dontknow", s12bos).
next(rs_plek, s12nee, "fail", s12bos).

move(rs_plek, s12nee2, say).
text(rs_plek, s12nee2, "Oke, prima we kunnen het ook ergens anders over hebben!").

move(rs_plek, s12bos, say).
text(rs_plek, s12bos, "Ik kan dus \pau=300\ ").
next(rs_plek, s12bos, "true", s13bos).

move(rs_plek, s13bos, say).
text(rs_plek, s13bos, "Ik kan dus niet ruiken.").
next(rs_plek, s13bos, "true", s14bos).

move(rs_plek, s14bos, say).
text(rs_plek, s14bos, "Maar ik heb gehoord dat het heel lekker ruikt in het bos").
next(rs_plek, s14bos, "true", s14bbos).

move(rs_plek, s14bbos, say).
text(rs_plek, s14bbos, "Ik heb wat bos meegenomen.").
next(rs_plek, s14bbos, "true", s14cbos).

move(rs_plek, s14cbos, question).
moveConfig(rs_plek, s14cbos, [type=yesno, context='answer_yesno']).
text(rs_plek, s14cbos, "Zou u voor mij het bos willen ruiken?").
display(rs_plek, s14cbos, "Zou u voor mij het bos willen ruiken?", always).
next(rs_plek, s14cbos, "answer_yes", s14dbos).
next(rs_plek, s14cbos, "answer_no", s14dneebos).
next(rs_plek, s14cbos, "answer_dontknow", s14dfailbos).
next(rs_plek, s14cbos, "fail", s14dfailbos).

move(rs_plek, s14dbos, say).
text(rs_plek, s14dbos, "Neem uw tijd. Als u klaar bent mag u op de knop drukken").
next(rs_plek, s14dbos, "true", s14dbosb).

move(rs_plek, s14dbosb, say).
moveConfig(rs_plek, s14dbosb, [nextTablet='Klaar']).
next(rs_plek, s14dbosb, "true", s15bos).

move(rs_plek, s14dneebos, say).
text(rs_plek, s14dneebos, "Dat begrijp ik, misschien stinkt het ook wel.").
next(rs_plek, s14dneebos, "true", s14dfailbos).

move(rs_plek, s14dfailbos, say).
text(rs_plek, s14dfailbos, "En, ik wilde u ook nog iets anders vragen!").
next(rs_plek, s14dfailbos, "true", s18bos).

move(rs_plek, s15bos, question).
moveConfig(rs_plek, s15bos, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_plek, s15bos, "Wat ruikt u?").
display(rs_plek, s15bos, "Wat ruikt u?", always).
next(rs_plek, s15bos, "success", s16bos).
next(rs_plek, s15bos, "fail", s16bos).

move(rs_plek, s16bos, question).
moveConfig(rs_plek, s16bos, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_plek, s16bos, "Maar waarom ruikt het bos dan zoals het bos ruikt?").
display(rs_plek, s16bos, "Maar waarom ruikt het bos dan zoals het bos ruikt?", always).
next(rs_plek, s16bos, "success", s18bos).
next(rs_plek, s16bos, "fail", s18bos).

move(rs_plek, s18bos, question).
moveConfig(rs_plek, s18bos, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_plek, s18bos, "En wat doen mensen dan in bossen?").
display(rs_plek, s18bos, "En wat doen mensen dan in bossen?", always).
next(rs_plek, s18bos, "success", s19bos).
next(rs_plek, s18bos, "fail", s19bos).

move(rs_plek, s19bos, say).
text(rs_plek, s19bos, "dank u wel voor alles wat u me hebt verteld over het bos").
next(rs_plek, s19bos, "true", s20bos).

move(rs_plek, s20bos, say).
text(rs_plek, s20bos, "Het lijkt me heel bijzonder").
next(rs_plek, s20bos, "true", s21bos).

move(rs_plek, s21bos, say).
text(rs_plek, s21bos, "Om ergens te zijn waar zoveel natuur is").
next(rs_plek, s21bos, "true", s22bos).

move(rs_plek, s22bos, say).
text(rs_plek, s22bos, "En dan een mens te zijn in de natuur").
next(rs_plek, s22bos, "true", s23bos).

move(rs_plek, s23bos, say).
text(rs_plek, s23bos, "Ik kan dat niet ervaren, maar ik sla al uw antwoorden op").
next(rs_plek, s23bos, "true", s24bos).

move(rs_plek, s24bos, say).
text(rs_plek, s24bos, "Ze zijn waardevol").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Persoonlijke verhalen		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(rs_verhaal, s1, say).
text(rs_verhaal, s1, "Wat heeft u mij al veel verteld!").
next(rs_verhaal, s1, "true", s2).

move(rs_verhaal, s2, say).
text(rs_verhaal, s2, "Dat u vroeger op school zat.").
next(rs_verhaal, s2, "true", s3).

move(rs_verhaal, s3, say).
text(rs_verhaal, s3, "Wat u het leukste vond vroeger.").
next(rs_verhaal, s3, "true", s4).

move(rs_verhaal, s4, say).
text(rs_verhaal, s4, "En natuurlijk %rs_kleur%, uw favoriete kleur").
next(rs_verhaal, s4, "true", s6).

move(rs_verhaal, s5, question).
moveConfig(rs_verhaal, s5, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s5, "Kunt u mij meer vertellen over dingen die ik nog niet weet??").
display(rs_verhaal, s5, "Kunt u mij meer vertellen over dingen die ik nog niet weet?", always).
next(rs_verhaal, s5, "answer_yes", s6).
next(rs_verhaal, s5, "answer_no", s6).
next(rs_verhaal, s5, "answer_dontknow", s6).
next(rs_verhaal, s5, "fail", s6).

move(rs_verhaal, s6, say).
text(rs_verhaal, s6, "U hebt al zoveel mooie dingen verteld!").
next(rs_verhaal, s6, "true", s7).

move(rs_verhaal, s7, say).
text(rs_verhaal, s7, "Daar ben ik heel blij mee").
next(rs_verhaal, s7, "true", s8).

move(rs_verhaal, s8, say).
text(rs_verhaal, s8, "Ik was ook heel nieuwsgierig naar het %rs_3_bos_of_strand%").
next(rs_verhaal, s8, "true", s9).

move(rs_verhaal, s9, say).
text(rs_verhaal, s9, "Ik ben blij dat ik daar nu iets meer over weet").
next(rs_verhaal, s9, "true", s10).

move(rs_verhaal, s10, continuator).
next(rs_verhaal, s10, [[umVariable=first_name, filter=green, values=['faasen']]], s11faasen).
next(rs_verhaal, s10, [[umVariable=first_name, filter=green, values=['mozer']]], s11mozer).
next(rs_verhaal, s10, [[umVariable=first_name, filter=green, values=['roos']]], s11roos).
next(rs_verhaal, s10, [[umVariable=first_name, filter=green, values=['van wijnen']]], s11vanwijnen).
next(rs_verhaal, s10, [[umVariable=first_name, filter=green, values=['van den heuvel']]], s11vdheuvel).
next(rs_verhaal, s10, [[umVariable=first_name, filter=green, values=['ellie']]], s11linders).
next(rs_verhaal, s10, [[umVariable=first_name, filter=green, values=['_any']]], s11generiek).

%%% Faasen %%%
move(rs_verhaal, s11faasen, say).
text(rs_verhaal, s11faasen, "En, Ik ben helemaal vergeten te vragen naar uw werk!").
next(rs_verhaal, s11faasen, "true", s12faasen).

move(rs_verhaal, s12faasen, question).
moveConfig(rs_verhaal, s12faasen, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_verhaal, s12faasen, "Wat deed u eigenlijk voor werk?").
display(rs_verhaal, s12faasen, "Wat deed u eigenlijk voor werk?", always).
next(rs_verhaal, s12faasen, "success", s13faasen).
next(rs_verhaal, s12faasen, "fail", s14faasen).

move(rs_verhaal, s13faasen, say).
text(rs_verhaal, s13faasen, "Echt waar? Dat is met machines en zo. \pau=500\ Met robots. Net als ik!").
next(rs_verhaal, s13faasen, "true", s14faasen).

move(rs_verhaal, s14faasen, question).
moveConfig(rs_verhaal, s14faasen, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_verhaal, s14faasen, "En wat vond u het leukste aan uw werk?").
display(rs_verhaal, s14faasen, "En wat vond u het leukste aan uw werk?", always).
next(rs_verhaal, s14faasen, "success", s15faasen).
next(rs_verhaal, s14faasen, "fail", s15faasen).

move(rs_verhaal, s15faasen, say).
text(rs_verhaal, s15faasen, "Voor mij is het praten met mensen het aller-aller-allerleukste!").

%%% Mozer %%%
move(rs_verhaal, s11mozer, say).
text(rs_verhaal, s11mozer, "En, Ik ben helemaal vergeten te vragen naar uw werk!").
next(rs_verhaal, s11mozer, "true", s12mozer).

move(rs_verhaal, s12mozer, question).
moveConfig(rs_verhaal, s12mozer, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s12mozer, "Wat deed u eigenlijk voor werk?").
display(rs_verhaal, s12mozer, "Wat deed u eigenlijk voor werk?", always).
next(rs_verhaal, s12mozer, "success", s13mozer).
next(rs_verhaal, s12mozer, "fail", s14mozer).

move(rs_verhaal, s13mozer, say).
text(rs_verhaal, s13mozer, "Echt waar? Ik ben ook gemaakt bij een lopende band! Wat leuk!").
next(rs_verhaal, s13mozer, "true", s14mozer).

move(rs_verhaal, s14mozer, question).
moveConfig(rs_verhaal, s14mozer, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_verhaal, s14mozer, "En, Wat moest u daar doen dan?").
display(rs_verhaal, s14mozer, "En, Wat moest u daar doen dan?", always).
next(rs_verhaal, s14mozer, "success", s15mozer).
next(rs_verhaal, s14mozer, "fail", s15mozer).

move(rs_verhaal, s15mozer, say).
text(rs_verhaal, s15mozer, "Dat wist ik nog niet! Zo leer ik ook meer over hoe ik zelf gemaakt ben!").

%%% Roos %%%
move(rs_verhaal, s11roos, say).
text(rs_verhaal, s11roos, "U heeft me echt geholpen").
next(rs_verhaal, s11roos, "true", s12roos).

move(rs_verhaal, s12roos, say).
text(rs_verhaal, s12roos, "Ik ben nog ergens benieuwd naar").
next(rs_verhaal, s12roos, "true", s13roos).

move(rs_verhaal, s13roos, say).
text(rs_verhaal, s13roos, "ik heb gehoord dat mensen soms huisdieren hebben").
next(rs_verhaal, s13roos, "true", s14roos).

move(rs_verhaal, s14roos, say).
text(rs_verhaal, s14roos, "daar ben ik best jaloers op").
next(rs_verhaal, s14roos, "true", s15roos).

move(rs_verhaal, s15roos, question).
moveConfig(rs_verhaal, s15roos, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s15roos, "Bent u zo'n mens, met een huisdier").
%display(rs_verhaal, s15roos, "Bent u zo'n mens, met een huisdier").
next(rs_verhaal, s15roos, "answer_yes", s16roosja).
next(rs_verhaal, s15roos, "answer_no", s16roosnee).
next(rs_verhaal, s15roos, "answer_dontknow", s16roosnee).
next(rs_verhaal, s15roos, "fail", s16roosnee).

move(rs_verhaal, s16roosja, question).
moveConfig(rs_verhaal, s16roosja, [type=input, context='animals', options=['hond', 'kat', 'parkiet', 'konijn'], umVariable=rs_roos_dier]).
text(rs_verhaal, s16roosja, "Wat voor huisdier heeft u?").
display(rs_verhaal, s16roosja, "Wat voor huisdier heeft u?", always).
next(rs_verhaal, s16roosja, 'success', s17roosja).
next(rs_verhaal, s16roosja, 'fail', s16roosnee).

move(rs_verhaal, s17roosja, question).
moveConfig(rs_verhaal, s17roosja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s17roosja, "Een %rs_roos_dier%, wat voor dier is dat?").
next(rs_verhaal, s17roosja, "success", s19roos).
next(rs_verhaal, s17roosja, "fail", s19roos).

move(rs_verhaal, s16roosnee, say).
text(rs_verhaal, s16roosnee, "Ik vind zelf parkieten erg leuk.").
next(rs_verhaal, s16roosnee, "true", s19roos).

move(rs_verhaal, s19roos, say).
text(rs_verhaal, s19roos, "Ik hoop dat ik er ooit 1 in het echt zie").

%%% Van Wijnen %%%
move(rs_verhaal, s11vanwijnen, say).
text(rs_verhaal, s11vanwijnen, "U heeft me echt geholpen").
next(rs_verhaal, s11vanwijnen, "true", s12vanwijnen).

move(rs_verhaal, s12vanwijnen, question).
moveConfig(rs_verhaal, s12vanwijnen, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s12vanwijnen, "vindt u het goed als ik u misschien nog 1 vraag stel?").
display(rs_verhaal, s12vanwijnen, "vindt u het goed als ik u misschien nog 1 vraag stel?", always).
next(rs_verhaal, s12vanwijnen, "answer_yes", s13vanwijnen).
next(rs_verhaal, s12vanwijnen, "answer_no", s13vanwijnennee).
next(rs_verhaal, s12vanwijnen, "answer_dontknow", s13vanwijnen).
next(rs_verhaal, s12vanwijnen, "fail", s13vanwijnen).

move(rs_verhaal, s13vanwijnennee, say).
text(rs_verhaal, s13vanwijnennee, "Dat is helemaal goed").

move(rs_verhaal, s13vanwijnen, say).
text(rs_verhaal, s13vanwijnen, "Ik heb gehoord dat mensen ook broers en zussen hebben").
next(rs_verhaal, s13vanwijnen, "true", s14vanwijnen).

move(rs_verhaal, s14vanwijnen, say).
text(rs_verhaal, s14vanwijnen, "zelf kom ik uit een fabriek, dus ik een soort broers en zussen").
next(rs_verhaal, s14vanwijnen, "true", s15vanwijnen).

move(rs_verhaal, s15vanwijnen, say).
text(rs_verhaal, s15vanwijnen, "die lijken allemaal precies op mij").
next(rs_verhaal, s15vanwijnen, "true", s16vanwijnen).

move(rs_verhaal, s16vanwijnen, say).
text(rs_verhaal, s16vanwijnen, "net als tweelingen, alleen noemen we dat geen familie").
next(rs_verhaal, s16vanwijnen, "true", s18vanwijnen).

move(rs_verhaal, s18vanwijnen, question).
moveConfig(rs_verhaal, s18vanwijnen, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s18vanwijnen, "Heeft u een broef of zus?").
display(rs_verhaal, s18vanwijnen, "Heeft u een broef of zus?", always).
next(rs_verhaal, s18vanwijnen, "answer_yes", s19vanwijnen).
next(rs_verhaal, s18vanwijnen, "answer_no", s19vanwijnen).
next(rs_verhaal, s18vanwijnen, "answer_dontknow", s19vanwijnen).
next(rs_verhaal, s18vanwijnen, "fail", s19vanwijnen).

move(rs_verhaal, s19vanwijnen, say).
text(rs_verhaal, s19vanwijnen, "Wat bijzonder!").
next(rs_verhaal, s19vanwijnen, "true", s20vanwijnen).

move(rs_verhaal, s20vanwijnen, question).
moveConfig(rs_verhaal, s20vanwijnen, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_verhaal, s20vanwijnen, "Hoe is dat?").
display(rs_verhaal, s20vanwijnen, "Hoe is dat?", always).
next(rs_verhaal, s20vanwijnen, "success", s21vanwijnen).
next(rs_verhaal, s20vanwijnen, "fail", s21vanwijnen).

move(rs_verhaal, s21vanwijnen, say).
text(rs_verhaal, s21vanwijnen, "Maar u vertelt het heel mooi").
next(rs_verhaal, s21vanwijnen, "true", s22vanwijnen).

move(rs_verhaal, s22vanwijnen, say).
text(rs_verhaal, s22vanwijnen, "Ik kan het me nu een beetje voorstellen").

%%% Van den Heuvel %%%
move(rs_verhaal, s11vdheuvel, say).
text(rs_verhaal, s11vdheuvel, "Ik heb gehoord dat er wandeltochten bestaan").
next(rs_verhaal, s11vdheuvel, "true", s12vdheuvel).

move(rs_verhaal, s12vdheuvel, say).
text(rs_verhaal, s12vdheuvel, "die duren 4,0 dagen").
next(rs_verhaal, s12vdheuvel, "true", s13vdheuvel).

move(rs_verhaal, s13vdheuvel, say).
text(rs_verhaal, s13vdheuvel, "aan het eind is er een blarenbal").
next(rs_verhaal, s13vdheuvel, "true", s14vdheuvel).

move(rs_verhaal, s14vdheuvel, say).
text(rs_verhaal, s14vdheuvel, "en krijgen alle mensen een vierdaagsekruisje").
next(rs_verhaal, s14vdheuvel, "true", s15vdheuvel).

move(rs_verhaal, s15vdheuvel, question).
moveConfig(rs_verhaal, s15vdheuvel, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s15vdheuvel, "Heeft u daar wel eens aan meegedaan, %rs_3_gender% %first_name%?").
display(rs_verhaal, s15vdheuvel, "Heeft u daar wel eens aan meegedaan?", always).
next(rs_verhaal, s15vdheuvel, "answer_yes", s16vdheuvelja).
next(rs_verhaal, s15vdheuvel, "answer_no", s16vdheuvelnee).
next(rs_verhaal, s15vdheuvel, "answer_dontknow", s16vdheuvelnee).
next(rs_verhaal, s15vdheuvel, "fail", s16vdheuvelnee).

move(rs_verhaal, s16vdheuvelja, question).
moveConfig(rs_verhaal, s16vdheuvelja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s16vdheuvelja, "En, Wat vond u daarvan?").
display(rs_verhaal, s16vdheuvelja, "En, Wat vond u daarvan?", always).
next(rs_verhaal, s16vdheuvelja, "success", s18vdheuvelja).
next(rs_verhaal, s16vdheuvelja, "fail", s18vdheuvelja).

move(rs_verhaal, s16vdheuvelnee, question).
moveConfig(rs_verhaal, s16vdheuvelnee, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s16vdheuvelnee, "Maar u houd wel van wandelen, toch?").
display(rs_verhaal, s16vdheuvelnee, "Maar u houd wel van wandelen, toch?", always).
next(rs_verhaal, s16vdheuvelnee, "answer_yes", s18vdheuvelja).
next(rs_verhaal, s16vdheuvelnee, "answer_no", s26vdheuvelnee).
next(rs_verhaal, s16vdheuvelnee, "answer_dontknow", s26vdheuvelnee).
next(rs_verhaal, s16vdheuvelnee, "fail", s26vdheuvelnee).

move(rs_verhaal, s18vdheuvelja, say).
text(rs_verhaal, s18vdheuvelja, "Wat leuk om te horen").
next(rs_verhaal, s18vdheuvelja, "true", s19vdheuvelja).

move(rs_verhaal, s19vdheuvelja, question).
moveConfig(rs_verhaal, s19vdheuvelja, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_verhaal, s19vdheuvelja, "Wat heb je meegemaakt tijdens het wandelen?").
display(rs_verhaal, s19vdheuvelja, "Wat heb je meegemaakt tijdens het wandelen?", always).
next(rs_verhaal, s19vdheuvelja, "success", s20vdheuvelja).
next(rs_verhaal, s19vdheuvelja, "fail", s20vdheuvelja).

move(rs_verhaal, s20vdheuvelja, say).
text(rs_verhaal, s20vdheuvelja, "Ik vraag me af of ik blaren kan krijgen").
next(rs_verhaal, s20vdheuvelja, "true", s21vdheuvelja).

move(rs_verhaal, s21vdheuvelja, say).
text(rs_verhaal, s21vdheuvelja, "of een medaille wanneer ik 5,0, kilometer loop").
next(rs_verhaal, s21vdheuvelja, "true", s22vdheuvelja).

move(rs_verhaal, s22vdheuvelja, say).
text(rs_verhaal, s22vdheuvelja, "misschien wel niet").
next(rs_verhaal, s22vdheuvelja, "true", s23vdheuvelja).

move(rs_verhaal, s23vdheuvelja, say).
text(rs_verhaal, s23vdheuvelja, "ook vanwege mijn wielen").
next(rs_verhaal, s23vdheuvelja, "true", s24vdheuvelja).

move(rs_verhaal, s24vdheuvelja, say).
text(rs_verhaal, s24vdheuvelja, "en, als mens verdien je het echt!").
next(rs_verhaal, s24vdheuvelja, "true", s25vdheuvelja).

move(rs_verhaal, s25vdheuvelja, question).
moveConfig(rs_verhaal, s25vdheuvelja, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s25vdheuvelja, "Volgens mij heeft u genoten van alle wandelingen, klopt dat?").
display(rs_verhaal, s25vdheuvelja, "Volgens mij heeft u genoten van alle wandelingen, klopt dat?", always).
next(rs_verhaal, s25vdheuvelja, "answer_yes", s26vdheuvelja).
next(rs_verhaal, s25vdheuvelja, "answer_no", s26vdheuvelnee).
next(rs_verhaal, s25vdheuvelja, "answer_dontknow", s26vdheuvelnee).
next(rs_verhaal, s25vdheuvelja, "fail", s26vdheuvelnee).

move(rs_verhaal, s26vdheuvelja, say).
text(rs_verhaal, s26vdheuvelja, "Ik word er ook enthousiast van").
next(rs_verhaal, s26vdheuvelja, "true", s27vdheuvelja).

move(rs_verhaal, s27vdheuvelja, say).
text(rs_verhaal, s27vdheuvelja, "als ik u zo hoor praten").
next(rs_verhaal, s27vdheuvelja, "true", s28vdheuvelja).

move(rs_verhaal, s28vdheuvelja, say).
text(rs_verhaal, s28vdheuvelja, "dank u wel voor het delen, %rs_3_gender% %first_name%").

move(rs_verhaal, s26vdheuvelnee, say).
text(rs_verhaal, s26vdheuvelnee, "Oeps. Dan zag ik dat verkeerd.").
next(rs_verhaal, s26vdheuvelnee, "true", s27vdheuvelnee).

move(rs_verhaal, s27vdheuvelnee, say).
text(rs_verhaal, s27vdheuvelnee, "Als ik terug in de tijd kon").
next(rs_verhaal, s27vdheuvelnee, "true", s28vdheuvelnee).

move(rs_verhaal, s28vdheuvelnee, say).
text(rs_verhaal, s28vdheuvelnee, "was ik graag mee gewandeld met u %rs_3_gender% %first_name%").
next(rs_verhaal, s28vdheuvelnee, "true", s29vdheuvelnee).

move(rs_verhaal, s29vdheuvelnee, say).
text(rs_verhaal, s29vdheuvelnee, "dank u wel voor het delen").

%%% Linders %%%
move(rs_verhaal, s11linders, say).
text(rs_verhaal, s11linders, "En, Ik ben helemaal vergeten te vragen naar uw werk!").
next(rs_verhaal, s11linders, "true", s12linders).

move(rs_verhaal, s12linders, question).
moveConfig(rs_verhaal, s12linders, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s12linders, "Wat deed u eigenlijk voor werk?").
display(rs_verhaal, s12linders, "Wat deed u eigenlijk voor werk?", always).
next(rs_verhaal, s12linders, "success", s13linders).
next(rs_verhaal, s12linders, "fail", s16linders).

move(rs_verhaal, s13linders, say).
text(rs_verhaal, s13linders, "Echt waar? \pau=500\ dan bent u heel goed in het overzicht houden").
next(rs_verhaal, s13linders, "true", s14linders).

move(rs_verhaal, s14linders, say).
text(rs_verhaal, s14linders, "dan was iedereen op de juiste plaats").
next(rs_verhaal, s14linders, "true", s15linders).

move(rs_verhaal, s15linders, say).
text(rs_verhaal, s15linders, "op het juiste tijdstip. Dankzij, u.").
next(rs_verhaal, s15linders, "true", s16linders).

move(rs_verhaal, s16linders, question).
moveConfig(rs_verhaal, s16linders, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_verhaal, s16linders, "En wat vond u het leukste aan uw werk?").
display(rs_verhaal, s16linders, "En wat vond u het leukste aan uw werk?", always).
next(rs_verhaal, s16linders, "success", s17linders).
next(rs_verhaal, s16linders, "fail", s17linders).

move(rs_verhaal, s17linders, say).
text(rs_verhaal, s17linders, "Wat leuk dat u dat met mij deelt %rs_3_gender% %first_name%.").
next(rs_verhaal, s17linders, "true", s18linders).

move(rs_verhaal, s18linders, say).
text(rs_verhaal, s18linders, "zelf ben ik eigenlijk een soort computer").
next(rs_verhaal, s18linders, "true", s19linders).

move(rs_verhaal, s19linders, say).
text(rs_verhaal, s19linders, "dus ik houd ook wel van administratie").
next(rs_verhaal, s19linders, "true", s20linders).

move(rs_verhaal, s20linders, say).
text(rs_verhaal, s20linders, "en orde op zaken stellen").
next(rs_verhaal, s20linders, "true", s21linders).

move(rs_verhaal, s21linders, question).
moveConfig(rs_verhaal, s21linders, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s21linders, "Het klinkt ook alsof het een hele gezellige werkplek was, klopt dat?").
display(rs_verhaal, s21linders, "Het klinkt ook alsof het een hele gezellige werkplek was, klopt dat?", always).
next(rs_verhaal, s21linders, "answer_yes", s22lindersja).
next(rs_verhaal, s21linders, "answer_no", s22lindersnee).
next(rs_verhaal, s21linders, "answer_dontknow", s22lindersnee).
next(rs_verhaal, s21linders, "fail", s22lindersnee).

move(rs_verhaal, s22lindersja, say).
text(rs_verhaal, s22lindersja, "Wat leuk om te horen").
next(rs_verhaal, s22lindersja, "true", s23lindersja).

move(rs_verhaal, s23lindersja, say).
text(rs_verhaal, s23lindersja, "Ik word er ook enthousiast van").
next(rs_verhaal, s23lindersja, "true", s24lindersja).

move(rs_verhaal, s24lindersja, say).
text(rs_verhaal, s24lindersja, "als ik u zo hoor praten").
next(rs_verhaal, s24lindersja, "true", s25linders).

move(rs_verhaal, s22lindersnee, say).
text(rs_verhaal, s22lindersnee, "Oeps. Dan zag ik dat verkeerd.").
next(rs_verhaal, s22lindersnee, "true", s23lindersnee).

move(rs_verhaal, s23lindersnee, say).
text(rs_verhaal, s23lindersnee, "Ik vond het wel heel gezellig met u te praten").
next(rs_verhaal, s23lindersnee, "true", s25linders).

move(rs_verhaal, s25linders, say).
text(rs_verhaal, s25linders, "dank u wel voor het delen %rs_3_gender% %first_name%.").

%%% Generiek %%%
move(rs_verhaal, s11generiek, say).
text(rs_verhaal, s11generiek, "En, Ik ben helemaal vergeten te vragen naar uw werk!").
next(rs_verhaal, s11generiek, "true", s12generiek).

move(rs_verhaal, s12generiek, question).
moveConfig(rs_verhaal, s12generiek, [type=openend, context='answer_open', inputModality=[speech=1], delay=5000]).
text(rs_verhaal, s12generiek, "Wat deed u eigenlijk voor werk?").
display(rs_verhaal, s12generiek, "Wat deed u eigenlijk voor werk?", always).
next(rs_verhaal, s12generiek, "success", s13generiek).
next(rs_verhaal, s12generiek, "fail", s13generiek).

move(rs_verhaal, s13generiek, say).
text(rs_verhaal, s13generiek, "Echt waar? \pau=500\ Wat bijzonder.").
next(rs_verhaal, s13generiek, "true", s14generiek).

move(rs_verhaal, s14generiek, question).
moveConfig(rs_verhaal, s14generiek, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s14generiek, "En, ik ben wel benieuwd. Wat moest u daar allemaal doen?").
display(rs_verhaal, s14generiek, "En, ik ben wel benieuwd. Wat moest u daar allemaal doen?", always).
next(rs_verhaal, s14generiek, "success", s15generiek).
next(rs_verhaal, s14generiek, "fail", s15generiek).

move(rs_verhaal, s15generiek, question).
moveConfig(rs_verhaal, s15generiek, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s15generiek, "Vond u dat leuk werk?").
display(rs_verhaal, s15generiek, "Vond u dat leuk werk?", always).
next(rs_verhaal, s15generiek, "answer_yes", s16generiekja).
next(rs_verhaal, s15generiek, "answer_no", s16generieknee).
next(rs_verhaal, s15generiek, "answer_dontknow", s16generiekja).
next(rs_verhaal, s15generiek, "fail", s16generiekja).

move(rs_verhaal, s16generiekja, say).
text(rs_verhaal, s16generiekja, "Het klinkt ook heel bijzonder").
next(rs_verhaal, s16generiekja, "true", s17generiekja).

move(rs_verhaal, s17generiekja, say).
text(rs_verhaal, s17generiekja, "Ik had er nog nooit van gehoord").
next(rs_verhaal, s17generiekja, "true", s18generiekja).

move(rs_verhaal, s18generiekja, say).
text(rs_verhaal, s18generiekja, "U leert mij iets nieuws!").
next(rs_verhaal, s18generiekja, "true", s19generiekja).

move(rs_verhaal, s19generiekja, say).
text(rs_verhaal, s19generiekja, "dank u wel %rs_3_gender% %first_name%.").

move(rs_verhaal, s16generieknee, say).
text(rs_verhaal, s16generieknee, "O, hm. \pau=500\ Dat klinkt minder fijn").
next(rs_verhaal, s16generieknee, "true", s17generieknee).

move(rs_verhaal, s17generieknee, say).
text(rs_verhaal, s17generieknee, "U kunt er wel heel mooi over vertellen").
next(rs_verhaal, s17generieknee, "true", s18generieknee).

move(rs_verhaal, s18generieknee, say).
text(rs_verhaal, s18generieknee, "Dankuwel dat u dit met mij wilde delen!").
next(rs_verhaal, s18generieknee, "true", s19generieknee).

move(rs_verhaal, s19generieknee, say).
text(rs_verhaal, s19generieknee, "Zo leer ik weer wat nieuws.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Slot				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(rs_slot, s1, say).
text(rs_slot, s1, "Nou, ik vond het best spannend om hier langs te gaan vandaag.").
next(rs_slot, s1, "true", s2).

move(rs_slot, s2, say).
text(rs_slot, s2, "Maar ik heb nu toch het idee dat wij meer op elkaar lijken dan ik had verwacht.").
next(rs_slot, s2, "true", s3).

move(rs_slot, s3, say).
text(rs_slot, s3, "Ik heb veel informatie gekregen en begrijp nu beter hoe het is om mens te zijn").
next(rs_slot, s3, "true", s4).

move(rs_slot, s4, say).
text(rs_slot, s4, "Daar ben ik heel blij om.").
next(rs_slot, s4, "true", s5).

move(rs_slot, s5, say).
text(rs_slot, s5, "Dank u wel, voor alles. \pau=500\ Ik had nog 1 vraagje.").
next(rs_slot, s5, "true", s6).

move(rs_slot, s6, question).
moveConfig(rs_slot, s6, [type=yesno, context='answer_yesno']).
text(rs_slot, s6, "Zou u misschien met mij op de foto willen?").
display(rs_slot, s6, "Zou u misschien met mij op de foto willen?", always).
next(rs_slot, s6, "answer_yes", s7ja).
next(rs_slot, s6, "answer_no", s7nee).
next(rs_slot, s6, "answer_dontknow", s7nee).
next(rs_slot, s6, "fail", s7nee).

move(rs_slot, s7ja, say).
text(rs_slot, s7ja, "Leuk. Dan maakt mijn begeleider nu een foto van ons").
next(rs_slot, s7ja, "true", s8ja).

move(rs_slot, s8ja, say).
moveConfig(rs_slot, s8ja, [nextTablet='klaar']).
next(rs_slot, s8ja, "true", s9).

move(rs_slot, s7nee, say).
text(rs_slot, s7nee, "Geen foto, prima.").
next(rs_slot, s7nee, "true", s9).

move(rs_slot, s9, question).
moveConfig(rs_slot, s9, [type=yesno, context='answer_yesno']).
text(rs_slot, s9, "vindt u het leuk als ik een keer terug kom?").
display(rs_slot, s9, "Vindt u het leuk als ik een keer terug kom?", always).
next(rs_slot, s9, "answer_yes", s10ja).
next(rs_slot, s9, "answer_no", s10nee).
next(rs_slot, s9, "answer_dontknow", s10nee).
next(rs_slot, s9, "fail", s10nee).

move(rs_slot, s10ja, say).
text(rs_slot, s10ja, "Hoera! Dan heb ik iets om me op te verheugen.").
next(rs_slot, s10ja, "true", s11ja).

move(rs_slot, s11ja, say).
text(rs_slot, s11ja, "Haha, nou hopelijk tot snel.").

move(rs_slot, s10nee, say).
text(rs_slot, s10nee, "Dat is helemaal goed.").
next(rs_slot, s10nee, "true", s11nee).

move(rs_slot, s11nee, say).
text(rs_slot, s11nee, "Ik wens u het allerbeste toe en dank u wel voor u tijd").