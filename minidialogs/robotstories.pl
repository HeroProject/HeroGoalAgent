%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		ROBOTSTORIES - KIEM Editie	           %%%
%%%  		MiniDialogs for iteration 3		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introductie				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(rs_intro, s1, say).
text(rs_intro, s1, "Daaaar ben ik weer!").
next(rs_intro, s1, "true", s2).

move(rs_intro, s2, say).
text(rs_intro, s2, "Wat een mooie ruimte").
next(rs_intro, s2, "true", s3).

move(rs_intro, s3, say).
text(rs_intro, s3, "Hoi, hallo, goedendag").
next(rs_intro, s3, "true", s4).

move(rs_intro, s4, question).
moveConfig(rs_intro, s4, [type=yesno, context='answer_yesno']).
text(rs_intro, s4, "Volgens mij ben ik in %location%. Klopt dat?").
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
text(rs_intro, s10, "Als u iets zegt, dan probeer ik dat altijd zo goed mogelijk te horen. Bijvoorbeeld.").
next(rs_intro, s10, "true", s11).

move(rs_intro, s11, question).
moveConfig(rs_intro, s11, [type=input, context='color', fast=yes, options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], inputModality=[speech=2], umVariable=rs_kleur]).
text(rs_intro, s11, "Wat is uw lievelingskleur?").
next(rs_intro, s11, 'success', s12).
next(rs_intro, s11, 'fail', s13).

move(rs_intro, s12, say).
text(rs_intro, s12, "%rs_intro_s11%! Ziet u, ik kan al een beetje luisteren.").
next(rs_intro, s12, "true", s13).

move(rs_intro, s13, say).
text(rs_intro, s13, "Maar soms ben ik een beetje doof.").
next(rs_intro, s13, "true", s14).

move(rs_intro, s13, say).
text(rs_intro, s13, "Dan kunt u de knopjes op mijn scherm gebruiken.").
next(rs_intro, s13, "true", s14).

move(rs_intro, s14, question).
moveConfig(rs_intro, s14, [type=input, fast=yes, options=['pop', 'rock', 'blues', 'jazz', 'country', 'smartlap'], inputModality=[tablet=1], maxAnswerTime=[tablet=0]]).
text(rs_intro, s14, "Druk maar op het knopje met de muziek genere die u het leukste vind.").
next(rs_intro, s14, 'success', s16).
next(rs_intro, s14, 'fail', s16).

move(rs_intro, s16, say).
text(rs_intro, s16, "Maar, weet u, soms snap ik het niet.").
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
moveConfig(rs_intro, s26, [waitTimer=3000]).
text(rs_intro, s26, "Wat is uw naam?").
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
moveConfig(rs_intro, s32, [type=input, context="gender", options=['meneer', 'mevrouw'], fast=yes, umVariable=rs_3_gender, defaultAnswer='']).
text(rs_intro, s32, "Ben u een meneer of mevrouw?").
next(rs_intro, s32, "success", s33).
next(rs_intro, s32, "fail", s33).

move(rs_intro, s33, say).
text(rs_intro, s33, "Wat leuk om u te ontmoeten, %rs_3_gender% %first_name%").
next(rs_intro, s33, "fail", s34).

move(rs_intro, s34, question).
moveConfig(rs_intro, s34, [type=input, context="answer_age", umVariable=rs_3_age]).
text(rs_intro, s34, "Hoe oud bent u eigenlijk?").
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
text(rs_herinneringen, s1, "Kunt u nog herinneren dat u vroeger als school zat?").
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
moveConfig(rs_herinneringen, s3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_herinneringen, s3, "En, Wat is het allerleukste op school? Wat vond u het leukste daar?").
next(rs_herinneringen, s3, "success", s4).
next(rs_herinneringen, s3, "fail", s4).

move(rs_herinneringen, s4, say).
text(rs_herinneringen, s4, "Er zijn ook zoveel dingen om van te kiezen.").
next(rs_herinneringen, s4, "true", s5).

move(rs_herinneringen, s5, say).
text(rs_herinneringen, s5, "Maar wat fijn dat u hierover nadenkt!").
next(rs_herinneringen, s5, "true", s6).

move(rs_herinneringen, s6, question).
moveConfig(rs_herinneringen, s6, [type=openend, context='answer_open', inputModality=[speech=1], umVariabele=rs_leukste_aan_vroeger]).
text(rs_herinneringen, s6, "En, Wat kun u nog meer herinneren over vroeger? Wat vond u het leukst aan toen opgroeien?").
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
moveConfig(rs_herinneringen, s12, [type=openend, context='answer_open', inputModality=[speech=2]]).
text(rs_herinneringen, s12, "Wat zou dan uw tip zijn?").
next(rs_herinneringen, s12, "success", s13).
next(rs_herinneringen, s12, "fail", s13fail).

