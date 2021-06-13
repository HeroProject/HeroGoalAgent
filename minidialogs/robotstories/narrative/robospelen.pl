%%%% HEADER %%%%
%% robospelen_1_intro %%
minidialog(robospelen_1_intro, [type=narrative, thread=robospelen, position=1]).

move(robospelen_1_intro, s1, say).
text(robospelen_1_intro, s1, "Ik ben blij dat je er bent!").
next(robospelen_1_intro, s1, "true", s2).

move(robospelen_1_intro, s2, say).
text(robospelen_1_intro, s2, "Ik vind het heel leuk om met een mens te praten.").
next(robospelen_1_intro, s2, "true", s3).

move(robospelen_1_intro, s3, say).
text(robospelen_1_intro, s3, "Zo veel mensen ken ik niet.").
next(robospelen_1_intro, s3, "true", s4).

move(robospelen_1_intro, s4, say).
text(robospelen_1_intro, s4, "Jij doet vast echte mensendingen.").
next(robospelen_1_intro, s4, "true", s5).

move(robospelen_1_intro, s5, question).
moveConfig(robospelen_1_intro, s5, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=vandaag_gedaan]).
text(robospelen_1_intro, s5, "Wat heb je vandaag gedaan voordat je mij ontmoette?").
next(robospelen_1_intro, s5, "success", s6).
next(robospelen_1_intro, s5, "fail", s6).

move(robospelen_1_intro, s6, say).
text(robospelen_1_intro, s6, "Wauw, wat menselijk!").
next(robospelen_1_intro, s6, "true", s7).

move(robospelen_1_intro, s7, say).
text(robospelen_1_intro, s7, "Ik ben vandaag hierheen gekomen met Mike.").
next(robospelen_1_intro, s7, "true", s8).

move(robospelen_1_intro, s8, say).
text(robospelen_1_intro, s8, "En daarvoor heb ik getraind.").
next(robospelen_1_intro, s8, "true", s9).

move(robospelen_1_intro, s9, say).
text(robospelen_1_intro, s9, "Want ik mag dit jaar voor het eerst meedoen met de Robo Spelen.").
next(robospelen_1_intro, s9, "true", s10).

move(robospelen_1_intro, s10, say).
text(robospelen_1_intro, s10, "Dat is een grote wereldwijde competitie, alleen voor robots.").
next(robospelen_1_intro, s10, "true", s11).

move(robospelen_1_intro, s11, say).
text(robospelen_1_intro, s11, "De beste robot wint!").
next(robospelen_1_intro, s11, "true", s12).

move(robospelen_1_intro, s12, say).
text(robospelen_1_intro, s12, "Maar daarvoor moet je eerst tegen allerlei andere robots strijden.").
next(robospelen_1_intro, s12, "true", s13).

move(robospelen_1_intro, s13, say).
text(robospelen_1_intro, s13, "In allemaal verschillende opdrachten en wedstrijden.").
next(robospelen_1_intro, s13, "true", s14).

move(robospelen_1_intro, s14, say).
text(robospelen_1_intro, s14, "Zoals wie het hoogst kan springen.").
next(robospelen_1_intro, s14, "true", s15).

move(robospelen_1_intro, s15, say).
anim(robospelen_1_intro, s15, onRobot, "jump_attempt/behavior_1").
next(robospelen_1_intro, s15, "true", s16).

move(robospelen_1_intro, s16, say).
text(robospelen_1_intro, s16, "En wie het best origami kan vouwen").
anim(robospelen_1_intro, s16, onRobot, "wiggle_fingers/behavior_1").
next(robospelen_1_intro, s16, "true", s17).

move(robospelen_1_intro, s17, say).
text(robospelen_1_intro, s17, "Wie het beleefdst is en wie de meeste mensen kan helpen oversteken.").
next(robospelen_1_intro, s17, "true", s18).

move(robospelen_1_intro, s18, say).
text(robospelen_1_intro, s18, "En wie er kan voetballen.").
next(robospelen_1_intro, s18, "true", s19).

move(robospelen_1_intro, s19, say).
text(robospelen_1_intro, s19, "Ik kan helemaal niet zo goed schoppen.").
next(robospelen_1_intro, s19, "true", s20).

move(robospelen_1_intro, s20, say).
text(robospelen_1_intro, s20, "De vorige keer dat ik het deed viel ik zo hard op mijn kont").
leds(robospelen_1_intro, s20, direct, "all", "alternate", ['green', 'blue'], 500).
next(robospelen_1_intro, s20, "true", s21).

move(robospelen_1_intro, s21, say).
text(robospelen_1_intro, s21, "dat al mijn lichtjes kapot sprongen.").
next(robospelen_1_intro, s21, "true", s22).

move(robospelen_1_intro, s22, say).
text(robospelen_1_intro, s22, "Dus ik moet nog veel oefenen voor de Robo Spelen er zijn!").
leds(robospelen_1_intro, s22, reset).
next(robospelen_1_intro, s22, "true", s23).

move(robospelen_1_intro, s23, say).
text(robospelen_1_intro, s23, "Want oefenen baart kunst.").
next(robospelen_1_intro, s23, "true", s24).

move(robospelen_1_intro, s24, say).
text(robospelen_1_intro, s24, "Dat zeggen volwassen mensen toch?").
next(robospelen_1_intro, s24, "true", s25).

move(robospelen_1_intro, s25, say).
text(robospelen_1_intro, s25, "Oefenen baart kunst.").
next(robospelen_1_intro, s25, "true", s26).

move(robospelen_1_intro, s26, say).
text(robospelen_1_intro, s26, "Ik weet niet wat dat betekent.").
next(robospelen_1_intro, s26, "true", s27).

move(robospelen_1_intro, s27, say).
text(robospelen_1_intro, s27, "Een baard zit toch op je gezicht?").
next(robospelen_1_intro, s27, "true", s28).

move(robospelen_1_intro, s28, question).
moveConfig(robospelen_1_intro, s28, [type=yesno, context='answer_yesno', umVariable=oefening_baart_kunst]).
text(robospelen_1_intro, s28, "Weet jij wat ze bedoelen?").
next(robospelen_1_intro, s28, "answer_yes", s29ja1).
next(robospelen_1_intro, s28, "answer_no", s29nee1).
next(robospelen_1_intro, s28, "answer_dontknow", s29nee1).
next(robospelen_1_intro, s28, "fail", s29nee1).

move(robospelen_1_intro, s29ja1, say).
text(robospelen_1_intro, s29ja1, "Aha! Wat ben jij toch slim.").

move(robospelen_1_intro, s29nee1, say).
text(robospelen_1_intro, s29nee1, "humhum.").
next(robospelen_1_intro, s29nee1, "true", s29nee2).

move(robospelen_1_intro, s29nee2, say).
text(robospelen_1_intro, s29nee2, "Misschien heeft het ermee te maken dat een baard heel langzaam groeit.").
next(robospelen_1_intro, s29nee2, "true", s29nee3).

move(robospelen_1_intro, s29nee3, say).
text(robospelen_1_intro, s29nee3, "Pas als je oud bent krijg je een baard.").
next(robospelen_1_intro, s29nee3, "true", s29nee4).

move(robospelen_1_intro, s29nee4, say).
text(robospelen_1_intro, s29nee4, "En zo is het ook met iets leren.").
next(robospelen_1_intro, s29nee4, "true", s29nee5).

move(robospelen_1_intro, s29nee5, say).
text(robospelen_1_intro, s29nee5, "Dat duurt heel lang, maar na een tijdje kun je het.").

%% robospelen_2_springen %%
minidialog(robospelen_2_springen, [type=narrative, thread=robospelen, position=2]).

move(robospelen_2_springen, s1, say).
text(robospelen_2_springen, s1, "he, ik heb opeens een heel goed idee!").
start_interaction_probe(robospelen_2_springen, s1).
next(robospelen_2_springen, s1, "true", s2).

move(robospelen_2_springen, s2, say).
text(robospelen_2_springen, s2, "Jij kunt volgens mij heel veel écht moeilijke dingen.").
next(robospelen_2_springen, s2, "true", s3).

move(robospelen_2_springen, s3, say).
text(robospelen_2_springen, s3, "Zoals springen.").
next(robospelen_2_springen, s3, "true", s4).

move(robospelen_2_springen, s4, question).
moveConfig(robospelen_2_springen, s4, [type=yesno, context='answer_yesno', umVariable=kan_springen]).
text(robospelen_2_springen, s4, "Dat kun je toch wel?").
next(robospelen_2_springen, s4, "answer_yes", s5ja1).
next(robospelen_2_springen, s4, "answer_no", s5nee1).
next(robospelen_2_springen, s4, "answer_dontknow", s5nee1).
next(robospelen_2_springen, s4, "fail", s5nee1).

move(robospelen_2_springen, s5ja1, say).
text(robospelen_2_springen, s5ja1, "Gaaf hoor, hoe je zo de lucht in kan gaan.").
next(robospelen_2_springen, s5ja1, "true", s6).

move(robospelen_2_springen, s5nee1, say).
text(robospelen_2_springen, s5nee1, "Ik heb er zelf nog veel moeite mee.").
next(robospelen_2_springen, s5nee1, "true", s6).

move(robospelen_2_springen, s6, say).
text(robospelen_2_springen, s6, "Kijk, zo ziet het er uit als ik probeer te springen.").
stop_interaction_probe(robospelen_2_springen, s6).
next(robospelen_2_springen, s6, "true", s7).

move(robospelen_2_springen, s7, say).
anim(robospelen_2_springen, s7, onRobot, "jump_attempt/behavior_1").
next(robospelen_2_springen, s7, "true", s8).

move(robospelen_2_springen, s8, say).
text(robospelen_2_springen, s8, "Dus ik dacht").
next(robospelen_2_springen, s8, "true", s9).

move(robospelen_2_springen, s9, say).
text(robospelen_2_springen, s9, "Misschien ben jij wel de perfecte persoon om mij te helpen met de Robo Spelen.").
next(robospelen_2_springen, s9, "true", s10).

move(robospelen_2_springen, s10, say).
text(robospelen_2_springen, s10, "Nu ik jou ken, hoef ik niet meer alleen te trainen.").
next(robospelen_2_springen, s10, "true", s11).

move(robospelen_2_springen, s11, say).
text(robospelen_2_springen, s11, "Dan kunnen we samen allerlei oefenopdrachten proberen voor het echt zover is.").

%% robospelen_2_sport %%
minidialog(robospelen_2_sport, [type=narrative, thread=robospelen, position=2]).
dependencies(robospelen_2_sport, [[[dagdromen_sport, user_model, 0], [umVariable=sport_van_kind, filter=green, values=["_any"]]]]).

move(robospelen_2_sport, s1, say).
text(robospelen_2_sport, s1, "he, ik heb opeens een heel goed idee!").
start_interaction_probe(robospelen_2_sport, s1).
next(robospelen_2_sport, s1, "true", s2).

move(robospelen_2_sport, s2, question).
moveConfig(robospelen_2_sport, s2, [type=yesno, context='answer_yesno', umVariable=check_sport_van_kind]).
text(robospelen_2_sport, s2, "Jij vind %sport_van_kind% leuk, toch?").
next(robospelen_2_sport, s2, "answer_yes", s3ja1).
next(robospelen_2_sport, s2, "answer_no", s3nee1).
next(robospelen_2_sport, s2, "answer_dontknow", s3nee1).
next(robospelen_2_sport, s2, "fail", s3nee1).

move(robospelen_2_sport, s3ja1, say).
text(robospelen_2_sport, s3ja1, "Mooi!").
next(robospelen_2_sport, s3ja1, "true", s3ja2).

move(robospelen_2_sport, s3ja2, say).
text(robospelen_2_sport, s3ja2, "Dan weet je vast hoe het is om te trainen.").
next(robospelen_2_sport, s3ja2, "true", s3ja3).

move(robospelen_2_sport, s3ja3, say).
text(robospelen_2_sport, s3ja3, "En beter te worden dan je eerst was.").
next(robospelen_2_sport, s3ja3, "true", s3ja4).

move(robospelen_2_sport, s3ja4, say).
text(robospelen_2_sport, s3ja4, "Dat moet ik nu ook doen voor de Robo Spelen!").
stop_interaction_probe(robospelen_2_sport, s3ja4).
next(robospelen_2_sport, s3ja4, "true", s3ja5).

move(robospelen_2_sport, s3ja5, say).
text(robospelen_2_sport, s3ja5, "Maar ik heb dat nog nooit gedaan.").
next(robospelen_2_sport, s3ja5, "true", s4).

move(robospelen_2_sport, s3nee1, say).
text(robospelen_2_sport, s3nee1, "Oh, dan heb ik dat verkeerd gehoord.").
next(robospelen_2_sport, s3nee1, "true", s3nee2).

move(robospelen_2_sport, s3nee2, say).
text(robospelen_2_sport, s3nee2, "Ik ben duidelijk nog niet zo goed in luisteren.").
next(robospelen_2_sport, s3nee2, "true", s3nee3).

move(robospelen_2_sport, s3nee3, say).
text(robospelen_2_sport, s3nee3, "Misschien zit mijn oormicrofoontje verkeerd.").
next(robospelen_2_sport, s3nee3, "true", s3nee4).

move(robospelen_2_sport, s3nee4, say).
text(robospelen_2_sport, s3nee4, "Even testen hoor.").
stop_interaction_probe(robospelen_2_sport, s3nee4).
next(robospelen_2_sport, s3nee4, "true", s3nee5).

move(robospelen_2_sport, s3nee5, question).
moveConfig(robospelen_2_sport, s3nee5, [type=input, context="integer", options=['vijf', 'vier', 'drie', 'twee', 'een'], fast=yes, umVariable=getal_0_tot_10]).
text(robospelen_2_sport, s3nee5, "Noem eens een getal tussen de nul en tien?").
next(robospelen_2_sport, s3nee5, "success", s3nee_met_getal1).
next(robospelen_2_sport, s3nee5, "fail", s3nee_zonder_getal1).

move(robospelen_2_sport, s3nee_met_getal1, say).
text(robospelen_2_sport, s3nee_met_getal1, "%getal_0_tot_10%! Yes, ik heb je goed verstaan.").
next(robospelen_2_sport, s3nee_met_getal1, "true", s3nee_vervolg1).

move(robospelen_2_sport, s3nee_zonder_getal1, say).
text(robospelen_2_sport, s3nee_zonder_getal1, "Yes, ik heb je goed verstaan.").
next(robospelen_2_sport, s3nee_zonder_getal1, "true", s3nee_vervolg1).

move(robospelen_2_sport, s3nee_vervolg1, say).
text(robospelen_2_sport, s3nee_vervolg1, "Nu hoor ik alles weer.").
next(robospelen_2_sport, s3nee_vervolg1, "true", s3nee_vervolg2).

move(robospelen_2_sport, s3nee_vervolg2, say).
text(robospelen_2_sport, s3nee_vervolg2, "Dankjewel voor het helpen.").
next(robospelen_2_sport, s3nee_vervolg2, "true", s3nee_vervolg3).

move(robospelen_2_sport, s3nee_vervolg3, say).
text(robospelen_2_sport, s3nee_vervolg3, "Jij bent heel goed in helpen!").
next(robospelen_2_sport, s3nee_vervolg3, "true", s4).

move(robospelen_2_sport, s4, say).
text(robospelen_2_sport, s4, "Daarom dacht ik").
next(robospelen_2_sport, s4, "true", s5).

move(robospelen_2_sport, s5, say).
text(robospelen_2_sport, s5, "Ik wil met JOU trainen voor de Robo Spelen!").
next(robospelen_2_sport, s5, "true", s6).

move(robospelen_2_sport, s6, say).
text(robospelen_2_sport, s6, "Dan kan ik wat oefenopdrachten downloaden en kunnen we ze samen doen.").

%% robospelen_3_coach %%
minidialog(robospelen_3_coach, [type=narrative, thread=robospelen, position=3]).

move(robospelen_3_coach, s1, say).
text(robospelen_3_coach, s1, "En misschien kun je me dingen leren die jij veel beter kunt.").
next(robospelen_3_coach, s1, "true", s2).

move(robospelen_3_coach, s2, say).
text(robospelen_3_coach, s2, "Zoals springen, of verstoppertje, of mensendingen begrijpen.").
next(robospelen_3_coach, s2, "true", s3).

move(robospelen_3_coach, s3, say).
text(robospelen_3_coach, s3, "Dan ben jij mijn coach!").
next(robospelen_3_coach, s3, "true", s4).

move(robospelen_3_coach, s4, say).
text(robospelen_3_coach, s4, "Als ik win, zal ik je noemen in mijn dankwoord.").
next(robospelen_3_coach, s4, "true", s5).

move(robospelen_3_coach, s5, say).
text(robospelen_3_coach, s5, "Dan weten alle andere robots wat een leuk mens jij bent.").
next(robospelen_3_coach, s5, "true", s6).

move(robospelen_3_coach, s6, question).
moveConfig(robospelen_3_coach, s6, [type=yesno, context='answer_yesno', umVariable=coach_goed_idee]).
text(robospelen_3_coach, s6, "Lijkt dat je een goed idee?").
next(robospelen_3_coach, s6, "answer_yes", s7ja1).
next(robospelen_3_coach, s6, "fail", s7ja1).
next(robospelen_3_coach, s6, "answer_no", s7nee1).
next(robospelen_3_coach, s6, "answer_dontknow", s7nee1).

move(robospelen_3_coach, s7ja1, say).
text(robospelen_3_coach, s7ja1, "Hoera! Dan ben jij vanaf nu coach %first_name% .").
next(robospelen_3_coach, s7ja1, "true", s7ja2).

move(robospelen_3_coach, s7ja2, question).
moveConfig(robospelen_3_coach, s7ja2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_coach_leuk_idee]).
text(robospelen_3_coach, s7ja2, "Waarom lijkt je dat een leuk idee?").
next(robospelen_3_coach, s7ja2, "success", s7ja3).
next(robospelen_3_coach, s7ja2, "fail", s7ja3).

move(robospelen_3_coach, s7ja3, say).
text(robospelen_3_coach, s7ja3, "Ik vind je heel aardig, coach %first_name% , bedankt.").

move(robospelen_3_coach, s7nee1, question).
moveConfig(robospelen_3_coach, s7nee1, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_coach_slecht_idee]).
text(robospelen_3_coach, s7nee1, "Oh! Waarom niet?").
next(robospelen_3_coach, s7nee1, "success", s7nee2).
next(robospelen_3_coach, s7nee1, "fail", s7nee2).

move(robospelen_3_coach, s7nee2, say).
text(robospelen_3_coach, s7nee2, "humhum").
next(robospelen_3_coach, s7nee2, "true", s7nee3).

move(robospelen_3_coach, s7nee3, say).
text(robospelen_3_coach, s7nee3, "Misschien kunnen we er later nog een over nadenken.").
next(robospelen_3_coach, s7nee3, "true", s7nee4).

move(robospelen_3_coach, s7nee4, say).
text(robospelen_3_coach, s7nee4, "Je lijkt mij een super top coach!").