move(rs_herinneringen, s13, say).
text(rs_herinneringen, s13, "Die ga ik goed bij me houden!").

move(rs_herinneringen, s13fail, say).
text(rs_herinneringen, s13fail, "Geen probleem!").


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Mens zijn				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

minidialog(rs_mens, [type=functional, function=test]).

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
moveConfig(rs_mens, s12, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_mens, s12, "Waarom kun u het goed met die persoon vinden?").
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
next(rs_mens, s22ja, "success", s23).
next(rs_mens, s22ja, "fail", s24).

move(rs_mens, s21nee, say).
text(rs_mens, s21nee, "O. Wat jammer.").
next(rs_mens, s21nee, "true", s22nee).

move(rs_mens, s22nee, question).
moveConfig(rs_mens, s22nee, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_mens, s22nee, "Waarom kan dat niet, %rs_3_gender% %first_name%?").
next(rs_mens, s22nee, "success", s23).
next(rs_mens, s22nee, "fail", s24).

move(rs_mens, s23, say).
text(rs_mens, s23, "Dankjewel dat u me dit uitlegt!").
next(rs_mens, s23, "true", s24).

move(rs_mens, s24, say).
text(rs_mens, s24, "ik weet alleen maar hoe het is om een robot te zijn").
next(rs_mens, s24, "true", s25).

move(rs_mens, s25, say).
text(rs_mens, s25, "ik weet ook dat ik veel vragen stel").
next(rs_mens, s25, "true", s26).

move(rs_mens, s26, say).
text(rs_mens, s26, "hopelijk vind u dat niet vervelend").
next(rs_mens, s26, "true", s27).

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
moveConfig(rs_mens, s32, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_mens, s32, "hoe is het dan, om een mens te zijn?").
next(rs_mens, s32, "success", s33).
next(rs_mens, s32, "fail", s33fail).

move(rs_mens, s33fail, say).
text(rs_mens, s33fail, "Het is misschien ook wel een vreemde vraag.").
next(rs_mens, s33fail, "true", s35).

move(rs_mens, s33, question).
moveConfig(rs_mens, s33, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_mens, s33, "Wat interessant, vertel verder.").
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
moveConfig(rs_mens, s39, [type=yesno, context='answer_yesno']).
text(rs_mens, s39, "Wilt u nog verder met mij praten?").
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
moveConfig(rs_plek, s4, [type=input, context="zee_bos_bergen_strand", options=['strand', 'bos'], fast=yes, umVariable=rs_3_bos_of_strand, defaultAnswer='strand']).
text(rs_plek, s4, "Van welke van de twee houd u het meest, het bos, of het strand?").
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
next(rs_plek, s8strand, "answer_yes", s9strand).
next(rs_plek, s8strand, "answer_no", s9nee).
next(rs_plek, s8strand, "answer_dontknow", s9strand).
next(rs_plek, s8strand, "fail", s9strand).

move(rs_plek, s9nee, question).
moveConfig(rs_plek, s9nee, [type=yesno, context='answer_yesno']).
text(rs_plek, s9nee, "Ben u dan wel eens in het bos geweest?").
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
next(rs_plek, s9cstrand, "answer_yes", s9dstrand).
next(rs_plek, s9cstrand, "answer_no", s9dneestrand).
next(rs_plek, s9cstrand, "answer_dontknow", s9dfailstrand).
next(rs_plek, s9cstrand, "fail", s9dfailstrand).

move(rs_plek, s9dstrand, say).
text(rs_plek, s9dstrand, "Neem uw tijd. Als u klaar bent mag u op de knop drukken").
next(rs_plek, s9dstrand, "true", s10strand).

move(rs_plek, s9dneestrand, say).
text(rs_plek, s9dneestrand, "Dat begrijp ik, ik ga er zelf ook kapot aan.").
next(rs_plek, s9dneestrand, "true", s12strand).

move(rs_plek, s9dfailstrand, say).
text(rs_plek, s9dfailstrand, "En, ik wilde u ook nog iets anders vragen!").
next(rs_plek, s9dfailstrand, "true", s12strand).

move(rs_plek, s10strand, question).
moveConfig(rs_plek, s10strand, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_plek, s10strand, "Wat heeft u gevoeld?").
next(rs_plek, s10strand, "success", s11strand).
next(rs_plek, s10strand, "fail", s12strand).