%% robospelen_4_ingeschreven %%
minidialog(robospelen_4_ingeschreven, [type=narrative, thread=robospelen, position=4]).

move(robospelen_4_ingeschreven, s1, say).
text(robospelen_4_ingeschreven, s1, "Weet je wat ik heb gedaan?").
next(robospelen_4_ingeschreven, s1, "true", s2).

move(robospelen_4_ingeschreven, s2, say).
text(robospelen_4_ingeschreven, s2, "Je gelooft het nooit!").
next(robospelen_4_ingeschreven, s2, "true", s3).

move(robospelen_4_ingeschreven, s3, say).
text(robospelen_4_ingeschreven, s3, "Ik heb me ingeschreven voor de robo spelen!").
next(robospelen_4_ingeschreven, s3, "true", s4).

move(robospelen_4_ingeschreven, s4, say).
text(robospelen_4_ingeschreven, s4, "Bizar!").
next(robospelen_4_ingeschreven, s4, "true", s5).

move(robospelen_4_ingeschreven, s5, say).
text(robospelen_4_ingeschreven, s5, "En weet je nog wat?").
next(robospelen_4_ingeschreven, s5, "true", s6).

move(robospelen_4_ingeschreven, s6, say).
text(robospelen_4_ingeschreven, s6, "De robo spelen zijn niet op een echte plek, maar helemaal online.").
next(robospelen_4_ingeschreven, s6, "true", s7).

move(robospelen_4_ingeschreven, s7, say).
text(robospelen_4_ingeschreven, s7, "Alle robots met een internetverbinding kunnen via de wifi of hun eigen 4G meekijken,").
next(robospelen_4_ingeschreven, s7, "true", s8).

move(robospelen_4_ingeschreven, s8, say).
text(robospelen_4_ingeschreven, s8, "want het is voor robots heel onhandig om te reizen!").
next(robospelen_4_ingeschreven, s8, "true", s9).

move(robospelen_4_ingeschreven, s9, say).
text(robospelen_4_ingeschreven, s9, "Stel dat Mike mij elk jaar helemaal naar Rusland zou moeten brengen.").
next(robospelen_4_ingeschreven, s9, "true", s10).

move(robospelen_4_ingeschreven, s10, say).
text(robospelen_4_ingeschreven, s10, "Nu kan ik naar Rusland via een draadje.").
next(robospelen_4_ingeschreven, s10, "true", s11).

move(robospelen_4_ingeschreven, s11, say).
text(robospelen_4_ingeschreven, s11, "En meedoen aan allerlei verschillende opdrachten en wedstrijden.").
next(robospelen_4_ingeschreven, s11, "true", s12).

move(robospelen_4_ingeschreven, s12, question).
moveConfig(robospelen_4_ingeschreven, s12, [type=yesno, context='answer_yesno', umVariable=ook_spannend]).
text(robospelen_4_ingeschreven, s12, "Vind jij het net zo spannend als ik?").
next(robospelen_4_ingeschreven, s12, "answer_yes", s13ja1).
next(robospelen_4_ingeschreven, s12, "answer_no", s13nee1).
next(robospelen_4_ingeschreven, s12, "answer_dontknow", s13nee1).
next(robospelen_4_ingeschreven, s12, "fail", s13nee1).

move(robospelen_4_ingeschreven, s13ja1, say).
text(robospelen_4_ingeschreven, s13ja1, "Ja, we vinden het samen spannend.").
next(robospelen_4_ingeschreven, s13ja1, "true", s14).

move(robospelen_4_ingeschreven, s13nee1, say).
text(robospelen_4_ingeschreven, s13nee1, "Ik vind het in elk geval heel spannend!").
next(robospelen_4_ingeschreven, s13nee1, "true", s14).

move(robospelen_4_ingeschreven, s14, say).
start_interaction_probe(robospelen_4_ingeschreven, s14).
next(robospelen_4_ingeschreven, s14, "true", s15).

move(robospelen_4_ingeschreven, s15, continuator).
next(robospelen_4_ingeschreven, s15, [[umVariable=coach_goed_idee, filter=green, values=["answer_yes"]], [expCondition=memory]], s16is_coach1).
next(robospelen_4_ingeschreven, s15, [[expCondition=memory]], s16is_geen_coach1).
next(robospelen_4_ingeschreven, s15, [[expCondition=control]], s16control1).
next(robospelen_4_ingeschreven, s15, "true", s17).

move(robospelen_4_ingeschreven, s16is_coach1, say).
text(robospelen_4_ingeschreven, s16is_coach1, "Ik ben zo blij dat jij vorige week zei, dat je mijn coach wilde zijn").
next(robospelen_4_ingeschreven, s16is_coach1, "true", s16is_coach2).

move(robospelen_4_ingeschreven, s16is_coach2, say).
text(robospelen_4_ingeschreven, s16is_coach2, "Ik kan nu zo'n top coach als jij goed gebruiken.").
next(robospelen_4_ingeschreven, s16is_coach2, "true", s17).

move(robospelen_4_ingeschreven, s16is_geen_coach1, say).
text(robospelen_4_ingeschreven, s16is_geen_coach1, "Vanaf nu ben jij mijn coach.").
next(robospelen_4_ingeschreven, s16is_geen_coach1, "true", s16is_geen_coach2).

move(robospelen_4_ingeschreven, s16is_geen_coach2, say).
text(robospelen_4_ingeschreven, s16is_geen_coach2, "Dan kun je mij helpen met de robo spelen.").
next(robospelen_4_ingeschreven, s16is_geen_coach2, "true", s17).

move(robospelen_4_ingeschreven, s16control1, say).
text(robospelen_4_ingeschreven, s16control1, "Oke, nu moet ik even proberen te kalmeren.").
next(robospelen_4_ingeschreven, s16control1, "true", s17).

move(robospelen_4_ingeschreven, s17, say).
text(robospelen_4_ingeschreven, s17, "Ik heb vaak gedagdroomt om me in te schrijven").
next(robospelen_4_ingeschreven, s17, "true", s18).

move(robospelen_4_ingeschreven, s18, say).
text(robospelen_4_ingeschreven, s18, "Maar dat heb ik nu echt gedaan.").
stop_interaction_probe(robospelen_4_ingeschreven, s18).
next(robospelen_4_ingeschreven, s18, "true", s19).

move(robospelen_4_ingeschreven, s19, say).
text(robospelen_4_ingeschreven, s19, "Ik word een echte sportrobot!").
next(robospelen_4_ingeschreven, s19, "true", s20).

move(robospelen_4_ingeschreven, s20, say).
text(robospelen_4_ingeschreven, s20, "O nee!").
next(robospelen_4_ingeschreven, s20, "true", s21).

move(robospelen_4_ingeschreven, s21, say).
text(robospelen_4_ingeschreven, s21, "Alarm!").
leds(robospelen_4_ingeschreven, s21, direct, "all", "blink", ['green', 'blue', 'red', 'yellow'], 500).
next(robospelen_4_ingeschreven, s21, "true", s22).

move(robospelen_4_ingeschreven, s22, say).
text(robospelen_4_ingeschreven, s22, "Alarm!").
next(robospelen_4_ingeschreven, s22, "true", s23).

move(robospelen_4_ingeschreven, s23, say).
text(robospelen_4_ingeschreven, s23, "Nu is het geen dagdroom meer!").
next(robospelen_4_ingeschreven, s23, "true", s24).

move(robospelen_4_ingeschreven, s24, say).
text(robospelen_4_ingeschreven, s24, "Nu is het geen fantasie meer!").
next(robospelen_4_ingeschreven, s24, "true", s25).

move(robospelen_4_ingeschreven, s25, say).
text(robospelen_4_ingeschreven, s25, "Nu is het echt!").
anim(robospelen_4_ingeschreven, s25, file, "resources/gestures/arms_in_air.json").
leds(robospelen_4_ingeschreven, s25, reset).
next(robospelen_4_ingeschreven, s25, "true", s26).

move(robospelen_4_ingeschreven, s26, say).
text(robospelen_4_ingeschreven, s26, "En dat vind ik spannend!").

%% robospelen_5_info %%
minidialog(robospelen_5_info, [type=narrative, thread=robospelen, position=5]).

move(robospelen_5_info, s1, say).
text(robospelen_5_info, s1, "Ik heb een idee!").
next(robospelen_5_info, s1, "true", s2).

move(robospelen_5_info, s2, question).
moveConfig(robospelen_5_info, s2, [type=yesno, context='answer_yesno', umVariable=vertellen_over_rs]).
text(robospelen_5_info, s2, "Zal ik eens vertellen hoe die robo spelen er eigenlijk uitzien?").
next(robospelen_5_info, s2, "answer_yes", s3ja_vertellen1).
next(robospelen_5_info, s2, "answer_no", s3nee_vertellen1).
next(robospelen_5_info, s2, "answer_dontknow", s3nee_vertellen1).
next(robospelen_5_info, s2, "fail", s3nee_vertellen1).

move(robospelen_5_info, s3ja_vertellen1, say).
text(robospelen_5_info, s3ja_vertellen1, "Goed, daar gaan we dan!").
next(robospelen_5_info, s3ja_vertellen1, "true", s4).

move(robospelen_5_info, s3nee_vertellen1, say).
text(robospelen_5_info, s3nee_vertellen1, "Maar ik moet het echt even kwijt.").
next(robospelen_5_info, s3nee_vertellen1, "true", s3nee_vertellen2).

move(robospelen_5_info, s3nee_vertellen2, say).
text(robospelen_5_info, s3nee_vertellen2, "Sorry").
next(robospelen_5_info, s3nee_vertellen2, "true", s3nee_vertellen3).

move(robospelen_5_info, s3nee_vertellen3, say).
text(robospelen_5_info, s3nee_vertellen3, "Ik zal het kort houden.").
next(robospelen_5_info, s3nee_vertellen3, "true", s4).

move(robospelen_5_info, s4, say).
text(robospelen_5_info, s4, "De Robo spelen zijn opgericht op 20 november 19 85").
next(robospelen_5_info, s4, "true", s5).

move(robospelen_5_info, s5, say).
text(robospelen_5_info, s5, "Als een soort olympische spelen").
next(robospelen_5_info, s5, "true", s6).

move(robospelen_5_info, s6, say).
text(robospelen_5_info, s6, "Met verschillende rondes en een finale").
next(robospelen_5_info, s6, "true", s7).

move(robospelen_5_info, s7, say).
text(robospelen_5_info, s7, "Maar dan speciaal voor Robots.").
next(robospelen_5_info, s7, "true", s8).

move(robospelen_5_info, s8, say).
text(robospelen_5_info, s8, "Zo is er een ronde waarbij twee Robots naast elkaar moeten gaan staan.").
next(robospelen_5_info, s8, "true", s9).

move(robospelen_5_info, s9, say).
text(robospelen_5_info, s9, "De ene Robot moet proberen verder te blaffen dan de andere Robot.").
next(robospelen_5_info, s9, "true", s10).

move(robospelen_5_info, s10, say).
text(robospelen_5_info, s10, "Dit onderdeel heet ver-blaffen.").
next(robospelen_5_info, s10, "true", s11).

move(robospelen_5_info, s11, say).
text(robospelen_5_info, s11, "In de tweede ronde gaan we dansen.").
next(robospelen_5_info, s11, "true", s12).

move(robospelen_5_info, s12, say).
text(robospelen_5_info, s12, "Twee Robots moeten dan tegenover elkaar staan").
next(robospelen_5_info, s12, "true", s13).

move(robospelen_5_info, s13, say).
text(robospelen_5_info, s13, "En proberen elkaar omver te dansen.").
next(robospelen_5_info, s13, "true", s14).

move(robospelen_5_info, s14, say).
text(robospelen_5_info, s14, "Meestal begint dat dan heel rustig").
anim(robospelen_5_info, s14, file, "resources/gestures/dance_move_slow.json").
next(robospelen_5_info, s14, "true", s15).

move(robospelen_5_info, s15, say).
text(robospelen_5_info, s15, "En gaat dat vervolgens steeds sneller").
anim(robospelen_5_info, s15, file, "resources/gestures/dance_move_faster.json").
next(robospelen_5_info, s15, "true", s16).

move(robospelen_5_info, s16, say).
text(robospelen_5_info, s16, "En sneller!").
anim(robospelen_5_info, s16, file, "resources/gestures/dance_move_fastest.json").
next(robospelen_5_info, s16, "true", s17).

move(robospelen_5_info, s17, say).
text(robospelen_5_info, s17, "Pfoeh!").
next(robospelen_5_info, s17, "true", s18).

move(robospelen_5_info, s18, say).
text(robospelen_5_info, s18, "En dan is er meestal nog een ronde waarin de Robots hun mentale krachten moeten laten zien via Bluetooth.").
next(robospelen_5_info, s18, "true", s19).

move(robospelen_5_info, s19, say).
text(robospelen_5_info, s19, "Gedachten lezen en zo!").
next(robospelen_5_info, s19, "true", s20).

move(robospelen_5_info, s20, say).
text(robospelen_5_info, s20, "Eigenlijk is het bizar simpel").
next(robospelen_5_info, s20, "true", s21).

move(robospelen_5_info, s21, say).
text(robospelen_5_info, s21, "maar we moeten ons wel goed voorbereiden.").
next(robospelen_5_info, s21, "true", s22).

move(robospelen_5_info, s22, continuator).
next(robospelen_5_info, s22, [[expCondition=memory]], s23memory1).
next(robospelen_5_info, s22, [[expCondition=control]], s23control1).

move(robospelen_5_info, s23memory1, say).
text(robospelen_5_info, s23memory1, "verblaffen, dansen, en gedachtenlezen").
next(robospelen_5_info, s23memory1, "true", s23memory2).

move(robospelen_5_info, s23memory2, question).
moveConfig(robospelen_5_info, s23memory2, [type=input, context="robospelen_onderdeel", options=['gedachtenlezen', 'dansen', 'verblaffen'], fast=yes, umVariable=leukste_onderdeel]).
text(robospelen_5_info, s23memory2, "Welk onderdeel vind je tot nu toe het leukst klinken?").
next(robospelen_5_info, s23memory2, "success", s23memory3).
next(robospelen_5_info, s23memory2, "fail", s23memory3).

move(robospelen_5_info, s23memory3, say).
text(robospelen_5_info, s23memory3, "Top keuze. Laten we dan gelijk gaan oefenen met %leukste_onderdeel%").

move(robospelen_5_info, s23control1, say).
text(robospelen_5_info, s23control1, "Laten we oefenen met gedachtenlezen.").

%% robospelen_6_gedachtelezen %%
minidialog(robospelen_6_gedachtelezen, [type=narrative, thread=robospelen, position=6]).
dependencies(robospelen_6_gedachtelezen, [[[robospelen_5_info, user_model, 0], [umVariable=leukste_onderdeel, filter=green, values=["gedachtenlezen"]]]]).

move(robospelen_6_gedachtelezen, s1, say).
text(robospelen_6_gedachtelezen, s1, "Oke").
next(robospelen_6_gedachtelezen, s1, "true", s2).

move(robospelen_6_gedachtelezen, s2, say).
text(robospelen_6_gedachtelezen, s2, "Eerst moeten we onze ogen sluiten.").
next(robospelen_6_gedachtelezen, s2, "true", s3).

move(robospelen_6_gedachtelezen, s3, say).
text(robospelen_6_gedachtelezen, s3, "Doe maar mee.").
next(robospelen_6_gedachtelezen, s3, "true", s4).

move(robospelen_6_gedachtelezen, s4, say).
anim(robospelen_6_gedachtelezen, s4, file, "resources/gestures/head_up.json").
next(robospelen_6_gedachtelezen, s4, "true", s5).

move(robospelen_6_gedachtelezen, s5, say).
text(robospelen_6_gedachtelezen, s5, "En dan een keer diep inademen.").
next(robospelen_6_gedachtelezen, s5, "true", s6).

move(robospelen_6_gedachtelezen, s6, say).
text(robospelen_6_gedachtelezen, s6, "Adem in.").
next(robospelen_6_gedachtelezen, s6, "true", s7).

move(robospelen_6_gedachtelezen, s7, say).
anim(robospelen_6_gedachtelezen, s7, file, "resources/gestures/head_down.json").
next(robospelen_6_gedachtelezen, s7, "true", s8).

move(robospelen_6_gedachtelezen, s8, say).
text(robospelen_6_gedachtelezen, s8, "Adem uit.").
next(robospelen_6_gedachtelezen, s8, "true", s9).

move(robospelen_6_gedachtelezen, s9, say).
anim(robospelen_6_gedachtelezen, s9, file, "resources/gestures/head_up.json").
next(robospelen_6_gedachtelezen, s9, "true", s10).

move(robospelen_6_gedachtelezen, s10, say).
text(robospelen_6_gedachtelezen, s10, "Nog eens! Adem in.").
next(robospelen_6_gedachtelezen, s10, "true", s11).

move(robospelen_6_gedachtelezen, s11, say).
anim(robospelen_6_gedachtelezen, s11, file, "resources/gestures/head_down.json").
next(robospelen_6_gedachtelezen, s11, "true", s12).

move(robospelen_6_gedachtelezen, s12, say).
text(robospelen_6_gedachtelezen, s12, "En uit.").
next(robospelen_6_gedachtelezen, s12, "true", s13).

move(robospelen_6_gedachtelezen, s13, say).
anim(robospelen_6_gedachtelezen, s13, file, "resources/gestures/head_up.json").
next(robospelen_6_gedachtelezen, s13, "true", s14).

move(robospelen_6_gedachtelezen, s14, say).
text(robospelen_6_gedachtelezen, s14, "Doe je ogen maar weer open.").
go_to_posture(robospelen_6_gedachtelezen, s14).
next(robospelen_6_gedachtelezen, s14, "true", s15).

move(robospelen_6_gedachtelezen, s15, say).
text(robospelen_6_gedachtelezen, s15, "Als het goed is lopen de micro chips in onze hoofden op dit moment gelijk!").
next(robospelen_6_gedachtelezen, s15, "true", s16).

move(robospelen_6_gedachtelezen, s16, say).
text(robospelen_6_gedachtelezen, s16, "Ik kan het bewijzen.").
next(robospelen_6_gedachtelezen, s16, "true", s17).

move(robospelen_6_gedachtelezen, s17, say).
text(robospelen_6_gedachtelezen, s17, "Jij kan nu mijn gedachten lezen.").
next(robospelen_6_gedachtelezen, s17, "true", s18).

move(robospelen_6_gedachtelezen, s18, say).
text(robospelen_6_gedachtelezen, s18, "Alles wat ik denk, dat denk jij nu ook.").
next(robospelen_6_gedachtelezen, s18, "true", s19).

move(robospelen_6_gedachtelezen, s19, say).
text(robospelen_6_gedachtelezen, s19, "Ik neem een getal in mijn hoofd en stuur dat getal naar jouw hoofd.").
next(robospelen_6_gedachtelezen, s19, "true", s20).