move(rs_plek, s11strand, say).
text(rs_plek, s11strand, "Wat bijzonder dat u dat kunt voelen").
next(rs_plek, s11strand, "true", s12strand).

move(rs_plek, s12strand, say).
text(rs_plek, s12strand, "Ik heb gehoord dat je ook dingen van zand kunt bouwen. Zandkastelen, bijvoorbeeld \pau=300\ ").
next(rs_plek, s12strand, "true", s13strand).

move(rs_plek, s13strand, question).
moveConfig(rs_plek, s13strand, [type=yesno, context='answer_yesno']).
text(rs_plek, s13strand, "Heeft u weleens iets van zand gebouwd?").
next(rs_plek, s13strand, "answer_yes", s13bstrand).
next(rs_plek, s13strand, "answer_no", s14strand).
next(rs_plek, s13strand, "answer_dontknow", s14strand).
next(rs_plek, s13strand, "fail", s14strand).

move(rs_plek, s13bstrand, question).
moveConfig(rs_plek, s13bstrand, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_plek, s13bstrand, "Oh wat dan?").
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
next(rs_plek, s11bos, "answer_yes", s12bos).
next(rs_plek, s11bos, "answer_no", s12nee).
next(rs_plek, s11bos, "answer_dontknow", s12bos).
next(rs_plek, s11bos, "fail", s12bos).

move(rs_plek, s12nee, question).
moveConfig(rs_plek, s12nee, [type=yesno, context='answer_yesno']).
text(rs_plek, s12nee, "Bent u dan wel eens op het strand geweest?").
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
next(rs_plek, s14cbos, "answer_yes", s14dbos).
next(rs_plek, s14cbos, "answer_no", s14dneebos).
next(rs_plek, s14cbos, "answer_dontknow", s14dfailbos).
next(rs_plek, s14cbos, "fail", s14dfailbos).

move(rs_plek, s14dbos, say).
text(rs_plek, s14dbos, "Neem uw tijd. Als u klaar bent mag u op de knop drukken").
next(rs_plek, s14dbos, "true", s15bos).

move(rs_plek, s14dneebos, say).
text(rs_plek, s14dneebos, "Dat begrijp ik, misschien stinkt het ook wel.").
next(rs_plek, s14dneebos, "true", s14dfailbos).

move(rs_plek, s14dfailbos, say).
text(rs_plek, s14dfailbos, "En, ik wilde u ook nog iets anders vragen!").
next(rs_plek, s14dfailbos, "true", s18bos).

move(rs_plek, s15bos, question).
moveConfig(rs_plek, s15bos, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_plek, s15bos, "Wat ruikt u?").
next(rs_plek, s15bos, "success", s16bos).
next(rs_plek, s15bos, "fail", s20bos).

move(rs_plek, s16bos, question).
moveConfig(rs_plek, s16bos, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_plek, s16bos, "Maar waarom ruikt het bos dan zoals het bos ruikt?").
next(rs_plek, s16bos, "success", s18bos).
next(rs_plek, s16bos, "fail", s18bos).

move(rs_plek, s18bos, question).
moveConfig(rs_plek, s18bos, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_plek, s18bos, "En wat doen mensen dan in bossen?").
next(rs_plek, s18bos, "success", s19bos).
next(rs_plek, s18bos, "fail", s19bos).

move(rs_plek, s19bos, say).
text(rs_plek, s19bos, "Dankjewel voor alles wat u me hebt verteld over het bos").
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
text(rs_verhaal, s4, "En natuurlijk %rs_kleur%, uw favoriete").
next(rs_verhaal, s4, "true", s5).

move(rs_verhaal, s5, question).
moveConfig(rs_verhaal, s5, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s5, "Kun u mij nog meer vertellen over dingen die ik nog niet weet??").
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
next(rs_verhaal, s10, [[umVariable=first_name, filter=green, values=['linders']]], s11linders).

%%% Faasen %%%
move(rs_verhaal, s11faasen, say).
text(rs_verhaal, s11faasen, "En, Ik ben helemaal vergeten te vragen naar uw werk!").
next(rs_verhaal, s11faasen, "true", s12faasen).

move(rs_verhaal, s12faasen, question).
moveConfig(rs_verhaal, s12faasen, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s12faasen, "Wat deed u eigenlijk voor werk?").
next(rs_verhaal, s12faasen, "success", s13faasen).
next(rs_verhaal, s12faasen, "fail", s14faasen).

move(rs_verhaal, s13faasen, say).
text(rs_verhaal, s13faasen, "Echt waar? Dat is met machines en zo. Met robots. Net als ik!").
next(rs_verhaal, s13faasen, "true", s14faasen).

move(rs_verhaal, s14faasen, question).
moveConfig(rs_verhaal, s14faasen, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s14faasen, "En wat vond u het leukste aan uw werk?").
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
next(rs_verhaal, s12mozer, "success", s13mozer).
next(rs_verhaal, s12mozer, "fail", s14mozer).

move(rs_verhaal, s13mozer, say).
text(rs_verhaal, s13mozer, "Echt waar? Ik ben ook gemaakt bij een lopende band! Wat leuk!").
next(rs_verhaal, s13mozer, "true", s14mozer).

move(rs_verhaal, s14mozer, question).
moveConfig(rs_verhaal, s14mozer, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s14mozer, "En, Wat moest u daar doen dan?").
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
text(rs_verhaal, s13roos, "ik heb gehoord dat mensen ook soms huisdieren hebben").
next(rs_verhaal, s13roos, "true", s14roos).

move(rs_verhaal, s14roos, say).
text(rs_verhaal, s14roos, "daar ben ik best jaloers op").
next(rs_verhaal, s14roos, "true", s15roos).

move(rs_verhaal, s15roos, question).
moveConfig(rs_verhaal, s15roos, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s15roos, "Bent u zo'n mens met een huisdier?").
next(rs_verhaal, s15roos, "answer_yes", s16roosja).
next(rs_verhaal, s15roos, "answer_no", s16roosnee).
next(rs_verhaal, s15roos, "answer_dontknow", s16roosnee).
next(rs_verhaal, s15roos, "fail", s16roosnee).

move(rs_intro, s16roosja, question).
moveConfig(rs_intro, s16roosja, [type=input, context='animals', fast=yes, options=['hond', 'kat', 'parkiet', 'konijn'], umVariable=rs_roos_dier]).
text(rs_intro, s16roosja, "Wat voor huisdier heeft u?").
next(rs_intro, s16roosja, 'success', s17roosja).
next(rs_intro, s16roosja, 'fail', s16roosnee).

move(rs_verhaal, s17roosja, question).
moveConfig(rs_verhaal, s17roosja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s17roosja, "Een %rs_roos_dier%, wat voor dier is dat?").
next(rs_verhaal, s17roosja, "success", s18roosja).
next(rs_verhaal, s17roosja, "fail", s18roosja).

move(rs_verhaal, s17roosja, question).
moveConfig(rs_verhaal, s17roosja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s17roosja, "Wat voor geluid maakt een %rs_roos_dier%?").
next(rs_verhaal, s17roosja, "success", s18roos).
next(rs_verhaal, s17roosja, "fail", s18roos).

move(rs_verhaal, s16roosnee, say).
text(rs_verhaal, s16roosnee, "Ik vind zelf een parkiet erg leuk.").
next(rs_verhaal, s16roosnee, "true", s17roosnee).

move(rs_verhaal, s17roosnee, question).
moveConfig(rs_verhaal, s17roosnee, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s17roosnee, "Wat voor geluid maakt een parkiet?").
next(rs_verhaal, s17roosnee, "success", s18roos).
next(rs_verhaal, s17roosnee, "fail", s18roos).

move(rs_verhaal, s18roos, say).
text(rs_verhaal, s18roos, "Dat klinkt heel leuk.").
next(rs_verhaal, s18roos, "true", s19roos).

move(rs_verhaal, s19roos, say).
text(rs_verhaal, s19roos, "Ik hoop dat ik er ooit 1 in het echt zie").

%%% Van Wijnen %%%
move(rs_verhaal, s11vanwijnen, say).
text(rs_verhaal, s11vanwijnen, "U heeft me echt geholpen").
next(rs_verhaal, s11vanwijnen, "true", s12vanwijnen).

move(rs_verhaal, s12vanwijnen, question).
moveConfig(rs_verhaal, s12vanwijnen, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s12vanwijnen, "Vind je het goed als ik je misschien nog 1 vraag stel?").
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
text(rs_verhaal, s14vanwijnen, "zelf kom ik uit een fabriek, dus ik heb ook heel veel broers en zussen").
next(rs_verhaal, s14vanwijnen, "true", s15vanwijnen).

move(rs_verhaal, s15vanwijnen, say).
text(rs_verhaal, s15vanwijnen, "die lijken allemaal precies op mij").
next(rs_verhaal, s15vanwijnen, "true", s16vanwijnen).