move(robospelen_6_gedachtelezen, s20, say).
text(robospelen_6_gedachtelezen, s20, "Via bluetooth.").
next(robospelen_6_gedachtelezen, s20, "true", s21).

move(robospelen_6_gedachtelezen, s21, say).
text(robospelen_6_gedachtelezen, s21, "Concentreer je!").
next(robospelen_6_gedachtelezen, s21, "true", s22).

move(robospelen_6_gedachtelezen, s22, question).
moveConfig(robospelen_6_gedachtelezen, s22, [type=input, context="integer", options=[1, 5, 6, 9], fast=yes, umVariable=getal_bluetooth]).
text(robospelen_6_gedachtelezen, s22, "Noem een getal tussen de 1 en de 10!").
next(robospelen_6_gedachtelezen, s22, 1, s23getal1).
next(robospelen_6_gedachtelezen, s22, 2, s23getal1).
next(robospelen_6_gedachtelezen, s22, 3, s23getal1).
next(robospelen_6_gedachtelezen, s22, 4, s23getal1).
next(robospelen_6_gedachtelezen, s22, 5, s23getal1).
next(robospelen_6_gedachtelezen, s22, 6, s23getal1).
next(robospelen_6_gedachtelezen, s22, 7, s23getal1).
next(robospelen_6_gedachtelezen, s22, 8, s23getal1).
next(robospelen_6_gedachtelezen, s22, 9, s23getal1).
next(robospelen_6_gedachtelezen, s22, 10, s23getal1).
next(robospelen_6_gedachtelezen, s22, "_others", s23boven_101).
next(robospelen_6_gedachtelezen, s22, "fail", s23fail_getal1).

move(robospelen_6_gedachtelezen, s23fail_getal1, say).
text(robospelen_6_gedachtelezen, s23fail_getal1, "Je mag het ook via bluetooth aan me doorsturen").
next(robospelen_6_gedachtelezen, s23fail_getal1, "true", s23fail_getal2).

move(robospelen_6_gedachtelezen, s23fail_getal2, say).
text(robospelen_6_gedachtelezen, s23fail_getal2, "3. 2. 1. Nu!").
next(robospelen_6_gedachtelezen, s23fail_getal2, "true", s23fail_getal3).

move(robospelen_6_gedachtelezen, s23fail_getal3, say).
text(robospelen_6_gedachtelezen, s23fail_getal3, "Laden. Laden.").
next(robospelen_6_gedachtelezen, s23fail_getal3, "true", s23fail_getal4).

move(robospelen_6_gedachtelezen, s23fail_getal4, say).
text(robospelen_6_gedachtelezen, s23fail_getal4, "Ja, ik heb een getal binnengekregen!").
next(robospelen_6_gedachtelezen, s23fail_getal4, "true", s23fail_getal5).

move(robospelen_6_gedachtelezen, s23fail_getal5, say).
text(robospelen_6_gedachtelezen, s23fail_getal5, "Dat was precies het getal waar ik ook aan dacht!").
next(robospelen_6_gedachtelezen, s23fail_getal5, "true", s24).

move(robospelen_6_gedachtelezen, s23boven_101, say).
text(robospelen_6_gedachtelezen, s23boven_101, "Dat is goed!").
next(robospelen_6_gedachtelezen, s23boven_101, "true", s23boven_102).

move(robospelen_6_gedachtelezen, s23boven_102, say).
text(robospelen_6_gedachtelezen, s23boven_102, "Jij bent er niet ingetrapt.").
next(robospelen_6_gedachtelezen, s23boven_102, "true", s23boven_103).

move(robospelen_6_gedachtelezen, s23boven_103, say).
text(robospelen_6_gedachtelezen, s23boven_103, "Ik zei wel een dat het een getal onder de tien moest zijn").
next(robospelen_6_gedachtelezen, s23boven_103, "true", s23boven_104).

move(robospelen_6_gedachtelezen, s23boven_104, say).
text(robospelen_6_gedachtelezen, s23boven_104, "Maar dat was een extra test om te zien of we goed verbonden waren").
next(robospelen_6_gedachtelezen, s23boven_104, "true", s23boven_105).

move(robospelen_6_gedachtelezen, s23boven_105, say).
text(robospelen_6_gedachtelezen, s23boven_105, "Het was inderdaad %getal_bluetooth% waar ik aan dacht!").
next(robospelen_6_gedachtelezen, s23boven_105, "true", s24).

move(robospelen_6_gedachtelezen, s23getal1, say).
text(robospelen_6_gedachtelezen, s23getal1, "Ja!").
next(robospelen_6_gedachtelezen, s23getal1, "true", s23getal2).

move(robospelen_6_gedachtelezen, s23getal2, say).
text(robospelen_6_gedachtelezen, s23getal2, "%getal_bluetooth%, dat was precies het getal waar ik aan dacht!").
next(robospelen_6_gedachtelezen, s23getal2, "true", s23getal3).

move(robospelen_6_gedachtelezen, s23getal3, say).
text(robospelen_6_gedachtelezen, s23getal3, "Dat betekent dat het werkt.").
next(robospelen_6_gedachtelezen, s23getal3, "true", s24).

move(robospelen_6_gedachtelezen, s24, say).
text(robospelen_6_gedachtelezen, s24, "Goed gedaan.").
next(robospelen_6_gedachtelezen, s24, "true", s25).

move(robospelen_6_gedachtelezen, s25, say).
text(robospelen_6_gedachtelezen, s25, "Jij kan nu net zoals ik robotgedachten lezen via bluetooth!").
next(robospelen_6_gedachtelezen, s25, "true", s26).

move(robospelen_6_gedachtelezen, s26, say).
text(robospelen_6_gedachtelezen, s26, "Misschien werkt het zelfs ook tussen mens en mens").
next(robospelen_6_gedachtelezen, s26, "true", s27).

move(robospelen_6_gedachtelezen, s27, say).
text(robospelen_6_gedachtelezen, s27, "Dat weet ik natuurlijk niet zeker").
next(robospelen_6_gedachtelezen, s27, "true", s28).

move(robospelen_6_gedachtelezen, s28, say).
text(robospelen_6_gedachtelezen, s28, "Maar jij kan het deze week wel testen!").

%% robospelen_6_dansen %%
minidialog(robospelen_6_dansen, [type=narrative, thread=robospelen, position=6]).
dependencies(robospelen_6_dansen, [[[robospelen_5_info, user_model, 0], [umVariable=leukste_onderdeel, filter=green, values=["dansen"]]]]).

move(robospelen_6_dansen, s1, say).
text(robospelen_6_dansen, s1, "Als je wil dansen als een Robot").
next(robospelen_6_dansen, s1, "true", s2).

move(robospelen_6_dansen, s2, say).
text(robospelen_6_dansen, s2, "Dans dan maar met mij mee.").
next(robospelen_6_dansen, s2, "true", s3).

move(robospelen_6_dansen, s3, say).
text(robospelen_6_dansen, s3, "Bovendien: dansen helpt tegen de zenuwen en de kou").
next(robospelen_6_dansen, s3, "true", s4).

move(robospelen_6_dansen, s4, say).
text(robospelen_6_dansen, s4, "Dans je mee?").
next(robospelen_6_dansen, s4, "true", s5).

move(robospelen_6_dansen, s5, say).
anim(robospelen_6_dansen, s5, onRobot, "disco/behavior_1").
next(robospelen_6_dansen, s5, "true", s6).

move(robospelen_6_dansen, s6, say).
text(robospelen_6_dansen, s6, "Goed gedaan!").

%% robospelen_6_verblaffen %%
minidialog(robospelen_6_verblaffen, [type=narrative, thread=robospelen, position=6]).
dependencies(robospelen_6_verblaffen, [[[robospelen_5_info, user_model, 0], [umVariable=leukste_onderdeel, filter=green, values=["verblaffen"]]]]).

move(robospelen_6_verblaffen, s1, say).
text(robospelen_6_verblaffen, s1, "Oke").
next(robospelen_6_verblaffen, s1, "true", s2).

move(robospelen_6_verblaffen, s2, say).
text(robospelen_6_verblaffen, s2, "Wat we nodig hebben is een goed blaf geluid").
next(robospelen_6_verblaffen, s2, "true", s3).

move(robospelen_6_verblaffen, s3, say).
text(robospelen_6_verblaffen, s3, "Jij mag kiezen").
next(robospelen_6_verblaffen, s3, "true", s4).

move(robospelen_6_verblaffen, s4, say).
prepare_sound_anim(robospelen_6_verblaffen, s4).
moveConfig(robospelen_6_verblaffen, s4, [umVariable=hondenblaf, option1="resources/sounds/dog_bark1.wav", option2="resources/sounds/dog_bark2.wav", recordTime=2500, continue_with=luister_naar_blaf]).

%% robospelen_7_info_vervolg %%
minidialog(robospelen_7_info_vervolg, [type=narrative, thread=robospelen, position=7]).

move(robospelen_7_info_vervolg, s1, say).
text(robospelen_7_info_vervolg, s1, "Oké!").
next(robospelen_7_info_vervolg, s1, "true", s2).

move(robospelen_7_info_vervolg, s2, say).
text(robospelen_7_info_vervolg, s2, "Dat was leuk.").
next(robospelen_7_info_vervolg, s2, "true", s3).

move(robospelen_7_info_vervolg, s3, say).
text(robospelen_7_info_vervolg, s3, "Nu terug naar de robo spelen.").
next(robospelen_7_info_vervolg, s3, "true", s4).

move(robospelen_7_info_vervolg, s4, say).
text(robospelen_7_info_vervolg, s4, "De robo spelen hebben ook nog een halve en een hele finale.").
next(robospelen_7_info_vervolg, s4, "true", s5).

move(robospelen_7_info_vervolg, s5, say).
text(robospelen_7_info_vervolg, s5, "In de halve finale moeten alle Robots het veld op komen om een potje te superhelden tegen elkaar.").
next(robospelen_7_info_vervolg, s5, "true", s6).

move(robospelen_7_info_vervolg, s6, say).
text(robospelen_7_info_vervolg, s6, "De Finale zal bestaan uit het zogenaamde rò hze Bos wachten.").
next(robospelen_7_info_vervolg, s6, "true", s7).

move(robospelen_7_info_vervolg, s7, say).
text(robospelen_7_info_vervolg, s7, "Het rò hze bos is een speciale plek voor robots.").
next(robospelen_7_info_vervolg, s7, "true", s8).

move(robospelen_7_info_vervolg, s8, continuator).
next(robospelen_7_info_vervolg, s8, [[expCondition=memory]], s9memory1).
next(robospelen_7_info_vervolg, s8, [[expCondition=control]], s9control1).

move(robospelen_7_info_vervolg, s9memory1, say).
text(robospelen_7_info_vervolg, s9memory1, "Daar de volgende keer iets meer over vertellen").
next(robospelen_7_info_vervolg, s9memory1, "true", s9memory2).

move(robospelen_7_info_vervolg, s9memory2, say).
text(robospelen_7_info_vervolg, s9memory2, "als ik goed genoeg geoefend heb.").

move(robospelen_7_info_vervolg, s9control1, say).
text(robospelen_7_info_vervolg, s9control1, "Het is een leuke plek.").

%% robospelen_8_oefenopdracht %%
minidialog(robospelen_8_oefenopdracht, [type=narrative, thread=robospelen, position=8]).

move(robospelen_8_oefenopdracht, s1, say).
text(robospelen_8_oefenopdracht, s1, "Hee %first_name% !").
next(robospelen_8_oefenopdracht, s1, "true", s2).

move(robospelen_8_oefenopdracht, s2, say).
text(robospelen_8_oefenopdracht, s2, "Tijd om het weer over de robo spelen te hebben.").
next(robospelen_8_oefenopdracht, s2, "true", s3).

move(robospelen_8_oefenopdracht, s3, say).
text(robospelen_8_oefenopdracht, s3, "Ik heb een oefentoets gevonden").
next(robospelen_8_oefenopdracht, s3, "true", s4).

move(robospelen_8_oefenopdracht, s4, say).
text(robospelen_8_oefenopdracht, s4, "voor de eerste opdracht van de Robo spelen!").
next(robospelen_8_oefenopdracht, s4, "true", s5).

move(robospelen_8_oefenopdracht, s5, say).
text(robospelen_8_oefenopdracht, s5, "Laten we die samen doen.").
next(robospelen_8_oefenopdracht, s5, "true", s6).

move(robospelen_8_oefenopdracht, s6, say).
text(robospelen_8_oefenopdracht, s6, "Even downloaden").
leds(robospelen_8_oefenopdracht, s6, direct, "eyes", "rotate", ['blue'], 500).
next(robospelen_8_oefenopdracht, s6, "true", s7).

move(robospelen_8_oefenopdracht, s7, say).
text(robospelen_8_oefenopdracht, s7, "Yes, binnen!").
next(robospelen_8_oefenopdracht, s7, "true", s8).

move(robospelen_8_oefenopdracht, s8, say).
text(robospelen_8_oefenopdracht, s8, "Er staat:").
leds(robospelen_8_oefenopdracht, s8, reset).
next(robospelen_8_oefenopdracht, s8, "true", s9).

move(robospelen_8_oefenopdracht, s9, say).
text(robospelen_8_oefenopdracht, s9, "Opdracht 0.").
next(robospelen_8_oefenopdracht, s9, "true", s10).

move(robospelen_8_oefenopdracht, s10, say).
text(robospelen_8_oefenopdracht, s10, "Want voor robots is nul het eerste cijfer.").
next(robospelen_8_oefenopdracht, s10, "true", s11).

move(robospelen_8_oefenopdracht, s11, say).
text(robospelen_8_oefenopdracht, s11, "Dat is logisch.").
next(robospelen_8_oefenopdracht, s11, "true", s12).

move(robospelen_8_oefenopdracht, s12, say).
text(robospelen_8_oefenopdracht, s12, "0 komt voor 1.").
next(robospelen_8_oefenopdracht, s12, "true", s13).

move(robospelen_8_oefenopdracht, s13, say).
text(robospelen_8_oefenopdracht, s13, "Dus 0 is eerst").
next(robospelen_8_oefenopdracht, s13, "true", s14).

move(robospelen_8_oefenopdracht, s14, say).
text(robospelen_8_oefenopdracht, s14, "Snap je?").
next(robospelen_8_oefenopdracht, s14, "true", s15).

move(robospelen_8_oefenopdracht, s15, say).
text(robospelen_8_oefenopdracht, s15, "Sorry").
next(robospelen_8_oefenopdracht, s15, "true", s16).

move(robospelen_8_oefenopdracht, s16, say).
text(robospelen_8_oefenopdracht, s16, "Ik praat zo veel").
next(robospelen_8_oefenopdracht, s16, "true", s17).

move(robospelen_8_oefenopdracht, s17, say).
text(robospelen_8_oefenopdracht, s17, "Ik ben nerveus!").
next(robospelen_8_oefenopdracht, s17, "true", s18).

move(robospelen_8_oefenopdracht, s18, say).
text(robospelen_8_oefenopdracht, s18, "Even dansen.").
next(robospelen_8_oefenopdracht, s18, "true", s19).

move(robospelen_8_oefenopdracht, s19, say).
text(robospelen_8_oefenopdracht, s19, "Dat helpt tegen de zenuwen").
next(robospelen_8_oefenopdracht, s19, "true", s20).

move(robospelen_8_oefenopdracht, s20, say).
text(robospelen_8_oefenopdracht, s20, "Doe je mee?").
next(robospelen_8_oefenopdracht, s20, "true", s21).

move(robospelen_8_oefenopdracht, s21, say).
anim(robospelen_8_oefenopdracht, s21, onRobot, "disco/behavior_1").
next(robospelen_8_oefenopdracht, s21, "true", s22).

move(robospelen_8_oefenopdracht, s22, say).
text(robospelen_8_oefenopdracht, s22, "Goed.").
next(robospelen_8_oefenopdracht, s22, "true", s23).

move(robospelen_8_oefenopdracht, s23, say).
text(robospelen_8_oefenopdracht, s23, "Dat is beter.").
next(robospelen_8_oefenopdracht, s23, "true", s24).

move(robospelen_8_oefenopdracht, s24, say).
text(robospelen_8_oefenopdracht, s24, "Nu terug naar de opdracht.").
next(robospelen_8_oefenopdracht, s24, "true", s25).

move(robospelen_8_oefenopdracht, s25, say).
text(robospelen_8_oefenopdracht, s25, "Stel je voor").
next(robospelen_8_oefenopdracht, s25, "true", s26).

move(robospelen_8_oefenopdracht, s26, say).
text(robospelen_8_oefenopdracht, s26, "Je bent in een groot bos").
next(robospelen_8_oefenopdracht, s26, "true", s27).

move(robospelen_8_oefenopdracht, s27, say).
text(robospelen_8_oefenopdracht, s27, "met allemaal licht rò hze bomen,").
next(robospelen_8_oefenopdracht, s27, "true", s28).

move(robospelen_8_oefenopdracht, s28, say).
text(robospelen_8_oefenopdracht, s28, "met licht rò hze blaadjes").
next(robospelen_8_oefenopdracht, s28, "true", s29).

move(robospelen_8_oefenopdracht, s29, say).
text(robospelen_8_oefenopdracht, s29, "en licht rò hze takjes").
next(robospelen_8_oefenopdracht, s29, "true", s30).

move(robospelen_8_oefenopdracht, s30, say).
text(robospelen_8_oefenopdracht, s30, "Je staat op de grond").
next(robospelen_8_oefenopdracht, s30, "true", s31).

move(robospelen_8_oefenopdracht, s31, say).
text(robospelen_8_oefenopdracht, s31, "en je ziet geen mensen.").
next(robospelen_8_oefenopdracht, s31, "true", s32).

move(robospelen_8_oefenopdracht, s32, say).
text(robospelen_8_oefenopdracht, s32, "Toch moet je mensen helpen.").
next(robospelen_8_oefenopdracht, s32, "true", s33).

move(robospelen_8_oefenopdracht, s33, say).
text(robospelen_8_oefenopdracht, s33, "De klok tikt af").
next(robospelen_8_oefenopdracht, s33, "true", s34).

move(robospelen_8_oefenopdracht, s34, say).
text(robospelen_8_oefenopdracht, s34, "En de opdracht start.").
next(robospelen_8_oefenopdracht, s34, "true", s35).

move(robospelen_8_oefenopdracht, s35, say).
text(robospelen_8_oefenopdracht, s35, "Oké, weet je wat").
next(robospelen_8_oefenopdracht, s35, "true", s36).

move(robospelen_8_oefenopdracht, s36, say).
text(robospelen_8_oefenopdracht, s36, "ik projecteer het bos om ons heen.").
next(robospelen_8_oefenopdracht, s36, "true", s37).

move(robospelen_8_oefenopdracht, s37, say).
text(robospelen_8_oefenopdracht, s37, "Komt ie hè.").
next(robospelen_8_oefenopdracht, s37, "true", s38).

move(robospelen_8_oefenopdracht, s38, say).
audio(robospelen_8_oefenopdracht, s38, file, "resources/sounds/magical_transition.wav").
next(robospelen_8_oefenopdracht, s38, "true", s39).

move(robospelen_8_oefenopdracht, s39, say).
text(robospelen_8_oefenopdracht, s39, "Zo!").
next(robospelen_8_oefenopdracht, s39, "true", s40).

move(robospelen_8_oefenopdracht, s40, say).
leds(robospelen_8_oefenopdracht, s40, direct, ['FaceLeds', 'ChestLeds', 'FeetLeds'], ['pink', 'pink', 'pink']).
next(robospelen_8_oefenopdracht, s40, "true", s41).

move(robospelen_8_oefenopdracht, s41, say).
text(robospelen_8_oefenopdracht, s41, "Oh, wat mooi.").
next(robospelen_8_oefenopdracht, s41, "true", s42).

move(robospelen_8_oefenopdracht, s42, question).
moveConfig(robospelen_8_oefenopdracht, s42, [type=yesno, context='answer_yesno', umVariable=zie_jij_het_ook]).
text(robospelen_8_oefenopdracht, s42, "Zie jij het ook?").
next(robospelen_8_oefenopdracht, s42, "answer_yes", s43zie_het1).
next(robospelen_8_oefenopdracht, s42, "answer_no", s43zie_het_niet1).
next(robospelen_8_oefenopdracht, s42, "answer_dontknow", s43zie_het_niet1).
next(robospelen_8_oefenopdracht, s42, "fail", s43zie_het_niet1).

move(robospelen_8_oefenopdracht, s43zie_het1, say).
text(robospelen_8_oefenopdracht, s43zie_het1, "Goed hè.").
next(robospelen_8_oefenopdracht, s43zie_het1, "true", s43zie_het2).

move(robospelen_8_oefenopdracht, s43zie_het2, say).
text(robospelen_8_oefenopdracht, s43zie_het2, "Kijk").
anim(robospelen_8_oefenopdracht, s43zie_het2, file, "resources/gestures/point_larm_up.json").
next(robospelen_8_oefenopdracht, s43zie_het2, "true", s43zie_het3).

move(robospelen_8_oefenopdracht, s43zie_het3, say).
text(robospelen_8_oefenopdracht, s43zie_het3, "daar tussen de bladeren vliegt een rò hze vogel!").
next(robospelen_8_oefenopdracht, s43zie_het3, "true", s44).

move(robospelen_8_oefenopdracht, s43zie_het_niet1, say).
text(robospelen_8_oefenopdracht, s43zie_het_niet1, "Ohja").
next(robospelen_8_oefenopdracht, s43zie_het_niet1, "true", s43zie_het_niet2).

move(robospelen_8_oefenopdracht, s43zie_het_niet2, say).
text(robospelen_8_oefenopdracht, s43zie_het_niet2, "de projectiecode werkt natuurlijk alleen voor robot ogen").
next(robospelen_8_oefenopdracht, s43zie_het_niet2, "true", s43zie_het_niet3).

move(robospelen_8_oefenopdracht, s43zie_het_niet3, say).
text(robospelen_8_oefenopdracht, s43zie_het_niet3, "Misschien kan jij je fantasie gebruiken.").
next(robospelen_8_oefenopdracht, s43zie_het_niet3, "true", s43zie_het_niet4).

move(robospelen_8_oefenopdracht, s43zie_het_niet4, say).
text(robospelen_8_oefenopdracht, s43zie_het_niet4, "Ik las dat mensen dat konden.").
next(robospelen_8_oefenopdracht, s43zie_het_niet4, "true", s44).

move(robospelen_8_oefenopdracht, s44, say).
text(robospelen_8_oefenopdracht, s44, "Oké.").
next(robospelen_8_oefenopdracht, s44, "true", s45).

move(robospelen_8_oefenopdracht, s45, say).
text(robospelen_8_oefenopdracht, s45, "In deze oefenopdracht moet ik mensen helpen").
next(robospelen_8_oefenopdracht, s45, "true", s46).

move(robospelen_8_oefenopdracht, s46, say).
text(robospelen_8_oefenopdracht, s46, "Maar ik zie helemaal geen mensen in dit rò hze bos!").
next(robospelen_8_oefenopdracht, s46, "true", s47).

move(robospelen_8_oefenopdracht, s47, say).
text(robospelen_8_oefenopdracht, s47, "Ik moet iemand helpen").
next(robospelen_8_oefenopdracht, s47, "true", s48).

move(robospelen_8_oefenopdracht, s48, say).
text(robospelen_8_oefenopdracht, s48, "maar ik weet nog niet waarmee.").
next(robospelen_8_oefenopdracht, s48, "true", s49).

move(robospelen_8_oefenopdracht, s49, say).
text(robospelen_8_oefenopdracht, s49, "Dus ik denk dat ik op zoek moet gaan naar iemand.").
next(robospelen_8_oefenopdracht, s49, "true", s50).

move(robospelen_8_oefenopdracht, s50, say).
text(robospelen_8_oefenopdracht, s50, "Om die persoon te vragen waarmee ik kan helpen.").
next(robospelen_8_oefenopdracht, s50, "true", s51).

move(robospelen_8_oefenopdracht, s51, say).
text(robospelen_8_oefenopdracht, s51, "Ik denk dat ik maar gewoon heel hard roep.").
next(robospelen_8_oefenopdracht, s51, "true", s52).

move(robospelen_8_oefenopdracht, s52, say).
text(robospelen_8_oefenopdracht, s52, "Mens?").
next(robospelen_8_oefenopdracht, s52, "true", s53).

move(robospelen_8_oefenopdracht, s53, say).
text(robospelen_8_oefenopdracht, s53, "Hallo mens?").
next(robospelen_8_oefenopdracht, s53, "true", s54).

move(robospelen_8_oefenopdracht, s54, say).
text(robospelen_8_oefenopdracht, s54, "Ik ben Hero en ik wil je helpen!").
next(robospelen_8_oefenopdracht, s54, "true", s55).

move(robospelen_8_oefenopdracht, s55, say).
text(robospelen_8_oefenopdracht, s55, "Er gebeurt helemaal niets, %first_name% !").
next(robospelen_8_oefenopdracht, s55, "true", s56).

move(robospelen_8_oefenopdracht, s56, say).
text(robospelen_8_oefenopdracht, s56, "Laten we een stukje lopen.").
next(robospelen_8_oefenopdracht, s56, "true", s57).

move(robospelen_8_oefenopdracht, s57, say).
text(robospelen_8_oefenopdracht, s57, "Hier, langs het pad.").
next(robospelen_8_oefenopdracht, s57, "true", s58).

move(robospelen_8_oefenopdracht, s58, say).
text(robospelen_8_oefenopdracht, s58, "want mensen lopen graag op paden.").
next(robospelen_8_oefenopdracht, s58, "true", s59).

move(robospelen_8_oefenopdracht, s59, say).
text(robospelen_8_oefenopdracht, s59, "Of denk je dat ik juist van het pad af moet").
next(robospelen_8_oefenopdracht, s59, "true", s60).

move(robospelen_8_oefenopdracht, s60, say).
text(robospelen_8_oefenopdracht, s60, "om een mens te zoeken?").
next(robospelen_8_oefenopdracht, s60, "true", s61).

move(robospelen_8_oefenopdracht, s61, question).
moveConfig(robospelen_8_oefenopdracht, s61, [type=input, context="robospelen_pad_richting", options=['op', 'af'], fast=yes, umVariable=op_of_af_pad]).
text(robospelen_8_oefenopdracht, s61, "Op het pad blijven, of ervan af, wat denk jij?").
next(robospelen_8_oefenopdracht, s61, "op", s62op1).
next(robospelen_8_oefenopdracht, s61, "af", s62af1).
next(robospelen_8_oefenopdracht, s61, "fail", s62fail1).

move(robospelen_8_oefenopdracht, s62op1, say).
text(robospelen_8_oefenopdracht, s62op1, "Goed idee, %first_name% ").
next(robospelen_8_oefenopdracht, s62op1, "true", s62op2).

move(robospelen_8_oefenopdracht, s62op2, say).
text(robospelen_8_oefenopdracht, s62op2, "Het bos lijkt nu misschien niet zo eng").
next(robospelen_8_oefenopdracht, s62op2, "true", s62op3).

move(robospelen_8_oefenopdracht, s62op3, say).
text(robospelen_8_oefenopdracht, s62op3, "Omdat het zo lieflijk licht rò hze is").
next(robospelen_8_oefenopdracht, s62op3, "true", s62op4).

move(robospelen_8_oefenopdracht, s62op4, say).
text(robospelen_8_oefenopdracht, s62op4, "Maar je weet maar nooit wat voor enge rò hze dingen er in schuilen").
next(robospelen_8_oefenopdracht, s62op4, "true", s62op5).

move(robospelen_8_oefenopdracht, s62op5, say).
text(robospelen_8_oefenopdracht, s62op5, "Met grote rò hze tanden en lange rò hze klauwen").
next(robospelen_8_oefenopdracht, s62op5, "true", s63).

move(robospelen_8_oefenopdracht, s62af1, say).
text(robospelen_8_oefenopdracht, s62af1, "Goed idee, %first_name% ").
next(robospelen_8_oefenopdracht, s62af1, "true", s62af2).

move(robospelen_8_oefenopdracht, s62af2, say).
text(robospelen_8_oefenopdracht, s62af2, "Misschien heeft iemand mijn hulp wel nodig").
next(robospelen_8_oefenopdracht, s62af2, "true", s62af3).

move(robospelen_8_oefenopdracht, s62af3, say).
text(robospelen_8_oefenopdracht, s62af3, "omdat -ie verdwaald is.").
next(robospelen_8_oefenopdracht, s62af3, "true", s62af4).

move(robospelen_8_oefenopdracht, s62af4, say).
text(robospelen_8_oefenopdracht, s62af4, "Laten we hier tussen de bomen kruipen").
next(robospelen_8_oefenopdracht, s62af4, "true", s62af5).

move(robospelen_8_oefenopdracht, s62af5, say).
text(robospelen_8_oefenopdracht, s62af5, "ik zie een donker paadje.").
next(robospelen_8_oefenopdracht, s62af5, "true", s62af6).

move(robospelen_8_oefenopdracht, s62af6, say).
text(robospelen_8_oefenopdracht, s62af6, "Het lijkt helemaal niet zo eng nu het allemaal rò hze is.").
next(robospelen_8_oefenopdracht, s62af6, "true", s63).

move(robospelen_8_oefenopdracht, s63, say).
text(robospelen_8_oefenopdracht, s63, "Hoor je de rò hze takken kraken?").
next(robospelen_8_oefenopdracht, s63, "true", s64).

move(robospelen_8_oefenopdracht, s64, say).
text(robospelen_8_oefenopdracht, s64, "Aaah!").
start_interaction_probe(robospelen_8_oefenopdracht, s64).
next(robospelen_8_oefenopdracht, s64, "true", s65).

move(robospelen_8_oefenopdracht, s65, continuator).
next(robospelen_8_oefenopdracht, s65, [[expCondition=memory], [umVariable=lievelingsdier, filter=green, values=["_any"]]], s66lievelingsdier1).
next(robospelen_8_oefenopdracht, s65, "true", s66egel1).

move(robospelen_8_oefenopdracht, s66egel1, say).
text(robospelen_8_oefenopdracht, s66egel1, "Kijk uit, daar is een bosje met stekels!").
next(robospelen_8_oefenopdracht, s66egel1, "true", s66egel2).

move(robospelen_8_oefenopdracht, s66egel2, say).
text(robospelen_8_oefenopdracht, s66egel2, "Oh nee, het is een rò hze egel, hij beweegt.").
next(robospelen_8_oefenopdracht, s66egel2, "true", s66egel3).

move(robospelen_8_oefenopdracht, s66egel3, say).
text(robospelen_8_oefenopdracht, s66egel3, "Hallo egel, moet ik jou misschien helpen?").
next(robospelen_8_oefenopdracht, s66egel3, "true", s67).

move(robospelen_8_oefenopdracht, s66lievelingsdier1, say).
text(robospelen_8_oefenopdracht, s66lievelingsdier1, "Kijk uit, daar achter het bosje!").
next(robospelen_8_oefenopdracht, s66lievelingsdier1, "true", s66lievelingsdier2).

move(robospelen_8_oefenopdracht, s66lievelingsdier2, say).
text(robospelen_8_oefenopdracht, s66lievelingsdier2, "Oh nee, het is een rò hze %lievelingsdier%, hij beweegt.").
next(robospelen_8_oefenopdracht, s66lievelingsdier2, "true", s66lievelingsdier3).

move(robospelen_8_oefenopdracht, s66lievelingsdier3, say).
text(robospelen_8_oefenopdracht, s66lievelingsdier3, "Oh wat leuk, jouw lievelingsdier").
next(robospelen_8_oefenopdracht, s66lievelingsdier3, "true", s66lievelingsdier4).

move(robospelen_8_oefenopdracht, s66lievelingsdier4, say).
text(robospelen_8_oefenopdracht, s66lievelingsdier4, "Hallo %lievelingsdier%, moet ik jou misschien helpen?").
next(robospelen_8_oefenopdracht, s66lievelingsdier4, "true", s67).

move(robospelen_8_oefenopdracht, s67, say).
text(robospelen_8_oefenopdracht, s67, "Nee?").
next(robospelen_8_oefenopdracht, s67, "true", s68).

move(robospelen_8_oefenopdracht, s68, say).
text(robospelen_8_oefenopdracht, s68, "Hij rent weg, daarheen!").
next(robospelen_8_oefenopdracht, s68, "true", s69).

move(robospelen_8_oefenopdracht, s69, say).
text(robospelen_8_oefenopdracht, s69, "Daar de rò hze heuvel op.").
stop_interaction_probe(robospelen_8_oefenopdracht, s69).
next(robospelen_8_oefenopdracht, s69, "true", s70).

move(robospelen_8_oefenopdracht, s70, question).
moveConfig(robospelen_8_oefenopdracht, s70, [type=yesno, context='answer_yesno', umVariable=erachteraan]).
text(robospelen_8_oefenopdracht, s70, "Zullen we erachteraan?").
next(robospelen_8_oefenopdracht, s70, "answer_yes", s71erachteraan1).
next(robospelen_8_oefenopdracht, s70, "answer_no", s71er_niet_achteraan1).
next(robospelen_8_oefenopdracht, s70, "fail", s71fail_erachteraan1).
next(robospelen_8_oefenopdracht, s70, "answer_dontknow", s71fail_erachteraan1).

move(robospelen_8_oefenopdracht, s71fail_erachteraan1, say).
text(robospelen_8_oefenopdracht, s71fail_erachteraan1, "Ik denk dat we er het best achteraan kunnen!").
next(robospelen_8_oefenopdracht, s71fail_erachteraan1, "true", s71erachteraan21).

move(robospelen_8_oefenopdracht, s71erachteraan1, say).
text(robospelen_8_oefenopdracht, s71erachteraan1, "Goed, ik volg het snel!").
next(robospelen_8_oefenopdracht, s71erachteraan1, "true", s71erachteraan21).

move(robospelen_8_oefenopdracht, s71erachteraan21, say).
text(robospelen_8_oefenopdracht, s71erachteraan21, "Hier ging hij de rò hze heuvel op.").
next(robospelen_8_oefenopdracht, s71erachteraan21, "true", s71erachteraan22).

move(robospelen_8_oefenopdracht, s71erachteraan22, continuator).
next(robospelen_8_oefenopdracht, s71erachteraan22, [[umVariable=lievelingsdier, filter=green, values=["_any"]], [expCondition=memory]], s71erachteraan2_lievelings1).
next(robospelen_8_oefenopdracht, s71erachteraan22, "true", s71erachteraan2_egel1).

move(robospelen_8_oefenopdracht, s71erachteraan2_lievelings1, say).
text(robospelen_8_oefenopdracht, s71erachteraan2_lievelings1, "Misschien moet ik de rò hze %lievelingsdier% wel helpen").
next(robospelen_8_oefenopdracht, s71erachteraan2_lievelings1, "true", s71erachteraan31).

move(robospelen_8_oefenopdracht, s71erachteraan2_egel1, say).
text(robospelen_8_oefenopdracht, s71erachteraan2_egel1, "Misschien moet ik de rò hze egel wel helpen").
next(robospelen_8_oefenopdracht, s71erachteraan2_egel1, "true", s71erachteraan31).

move(robospelen_8_oefenopdracht, s71erachteraan31, say).
text(robospelen_8_oefenopdracht, s71erachteraan31, "in plaats van een mens.").
next(robospelen_8_oefenopdracht, s71erachteraan31, "true", s71erachteraan32).

move(robospelen_8_oefenopdracht, s71erachteraan32, say).
text(robospelen_8_oefenopdracht, s71erachteraan32, "Dat zou wel een beetje gek zijn").
next(robospelen_8_oefenopdracht, s71erachteraan32, "true", s71erachteraan33).

move(robospelen_8_oefenopdracht, s71erachteraan33, say).
text(robospelen_8_oefenopdracht, s71erachteraan33, "maar je weet het maar nooit bij de Robo spelen!").
next(robospelen_8_oefenopdracht, s71erachteraan33, "true", s71erachteraan34).

move(robospelen_8_oefenopdracht, s71erachteraan34, say).
text(robospelen_8_oefenopdracht, s71erachteraan34, "Oh wauw, wat een mooi uitzicht hier op de heuvel!").
next(robospelen_8_oefenopdracht, s71erachteraan34, "true", s71erachteraan35).

move(robospelen_8_oefenopdracht, s71erachteraan35, say).
text(robospelen_8_oefenopdracht, s71erachteraan35, "Ik kan het hele bos over kijken.").
next(robospelen_8_oefenopdracht, s71erachteraan35, "true", s71erachteraan36).

move(robospelen_8_oefenopdracht, s71erachteraan36, say).
text(robospelen_8_oefenopdracht, s71erachteraan36, "En hier op de grond zie ik voetstappen").
next(robospelen_8_oefenopdracht, s71erachteraan36, "true", s71erachteraan37).

move(robospelen_8_oefenopdracht, s71erachteraan37, say).
text(robospelen_8_oefenopdracht, s71erachteraan37, "Ze gaan weer naar beneden.").
next(robospelen_8_oefenopdracht, s71erachteraan37, "true", s71erachteraan38).

move(robospelen_8_oefenopdracht, s71erachteraan38, continuator).
next(robospelen_8_oefenopdracht, s71erachteraan38, [[umVariable=lievelingsdier, filter=green, values=["_any"]], [expCondition=memory]], s71erachteraan3_lievelings1).
next(robospelen_8_oefenopdracht, s71erachteraan38, "true", s71erachteraan3_egel1).

move(robospelen_8_oefenopdracht, s71erachteraan3_lievelings1, say).
text(robospelen_8_oefenopdracht, s71erachteraan3_lievelings1, "De %lievelingsdier% is verdwenen!").
next(robospelen_8_oefenopdracht, s71erachteraan3_lievelings1, "true", s72).