move(rs_verhaal, s16vanwijnen, say).
text(rs_verhaal, s16vanwijnen, "net als tweelingen, alleen noemen we dat geen broers of zussen").
next(rs_verhaal, s16vanwijnen, "true", s17vanwijnen).

move(rs_verhaal, s17vanwijnen, say).
text(rs_verhaal, s17vanwijnen, "Komt u uit een, haha, hoe zeidene ze dat ook alweer.").
next(rs_verhaal, s17vanwijnen, "true", s18vanwijnen).

move(rs_verhaal, s18vanwijnen, question).
moveConfig(rs_verhaal, s18vanwijnen, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s18vanwijnen, "Komt u uit een groot nest").
next(rs_verhaal, s18vanwijnen, "answer_yes", s19vanwijnenja).
next(rs_verhaal, s18vanwijnen, "answer_no", s19vanwijnennee).
next(rs_verhaal, s18vanwijnen, "answer_dontknow", s19vanwijnenweetniet).
next(rs_verhaal, s18vanwijnen, "fail", s19vanwijnenweetniet).

move(rs_verhaal, s19vanwijnenja, say).
text(rs_verhaal, s19vanwijnenja, "Wat bijzonder! Ik zou ook graag een broer of zus hebben.").
next(rs_verhaal, s19vanwijnenja, "true", s20vanwijnenja).

move(rs_verhaal, s20vanwijnenja, question).
moveConfig(rs_verhaal, s20vanwijnenja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s20vanwijnenja, "Hoe is dat?").
next(rs_verhaal, s20vanwijnenja, "success", s20vanwijnen).
next(rs_verhaal, s20vanwijnenja, "fail", s20vanwijnen).

move(rs_verhaal, s19vanwijnennee, question).
moveConfig(rs_verhaal, s19vanwijnennee, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(rs_verhaal, s19vanwijnennee, "Hoe is dat?").
next(rs_verhaal, s19vanwijnennee, "success", s20vanwijnen).
next(rs_verhaal, s19vanwijnennee, "fail", s20vanwijnen).

move(rs_verhaal, s19vanwijnenweetniet, question).
moveConfig(rs_verhaal, s19vanwijnenweetniet, [type=yesno, context='answer_yesno']).
text(rs_verhaal, s19vanwijnenweetniet, "Heeft u broers of zussen?").
next(rs_verhaal, s19vanwijnenweetniet, "answer_yes", s19vanwijnenja).
next(rs_verhaal, s19vanwijnenweetniet, "answer_no", s19vanwijnennee).
next(rs_verhaal, s19vanwijnenweetniet, "answer_dontknow", s20vanwijnen).
next(rs_verhaal, s19vanwijnenweetniet, "fail", s20vanwijnen).

move(rs_verhaal, s20vanwijnen, say).
text(rs_verhaal, s20vanwijnen, "Goh, zo had ik er nooit over nagedacht").
next(rs_verhaal, s20vanwijnen, "true", s21vanwijnen).

move(rs_verhaal, s21vanwijnen, say).
text(rs_verhaal, s21vanwijnen, "Maar je vertelt het heel mooi").
next(rs_verhaal, s21vanwijnen, "true", s22vanwijnen).

move(rs_verhaal, s22vanwijnen, say).
text(rs_verhaal, s22vanwijnen, "Ik kan het me nu een beetje voorstellen").

%%% Van den Heuvel %%%

%%% Linders %%%

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
text(rs_slot, s5, "Dank u wel, voor alles. \\pau=500\\ ").
next(rs_slot, s5, "true", s6).

move(rs_slot, s6, question).
moveConfig(rs_slot, s6, [type=yesno, context='answer_yesno']).
text(rs_slot, s6, "Vind u het leuk als ik een keer terug kom?").
next(rs_slot, s6, "answer_yes", s7ja).
next(rs_slot, s6, "answer_no", s7nee).
next(rs_slot, s6, "answer_dontknow", s7nee).
next(rs_slot, s6, "fail", s7nee).

move(rs_slot, s7ja, say).
text(rs_slot, s7ja, "Hoera! Dan heb ik iets om me op te verheugen.").
next(rs_slot, s7ja, "true", s8ja).

move(rs_slot, s8ja, say).
text(rs_slot, s8ja, "Haha, nou hopelijk tot snel.").

move(rs_slot, s7nee, say).
text(rs_slot, s7nee, "Dat is helemaal goed.").
next(rs_slot, s7nee, "true", s8nee).

move(rs_slot, s8nee, say).
text(rs_slot, s8nee, "Ik wens je het allerbeste toe en dankjewel voor je tijd").