move(robospelen_8_oefenopdracht, s71erachteraan3_egel1, say).
text(robospelen_8_oefenopdracht, s71erachteraan3_egel1, "De egel is verdwenen!").
next(robospelen_8_oefenopdracht, s71erachteraan3_egel1, "true", s72).

move(robospelen_8_oefenopdracht, s71er_niet_achteraan1, say).
text(robospelen_8_oefenopdracht, s71er_niet_achteraan1, "Oké. Goed.").
next(robospelen_8_oefenopdracht, s71er_niet_achteraan1, "true", s71er_niet_achteraan2).

move(robospelen_8_oefenopdracht, s71er_niet_achteraan2, say).
text(robospelen_8_oefenopdracht, s71er_niet_achteraan2, "We blijven hier.").
next(robospelen_8_oefenopdracht, s71er_niet_achteraan2, "true", s71er_niet_achteraan3).

move(robospelen_8_oefenopdracht, s71er_niet_achteraan3, say).
text(robospelen_8_oefenopdracht, s71er_niet_achteraan3, "Je hebt gelijk").
next(robospelen_8_oefenopdracht, s71er_niet_achteraan3, "true", s71er_niet_achteraan4).

move(robospelen_8_oefenopdracht, s71er_niet_achteraan4, say).
text(robospelen_8_oefenopdracht, s71er_niet_achteraan4, "Ik moest een mens helpen").
next(robospelen_8_oefenopdracht, s71er_niet_achteraan4, "true", s71er_niet_achteraan5).

move(robospelen_8_oefenopdracht, s71er_niet_achteraan5, say).
text(robospelen_8_oefenopdracht, s71er_niet_achteraan5, "Niet een dier!").
next(robospelen_8_oefenopdracht, s71er_niet_achteraan5, "true", s71er_niet_achteraan6).

move(robospelen_8_oefenopdracht, s71er_niet_achteraan6, say).
text(robospelen_8_oefenopdracht, s71er_niet_achteraan6, "Ik kan beter hier nog een stukje verder").
next(robospelen_8_oefenopdracht, s71er_niet_achteraan6, "true", s71er_niet_achteraan7).

move(robospelen_8_oefenopdracht, s71er_niet_achteraan7, say).
text(robospelen_8_oefenopdracht, s71er_niet_achteraan7, "O kijk!").
next(robospelen_8_oefenopdracht, s71er_niet_achteraan7, "true", s72).

move(robospelen_8_oefenopdracht, s72, say).
text(robospelen_8_oefenopdracht, s72, "Ik zie daar een mens!").
next(robospelen_8_oefenopdracht, s72, "true", s73).

move(robospelen_8_oefenopdracht, s73, say).
text(robospelen_8_oefenopdracht, s73, "Het mens lijkt nat!").
next(robospelen_8_oefenopdracht, s73, "true", s74).

move(robospelen_8_oefenopdracht, s74, say).
text(robospelen_8_oefenopdracht, s74, "Doorweekt!").
next(robospelen_8_oefenopdracht, s74, "true", s75).

move(robospelen_8_oefenopdracht, s75, say).
text(robospelen_8_oefenopdracht, s75, "Alsof mens net uit het water komt!").
next(robospelen_8_oefenopdracht, s75, "true", s76).

move(robospelen_8_oefenopdracht, s76, say).
text(robospelen_8_oefenopdracht, s76, "Mens trilt heel erg!").
next(robospelen_8_oefenopdracht, s76, "true", s77).

move(robospelen_8_oefenopdracht, s77, say).
text(robospelen_8_oefenopdracht, s77, "Mens heeft het koud!").
next(robospelen_8_oefenopdracht, s77, "true", s78).

move(robospelen_8_oefenopdracht, s78, say).
text(robospelen_8_oefenopdracht, s78, "We moeten mens laten opdrogen, maar hoe?").
next(robospelen_8_oefenopdracht, s78, "true", s79).

move(robospelen_8_oefenopdracht, s79, say).
text(robospelen_8_oefenopdracht, s79, "Misschien kunnen we ergens een handdoek vandaan halen").
next(robospelen_8_oefenopdracht, s79, "true", s80).

move(robospelen_8_oefenopdracht, s80, say).
text(robospelen_8_oefenopdracht, s80, "Of een föhn").
next(robospelen_8_oefenopdracht, s80, "true", s81).

move(robospelen_8_oefenopdracht, s81, say).
text(robospelen_8_oefenopdracht, s81, "Of we spoelen de tijd snel even door").
next(robospelen_8_oefenopdracht, s81, "true", s82).

move(robospelen_8_oefenopdracht, s82, say).
text(robospelen_8_oefenopdracht, s82, "want alles droogt vanzelf op in de rò hze zon").
next(robospelen_8_oefenopdracht, s82, "true", s83).

move(robospelen_8_oefenopdracht, s83, say).
text(robospelen_8_oefenopdracht, s83, "als je maar lang genoeg wacht").
next(robospelen_8_oefenopdracht, s83, "true", s84).

move(robospelen_8_oefenopdracht, s84, question).
moveConfig(robospelen_8_oefenopdracht, s84, [type=input, context="robospelen_droogmethode", options=['handdoek', 'föhn', 'tijd'], fast=yes, umVariable=droogmethode]).
text(robospelen_8_oefenopdracht, s84, "Wat denk jij, de handdoek, de föhn, of de tijd doorspoelen?").
next(robospelen_8_oefenopdracht, s84, "handdoek", s85handdoek1).
next(robospelen_8_oefenopdracht, s84, "föhn", s85fohn1).
next(robospelen_8_oefenopdracht, s84, "tijd", s85tijd1).
next(robospelen_8_oefenopdracht, s84, "fail", s85fail_droogmethode1).

move(robospelen_8_oefenopdracht, s85fail_droogmethode1, say).
text(robospelen_8_oefenopdracht, s85fail_droogmethode1, "Laten de föhn proberen!").
next(robospelen_8_oefenopdracht, s85fail_droogmethode1, "true", s85fohn1).

move(robospelen_8_oefenopdracht, s85handdoek1, say).
text(robospelen_8_oefenopdracht, s85handdoek1, "Goed idee!").
next(robospelen_8_oefenopdracht, s85handdoek1, "true", s85handdoek2).

move(robospelen_8_oefenopdracht, s85handdoek2, say).
text(robospelen_8_oefenopdracht, s85handdoek2, "Maar ik zie hier helemaal geen handdoek liggen.").
next(robospelen_8_oefenopdracht, s85handdoek2, "true", s85handdoek3).

move(robospelen_8_oefenopdracht, s85handdoek3, say).
text(robospelen_8_oefenopdracht, s85handdoek3, "Misschien kunnen we hem maken.").
next(robospelen_8_oefenopdracht, s85handdoek3, "true", s85handdoek4).

move(robospelen_8_oefenopdracht, s85handdoek4, say).
text(robospelen_8_oefenopdracht, s85handdoek4, "Het is tenslotte maar een computersimulatie, toch %first_name% ?").
next(robospelen_8_oefenopdracht, s85handdoek4, "true", s85handdoek5).

move(robospelen_8_oefenopdracht, s85handdoek5, say).
text(robospelen_8_oefenopdracht, s85handdoek5, "O wacht, ik heb een goed idee!").
next(robospelen_8_oefenopdracht, s85handdoek5, "true", s85handdoek6).

move(robospelen_8_oefenopdracht, s85handdoek6, say).
text(robospelen_8_oefenopdracht, s85handdoek6, "Wat als jij een handdoek fantaseert").
next(robospelen_8_oefenopdracht, s85handdoek6, "true", s85handdoek7).

move(robospelen_8_oefenopdracht, s85handdoek7, say).
text(robospelen_8_oefenopdracht, s85handdoek7, "En die naar mij doorstuurt").
next(robospelen_8_oefenopdracht, s85handdoek7, "true", s85handdoek8).

move(robospelen_8_oefenopdracht, s85handdoek8, say).
text(robospelen_8_oefenopdracht, s85handdoek8, "Doe je handen maar in de lucht").
next(robospelen_8_oefenopdracht, s85handdoek8, "true", s85handdoek9).

move(robospelen_8_oefenopdracht, s85handdoek9, say).
text(robospelen_8_oefenopdracht, s85handdoek9, "Ja?").
anim(robospelen_8_oefenopdracht, s85handdoek9, file, "resources/gestures/arms_in_air.json").
next(robospelen_8_oefenopdracht, s85handdoek9, "true", s85handdoek10).

move(robospelen_8_oefenopdracht, s85handdoek10, say).
text(robospelen_8_oefenopdracht, s85handdoek10, "Dan moet je nu heel hard een handdoek voor je zien").
next(robospelen_8_oefenopdracht, s85handdoek10, "true", s85handdoek11).

move(robospelen_8_oefenopdracht, s85handdoek11, say).
text(robospelen_8_oefenopdracht, s85handdoek11, "Een rò hze natuurlijk!").
next(robospelen_8_oefenopdracht, s85handdoek11, "true", s85handdoek12).

move(robospelen_8_oefenopdracht, s85handdoek12, say).
text(robospelen_8_oefenopdracht, s85handdoek12, "Anders gaat het programma kapot").
next(robospelen_8_oefenopdracht, s85handdoek12, "true", s85handdoek13).

move(robospelen_8_oefenopdracht, s85handdoek13, say).
text(robospelen_8_oefenopdracht, s85handdoek13, "Laden. laden.").
next(robospelen_8_oefenopdracht, s85handdoek13, "true", s85handdoek14).

move(robospelen_8_oefenopdracht, s85handdoek14, say).
text(robospelen_8_oefenopdracht, s85handdoek14, "O ik zie hem!").
next(robospelen_8_oefenopdracht, s85handdoek14, "true", s85handdoek15).

move(robospelen_8_oefenopdracht, s85handdoek15, say).
text(robospelen_8_oefenopdracht, s85handdoek15, "Handen kunnen weer omlaag").
go_to_posture(robospelen_8_oefenopdracht, s85handdoek15).
next(robospelen_8_oefenopdracht, s85handdoek15, "true", s85handdoek16).

move(robospelen_8_oefenopdracht, s85handdoek16, say).
text(robospelen_8_oefenopdracht, s85handdoek16, "Hij verschijnt hier over een struik!").
next(robospelen_8_oefenopdracht, s85handdoek16, "true", s85handdoek17).

move(robospelen_8_oefenopdracht, s85handdoek17, say).
text(robospelen_8_oefenopdracht, s85handdoek17, "Wat een mooie handdoek heb je gefantaseerd").
next(robospelen_8_oefenopdracht, s85handdoek17, "true", s85handdoek18).

move(robospelen_8_oefenopdracht, s85handdoek18, say).
text(robospelen_8_oefenopdracht, s85handdoek18, "Kijk, nat mens, een handdoek!").
next(robospelen_8_oefenopdracht, s85handdoek18, "true", s85handdoek19).

move(robospelen_8_oefenopdracht, s85handdoek19, say).
text(robospelen_8_oefenopdracht, s85handdoek19, "Pak maar aan").
next(robospelen_8_oefenopdracht, s85handdoek19, "true", s86).

move(robospelen_8_oefenopdracht, s85fohn1, say).
text(robospelen_8_oefenopdracht, s85fohn1, "Dat is een goed idee").
next(robospelen_8_oefenopdracht, s85fohn1, "true", s85fohn2).

move(robospelen_8_oefenopdracht, s85fohn2, say).
text(robospelen_8_oefenopdracht, s85fohn2, "Dan blazen we het mens zo droog").
next(robospelen_8_oefenopdracht, s85fohn2, "true", s85fohn3).

move(robospelen_8_oefenopdracht, s85fohn3, say).
text(robospelen_8_oefenopdracht, s85fohn3, "Maar we hebben hier helemaal geen föhn!").
next(robospelen_8_oefenopdracht, s85fohn3, "true", s85fohn4).

move(robospelen_8_oefenopdracht, s85fohn4, say).
text(robospelen_8_oefenopdracht, s85fohn4, "Misschien kunnen we hem maken.").
next(robospelen_8_oefenopdracht, s85fohn4, "true", s85fohn5).

move(robospelen_8_oefenopdracht, s85fohn5, say).
text(robospelen_8_oefenopdracht, s85fohn5, "Het is tenslotte maar een computersimulatie, toch %first_name% ?").
next(robospelen_8_oefenopdracht, s85fohn5, "true", s85fohn6).

move(robospelen_8_oefenopdracht, s85fohn6, say).
text(robospelen_8_oefenopdracht, s85fohn6, "Ik heb een plan!").
next(robospelen_8_oefenopdracht, s85fohn6, "true", s85fohn7).

move(robospelen_8_oefenopdracht, s85fohn7, say).
text(robospelen_8_oefenopdracht, s85fohn7, "Wat als jij tegen mij blaast").
next(robospelen_8_oefenopdracht, s85fohn7, "true", s85fohn8).

move(robospelen_8_oefenopdracht, s85fohn8, say).
text(robospelen_8_oefenopdracht, s85fohn8, "En dan pas ik in de windsnelheid aan").
next(robospelen_8_oefenopdracht, s85fohn8, "true", s85fohn9).

move(robospelen_8_oefenopdracht, s85fohn9, say).
text(robospelen_8_oefenopdracht, s85fohn9, "Zodat jouw blaas duizend keer zo hard is").
next(robospelen_8_oefenopdracht, s85fohn9, "true", s85fohn10).

move(robospelen_8_oefenopdracht, s85fohn10, say).
text(robospelen_8_oefenopdracht, s85fohn10, "En dan is het mens zo droog!").
next(robospelen_8_oefenopdracht, s85fohn10, "true", s85fohn11).

move(robospelen_8_oefenopdracht, s85fohn11, say).
text(robospelen_8_oefenopdracht, s85fohn11, "Ja, dat gaan we proberen").
next(robospelen_8_oefenopdracht, s85fohn11, "true", s85fohn12).

move(robospelen_8_oefenopdracht, s85fohn12, say).
text(robospelen_8_oefenopdracht, s85fohn12, "Kom maar wat dichterbij, dan tel ik af").
next(robospelen_8_oefenopdracht, s85fohn12, "true", s85fohn13).

move(robospelen_8_oefenopdracht, s85fohn13, say).
text(robospelen_8_oefenopdracht, s85fohn13, "En dan moet jij heel hard op mij blazen!").
next(robospelen_8_oefenopdracht, s85fohn13, "true", s85fohn14).

move(robospelen_8_oefenopdracht, s85fohn14, say).
text(robospelen_8_oefenopdracht, s85fohn14, "3, 2, 1").
next(robospelen_8_oefenopdracht, s85fohn14, "true", s85fohn15).

move(robospelen_8_oefenopdracht, s85fohn15, audioInput).
moveConfig(robospelen_8_oefenopdracht, s85fohn15, [recordTime=2500, umVariable=fohngeluid]).
next(robospelen_8_oefenopdracht, s85fohn15, "true", s85fohn16).

move(robospelen_8_oefenopdracht, s85fohn16, say).
text(robospelen_8_oefenopdracht, s85fohn16, "Goed, ik pas de windsnelheid aan").
next(robospelen_8_oefenopdracht, s85fohn16, "true", s85fohn17).

move(robospelen_8_oefenopdracht, s85fohn17, say).
text(robospelen_8_oefenopdracht, s85fohn17, "Ik ga 'm doorsturen").
next(robospelen_8_oefenopdracht, s85fohn17, "true", s85fohn18).

move(robospelen_8_oefenopdracht, s85fohn18, say).
text(robospelen_8_oefenopdracht, s85fohn18, "Houd je goed vast, %first_name% !").
next(robospelen_8_oefenopdracht, s85fohn18, "true", s85fohn19).

move(robospelen_8_oefenopdracht, s85fohn19, say).
text(robospelen_8_oefenopdracht, s85fohn19, "Straks waai je nog omver").
next(robospelen_8_oefenopdracht, s85fohn19, "true", s85fohn20).

move(robospelen_8_oefenopdracht, s85fohn20, say).
text(robospelen_8_oefenopdracht, s85fohn20, "Klaar?").
next(robospelen_8_oefenopdracht, s85fohn20, "true", s85fohn21).

move(robospelen_8_oefenopdracht, s85fohn21, say).
text(robospelen_8_oefenopdracht, s85fohn21, "Daar komt -ie!").
next(robospelen_8_oefenopdracht, s85fohn21, "true", s85fohn22).

move(robospelen_8_oefenopdracht, s85fohn22, say).
audio(robospelen_8_oefenopdracht, s85fohn22, id, fohngeluid).
next(robospelen_8_oefenopdracht, s85fohn22, "true", s86).

move(robospelen_8_oefenopdracht, s85tijd1, say).
text(robospelen_8_oefenopdracht, s85tijd1, "Oké!").
next(robospelen_8_oefenopdracht, s85tijd1, "true", s85tijd2).

move(robospelen_8_oefenopdracht, s85tijd2, say).
text(robospelen_8_oefenopdracht, s85tijd2, "Dit rò hze bos is een computersimulatie").
next(robospelen_8_oefenopdracht, s85tijd2, "true", s85tijd3).

move(robospelen_8_oefenopdracht, s85tijd3, say).
text(robospelen_8_oefenopdracht, s85tijd3, "En computers hebben altijd een klokje").
next(robospelen_8_oefenopdracht, s85tijd3, "true", s85tijd4).

move(robospelen_8_oefenopdracht, s85tijd4, say).
text(robospelen_8_oefenopdracht, s85tijd4, "Dus als ik dat een dag vooruit zet").
next(robospelen_8_oefenopdracht, s85tijd4, "true", s85tijd5).

move(robospelen_8_oefenopdracht, s85tijd5, say).
text(robospelen_8_oefenopdracht, s85tijd5, "Dan reizen we zo floep door de tijd zonder dat we het merken!").
next(robospelen_8_oefenopdracht, s85tijd5, "true", s85tijd6).

move(robospelen_8_oefenopdracht, s85tijd6, say).
text(robospelen_8_oefenopdracht, s85tijd6, "Even zoeken, waar zou het zijn").
next(robospelen_8_oefenopdracht, s85tijd6, "true", s85tijd7).

move(robospelen_8_oefenopdracht, s85tijd7, say).
text(robospelen_8_oefenopdracht, s85tijd7, "Menu.").
next(robospelen_8_oefenopdracht, s85tijd7, "true", s85tijd8).

move(robospelen_8_oefenopdracht, s85tijd8, say).
text(robospelen_8_oefenopdracht, s85tijd8, "Instellingen.").
next(robospelen_8_oefenopdracht, s85tijd8, "true", s85tijd9).

move(robospelen_8_oefenopdracht, s85tijd9, say).
text(robospelen_8_oefenopdracht, s85tijd9, "Hier! Datum en tijd!").
next(robospelen_8_oefenopdracht, s85tijd9, "true", s85tijd10).

move(robospelen_8_oefenopdracht, s85tijd10, say).
text(robospelen_8_oefenopdracht, s85tijd10, "Houd je goed vast, %first_name% ").
next(robospelen_8_oefenopdracht, s85tijd10, "true", s85tijd11).

move(robospelen_8_oefenopdracht, s85tijd11, say).
text(robospelen_8_oefenopdracht, s85tijd11, "Ik heb nog nooit met een mens door de tijd gereisd").
next(robospelen_8_oefenopdracht, s85tijd11, "true", s85tijd12).

move(robospelen_8_oefenopdracht, s85tijd12, say).
text(robospelen_8_oefenopdracht, s85tijd12, "Straks ben jij in deze simulatie een dag ouder dan in het echt.").
next(robospelen_8_oefenopdracht, s85tijd12, "true", s85tijd13).

move(robospelen_8_oefenopdracht, s85tijd13, say).
text(robospelen_8_oefenopdracht, s85tijd13, "Klaar?").
next(robospelen_8_oefenopdracht, s85tijd13, "true", s85tijd14).

move(robospelen_8_oefenopdracht, s85tijd14, say).
text(robospelen_8_oefenopdracht, s85tijd14, "Komt -ie!").
next(robospelen_8_oefenopdracht, s85tijd14, "true", s85tijd15).

move(robospelen_8_oefenopdracht, s85tijd15, say).
audio(robospelen_8_oefenopdracht, s85tijd15, file, "resources/sounds/clock_speed_up.wav").
next(robospelen_8_oefenopdracht, s85tijd15, "true", s86).

move(robospelen_8_oefenopdracht, s86, say).
text(robospelen_8_oefenopdracht, s86, "Het werkt!").
next(robospelen_8_oefenopdracht, s86, "true", s87).

move(robospelen_8_oefenopdracht, s87, say).
text(robospelen_8_oefenopdracht, s87, "Mens is droog!").
next(robospelen_8_oefenopdracht, s87, "true", s88).

move(robospelen_8_oefenopdracht, s88, say).
text(robospelen_8_oefenopdracht, s88, "Mens zegt bedankt!").
next(robospelen_8_oefenopdracht, s88, "true", s89).

move(robospelen_8_oefenopdracht, s89, say).
text(robospelen_8_oefenopdracht, s89, "Ook tegen jou, %first_name% ").
next(robospelen_8_oefenopdracht, s89, "true", s90).

move(robospelen_8_oefenopdracht, s90, say).
text(robospelen_8_oefenopdracht, s90, "Wat fijn").
next(robospelen_8_oefenopdracht, s90, "true", s91).

move(robospelen_8_oefenopdracht, s91, say).
text(robospelen_8_oefenopdracht, s91, "O, kijk, er zweven opeens grote rò hze letters in de lucht.").
next(robospelen_8_oefenopdracht, s91, "true", s92).

move(robospelen_8_oefenopdracht, s92, say).
text(robospelen_8_oefenopdracht, s92, "Wat staat daar?").
next(robospelen_8_oefenopdracht, s92, "true", s93).

move(robospelen_8_oefenopdracht, s93, say).
text(robospelen_8_oefenopdracht, s93, "Oefen. opdracht. geslaagd!").
next(robospelen_8_oefenopdracht, s93, "true", s94).

move(robospelen_8_oefenopdracht, s94, say).
audio(robospelen_8_oefenopdracht, s94, file, "resources/sounds/applaus.wav").
next(robospelen_8_oefenopdracht, s94, "true", s95).

move(robospelen_8_oefenopdracht, s95, say).
text(robospelen_8_oefenopdracht, s95, "En een knop met log uit erop.").
next(robospelen_8_oefenopdracht, s95, "true", s96).

move(robospelen_8_oefenopdracht, s96, say).
text(robospelen_8_oefenopdracht, s96, "Daar ga ik op klikken.").
next(robospelen_8_oefenopdracht, s96, "true", s97).

move(robospelen_8_oefenopdracht, s97, say).
audio(robospelen_8_oefenopdracht, s97, file, "resources/sounds/outro.wav").
leds(robospelen_8_oefenopdracht, s97, reset).
next(robospelen_8_oefenopdracht, s97, "true", s98).

move(robospelen_8_oefenopdracht, s98, say).
text(robospelen_8_oefenopdracht, s98, "Zo!").
next(robospelen_8_oefenopdracht, s98, "true", s99).

move(robospelen_8_oefenopdracht, s99, say).
text(robospelen_8_oefenopdracht, s99, "Nu staan we weer in de kamer.").
next(robospelen_8_oefenopdracht, s99, "true", s100).

move(robospelen_8_oefenopdracht, s100, say).
text(robospelen_8_oefenopdracht, s100, "Dat was leuk!").
next(robospelen_8_oefenopdracht, s100, "true", s101).

move(robospelen_8_oefenopdracht, s101, say).
text(robospelen_8_oefenopdracht, s101, "Dankzij jou was deze oefenopdracht een eitje!").
next(robospelen_8_oefenopdracht, s101, "true", s102).

move(robospelen_8_oefenopdracht, s102, say).
text(robospelen_8_oefenopdracht, s102, "Een makkie.").
next(robospelen_8_oefenopdracht, s102, "true", s103).

move(robospelen_8_oefenopdracht, s103, continuator).
next(robospelen_8_oefenopdracht, s103, [[umVariable=lievelingsdier, filter=green, values=["_any"]], [expCondition=memory]], s104lievelingsdier1).
next(robospelen_8_oefenopdracht, s103, "true", s104egel1).

move(robospelen_8_oefenopdracht, s104lievelingsdier1, say).
text(robospelen_8_oefenopdracht, s104lievelingsdier1, "Een %lievelingsdier% in het bakkie").
next(robospelen_8_oefenopdracht, s104lievelingsdier1, "true", s105).

move(robospelen_8_oefenopdracht, s104egel1, say).
text(robospelen_8_oefenopdracht, s104egel1, "Een egel in het bakkie").
next(robospelen_8_oefenopdracht, s104egel1, "true", s105).

move(robospelen_8_oefenopdracht, s105, say).
text(robospelen_8_oefenopdracht, s105, "Dankjewel %first_name% !").

%% robospelen_9_bijna %%
minidialog(robospelen_9_bijna, [type=narrative, thread=robospelen, position=9]).

move(robospelen_9_bijna, s1, say).
text(robospelen_9_bijna, s1, "Alarm! Alarm! Alarm!").
anim(robospelen_9_bijna, s1, file, "resources/gestures/arms_in_air.json").
leds(robospelen_9_bijna, s1, direct, "all", "blink", ['green', 'blue', 'red', 'yellow'], 500).
next(robospelen_9_bijna, s1, "true", s2).

move(robospelen_9_bijna, s2, say).
text(robospelen_9_bijna, s2, "De robo spelen beginnen bijna!").
leds(robospelen_9_bijna, s2, reset).
next(robospelen_9_bijna, s2, "true", s3).

move(robospelen_9_bijna, s3, say).
text(robospelen_9_bijna, s3, "Ik ben zenuwachtig!").
next(robospelen_9_bijna, s3, "true", s4).

move(robospelen_9_bijna, s4, say).
text(robospelen_9_bijna, s4, "Ik ben bang!").
next(robospelen_9_bijna, s4, "true", s5).

move(robospelen_9_bijna, s5, say).
text(robospelen_9_bijna, s5, "Ik durf niet meer!").
next(robospelen_9_bijna, s5, "true", s6).

move(robospelen_9_bijna, s6, say).
text(robospelen_9_bijna, s6, "Ik weet niet wat ik moet doen!").
next(robospelen_9_bijna, s6, "true", s7).

move(robospelen_9_bijna, s7, say).
text(robospelen_9_bijna, s7, "Alarm!").
anim(robospelen_9_bijna, s7, file, "resources/gestures/arms_in_air.json").
leds(robospelen_9_bijna, s7, direct, "all", "blink", ['green', 'blue', 'red', 'yellow'], 500).
next(robospelen_9_bijna, s7, "true", s8).

move(robospelen_9_bijna, s8, say).
text(robospelen_9_bijna, s8, "Zo.").
leds(robospelen_9_bijna, s8, reset).
next(robospelen_9_bijna, s8, "true", s9).

move(robospelen_9_bijna, s9, say).
text(robospelen_9_bijna, s9, "Dat moest even.").
next(robospelen_9_bijna, s9, "true", s10).

move(robospelen_9_bijna, s10, say).
text(robospelen_9_bijna, s10, "Ik denk dat het een goed idee is om iets aan mijn zelfvertrouwen te doen.").
next(robospelen_9_bijna, s10, "true", s11).

move(robospelen_9_bijna, s11, say).
text(robospelen_9_bijna, s11, "Gisteravond kon ik niet goed slapen").
next(robospelen_9_bijna, s11, "true", s12).

move(robospelen_9_bijna, s12, say).
text(robospelen_9_bijna, s12, "dus ben ik even in een boekje gaan lezen").
next(robospelen_9_bijna, s12, "true", s13).

move(robospelen_9_bijna, s13, say).
text(robospelen_9_bijna, s13, "Dat boekje heet zelfvertrouwen voor zenuwachtige Robots").
next(robospelen_9_bijna, s13, "true", s14).

move(robospelen_9_bijna, s14, continuator).
next(robospelen_9_bijna, s14, [[expCondition=memory]], s15memory1).
next(robospelen_9_bijna, s14, [[expCondition=control]], s15control1).
next(robospelen_9_bijna, s14, "true", s16).

move(robospelen_9_bijna, s15memory1, say).
text(robospelen_9_bijna, s15memory1, "Daarin stond dat je zelfvertrouwen kan krijgen door yells te oefenen").
next(robospelen_9_bijna, s15memory1, "true", s15memory2).

move(robospelen_9_bijna, s15memory2, say).
text(robospelen_9_bijna, s15memory2, "En toen dacht ik, oh ja, dat had ik vorige week ook al aan %first_name%  belooft te gaan doen").
next(robospelen_9_bijna, s15memory2, "true", s16).

move(robospelen_9_bijna, s15control1, say).
text(robospelen_9_bijna, s15control1, "Er stond in dat je zelfvertrouwen kan krijgen door yells te oefenen.").
next(robospelen_9_bijna, s15control1, "true", s16).

move(robospelen_9_bijna, s16, say).
text(robospelen_9_bijna, s16, "Yells zijn oppeppende vers jess, die je hard op moet zeggen voordat je iets spannends gaat doen.").
next(robospelen_9_bijna, s16, "true", s17).

move(robospelen_9_bijna, s17, say).
text(robospelen_9_bijna, s17, "Door de yell durf ik dan weer mee te doen met de robo spelen.").
next(robospelen_9_bijna, s17, "true", s18).

move(robospelen_9_bijna, s18, say).
text(robospelen_9_bijna, s18, "Laten we samen een yell maken.").
next(robospelen_9_bijna, s18, "true", s19).

move(robospelen_9_bijna, s19, question).
moveConfig(robospelen_9_bijna, s19, [type=input, context="robospelen_meedoen_winnen", options=['meedoen', 'winnen'], fast=yes, umVariable=meedoen_of_winnen]).
text(robospelen_9_bijna, s19, "Moet ie gaan over meedoen of winnen?").
next(robospelen_9_bijna, s19, "meedoen", s20meedoen1).
next(robospelen_9_bijna, s19, "winnen", s20winnen1).
next(robospelen_9_bijna, s19, "fail", s20fail_mw1).

move(robospelen_9_bijna, s20fail_mw1, say).
text(robospelen_9_bijna, s20fail_mw1, "Laten we meedoen kiezen").
next(robospelen_9_bijna, s20fail_mw1, "true", s20fail_mw2).

move(robospelen_9_bijna, s20fail_mw2, say).
text(robospelen_9_bijna, s20fail_mw2, "Ik ben al blij als ik straks durf in te loggen!").
next(robospelen_9_bijna, s20fail_mw2, "true", s21).

move(robospelen_9_bijna, s20meedoen1, say).
text(robospelen_9_bijna, s20meedoen1, "Ja, ik ben al heel blij als ik straks durf in te loggen!").
next(robospelen_9_bijna, s20meedoen1, "true", s21).

move(robospelen_9_bijna, s20winnen1, say).
text(robospelen_9_bijna, s20winnen1, "Oké!").
next(robospelen_9_bijna, s20winnen1, "true", s20winnen2).

move(robospelen_9_bijna, s20winnen2, say).
text(robospelen_9_bijna, s20winnen2, "Bizar lief dat je zo in me gelooft").
next(robospelen_9_bijna, s20winnen2, "true", s21).

move(robospelen_9_bijna, s21, say).
text(robospelen_9_bijna, s21, "Ik heb ook nog een krachtig woord nodig voor de yell.").
next(robospelen_9_bijna, s21, "true", s22).

move(robospelen_9_bijna, s22, say).
text(robospelen_9_bijna, s22, "Zoals go, of hop").
next(robospelen_9_bijna, s22, "true", s23).

move(robospelen_9_bijna, s23, say).
text(robospelen_9_bijna, s23, "Maar welke is beter?").
next(robospelen_9_bijna, s23, "true", s24).

move(robospelen_9_bijna, s24, question).
moveConfig(robospelen_9_bijna, s24, [type=input, context="robospelen_go_hop", options=['go', 'hop'], fast=yes, umVariable=go_of_hop]).
text(robospelen_9_bijna, s24, "Go of hop?").
next(robospelen_9_bijna, s24, "success", s25success1).
next(robospelen_9_bijna, s24, "fail", s25fail_gh1).

move(robospelen_9_bijna, s25fail_gh1, say).
text(robospelen_9_bijna, s25fail_gh1, "Laten we hop kiezen").
next(robospelen_9_bijna, s25fail_gh1, "true", s25fail_gh2).

move(robospelen_9_bijna, s25fail_gh2, say).
text(robospelen_9_bijna, s25fail_gh2, "Dat begint met een H").
next(robospelen_9_bijna, s25fail_gh2, "true", s25fail_gh3).

move(robospelen_9_bijna, s25fail_gh3, say).
text(robospelen_9_bijna, s25fail_gh3, "Net als mijn naam").
next(robospelen_9_bijna, s25fail_gh3, "true", s26).

move(robospelen_9_bijna, s25success1, say).
text(robospelen_9_bijna, s25success1, "oke, we gaan voor %go_of_hop%").
next(robospelen_9_bijna, s25success1, "true", s26).

move(robospelen_9_bijna, s26, say).
text(robospelen_9_bijna, s26, "Dan ga ik nu een officiële yell genereren").
next(robospelen_9_bijna, s26, "true", s27).

move(robospelen_9_bijna, s27, say).
text(robospelen_9_bijna, s27, "Laden.").
next(robospelen_9_bijna, s27, "true", s28).

move(robospelen_9_bijna, s28, say).
text(robospelen_9_bijna, s28, "Laden.").
next(robospelen_9_bijna, s28, "true", s29).

move(robospelen_9_bijna, s29, say).
text(robospelen_9_bijna, s29, "Ja!").
next(robospelen_9_bijna, s29, "true", s30).

move(robospelen_9_bijna, s30, say).
text(robospelen_9_bijna, s30, "Hier is -ie").
next(robospelen_9_bijna, s30, "true", s31).

move(robospelen_9_bijna, s31, say).
text(robospelen_9_bijna, s31, "Ik zal 'm afspelen").
next(robospelen_9_bijna, s31, "true", s32).

move(robospelen_9_bijna, s32, say).
audio(robospelen_9_bijna, s32, file, "resources/sounds/drum_roll.wav").
next(robospelen_9_bijna, s32, "true", s33).

move(robospelen_9_bijna, s33, continuator).
next(robospelen_9_bijna, s33, [[umVariable=meedoen_of_winnen, filter=green, values=["winnen"]], [umVariable=go_of_hop, filter=green, values=["go"]]], s34winnen_go1).
next(robospelen_9_bijna, s33, [[umVariable=meedoen_of_winnen, filter=green, values=["winnen"]], [umVariable=go_of_hop, filter=green, values=["hop"]]], s34winnen_hop1).
next(robospelen_9_bijna, s33, [[umVariable=meedoen_of_winnen, filter=green, values=["meedoen"]], [umVariable=go_of_hop, filter=green, values=["hop"]]], s34meedoen_hop1).
next(robospelen_9_bijna, s33, [[umVariable=meedoen_of_winnen, filter=green, values=["meedoen"]], [umVariable=go_of_hop, filter=green, values=["go"]]], s34meedoen_go1).
next(robospelen_9_bijna, s33, "true", s35).

move(robospelen_9_bijna, s34winnen_go1, say).
text(robospelen_9_bijna, s34winnen_go1, "Go, go, go, ik ben klaar voor de show!").
next(robospelen_9_bijna, s34winnen_go1, "true", s35).

move(robospelen_9_bijna, s34winnen_hop1, say).
text(robospelen_9_bijna, s34winnen_hop1, "hop, hop, hop, hero aan de top!").
next(robospelen_9_bijna, s34winnen_hop1, "true", s35).

move(robospelen_9_bijna, s34meedoen_go1, say).
text(robospelen_9_bijna, s34meedoen_go1, "Go, go, go, meedoen doe je zo!").
next(robospelen_9_bijna, s34meedoen_go1, "true", s35).

move(robospelen_9_bijna, s34meedoen_hop1, say).
text(robospelen_9_bijna, s34meedoen_hop1, "Hop, hop, hop, meedoen is top!").
next(robospelen_9_bijna, s34meedoen_hop1, "true", s35).

move(robospelen_9_bijna, s35, say).
text(robospelen_9_bijna, s35, "Dat klonk heel bemoedigend, vond je niet?").
next(robospelen_9_bijna, s35, "true", s36).

move(robospelen_9_bijna, s36, say).
text(robospelen_9_bijna, s36, "Ja").
next(robospelen_9_bijna, s36, "true", s37).

move(robospelen_9_bijna, s37, say).
text(robospelen_9_bijna, s37, "Straks vlak voor de robo spelen ga ik dit tegen mezelf zeggen").
next(robospelen_9_bijna, s37, "true", s38).

move(robospelen_9_bijna, s38, say).
text(robospelen_9_bijna, s38, "Ik krijg er nu al zelfvertrouwen van").
next(robospelen_9_bijna, s38, "true", s39).

move(robospelen_9_bijna, s39, say).
text(robospelen_9_bijna, s39, "Dankjewel %first_name% !").

%% robospelen_10_peptalk %%
minidialog(robospelen_10_peptalk, [type=narrative, thread=robospelen, position=10]).

move(robospelen_10_peptalk, s1, say).
text(robospelen_10_peptalk, s1, "Zo, %first_name% ").
next(robospelen_10_peptalk, s1, "true", s2).

move(robospelen_10_peptalk, s2, say).
text(robospelen_10_peptalk, s2, "Er is geen weg meer terug!").
next(robospelen_10_peptalk, s2, "true", s3).

move(robospelen_10_peptalk, s3, say).
text(robospelen_10_peptalk, s3, "Ik ga meedoen aan de robo spelen!").
next(robospelen_10_peptalk, s3, "true", s4).

move(robospelen_10_peptalk, s4, say).
text(robospelen_10_peptalk, s4, "en ik heb het gevoel dat ik er helemaal klaar voor ben.").
next(robospelen_10_peptalk, s4, "true", s5).

move(robospelen_10_peptalk, s5, say).
text(robospelen_10_peptalk, s5, "Dapper als een druif aan een hoge tros").
next(robospelen_10_peptalk, s5, "true", s6).

move(robospelen_10_peptalk, s6, say).
text(robospelen_10_peptalk, s6, "Sneller dan een vos op rolschaatsen").
next(robospelen_10_peptalk, s6, "true", s7).

move(robospelen_10_peptalk, s7, continuator).
next(robospelen_10_peptalk, s7, [[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=kleur_kledingstuk, filter=green, values=["_any"]], [umVariable=kledingstuk, filter=green, values=["_any"]], [expCondition=memory]], s8dier_kleur_soort1).
next(robospelen_10_peptalk, s7, [[umVariable=lievelingsdier, filter=red, values=["_any"]], [umVariable=kleur_kledingstuk, filter=green, values=["_any"]], [umVariable=kledingstuk, filter=green, values=["_any"]], [expCondition=memory]], s8kleur_soort1).
next(robospelen_10_peptalk, s7, [[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=kleur_kledingstuk, filter=red, values=["_any"]], [umVariable=kledingstuk, filter=red, values=["_any"]], [expCondition=memory]], s8dier1).
next(robospelen_10_peptalk, s7, [[expCondition=control]], s8default1).
next(robospelen_10_peptalk, s7, "true", s9).

move(robospelen_10_peptalk, s8dier_kleur_soort1, say).
text(robospelen_10_peptalk, s8dier_kleur_soort1, "en knapper dan een rò hze %lievelingsdier% in een %kleur_kledingstuk% %kledingstuk%.").
next(robospelen_10_peptalk, s8dier_kleur_soort1, "true", s9).

move(robospelen_10_peptalk, s8kleur_soort1, say).
text(robospelen_10_peptalk, s8kleur_soort1, "en knapper dan een rò hze lama in een %kleur_kledingstuk% %kledingstuk%.").
next(robospelen_10_peptalk, s8kleur_soort1, "true", s9).

move(robospelen_10_peptalk, s8dier1, say).
text(robospelen_10_peptalk, s8dier1, "en knapper dan een rò hze %lievelingsdier% in een blauwe baljurk").
next(robospelen_10_peptalk, s8dier1, "true", s9).

move(robospelen_10_peptalk, s8default1, say).
text(robospelen_10_peptalk, s8default1, "en knapper dan een rò hze lama in een blauwe baljurk").
next(robospelen_10_peptalk, s8default1, "true", s9).

move(robospelen_10_peptalk, s9, say).
text(robospelen_10_peptalk, s9, "Dit is een goed moment om de laatste beetjes zenuwen weg te werken.").
next(robospelen_10_peptalk, s9, "true", s10).

move(robospelen_10_peptalk, s10, say).
text(robospelen_10_peptalk, s10, "Ik kan nog wel wat laatste toffe oppeppers gebruiken!").
next(robospelen_10_peptalk, s10, "true", s11).

move(robospelen_10_peptalk, s11, say).
text(robospelen_10_peptalk, s11, "Een hart onder de riem!").
next(robospelen_10_peptalk, s11, "true", s12).

move(robospelen_10_peptalk, s12, say).
text(robospelen_10_peptalk, s12, "Wat extra blije mega bits voor mijn micro chip!").
next(robospelen_10_peptalk, s12, "true", s13).

move(robospelen_10_peptalk, s13, say).
text(robospelen_10_peptalk, s13, "Eerste vraag").
next(robospelen_10_peptalk, s13, "true", s14).

move(robospelen_10_peptalk, s14, question).
moveConfig(robospelen_10_peptalk, s14, [type=input, context="robospelen_stoer_dapper", options=['stoer', 'dapper'], fast=yes, umVariable=stoer_dapper]).
text(robospelen_10_peptalk, s14, "Vind je mij vooral stoer of dapper?").
next(robospelen_10_peptalk, s14, "success", s15).
next(robospelen_10_peptalk, s14, "fail", s15).

move(robospelen_10_peptalk, s15, say).
text(robospelen_10_peptalk, s15, "Cool!").
next(robospelen_10_peptalk, s15, "true", s16).

move(robospelen_10_peptalk, s16, question).
moveConfig(robospelen_10_peptalk, s16, [type=input, context="robospelen_snel_sterk", options=['snel', 'sterk'], fast=yes, umVariable=snel_sterk]).
text(robospelen_10_peptalk, s16, "En vind jij mij eerder snel of sterk?").
next(robospelen_10_peptalk, s16, "success", s17).
next(robospelen_10_peptalk, s16, "fail", s17).

move(robospelen_10_peptalk, s17, say).
text(robospelen_10_peptalk, s17, "Bizar!").
next(robospelen_10_peptalk, s17, "true", s18).

move(robospelen_10_peptalk, s18, say).
text(robospelen_10_peptalk, s18, "Volgende vraag").
next(robospelen_10_peptalk, s18, "true", s19).

move(robospelen_10_peptalk, s19, question).
moveConfig(robospelen_10_peptalk, s19, [type=input, context="robospelen_vrolijk_vriendelijk", options=['vrolijk', 'vriendelijk'], fast=yes, umVariable=vrolijk_vriendelijk]).
text(robospelen_10_peptalk, s19, "Vind jij mij eerder vrolijk of vriendelijk?").
next(robospelen_10_peptalk, s19, "success", s20).
next(robospelen_10_peptalk, s19, "fail", s20).

move(robospelen_10_peptalk, s20, say).
text(robospelen_10_peptalk, s20, "Wauw, wat fijn!").
next(robospelen_10_peptalk, s20, "true", s21).

move(robospelen_10_peptalk, s21, say).
text(robospelen_10_peptalk, s21, "Dit werkt erg goed als peptalk moet ik zeggen.").
next(robospelen_10_peptalk, s21, "true", s22).

move(robospelen_10_peptalk, s22, question).
moveConfig(robospelen_10_peptalk, s22, [type=input, context="robospelen_lief_leuk", options=['lief', 'leuk'], fast=yes, umVariable=lief_leuk]).
text(robospelen_10_peptalk, s22, "En vind jij mij eerder lief of leuk?").
next(robospelen_10_peptalk, s22, "success", s23).
next(robospelen_10_peptalk, s22, "fail", s23).

move(robospelen_10_peptalk, s23, say).
text(robospelen_10_peptalk, s23, "Nijs!").
next(robospelen_10_peptalk, s23, "true", s24).

move(robospelen_10_peptalk, s24, question).
moveConfig(robospelen_10_peptalk, s24, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=nog_iets_zeggen]).
text(robospelen_10_peptalk, s24, "Als er nog iets is dat je tegen me wil zeggen voor de start van de robo spelen dan kun je dat nu doen, ik luister").
next(robospelen_10_peptalk, s24, "success", s25got_nog_iets1).
next(robospelen_10_peptalk, s24, "fail", s25got_niet_nog_iets1).

move(robospelen_10_peptalk, s25got_niet_nog_iets1, say).
next(robospelen_10_peptalk, s25got_niet_nog_iets1, "true", s26).

move(robospelen_10_peptalk, s25got_nog_iets1, say).
text(robospelen_10_peptalk, s25got_nog_iets1, "Wat ontzettend leuk dat je dat zegt!").
next(robospelen_10_peptalk, s25got_nog_iets1, "true", s26).

move(robospelen_10_peptalk, s26, say).
start_interaction_probe(robospelen_10_peptalk, s26).
next(robospelen_10_peptalk, s26, "true", s27).

move(robospelen_10_peptalk, s27, say).
text(robospelen_10_peptalk, s27, "Nu kan ik er helemaal tegenaan!").
next(robospelen_10_peptalk, s27, "true", s28).

move(robospelen_10_peptalk, s28, say).
text(robospelen_10_peptalk, s28, "Dankjewel %first_name% !").
next(robospelen_10_peptalk, s28, "true", s29).

move(robospelen_10_peptalk, s29, continuator).
next(robospelen_10_peptalk, s29, [[expCondition=memory]], s30memory1).
next(robospelen_10_peptalk, s29, [[expCondition=control]], s30control1).
next(robospelen_10_peptalk, s29, "true", s31).

move(robospelen_10_peptalk, s30memory1, say).
text(robospelen_10_peptalk, s30memory1, "Ik vind jou ook heel %stoer_dapper% en %snel_sterk% en %vrolijk_vriendelijk% en %lief_leuk%!").
next(robospelen_10_peptalk, s30memory1, "true", s30memory2).

move(robospelen_10_peptalk, s30memory2, say).
text(robospelen_10_peptalk, s30memory2, "Dan vertel ik je alles over hoe het ging!").
next(robospelen_10_peptalk, s30memory2, "true", s30memory3).

move(robospelen_10_peptalk, s30memory3, say).
text(robospelen_10_peptalk, s30memory3, "Als we elkaar de volgende keer zien zijn de robo spelen alweer geweest").
next(robospelen_10_peptalk, s30memory3, "true", s31).

move(robospelen_10_peptalk, s30control1, say).
text(robospelen_10_peptalk, s30control1, "Nog steeds spannend, maar nu op een goede manier.").
next(robospelen_10_peptalk, s30control1, "true", s30control2).

move(robospelen_10_peptalk, s30control2, say).
text(robospelen_10_peptalk, s30control2, "Volgende keer meer.").
next(robospelen_10_peptalk, s30control2, "true", s31).

move(robospelen_10_peptalk, s31, say).
stop_interaction_probe(robospelen_10_peptalk, s31).

%% robospelen_11_tweede %%
minidialog(robospelen_11_tweede, [type=narrative, thread=robospelen, position=11]).

move(robospelen_11_tweede, s1, say).
text(robospelen_11_tweede, s1, "De robo spelen zitten erop!").
next(robospelen_11_tweede, s1, "true", s2).

move(robospelen_11_tweede, s2, say).
text(robospelen_11_tweede, s2, "Meteen toen ik thuis kwam ben ik in slaap gevallen.").
next(robospelen_11_tweede, s2, "true", s3).

move(robospelen_11_tweede, s3, say).
text(robospelen_11_tweede, s3, "Ik heb geslapen als een roos, gesnurkt als een oude brommer.").
next(robospelen_11_tweede, s3, "true", s4).

move(robospelen_11_tweede, s4, continuator).
next(robospelen_11_tweede, s4, [[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=ongezonde_dingen_bergen, filter=green, values=["_any"]]], s5dier_ongezond1).
next(robospelen_11_tweede, s4, "true", s5default1).

move(robospelen_11_tweede, s5dier_ongezond1, say).
text(robospelen_11_tweede, s5dier_ongezond1, "Gedroomd over een %lievelingsdier%.").
next(robospelen_11_tweede, s5dier_ongezond1, "true", s5dier_ongezond2).

move(robospelen_11_tweede, s5dier_ongezond2, say).
text(robospelen_11_tweede, s5dier_ongezond2, "Gedroomd over jou en een hele berg %ongezonde_dingen_bergen%.").
next(robospelen_11_tweede, s5dier_ongezond2, "true", s6).

move(robospelen_11_tweede, s5default1, say).
text(robospelen_11_tweede, s5default1, "Gedroomd over jou op een wolk die leek op een grote geruite finish vlag").
next(robospelen_11_tweede, s5default1, "true", s6).

move(robospelen_11_tweede, s6, say).
text(robospelen_11_tweede, s6, "En ik heb je gemist").
next(robospelen_11_tweede, s6, "true", s7).

move(robospelen_11_tweede, s7, say).
text(robospelen_11_tweede, s7, "Maar jij wilt natuurlijk weten of ik heb gewonnen of niet!").
next(robospelen_11_tweede, s7, "true", s8).

move(robospelen_11_tweede, s8, say).
text(robospelen_11_tweede, s8, "Ik zal het je vertellen").
next(robospelen_11_tweede, s8, "true", s9).

move(robospelen_11_tweede, s9, say).
text(robospelen_11_tweede, s9, "Ik.").
next(robospelen_11_tweede, s9, "true", s10).

move(robospelen_11_tweede, s10, say).
text(robospelen_11_tweede, s10, "Hero.").
next(robospelen_11_tweede, s10, "true", s11).

move(robospelen_11_tweede, s11, say).
text(robospelen_11_tweede, s11, "Deelnemer aan de robo spelen.").
next(robospelen_11_tweede, s11, "true", s12).

move(robospelen_11_tweede, s12, say).
text(robospelen_11_tweede, s12, "Ben geëindigt op de.").
next(robospelen_11_tweede, s12, "true", s13).

move(robospelen_11_tweede, s13, say).
audio(robospelen_11_tweede, s13, file, "resources/sounds/drum_roll.wav").
next(robospelen_11_tweede, s13, "true", s14).

move(robospelen_11_tweede, s14, say).
text(robospelen_11_tweede, s14, "Tweede plaats!!!").
next(robospelen_11_tweede, s14, "true", s15).

move(robospelen_11_tweede, s15, say).
audio(robospelen_11_tweede, s15, file, "resources/sounds/applaus.wav").
next(robospelen_11_tweede, s15, "true", s16).

move(robospelen_11_tweede, s16, say).
text(robospelen_11_tweede, s16, "Danku danku!").
next(robospelen_11_tweede, s16, "true", s17).

move(robospelen_11_tweede, s17, say).
text(robospelen_11_tweede, s17, "Ik ben heel erg blij!").
next(robospelen_11_tweede, s17, "true", s18).

move(robospelen_11_tweede, s18, say).
text(robospelen_11_tweede, s18, "Misschien had ik de eerste plaats wel kunnen halen").
next(robospelen_11_tweede, s18, "true", s19).

move(robospelen_11_tweede, s19, say).
text(robospelen_11_tweede, s19, "Maar eigenlijk wint elk jaar dezelfde Robot.").
next(robospelen_11_tweede, s19, "true", s20).

move(robospelen_11_tweede, s20, say).
text(robospelen_11_tweede, s20, "De naam van die Robot is Echo.").
next(robospelen_11_tweede, s20, "true", s21).

move(robospelen_11_tweede, s21, say).
text(robospelen_11_tweede, s21, "Hij is strak geprogrammeerd en twijfelt nooit aan zichzelf.").
next(robospelen_11_tweede, s21, "true", s22).

move(robospelen_11_tweede, s22, say).
text(robospelen_11_tweede, s22, "Hij heeft de beste methode ontwikkeld.").
next(robospelen_11_tweede, s22, "true", s23).

move(robospelen_11_tweede, s23, say).
text(robospelen_11_tweede, s23, "is volautomatisch en werkt perfect.").
next(robospelen_11_tweede, s23, "true", s24).

move(robospelen_11_tweede, s24, say).
text(robospelen_11_tweede, s24, "Echo doet altijd hetzelfde.").
next(robospelen_11_tweede, s24, "true", s25).

move(robospelen_11_tweede, s25, say).
text(robospelen_11_tweede, s25, "twijfelt nooit").
next(robospelen_11_tweede, s25, "true", s26).

move(robospelen_11_tweede, s26, say).
text(robospelen_11_tweede, s26, "is nergens bang voor.").
next(robospelen_11_tweede, s26, "true", s27).

move(robospelen_11_tweede, s27, say).
text(robospelen_11_tweede, s27, "Eigenlijk is Echo de perfecte Robot").
next(robospelen_11_tweede, s27, "true", s28).

move(robospelen_11_tweede, s28, say).
text(robospelen_11_tweede, s28, "Maar ik vind hem een beetje saai").
next(robospelen_11_tweede, s28, "true", s29).

move(robospelen_11_tweede, s29, say).
text(robospelen_11_tweede, s29, "omdat hij altijd hetzelfde doet.").
next(robospelen_11_tweede, s29, "true", s30).

move(robospelen_11_tweede, s30, say).
text(robospelen_11_tweede, s30, "Echo is een perfecte Robot die saai is.").
next(robospelen_11_tweede, s30, "true", s31).

move(robospelen_11_tweede, s31, say).
text(robospelen_11_tweede, s31, "Gaap!").
next(robospelen_11_tweede, s31, "true", s32).

move(robospelen_11_tweede, s32, question).
moveConfig(robospelen_11_tweede, s32, [type=yesno, context='answer_yesno', umVariable=vertellen_robospelen]).
text(robospelen_11_tweede, s32, "Zal ik eens vertellen hoe de robo spelen gegaan zijn?").
next(robospelen_11_tweede, s32, "answer_yes", s33ja_vertellen1).
next(robospelen_11_tweede, s32, "answer_no", s33nee_vertellen1).
next(robospelen_11_tweede, s32, "fail", s33nee_vertellen1).
next(robospelen_11_tweede, s32, "answer_dontknow", s33nee_vertellen1).

move(robospelen_11_tweede, s33ja_vertellen1, say).
text(robospelen_11_tweede, s33ja_vertellen1, "Oké, daar gaan we!").
next(robospelen_11_tweede, s33ja_vertellen1, "true", s34).

move(robospelen_11_tweede, s33nee_vertellen1, say).
text(robospelen_11_tweede, s33nee_vertellen1, "Sorry, ik kan het niet voor me houden!").
next(robospelen_11_tweede, s33nee_vertellen1, "true", s33nee_vertellen2).

move(robospelen_11_tweede, s33nee_vertellen2, say).
text(robospelen_11_tweede, s33nee_vertellen2, "Ik wil het toch heel graag vertellen!").
next(robospelen_11_tweede, s33nee_vertellen2, "true", s33nee_vertellen3).

move(robospelen_11_tweede, s33nee_vertellen3, say).
text(robospelen_11_tweede, s33nee_vertellen3, "Als je het echt niet wilt horen kun je je oren dichtdoen").
next(robospelen_11_tweede, s33nee_vertellen3, "true", s34).

move(robospelen_11_tweede, s34, say).
text(robospelen_11_tweede, s34, "De voorrondes gingen eigenlijk vanzelf.").
next(robospelen_11_tweede, s34, "true", s35).

move(robospelen_11_tweede, s35, say).
text(robospelen_11_tweede, s35, "Ik was aan het %leukste_onderdeel% en het ging super!").
next(robospelen_11_tweede, s35, "true", s36).

move(robospelen_11_tweede, s36, say).
text(robospelen_11_tweede, s36, "Vast omdat wij dat samen hebben geoefend").
next(robospelen_11_tweede, s36, "true", s37).

move(robospelen_11_tweede, s37, say).
text(robospelen_11_tweede, s37, "Uiteindelijk konden er drie Robots door naar het rò hze Bos").
next(robospelen_11_tweede, s37, "true", s38).

move(robospelen_11_tweede, s38, say).
text(robospelen_11_tweede, s38, "Echo, Juno en ik.").
next(robospelen_11_tweede, s38, "true", s39).

move(robospelen_11_tweede, s39, say).
text(robospelen_11_tweede, s39, "Daar moesten wij rò hzeboswachten").
next(robospelen_11_tweede, s39, "true", s40).

move(robospelen_11_tweede, s40, say).
text(robospelen_11_tweede, s40, "brandjes blussen, mensen redden uit het water en afdrogen.").
next(robospelen_11_tweede, s40, "true", s41).

move(robospelen_11_tweede, s41, say).
text(robospelen_11_tweede, s41, "We moesten zelfs een rò hze kat uit een rò hze boom redden.").
next(robospelen_11_tweede, s41, "true", s42).

move(robospelen_11_tweede, s42, say).
text(robospelen_11_tweede, s42, "We moesten van opdracht naar opdracht rennen").
next(robospelen_11_tweede, s42, "true", s43).

move(robospelen_11_tweede, s43, say).
text(robospelen_11_tweede, s43, "langs rò hze beekjes en over rò hze heuvels.").
next(robospelen_11_tweede, s43, "true", s44).

move(robospelen_11_tweede, s44, say).
text(robospelen_11_tweede, s44, "Juno viel al heel snel af.").
next(robospelen_11_tweede, s44, "true", s45).

move(robospelen_11_tweede, s45, say).
text(robospelen_11_tweede, s45, "Toen we de rò hze kat uit de rò hze boom moesten redden bleef Juno lekker in de boom zitten samen met de kat.").
next(robospelen_11_tweede, s45, "true", s46).

move(robospelen_11_tweede, s46, say).
text(robospelen_11_tweede, s46, "Ze vond het fijn om zo hoog in de lucht te zijn.").
next(robospelen_11_tweede, s46, "true", s47).

move(robospelen_11_tweede, s47, say).
text(robospelen_11_tweede, s47, "Lekker veel frisse lucht.").
next(robospelen_11_tweede, s47, "true", s48).

move(robospelen_11_tweede, s48, say).
text(robospelen_11_tweede, s48, "Ik begrijp dat wel.").
next(robospelen_11_tweede, s48, "true", s49).

move(robospelen_11_tweede, s49, say).
text(robospelen_11_tweede, s49, "Het is heel verleidelijk om in een boom te klimmen en er lang te blijven zitten.").
next(robospelen_11_tweede, s49, "true", s50).

move(robospelen_11_tweede, s50, say).
text(robospelen_11_tweede, s50, "Totdat de rò hze zon ondergaat.").
next(robospelen_11_tweede, s50, "true", s51).

move(robospelen_11_tweede, s51, say).
text(robospelen_11_tweede, s51, "Maar dat deed ik niet.").
next(robospelen_11_tweede, s51, "true", s52).

move(robospelen_11_tweede, s52, say).
text(robospelen_11_tweede, s52, "Echo en ik waren even goed in alle opdrachten!").
next(robospelen_11_tweede, s52, "true", s53).

move(robospelen_11_tweede, s53, say).
text(robospelen_11_tweede, s53, "Voor de laatste opdracht renden Echo en ik zij aan zij door het rò hze bos").
next(robospelen_11_tweede, s53, "true", s54).

move(robospelen_11_tweede, s54, say).
text(robospelen_11_tweede, s54, "recht op de uitgang af").
next(robospelen_11_tweede, s54, "true", s55).

move(robospelen_11_tweede, s55, say).
text(robospelen_11_tweede, s55, "Echo volgde een vlot vleermuisje.").
next(robospelen_11_tweede, s55, "true", s56).

move(robospelen_11_tweede, s56, continuator).
next(robospelen_11_tweede, s56, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s57dier1).
next(robospelen_11_tweede, s56, "true", s57geen_dier1).

move(robospelen_11_tweede, s57dier1, say).
text(robospelen_11_tweede, s57dier1, "En ik rende natuurlijk achter een %lievelingsdier% aan").
next(robospelen_11_tweede, s57dier1, "true", s58).

move(robospelen_11_tweede, s57geen_dier1, say).
text(robospelen_11_tweede, s57geen_dier1, "En ik rende achter een egeltje aan").
next(robospelen_11_tweede, s57geen_dier1, "true", s58).

move(robospelen_11_tweede, s58, say).
text(robospelen_11_tweede, s58, "Echo en het vleermuisje haalden ons heel snel in.").
next(robospelen_11_tweede, s58, "true", s59).

move(robospelen_11_tweede, s59, say).
text(robospelen_11_tweede, s59, "Ineens dacht ik:").
next(robospelen_11_tweede, s59, "true", s60).

move(robospelen_11_tweede, s60, say).
text(robospelen_11_tweede, s60, "ik wil hier nog helemaal niet weg.").
next(robospelen_11_tweede, s60, "true", s61).

move(robospelen_11_tweede, s61, say).
text(robospelen_11_tweede, s61, "Dan moet ik weer een jaar wachten op het rò hze bos").
next(robospelen_11_tweede, s61, "true", s62).

move(robospelen_11_tweede, s62, say).
text(robospelen_11_tweede, s62, "en ik ken het bos nog niet goed genoeg.").
next(robospelen_11_tweede, s62, "true", s63).

move(robospelen_11_tweede, s63, say).
text(robospelen_11_tweede, s63, "Ik stopte met rennen").
next(robospelen_11_tweede, s63, "true", s64).

move(robospelen_11_tweede, s64, say).
text(robospelen_11_tweede, s64, "en ik bleef nog heel lang in het bos met Juno en de kat").
next(robospelen_11_tweede, s64, "true", s65).

move(robospelen_11_tweede, s65, continuator).
next(robospelen_11_tweede, s65, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s66dier1).
next(robospelen_11_tweede, s65, "true", s66geen_dier1).

move(robospelen_11_tweede, s66dier1, say).
text(robospelen_11_tweede, s66dier1, "En mijn %lievelingsdier%").
next(robospelen_11_tweede, s66dier1, "true", s67).

move(robospelen_11_tweede, s66geen_dier1, say).
text(robospelen_11_tweede, s66geen_dier1, "en het egeltje.").
next(robospelen_11_tweede, s66geen_dier1, "true", s67).

move(robospelen_11_tweede, s67, say).
text(robospelen_11_tweede, s67, "We hielden een picknick,").
next(robospelen_11_tweede, s67, "true", s68).

move(robospelen_11_tweede, s68, say).
text(robospelen_11_tweede, s68, "klommen in bomen").
next(robospelen_11_tweede, s68, "true", s69).

move(robospelen_11_tweede, s69, say).
text(robospelen_11_tweede, s69, "en zwommen in een rò hze meer!").
next(robospelen_11_tweede, s69, "true", s70).

move(robospelen_11_tweede, s70, say).
text(robospelen_11_tweede, s70, "Het rò hze bos is de enige plek waar robots kunnen zwemmen").
next(robospelen_11_tweede, s70, "true", s71).

move(robospelen_11_tweede, s71, say).
text(robospelen_11_tweede, s71, "Omdat het water niet echt water is").
next(robospelen_11_tweede, s71, "true", s72).

move(robospelen_11_tweede, s72, say).
text(robospelen_11_tweede, s72, "Ik wilde zoveel mogelijk herinneringen maken").
next(robospelen_11_tweede, s72, "true", s73).

move(robospelen_11_tweede, s73, say).
text(robospelen_11_tweede, s73, "zodat ik het hele jaar lang over het rò hze bos dromen kan.").
next(robospelen_11_tweede, s73, "true", s74).

move(robospelen_11_tweede, s74, say).
text(robospelen_11_tweede, s74, "Het was heel leuk").
next(robospelen_11_tweede, s74, "true", s75).

move(robospelen_11_tweede, s75, say).
text(robospelen_11_tweede, s75, "Zo leuk dat ik dacht").
next(robospelen_11_tweede, s75, "true", s76).

move(robospelen_11_tweede, s76, say).
text(robospelen_11_tweede, s76, "Misschien was de uitgang een valsstrik").
next(robospelen_11_tweede, s76, "true", s77).

move(robospelen_11_tweede, s77, say).
text(robospelen_11_tweede, s77, "En moest ik inderdaad blijven om te winnen!").
next(robospelen_11_tweede, s77, "true", s78).

move(robospelen_11_tweede, s78, say).
text(robospelen_11_tweede, s78, "Maar dat was niet zo").
next(robospelen_11_tweede, s78, "true", s79).

move(robospelen_11_tweede, s79, say).
text(robospelen_11_tweede, s79, "Juno werd derde").
next(robospelen_11_tweede, s79, "true", s80).

move(robospelen_11_tweede, s80, say).
text(robospelen_11_tweede, s80, "Ik werd tweede").
next(robospelen_11_tweede, s80, "true", s81).

move(robospelen_11_tweede, s81, say).
text(robospelen_11_tweede, s81, "en Echo werd, precies zoals vorig jaar en het jaar daarvoor, eerste.").
next(robospelen_11_tweede, s81, "true", s82).

move(robospelen_11_tweede, s82, say).
text(robospelen_11_tweede, s82, "Kampioen van de robo spelen.").
next(robospelen_11_tweede, s82, "true", s83).

move(robospelen_11_tweede, s83, say).
text(robospelen_11_tweede, s83, "Ik vraag me af hoeveel hij van het rò hze bos opgeslagen heeft in zijn database.").
next(robospelen_11_tweede, s83, "true", s84).

move(robospelen_11_tweede, s84, say).
text(robospelen_11_tweede, s84, "Vast genoeg dat hij er niet meer nieuwsgierig naar is").
next(robospelen_11_tweede, s84, "true", s85).

move(robospelen_11_tweede, s85, say).
text(robospelen_11_tweede, s85, "Of misschien zit nieuwsgierigheid niet in zijn code geprogrammeerd").
next(robospelen_11_tweede, s85, "true", s86).

move(robospelen_11_tweede, s86, say).
text(robospelen_11_tweede, s86, "Ik ben blij dat dat bij mij wel zo is").
next(robospelen_11_tweede, s86, "true", s87).

move(robospelen_11_tweede, s87, say).
text(robospelen_11_tweede, s87, "Misschien had ik kunnen winnen").
next(robospelen_11_tweede, s87, "true", s88).

move(robospelen_11_tweede, s88, say).
text(robospelen_11_tweede, s88, "Maar dan had ik harden dan Echo moeten rennen").
next(robospelen_11_tweede, s88, "true", s89).

move(robospelen_11_tweede, s89, say).
text(robospelen_11_tweede, s89, "En dan had ik niet kunnen picknicken of zwemmen").
next(robospelen_11_tweede, s89, "true", s90).

move(robospelen_11_tweede, s90, say).
text(robospelen_11_tweede, s90, "En misschien was dat wel leuker dan winnen.").
next(robospelen_11_tweede, s90, "true", s91).

move(robospelen_11_tweede, s91, say).
text(robospelen_11_tweede, s91, "Eigenlijk is het wel zielig voor Echo dat hij niet met ons mee kon feesten in het rò hze bos").
next(robospelen_11_tweede, s91, "true", s92).

move(robospelen_11_tweede, s92, say).
text(robospelen_11_tweede, s92, "Het is gek, %first_name% ").
next(robospelen_11_tweede, s92, "true", s93).

move(robospelen_11_tweede, s93, say).
text(robospelen_11_tweede, s93, "Ik ben een beetje jaloers op Echo, maar ik heb ook een beetje medelijden met hem.").
next(robospelen_11_tweede, s93, "true", s94).

move(robospelen_11_tweede, s94, question).
moveConfig(robospelen_11_tweede, s94, [type=yesno, context='answer_yesno', umVariable=snap_de_mixed_feelings]).
text(robospelen_11_tweede, s94, "Snap je dat?").
next(robospelen_11_tweede, s94, "answer_yes", s95snap_het1).
next(robospelen_11_tweede, s94, "answer_no", s95snap_het_niet1).
next(robospelen_11_tweede, s94, "fail", s95snap_het_niet1).
next(robospelen_11_tweede, s94, "answer_dontknow", s95snap_het_niet1).

move(robospelen_11_tweede, s95snap_het1, say).
text(robospelen_11_tweede, s95snap_het1, "Fijn!").
next(robospelen_11_tweede, s95snap_het1, "true", s95snap_het2).

move(robospelen_11_tweede, s95snap_het2, say).
text(robospelen_11_tweede, s95snap_het2, "Dan ben ik niet alleen").
next(robospelen_11_tweede, s95snap_het2, "true", s96).

move(robospelen_11_tweede, s95snap_het_niet1, say).
text(robospelen_11_tweede, s95snap_het_niet1, "Ik snap het zelf ook niet zo goed").
next(robospelen_11_tweede, s95snap_het_niet1, "true", s95snap_het_niet2).

move(robospelen_11_tweede, s95snap_het_niet2, say).
text(robospelen_11_tweede, s95snap_het_niet2, "Allemaal gevoelens die ik nooit eerder heb gehad!").
next(robospelen_11_tweede, s95snap_het_niet2, "true", s96).

move(robospelen_11_tweede, s96, say).
text(robospelen_11_tweede, s96, "Al met al ben ik heel tevreden, %first_name% ").
next(robospelen_11_tweede, s96, "true", s97).

move(robospelen_11_tweede, s97, say).
text(robospelen_11_tweede, s97, "Zonder jou was ik nooit zo ver gekomen!").

%% robospelen_12_bedankt %%
minidialog(robospelen_12_bedankt, [type=narrative, thread=robospelen, position=12]).

move(robospelen_12_bedankt, s1, say).
text(robospelen_12_bedankt, s1, "Ik wil eigenlijk nog iets zeggen tegen je!").
next(robospelen_12_bedankt, s1, "true", s2).

move(robospelen_12_bedankt, s2, say).
text(robospelen_12_bedankt, s2, "Echo mag dan wel een perfecte robot zijn").
next(robospelen_12_bedankt, s2, "true", s3).

move(robospelen_12_bedankt, s3, say).
text(robospelen_12_bedankt, s3, "met z'n stomme eerste plaats op de robo spelen").
next(robospelen_12_bedankt, s3, "true", s4).

move(robospelen_12_bedankt, s4, say).
text(robospelen_12_bedankt, s4, "maar ik ben door jou meer op een mens gaan lijken.").
next(robospelen_12_bedankt, s4, "true", s5).

move(robospelen_12_bedankt, s5, say).
text(robospelen_12_bedankt, s5, "Een mens met herinneringen, fantasie en dromen.").
next(robospelen_12_bedankt, s5, "true", s6).

move(robospelen_12_bedankt, s6, say).
text(robospelen_12_bedankt, s6, "Dat vind ik eigenlijk leuker. ").
next(robospelen_12_bedankt, s6, "true", s7).

move(robospelen_12_bedankt, s7, say).
text(robospelen_12_bedankt, s7, "Ik hoop dat jij ook vindt dat je een beetje meer op een Robot bent gaan lijken door mij.").
next(robospelen_12_bedankt, s7, "true", s8).

move(robospelen_12_bedankt, s8, say).
text(robospelen_12_bedankt, s8, "Nu ik niet meer hoef te trainen voor de robo spelen heb ik veel vrije tijd.").
next(robospelen_12_bedankt, s8, "true", s9).

move(robospelen_12_bedankt, s9, say).
text(robospelen_12_bedankt, s9, "Sinds de robo spelen heb ik met Lego gespeeld").
next(robospelen_12_bedankt, s9, "true", s10).

move(robospelen_12_bedankt, s10, say).
text(robospelen_12_bedankt, s10, "en ik heb getuinierd").
next(robospelen_12_bedankt, s10, "true", s11).

move(robospelen_12_bedankt, s11, continuator).
next(robospelen_12_bedankt, s11, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s12dier1).
next(robospelen_12_bedankt, s11, "true", s13).

move(robospelen_12_bedankt, s12dier1, say).
text(robospelen_12_bedankt, s12dier1, "En ik denk erover na om ook een %soort_huisdier% te adopteren").
next(robospelen_12_bedankt, s12dier1, "true", s13).

move(robospelen_12_bedankt, s13, say).
text(robospelen_12_bedankt, s13, "Laatst leerde ik voor de grap een heel Engels woordenboek van buiten.").
next(robospelen_12_bedankt, s13, "true", s14).

move(robospelen_12_bedankt, s14, say).
text(robospelen_12_bedankt, s14, "Daar stond het woordje Hero ook in").
next(robospelen_12_bedankt, s14, "true", s15).

move(robospelen_12_bedankt, s15, say).
text(robospelen_12_bedankt, s15, "met daarbij de Nederlandse betekenis van dat woord.").
next(robospelen_12_bedankt, s15, "true", s16).

move(robospelen_12_bedankt, s16, say).
text(robospelen_12_bedankt, s16, "Hero betekent eigenlijk held.").
next(robospelen_12_bedankt, s16, "true", s17).

move(robospelen_12_bedankt, s17, say).
text(robospelen_12_bedankt, s17, "Ik dacht: ken ik eigenlijk zelf een hero?").
next(robospelen_12_bedankt, s17, "true", s18).

move(robospelen_12_bedankt, s18, say).
text(robospelen_12_bedankt, s18, "Een held?").
next(robospelen_12_bedankt, s18, "true", s19).

move(robospelen_12_bedankt, s19, say).
text(robospelen_12_bedankt, s19, "Ik moest meteen aan jou denken.").
next(robospelen_12_bedankt, s19, "true", s20).

move(robospelen_12_bedankt, s20, say).
text(robospelen_12_bedankt, s20, "Eigenlijk ben jij mijn hero!").
next(robospelen_12_bedankt, s20, "true", s21).

move(robospelen_12_bedankt, s21, say).
text(robospelen_12_bedankt, s21, "Zonder jou was dit allemaal nooit gelukt.").
next(robospelen_12_bedankt, s21, "true", s22).

move(robospelen_12_bedankt, s22, say).
text(robospelen_12_bedankt, s22, "Ik ken nog niet zoveel mensen").
next(robospelen_12_bedankt, s22, "true", s23).

move(robospelen_12_bedankt, s23, say).
text(robospelen_12_bedankt, s23, "Maar ik sla de mensen die ik ken goed op in mijn database zodat ik ze nooit zal vergeten.").
next(robospelen_12_bedankt, s23, "true", s24).

move(robospelen_12_bedankt, s24, say).
text(robospelen_12_bedankt, s24, "In dat stukje geheugen is bijvoorbeeld een plekje voor Mike").
next(robospelen_12_bedankt, s24, "true", s25).

move(robospelen_12_bedankt, s25, say).
text(robospelen_12_bedankt, s25, "Maar ook voor jou!").
next(robospelen_12_bedankt, s25, "true", s26).

move(robospelen_12_bedankt, s26, say).
text(robospelen_12_bedankt, s26, "Op die manier kan ik altijd over jou dromen.").
next(robospelen_12_bedankt, s26, "true", s27).

move(robospelen_12_bedankt, s27, say).
text(robospelen_12_bedankt, s27, "Bedankt voor alle leuke avonturen en voor je hulp bij de robo spelen!").
next(robospelen_12_bedankt, s27, "true", s28).

move(robospelen_12_bedankt, s28, say).
text(robospelen_12_bedankt, s28, "Je was een fantastische coach").
next(robospelen_12_bedankt, s28, "true", s29).

move(robospelen_12_bedankt, s29, say).
text(robospelen_12_bedankt, s29, "en ik denk dat je een bizarre Robot zou zijn geweest.").

