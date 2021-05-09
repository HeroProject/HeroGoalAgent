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

move(robospelen_4_ingeschreven, s12, say).
leds(robospelen_4_ingeschreven, s12, direct, "all", "blink", ['green', 'blue', 'red', 'yellow'], 500).
next(robospelen_4_ingeschreven, s12, "true", s13).

move(robospelen_4_ingeschreven, s13, question).
moveConfig(robospelen_4_ingeschreven, s13, [type=yesno, context='answer_yesno', umVariable=ook_spannend]).
text(robospelen_4_ingeschreven, s13, "Vind jij het net zo spannend als ik?").
next(robospelen_4_ingeschreven, s13, "answer_yes", s14ja1).
next(robospelen_4_ingeschreven, s13, "answer_no", s14nee1).
next(robospelen_4_ingeschreven, s13, "answer_dontknow", s14nee1).
next(robospelen_4_ingeschreven, s13, "fail", s14ja_nee_samen1).

move(robospelen_4_ingeschreven, s14ja1, say).
text(robospelen_4_ingeschreven, s14ja1, "Ja, we vinden het samen spannend.").
next(robospelen_4_ingeschreven, s14ja1, "true", s14ja_nee_samen1).

move(robospelen_4_ingeschreven, s14nee1, say).
text(robospelen_4_ingeschreven, s14nee1, "Ik vind het in elk geval heel spannend!").
next(robospelen_4_ingeschreven, s14nee1, "true", s14ja_nee_samen1).

move(robospelen_4_ingeschreven, s14ja_nee_samen1, question).
moveConfig(robospelen_4_ingeschreven, s14ja_nee_samen1, [type=yesno, context='answer_yesno', umVariable=helpen]).
text(robospelen_4_ingeschreven, s14ja_nee_samen1, "Maar %first_name% , jij wilde mij toch helpen?").
leds(robospelen_4_ingeschreven, s14ja_nee_samen1, reset).
next(robospelen_4_ingeschreven, s14ja_nee_samen1, "answer_yes", s14ja_helpen1).
next(robospelen_4_ingeschreven, s14ja_nee_samen1, "answer_no", s14nee_helpen1).
next(robospelen_4_ingeschreven, s14ja_nee_samen1, "answer_dontknow", s14nee_helpen1).
next(robospelen_4_ingeschreven, s14ja_nee_samen1, "fail", s14fail_helpen1).

move(robospelen_4_ingeschreven, s14ja_helpen1, say).
text(robospelen_4_ingeschreven, s14ja_helpen1, "Gelukkig!").
next(robospelen_4_ingeschreven, s14ja_helpen1, "true", s14ja_helpen2).

move(robospelen_4_ingeschreven, s14ja_helpen2, say).
text(robospelen_4_ingeschreven, s14ja_helpen2, "Samen komen we er wel.").
next(robospelen_4_ingeschreven, s14ja_helpen2, "true", s15).

move(robospelen_4_ingeschreven, s14nee_helpen1, say).
text(robospelen_4_ingeschreven, s14nee_helpen1, "Jammer!").
next(robospelen_4_ingeschreven, s14nee_helpen1, "true", s14nee_helpen2).

move(robospelen_4_ingeschreven, s14nee_helpen2, say).
text(robospelen_4_ingeschreven, s14nee_helpen2, "Je lijkt me een topcoach.").
next(robospelen_4_ingeschreven, s14nee_helpen2, "true", s14nee_helpen3).

move(robospelen_4_ingeschreven, s14nee_helpen3, say).
text(robospelen_4_ingeschreven, s14nee_helpen3, "Denk er nog maar eens over na.").
next(robospelen_4_ingeschreven, s14nee_helpen3, "true", s15).

move(robospelen_4_ingeschreven, s14fail_helpen1, say).
text(robospelen_4_ingeschreven, s14fail_helpen1, "Ik vind je in ieder geval een hele goede coach, zelfs nu al!").
next(robospelen_4_ingeschreven, s14fail_helpen1, "true", s15).

move(robospelen_4_ingeschreven, s15, say).
text(robospelen_4_ingeschreven, s15, "Hier heb ik dus al heel vaak over gedagdroomd!").
next(robospelen_4_ingeschreven, s15, "true", s16).

move(robospelen_4_ingeschreven, s16, say).
text(robospelen_4_ingeschreven, s16, "Maar nu heb ik me ingeschreven").
next(robospelen_4_ingeschreven, s16, "true", s17).

move(robospelen_4_ingeschreven, s17, say).
text(robospelen_4_ingeschreven, s17, "Ik word een echte sportrobot!").
next(robospelen_4_ingeschreven, s17, "true", s18).

move(robospelen_4_ingeschreven, s18, say).
text(robospelen_4_ingeschreven, s18, "O nee!").
next(robospelen_4_ingeschreven, s18, "true", s19).

move(robospelen_4_ingeschreven, s19, say).
text(robospelen_4_ingeschreven, s19, "Alarm!").
next(robospelen_4_ingeschreven, s19, "true", s20).

move(robospelen_4_ingeschreven, s20, say).
text(robospelen_4_ingeschreven, s20, "Alarm!").
leds(robospelen_4_ingeschreven, s20, direct, "all", "blink", ['green', 'blue', 'red', 'yellow'], 500).
next(robospelen_4_ingeschreven, s20, "true", s21).

move(robospelen_4_ingeschreven, s21, say).
text(robospelen_4_ingeschreven, s21, "Nu is het geen dagdroom meer!").
next(robospelen_4_ingeschreven, s21, "true", s22).

move(robospelen_4_ingeschreven, s22, say).
text(robospelen_4_ingeschreven, s22, "Nu is het geen fantasie meer!").
next(robospelen_4_ingeschreven, s22, "true", s23).

move(robospelen_4_ingeschreven, s23, say).
text(robospelen_4_ingeschreven, s23, "Nu is het echt!").
leds(robospelen_4_ingeschreven, s23, reset).
next(robospelen_4_ingeschreven, s23, "true", s24).

move(robospelen_4_ingeschreven, s24, say).
text(robospelen_4_ingeschreven, s24, "Spannend!").

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
text(robospelen_5_info, s4, "De Robospelen zijn opgericht op 20 november 1985").
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
next(robospelen_5_info, s14, "true", s15).

move(robospelen_5_info, s15, say).
text(robospelen_5_info, s15, "En gaat dat vervolgens steeds sneller").
next(robospelen_5_info, s15, "true", s16).

move(robospelen_5_info, s16, say).
text(robospelen_5_info, s16, "En sneller!").
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

move(robospelen_5_info, s23memory1, question).
moveConfig(robospelen_5_info, s23memory1, [type=input, context="robospelen_onderdeel", options=['gedachtenlezen', 'dansen', 'verblaffen'], fast=yes, umVariable=leukste_onderdeel]).
text(robospelen_5_info, s23memory1, "Welk onderdeel vind je tot nu toe het leukst klinken?").

move(robospelen_5_info, s23control1, say).
text(robospelen_5_info, s23control1, "Laten we oefenen met dansen").

%% robospelen_6_gedachtelezen %%
minidialog(robospelen_6_gedachtelezen, [type=narrative, thread=robospelen, position=6]).
dependencies(robospelen_6_gedachtelezen, [[[robospelen_5_info, user_model, 0], [umVariable=leukste_onderdeel, filter=green, values=["gedachtelezen"]]]]).

move(robospelen_6_gedachtelezen, s1, say).
text(robospelen_6_gedachtelezen, s1, "Laten we samen eens oefenen met elkaars gedachtenlezen.").
next(robospelen_6_gedachtelezen, s1, "true", s2).

move(robospelen_6_gedachtelezen, s2, say).
text(robospelen_6_gedachtelezen, s2, "Eerst moeten we onze ogen sluiten.").
next(robospelen_6_gedachtelezen, s2, "true", s3).

move(robospelen_6_gedachtelezen, s3, say).
text(robospelen_6_gedachtelezen, s3, "Doe maar mee.").
next(robospelen_6_gedachtelezen, s3, "true", s4).

move(robospelen_6_gedachtelezen, s4, say).
next(robospelen_6_gedachtelezen, s4, "true", s5).

move(robospelen_6_gedachtelezen, s5, say).
text(robospelen_6_gedachtelezen, s5, "En dan een keer diep inademen.").
next(robospelen_6_gedachtelezen, s5, "true", s6).

move(robospelen_6_gedachtelezen, s6, say).
text(robospelen_6_gedachtelezen, s6, "Adem in.").
next(robospelen_6_gedachtelezen, s6, "true", s7).

move(robospelen_6_gedachtelezen, s7, say).
next(robospelen_6_gedachtelezen, s7, "true", s8).

move(robospelen_6_gedachtelezen, s8, say).
text(robospelen_6_gedachtelezen, s8, "Adem uit.").
next(robospelen_6_gedachtelezen, s8, "true", s9).

move(robospelen_6_gedachtelezen, s9, say).
next(robospelen_6_gedachtelezen, s9, "true", s10).

move(robospelen_6_gedachtelezen, s10, say).
text(robospelen_6_gedachtelezen, s10, "Nog eens! Adem in.").
next(robospelen_6_gedachtelezen, s10, "true", s11).

move(robospelen_6_gedachtelezen, s11, say).
next(robospelen_6_gedachtelezen, s11, "true", s12).

move(robospelen_6_gedachtelezen, s12, say).
text(robospelen_6_gedachtelezen, s12, "En uit.").
next(robospelen_6_gedachtelezen, s12, "true", s13).

move(robospelen_6_gedachtelezen, s13, say).
next(robospelen_6_gedachtelezen, s13, "true", s14).

move(robospelen_6_gedachtelezen, s14, say).
text(robospelen_6_gedachtelezen, s14, "Doe je ogen maar weer open.").
next(robospelen_6_gedachtelezen, s14, "true", s15).

move(robospelen_6_gedachtelezen, s15, say).
text(robospelen_6_gedachtelezen, s15, "Als het goed is lopen de microchips in onze hoofden op dit moment gelijk!").
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
text(robospelen_6_gedachtelezen, s19, "Ogen weer dicht.").
next(robospelen_6_gedachtelezen, s19, "true", s20).

move(robospelen_6_gedachtelezen, s20, say).
text(robospelen_6_gedachtelezen, s20, "Ik neem een getal in mijn hoofd en stuur dat getal naar jouw hoofd.").
next(robospelen_6_gedachtelezen, s20, "true", s21).

move(robospelen_6_gedachtelezen, s21, say).
text(robospelen_6_gedachtelezen, s21, "Via bluetooth.").
next(robospelen_6_gedachtelezen, s21, "true", s22).

move(robospelen_6_gedachtelezen, s22, say).
text(robospelen_6_gedachtelezen, s22, "Concentreer je!").
next(robospelen_6_gedachtelezen, s22, "true", s23).

move(robospelen_6_gedachtelezen, s23, question).
moveConfig(robospelen_6_gedachtelezen, s23, [type=input, context="integer", options=[1, 5, 6, 9], fast=yes, umVariable=getal_bluetooth]).
text(robospelen_6_gedachtelezen, s23, "Noem een getal tussen de 1 en de 10!").
next(robospelen_6_gedachtelezen, s23, 1, s24getal1).
next(robospelen_6_gedachtelezen, s23, 2, s24getal1).
next(robospelen_6_gedachtelezen, s23, 3, s24getal1).
next(robospelen_6_gedachtelezen, s23, 4, s24getal1).
next(robospelen_6_gedachtelezen, s23, 5, s24getal1).
next(robospelen_6_gedachtelezen, s23, 6, s24getal1).
next(robospelen_6_gedachtelezen, s23, 7, s24getal1).
next(robospelen_6_gedachtelezen, s23, 8, s24getal1).
next(robospelen_6_gedachtelezen, s23, 9, s24getal1).
next(robospelen_6_gedachtelezen, s23, 10, s24getal1).
next(robospelen_6_gedachtelezen, s23, "_others", s24boven_101).
next(robospelen_6_gedachtelezen, s23, "fail", s24fail_getal1).

move(robospelen_6_gedachtelezen, s24fail_getal1, say).
text(robospelen_6_gedachtelezen, s24fail_getal1, "Je mag het ook via bluetooth aan me doorsturen").
next(robospelen_6_gedachtelezen, s24fail_getal1, "true", s24fail_getal2).

move(robospelen_6_gedachtelezen, s24fail_getal2, say).
text(robospelen_6_gedachtelezen, s24fail_getal2, "3. 2. 1. Nu!").
next(robospelen_6_gedachtelezen, s24fail_getal2, "true", s24fail_getal3).

move(robospelen_6_gedachtelezen, s24fail_getal3, say).
text(robospelen_6_gedachtelezen, s24fail_getal3, "Laden. Laden.").
next(robospelen_6_gedachtelezen, s24fail_getal3, "true", s24fail_getal4).

move(robospelen_6_gedachtelezen, s24fail_getal4, say).
text(robospelen_6_gedachtelezen, s24fail_getal4, "Ja, ik heb een getal binnengekregen!").
next(robospelen_6_gedachtelezen, s24fail_getal4, "true", s24fail_getal5).

move(robospelen_6_gedachtelezen, s24fail_getal5, say).
text(robospelen_6_gedachtelezen, s24fail_getal5, "Dat was precies het getal waar ik ook aan dacht!").
next(robospelen_6_gedachtelezen, s24fail_getal5, "true", s25).

move(robospelen_6_gedachtelezen, s24boven_101, say).
text(robospelen_6_gedachtelezen, s24boven_101, "Dat is goed!").
next(robospelen_6_gedachtelezen, s24boven_101, "true", s24boven_102).

move(robospelen_6_gedachtelezen, s24boven_102, say).
text(robospelen_6_gedachtelezen, s24boven_102, "Jij bent er niet ingetrapt.").
next(robospelen_6_gedachtelezen, s24boven_102, "true", s24boven_103).

move(robospelen_6_gedachtelezen, s24boven_103, say).
text(robospelen_6_gedachtelezen, s24boven_103, "Ik zei wel een dat het een getal onder de tien moest zijn").
next(robospelen_6_gedachtelezen, s24boven_103, "true", s24boven_104).

move(robospelen_6_gedachtelezen, s24boven_104, say).
text(robospelen_6_gedachtelezen, s24boven_104, "Maar dat was een extra test om te zien of we goed verbonden waren").
next(robospelen_6_gedachtelezen, s24boven_104, "true", s24boven_105).

move(robospelen_6_gedachtelezen, s24boven_105, say).
text(robospelen_6_gedachtelezen, s24boven_105, "Het was inderdaad %getal_bluetooth% waar ik aan dacht!").
next(robospelen_6_gedachtelezen, s24boven_105, "true", s25).

move(robospelen_6_gedachtelezen, s24getal1, say).
text(robospelen_6_gedachtelezen, s24getal1, "Ja!").
next(robospelen_6_gedachtelezen, s24getal1, "true", s24getal2).

move(robospelen_6_gedachtelezen, s24getal2, say).
text(robospelen_6_gedachtelezen, s24getal2, "%getal_bluetooth%, dat was precies het getal waar ik aan dacht!").
next(robospelen_6_gedachtelezen, s24getal2, "true", s24getal3).

move(robospelen_6_gedachtelezen, s24getal3, say).
text(robospelen_6_gedachtelezen, s24getal3, "Dat betekent dat het werkt.").
next(robospelen_6_gedachtelezen, s24getal3, "true", s25).

move(robospelen_6_gedachtelezen, s25, say).
text(robospelen_6_gedachtelezen, s25, "Goed gedaan.").
next(robospelen_6_gedachtelezen, s25, "true", s26).

move(robospelen_6_gedachtelezen, s26, say).
text(robospelen_6_gedachtelezen, s26, "Jij kan nu net zoals ik robotgedachten lezen via bluetooth!").
next(robospelen_6_gedachtelezen, s26, "true", s27).

move(robospelen_6_gedachtelezen, s27, say).
text(robospelen_6_gedachtelezen, s27, "Misschien werkt het zelfs ook tussen mens en mens").
next(robospelen_6_gedachtelezen, s27, "true", s28).

move(robospelen_6_gedachtelezen, s28, say).
text(robospelen_6_gedachtelezen, s28, "Dat weet ik natuurlijk niet zeker").
next(robospelen_6_gedachtelezen, s28, "true", s29).

move(robospelen_6_gedachtelezen, s29, say).
text(robospelen_6_gedachtelezen, s29, "Maar jij kan het deze week wel testen!").

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
next(robospelen_6_dansen, s5, "true", s6).

move(robospelen_6_dansen, s6, say).
text(robospelen_6_dansen, s6, "Goed gedaan!").

%% robospelen_6_verblaffen %%
minidialog(robospelen_6_verblaffen, [type=narrative, thread=robospelen, position=6]).
dependencies(robospelen_6_verblaffen, [[[robospelen_5_info, user_model, 0], [umVariable=leukste_onderdeel, filter=green, values=["verblaffen"]]]]).

move(robospelen_6_verblaffen, s1, say).
text(robospelen_6_verblaffen, s1, "Oké!").
next(robospelen_6_verblaffen, s1, "true", s2).

move(robospelen_6_verblaffen, s2, say).
text(robospelen_6_verblaffen, s2, "Ik tel vanaf drie, wil jij dan blaffen?").
next(robospelen_6_verblaffen, s2, "true", s3).

move(robospelen_6_verblaffen, s3, say).
text(robospelen_6_verblaffen, s3, "3. 2. 1.").
next(robospelen_6_verblaffen, s3, "true", s4).

move(robospelen_6_verblaffen, s4, say).
next(robospelen_6_verblaffen, s4, "true", s5).

move(robospelen_6_verblaffen, s5, say).
text(robospelen_6_verblaffen, s5, "Ja, goed!").
next(robospelen_6_verblaffen, s5, "true", s6).

move(robospelen_6_verblaffen, s6, say).
text(robospelen_6_verblaffen, s6, "Zo klonk de robothond:").
next(robospelen_6_verblaffen, s6, "true", s7).

move(robospelen_6_verblaffen, s7, say).
next(robospelen_6_verblaffen, s7, "true", s8).

move(robospelen_6_verblaffen, s8, say).
text(robospelen_6_verblaffen, s8, "Bizar!").
next(robospelen_6_verblaffen, s8, "true", s9).

move(robospelen_6_verblaffen, s9, say).
text(robospelen_6_verblaffen, s9, "Toch?").
next(robospelen_6_verblaffen, s9, "true", s10).

move(robospelen_6_verblaffen, s10, question).
moveConfig(robospelen_6_verblaffen, s10, [type=yesno, context='answer_yesno', umVariable=opnieuw_blaffen]).
text(robospelen_6_verblaffen, s10, "Of wil je het opnieuw proberen?").
next(robospelen_6_verblaffen, s10, "answer_yes", s11opnieuw1).
next(robospelen_6_verblaffen, s10, "fail", s11opnieuw1).
next(robospelen_6_verblaffen, s10, "answer_no", s11niet_opnieuw1).
next(robospelen_6_verblaffen, s10, "answer_dontknow", s11niet_opnieuw1).

move(robospelen_6_verblaffen, s11opnieuw1, say).
text(robospelen_6_verblaffen, s11opnieuw1, "Oké, nog één keer.").
next(robospelen_6_verblaffen, s11opnieuw1, "true", s11opnieuw2).

move(robospelen_6_verblaffen, s11opnieuw2, say).
text(robospelen_6_verblaffen, s11opnieuw2, "Ik tel tot drie").
next(robospelen_6_verblaffen, s11opnieuw2, "true", s11opnieuw3).

move(robospelen_6_verblaffen, s11opnieuw3, say).
text(robospelen_6_verblaffen, s11opnieuw3, "en dan maak jij het geluid van een robothondje.").
next(robospelen_6_verblaffen, s11opnieuw3, "true", s11opnieuw4).

move(robospelen_6_verblaffen, s11opnieuw4, say).
text(robospelen_6_verblaffen, s11opnieuw4, "1, 2, 3!").
next(robospelen_6_verblaffen, s11opnieuw4, "true", s11opnieuw5).

move(robospelen_6_verblaffen, s11opnieuw5, say).
next(robospelen_6_verblaffen, s11opnieuw5, "true", s11opnieuw6).

move(robospelen_6_verblaffen, s11opnieuw6, say).
text(robospelen_6_verblaffen, s11opnieuw6, "Ik denk dat het nu helemaal goed is.").
next(robospelen_6_verblaffen, s11opnieuw6, "true", s12).

move(robospelen_6_verblaffen, s11niet_opnieuw1, say).
text(robospelen_6_verblaffen, s11niet_opnieuw1, "Nee, je hebt gelijk!").
next(robospelen_6_verblaffen, s11niet_opnieuw1, "true", s11niet_opnieuw2).

move(robospelen_6_verblaffen, s11niet_opnieuw2, say).
text(robospelen_6_verblaffen, s11niet_opnieuw2, "Het klonk meteen de eerste keer al heel goed.").
next(robospelen_6_verblaffen, s11niet_opnieuw2, "true", s12).

move(robospelen_6_verblaffen, s12, say).
text(robospelen_6_verblaffen, s12, "Even luisteren.").
next(robospelen_6_verblaffen, s12, "true", s13).

move(robospelen_6_verblaffen, s13, say).
next(robospelen_6_verblaffen, s13, "true", s14).

move(robospelen_6_verblaffen, s14, say).
text(robospelen_6_verblaffen, s14, "Ja!").
next(robospelen_6_verblaffen, s14, "true", s15).

move(robospelen_6_verblaffen, s15, say).
text(robospelen_6_verblaffen, s15, "Wauw, je klinkt precies als een hond!").
next(robospelen_6_verblaffen, s15, "true", s16).

move(robospelen_6_verblaffen, s16, say).
text(robospelen_6_verblaffen, s16, "Als ik dit geluid op de robo spelen afspeel").
next(robospelen_6_verblaffen, s16, "true", s17).

move(robospelen_6_verblaffen, s17, say).
text(robospelen_6_verblaffen, s17, "heeeeel hard").
next(robospelen_6_verblaffen, s17, "true", s18).

move(robospelen_6_verblaffen, s18, say).
text(robospelen_6_verblaffen, s18, "dan komt het geluid misschien het verst van alle verblaffers!").
next(robospelen_6_verblaffen, s18, "true", s19).

move(robospelen_6_verblaffen, s19, say).
text(robospelen_6_verblaffen, s19, "Dankjewel %first_name% !").

%% robospelen_7_info_vervolg %%
minidialog(robospelen_7_info_vervolg, [type=narrative, thread=robospelen, position=7]).

move(robospelen_7_info_vervolg, s1, say).
text(robospelen_7_info_vervolg, s1, "Oké!").
next(robospelen_7_info_vervolg, s1, "true", s2).

move(robospelen_7_info_vervolg, s2, say).
text(robospelen_7_info_vervolg, s2, "Dat was leuk.").
next(robospelen_7_info_vervolg, s2, "true", s3).

move(robospelen_7_info_vervolg, s3, say).
text(robospelen_7_info_vervolg, s3, "De robospelen hebben ook nog een halve en een hele finale.").
next(robospelen_7_info_vervolg, s3, "true", s4).

move(robospelen_7_info_vervolg, s4, say).
text(robospelen_7_info_vervolg, s4, "In de halve finale moeten alle Robots het veld op komen om een potje te superhelden tegen elkaar.").
next(robospelen_7_info_vervolg, s4, "true", s5).

move(robospelen_7_info_vervolg, s5, say).
text(robospelen_7_info_vervolg, s5, "De Finale zal bestaan uit het zogenaamde rò hze Boswachten.").
next(robospelen_7_info_vervolg, s5, "true", s6).

move(robospelen_7_info_vervolg, s6, say).
text(robospelen_7_info_vervolg, s6, "Ken je het rò hze Bos al?").
next(robospelen_7_info_vervolg, s6, "true", s7).

move(robospelen_7_info_vervolg, s7, say).
text(robospelen_7_info_vervolg, s7, "Daar de volgende keer iets meer over vertellen").
next(robospelen_7_info_vervolg, s7, "true", s8).

move(robospelen_7_info_vervolg, s8, say).
text(robospelen_7_info_vervolg, s8, "als ik goed genoeg geoefend heb.").

%% robospelen_8_oefenopdracht %%
minidialog(robospelen_8_oefenopdracht, [type=narrative, thread=robospelen, position=8]).

move(robospelen_8_oefenopdracht, s1, say).
text(robospelen_8_oefenopdracht, s1, "Hey %first_name% !").
next(robospelen_8_oefenopdracht, s1, "true", s2).

move(robospelen_8_oefenopdracht, s2, say).
text(robospelen_8_oefenopdracht, s2, "Ik heb een oefentoets gevonden").
next(robospelen_8_oefenopdracht, s2, "true", s3).

move(robospelen_8_oefenopdracht, s3, say).
text(robospelen_8_oefenopdracht, s3, "voor de eerste opdracht van de Robospelen!").
next(robospelen_8_oefenopdracht, s3, "true", s4).

move(robospelen_8_oefenopdracht, s4, say).
text(robospelen_8_oefenopdracht, s4, "Laten we die samen doen.").
next(robospelen_8_oefenopdracht, s4, "true", s5).

move(robospelen_8_oefenopdracht, s5, say).
text(robospelen_8_oefenopdracht, s5, "Even downloaden").
next(robospelen_8_oefenopdracht, s5, "true", s6).

move(robospelen_8_oefenopdracht, s6, say).
next(robospelen_8_oefenopdracht, s6, "true", s7).

move(robospelen_8_oefenopdracht, s7, say).
text(robospelen_8_oefenopdracht, s7, "Yes, binnen!").
next(robospelen_8_oefenopdracht, s7, "true", s8).

move(robospelen_8_oefenopdracht, s8, say).
text(robospelen_8_oefenopdracht, s8, "Er staat:").
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
text(robospelen_8_oefenopdracht, s14, "en dan is 1 tweedst").
next(robospelen_8_oefenopdracht, s14, "true", s15).

move(robospelen_8_oefenopdracht, s15, say).
text(robospelen_8_oefenopdracht, s15, "Snap je?").
next(robospelen_8_oefenopdracht, s15, "true", s16).

move(robospelen_8_oefenopdracht, s16, say).
text(robospelen_8_oefenopdracht, s16, "Sorry").
next(robospelen_8_oefenopdracht, s16, "true", s17).

move(robospelen_8_oefenopdracht, s17, say).
text(robospelen_8_oefenopdracht, s17, "Ik praat zo veel").
next(robospelen_8_oefenopdracht, s17, "true", s18).

move(robospelen_8_oefenopdracht, s18, say).
text(robospelen_8_oefenopdracht, s18, "Ik ben nerveus!").
next(robospelen_8_oefenopdracht, s18, "true", s19).

move(robospelen_8_oefenopdracht, s19, say).
text(robospelen_8_oefenopdracht, s19, "Even dansen.").
next(robospelen_8_oefenopdracht, s19, "true", s20).

move(robospelen_8_oefenopdracht, s20, say).
text(robospelen_8_oefenopdracht, s20, "Dat helpt tegen de zenuwen").
next(robospelen_8_oefenopdracht, s20, "true", s21).

move(robospelen_8_oefenopdracht, s21, say).
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
text(robospelen_8_oefenopdracht, s25, "Doe je ogen dicht.").
next(robospelen_8_oefenopdracht, s25, "true", s26).

move(robospelen_8_oefenopdracht, s26, say).
text(robospelen_8_oefenopdracht, s26, "Stel je voor").
next(robospelen_8_oefenopdracht, s26, "true", s27).

move(robospelen_8_oefenopdracht, s27, say).
text(robospelen_8_oefenopdracht, s27, "Je bent in een groot bos").
next(robospelen_8_oefenopdracht, s27, "true", s28).

move(robospelen_8_oefenopdracht, s28, say).
text(robospelen_8_oefenopdracht, s28, "met allemaal lichtrò hze bomen,").
next(robospelen_8_oefenopdracht, s28, "true", s29).

move(robospelen_8_oefenopdracht, s29, say).
text(robospelen_8_oefenopdracht, s29, "met lichtrò hze blaadjes").
next(robospelen_8_oefenopdracht, s29, "true", s30).

move(robospelen_8_oefenopdracht, s30, say).
text(robospelen_8_oefenopdracht, s30, "en lichtrò hze takjes").
next(robospelen_8_oefenopdracht, s30, "true", s31).

move(robospelen_8_oefenopdracht, s31, say).
text(robospelen_8_oefenopdracht, s31, "en lichtrò hze paadjes.").
next(robospelen_8_oefenopdracht, s31, "true", s32).

move(robospelen_8_oefenopdracht, s32, say).
text(robospelen_8_oefenopdracht, s32, "Je staat op de grond").
next(robospelen_8_oefenopdracht, s32, "true", s33).

move(robospelen_8_oefenopdracht, s33, say).
text(robospelen_8_oefenopdracht, s33, "en je ziet geen mensen.").
next(robospelen_8_oefenopdracht, s33, "true", s34).

move(robospelen_8_oefenopdracht, s34, say).
text(robospelen_8_oefenopdracht, s34, "Toch moet je mensen helpen.").
next(robospelen_8_oefenopdracht, s34, "true", s35).

move(robospelen_8_oefenopdracht, s35, say).
text(robospelen_8_oefenopdracht, s35, "De klok tikt af").
next(robospelen_8_oefenopdracht, s35, "true", s36).

move(robospelen_8_oefenopdracht, s36, say).
text(robospelen_8_oefenopdracht, s36, "En de opdracht start.").
next(robospelen_8_oefenopdracht, s36, "true", s37).

move(robospelen_8_oefenopdracht, s37, say).
text(robospelen_8_oefenopdracht, s37, "Oké, weet je wat").
next(robospelen_8_oefenopdracht, s37, "true", s38).

move(robospelen_8_oefenopdracht, s38, say).
text(robospelen_8_oefenopdracht, s38, "ik projecteer het bos om ons heen.").
next(robospelen_8_oefenopdracht, s38, "true", s39).

move(robospelen_8_oefenopdracht, s39, say).
text(robospelen_8_oefenopdracht, s39, "Doe je ogen maar dicht.").
next(robospelen_8_oefenopdracht, s39, "true", s40).

move(robospelen_8_oefenopdracht, s40, say).
text(robospelen_8_oefenopdracht, s40, "Als je jouw ogen weer open doet").
next(robospelen_8_oefenopdracht, s40, "true", s41).

move(robospelen_8_oefenopdracht, s41, say).
text(robospelen_8_oefenopdracht, s41, "zijn we in het rò hze bos.").
next(robospelen_8_oefenopdracht, s41, "true", s42).

move(robospelen_8_oefenopdracht, s42, say).
text(robospelen_8_oefenopdracht, s42, "Komt ie hè.").
next(robospelen_8_oefenopdracht, s42, "true", s43).

move(robospelen_8_oefenopdracht, s43, say).
next(robospelen_8_oefenopdracht, s43, "true", s44).

move(robospelen_8_oefenopdracht, s44, say).
text(robospelen_8_oefenopdracht, s44, "Zo!").
next(robospelen_8_oefenopdracht, s44, "true", s45).

move(robospelen_8_oefenopdracht, s45, say).
leds(robospelen_8_oefenopdracht, s45, direct, ['FaceLeds', 'ChestLeds', 'FeetLeds'], ['pink', 'pink', 'pink']).
next(robospelen_8_oefenopdracht, s45, "true", s46).

move(robospelen_8_oefenopdracht, s46, say).
text(robospelen_8_oefenopdracht, s46, "Oh, wat mooi.").
next(robospelen_8_oefenopdracht, s46, "true", s47).

move(robospelen_8_oefenopdracht, s47, question).
moveConfig(robospelen_8_oefenopdracht, s47, [type=yesno, context='answer_yesno', umVariable=zie_jij_het_ook]).
text(robospelen_8_oefenopdracht, s47, "Zie jij het ook?").
next(robospelen_8_oefenopdracht, s47, "answer_yes", s48zie_het1).
next(robospelen_8_oefenopdracht, s47, "answer_no", s48zie_het_niet1).
next(robospelen_8_oefenopdracht, s47, "answer_dontknow", s48zie_het_niet1).
next(robospelen_8_oefenopdracht, s47, "fail", s48zie_het_niet1).

move(robospelen_8_oefenopdracht, s48zie_het1, say).
text(robospelen_8_oefenopdracht, s48zie_het1, "Goed hè.").
next(robospelen_8_oefenopdracht, s48zie_het1, "true", s48zie_het2).

move(robospelen_8_oefenopdracht, s48zie_het2, say).
text(robospelen_8_oefenopdracht, s48zie_het2, "Kijk").
next(robospelen_8_oefenopdracht, s48zie_het2, "true", s48zie_het3).

move(robospelen_8_oefenopdracht, s48zie_het3, say).
text(robospelen_8_oefenopdracht, s48zie_het3, "daar tussen de bladeren vliegt een rò hze vogel!").
next(robospelen_8_oefenopdracht, s48zie_het3, "true", s49).

move(robospelen_8_oefenopdracht, s48zie_het_niet1, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet1, "Ohja").
next(robospelen_8_oefenopdracht, s48zie_het_niet1, "true", s48zie_het_niet2).

move(robospelen_8_oefenopdracht, s48zie_het_niet2, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet2, "de projectiecode werkt natuurlijk alleen voor robotogen").
next(robospelen_8_oefenopdracht, s48zie_het_niet2, "true", s48zie_het_niet3).

move(robospelen_8_oefenopdracht, s48zie_het_niet3, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet3, "Misschien kan jij je fantasie gebruiken.").
next(robospelen_8_oefenopdracht, s48zie_het_niet3, "true", s48zie_het_niet4).

move(robospelen_8_oefenopdracht, s48zie_het_niet4, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet4, "Ik las dat mensen dat konden.").
next(robospelen_8_oefenopdracht, s48zie_het_niet4, "true", s48zie_het_niet5).

move(robospelen_8_oefenopdracht, s48zie_het_niet5, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet5, "We staan op een pad").
next(robospelen_8_oefenopdracht, s48zie_het_niet5, "true", s48zie_het_niet6).

move(robospelen_8_oefenopdracht, s48zie_het_niet6, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet6, "met allemaal van de bomen afgevallen blaadjes.").
next(robospelen_8_oefenopdracht, s48zie_het_niet6, "true", s48zie_het_niet7).

move(robospelen_8_oefenopdracht, s48zie_het_niet7, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet7, "Ze zijn een beetje nattig").
next(robospelen_8_oefenopdracht, s48zie_het_niet7, "true", s48zie_het_niet8).

move(robospelen_8_oefenopdracht, s48zie_het_niet8, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet8, "en alles is rò hze!").
next(robospelen_8_oefenopdracht, s48zie_het_niet8, "true", s48zie_het_niet9).

move(robospelen_8_oefenopdracht, s48zie_het_niet9, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet9, "Zelfs de modder op je schoenen is rò hze.").
next(robospelen_8_oefenopdracht, s48zie_het_niet9, "true", s48zie_het_niet10).

move(robospelen_8_oefenopdracht, s48zie_het_niet10, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet10, "En de mieren zijn rò hze").
next(robospelen_8_oefenopdracht, s48zie_het_niet10, "true", s48zie_het_niet11).

move(robospelen_8_oefenopdracht, s48zie_het_niet11, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet11, "en de stammen van de bomen").
next(robospelen_8_oefenopdracht, s48zie_het_niet11, "true", s48zie_het_niet12).

move(robospelen_8_oefenopdracht, s48zie_het_niet12, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet12, "En kijk, hier!").
next(robospelen_8_oefenopdracht, s48zie_het_niet12, "true", s48zie_het_niet13).

move(robospelen_8_oefenopdracht, s48zie_het_niet13, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet13, "Tussen ons in vliegt een klein rò hze insect.").
next(robospelen_8_oefenopdracht, s48zie_het_niet13, "true", s48zie_het_niet14).

move(robospelen_8_oefenopdracht, s48zie_het_niet14, say).
text(robospelen_8_oefenopdracht, s48zie_het_niet14, "Wat mooi.").
next(robospelen_8_oefenopdracht, s48zie_het_niet14, "true", s49).

move(robospelen_8_oefenopdracht, s49, say).
text(robospelen_8_oefenopdracht, s49, "Oké.").
next(robospelen_8_oefenopdracht, s49, "true", s50).

move(robospelen_8_oefenopdracht, s50, say).
text(robospelen_8_oefenopdracht, s50, "In deze oefenopdracht moet ik mensen helpen").
next(robospelen_8_oefenopdracht, s50, "true", s51).

move(robospelen_8_oefenopdracht, s51, say).
text(robospelen_8_oefenopdracht, s51, "Maar ik zie helemaal geen mensen in dit rò hze bos!").
next(robospelen_8_oefenopdracht, s51, "true", s52).

move(robospelen_8_oefenopdracht, s52, say).
text(robospelen_8_oefenopdracht, s52, "Ik moet iemand helpen").
next(robospelen_8_oefenopdracht, s52, "true", s53).

move(robospelen_8_oefenopdracht, s53, say).
text(robospelen_8_oefenopdracht, s53, "maar ik weet nog niet waarmee.").
next(robospelen_8_oefenopdracht, s53, "true", s54).

move(robospelen_8_oefenopdracht, s54, say).
text(robospelen_8_oefenopdracht, s54, "Dus ik denk dat ik op zoek moet gaan naar iemand.").
next(robospelen_8_oefenopdracht, s54, "true", s55).

move(robospelen_8_oefenopdracht, s55, say).
text(robospelen_8_oefenopdracht, s55, "Om die persoon te vragen waarmee ik kan helpen.").
next(robospelen_8_oefenopdracht, s55, "true", s56).

move(robospelen_8_oefenopdracht, s56, say).
text(robospelen_8_oefenopdracht, s56, "Ik denk dat ik maar gewoon heel hard roep.").
next(robospelen_8_oefenopdracht, s56, "true", s57).

move(robospelen_8_oefenopdracht, s57, say).
text(robospelen_8_oefenopdracht, s57, "Mens?").
next(robospelen_8_oefenopdracht, s57, "true", s58).

move(robospelen_8_oefenopdracht, s58, say).
text(robospelen_8_oefenopdracht, s58, "Hallo mens?").
next(robospelen_8_oefenopdracht, s58, "true", s59).

move(robospelen_8_oefenopdracht, s59, say).
text(robospelen_8_oefenopdracht, s59, "Ik ben Hero en ik wil je helpen!").
next(robospelen_8_oefenopdracht, s59, "true", s60).

move(robospelen_8_oefenopdracht, s60, say).
text(robospelen_8_oefenopdracht, s60, ".").
next(robospelen_8_oefenopdracht, s60, "true", s61).

move(robospelen_8_oefenopdracht, s61, say).
text(robospelen_8_oefenopdracht, s61, "Er gebeurt helemaal niets, %first_name% !").
next(robospelen_8_oefenopdracht, s61, "true", s62).

move(robospelen_8_oefenopdracht, s62, say).
text(robospelen_8_oefenopdracht, s62, "Laten we een stukje lopen.").
next(robospelen_8_oefenopdracht, s62, "true", s63).

move(robospelen_8_oefenopdracht, s63, say).
text(robospelen_8_oefenopdracht, s63, "Hier, langs het pad.").
next(robospelen_8_oefenopdracht, s63, "true", s64).

move(robospelen_8_oefenopdracht, s64, say).
text(robospelen_8_oefenopdracht, s64, "want mensen lopen graag op paden.").
next(robospelen_8_oefenopdracht, s64, "true", s65).

move(robospelen_8_oefenopdracht, s65, say).
text(robospelen_8_oefenopdracht, s65, "Of denk je dat ik juist van het pad af moet").
next(robospelen_8_oefenopdracht, s65, "true", s66).

move(robospelen_8_oefenopdracht, s66, say).
text(robospelen_8_oefenopdracht, s66, "om een mens te zoeken?").
next(robospelen_8_oefenopdracht, s66, "true", s67).

move(robospelen_8_oefenopdracht, s67, question).
moveConfig(robospelen_8_oefenopdracht, s67, [type=input, context="robospelen_pad_richting", options=['op', 'af'], fast=yes, umVariable=op_of_af_pad]).
text(robospelen_8_oefenopdracht, s67, "Op het pad blijven, of ervan af, wat denk jij?").
next(robospelen_8_oefenopdracht, s67, "op", s68op1).
next(robospelen_8_oefenopdracht, s67, "af", s68af1).
next(robospelen_8_oefenopdracht, s67, "fail", s68fail1).

move(robospelen_8_oefenopdracht, s68op1, say).
text(robospelen_8_oefenopdracht, s68op1, "Goed idee, %first_name% ").
next(robospelen_8_oefenopdracht, s68op1, "true", s68op2).

move(robospelen_8_oefenopdracht, s68op2, say).
text(robospelen_8_oefenopdracht, s68op2, "Het bos lijkt nu misschien niet zo eng").
next(robospelen_8_oefenopdracht, s68op2, "true", s68op3).

move(robospelen_8_oefenopdracht, s68op3, say).
text(robospelen_8_oefenopdracht, s68op3, "Omdat het zo lieflijk lichtrò hze is").
next(robospelen_8_oefenopdracht, s68op3, "true", s68op4).

move(robospelen_8_oefenopdracht, s68op4, say).
text(robospelen_8_oefenopdracht, s68op4, "Maar je weet maar nooit wat voor enge rò hze dingen er in schuilen").
next(robospelen_8_oefenopdracht, s68op4, "true", s68op5).

move(robospelen_8_oefenopdracht, s68op5, say).
text(robospelen_8_oefenopdracht, s68op5, "Met grote rò hze tanden en lange rò hze klauwen").
next(robospelen_8_oefenopdracht, s68op5, "true", s69).

move(robospelen_8_oefenopdracht, s68af1, say).
text(robospelen_8_oefenopdracht, s68af1, "Ja, goed.").
next(robospelen_8_oefenopdracht, s68af1, "true", s68af2).

move(robospelen_8_oefenopdracht, s68af2, say).
text(robospelen_8_oefenopdracht, s68af2, "Misschien heeft iemand mijn hulp wel nodig").
next(robospelen_8_oefenopdracht, s68af2, "true", s68af3).

move(robospelen_8_oefenopdracht, s68af3, say).
text(robospelen_8_oefenopdracht, s68af3, "omdat -ie verdwaald is.").
next(robospelen_8_oefenopdracht, s68af3, "true", s68af4).

move(robospelen_8_oefenopdracht, s68af4, say).
text(robospelen_8_oefenopdracht, s68af4, "Laten we hier tussen de bomen kruipen").
next(robospelen_8_oefenopdracht, s68af4, "true", s68af5).

move(robospelen_8_oefenopdracht, s68af5, say).
text(robospelen_8_oefenopdracht, s68af5, "ik zie een donker paadje.").
next(robospelen_8_oefenopdracht, s68af5, "true", s68af6).

move(robospelen_8_oefenopdracht, s68af6, say).
text(robospelen_8_oefenopdracht, s68af6, "Het lijkt helemaal niet zo eng nu het allemaal rò hze is.").
next(robospelen_8_oefenopdracht, s68af6, "true", s69).

move(robospelen_8_oefenopdracht, s69, say).
text(robospelen_8_oefenopdracht, s69, "Hoor je de rò hze takken kraken?").
next(robospelen_8_oefenopdracht, s69, "true", s70).

move(robospelen_8_oefenopdracht, s70, say).
text(robospelen_8_oefenopdracht, s70, "Aaah!").
next(robospelen_8_oefenopdracht, s70, "true", s71).

move(robospelen_8_oefenopdracht, s71, continuator).
next(robospelen_8_oefenopdracht, s71, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s72lievelingsdier1).
next(robospelen_8_oefenopdracht, s71, "true", s72egel1).

move(robospelen_8_oefenopdracht, s72egel1, say).
text(robospelen_8_oefenopdracht, s72egel1, "Kijk uit, daar is een bosje met stekels!").
next(robospelen_8_oefenopdracht, s72egel1, "true", s73).

move(robospelen_8_oefenopdracht, s72lievelingsdier1, say).
text(robospelen_8_oefenopdracht, s72lievelingsdier1, "Kijk uit, daar is een bosje!").
next(robospelen_8_oefenopdracht, s72lievelingsdier1, "true", s72lievelingsdier2).

move(robospelen_8_oefenopdracht, s72lievelingsdier2, say).
text(robospelen_8_oefenopdracht, s72lievelingsdier2, "Oh nee, het is een rò hze %lievelingsdier%, hij beweegt.").
next(robospelen_8_oefenopdracht, s72lievelingsdier2, "true", s72lievelingsdier3).

move(robospelen_8_oefenopdracht, s72lievelingsdier3, say).
text(robospelen_8_oefenopdracht, s72lievelingsdier3, "Hallo %lievelingsdier%, moet ik jou misschien helpen?").
next(robospelen_8_oefenopdracht, s72lievelingsdier3, "true", s73).

move(robospelen_8_oefenopdracht, s73, say).
text(robospelen_8_oefenopdracht, s73, "Nee?").
next(robospelen_8_oefenopdracht, s73, "true", s74).

move(robospelen_8_oefenopdracht, s74, say).
text(robospelen_8_oefenopdracht, s74, "Hij rent weg, daarheen!").
next(robospelen_8_oefenopdracht, s74, "true", s75).

move(robospelen_8_oefenopdracht, s75, say).
text(robospelen_8_oefenopdracht, s75, "Daar de rò hze heuvel op.").
next(robospelen_8_oefenopdracht, s75, "true", s76).

move(robospelen_8_oefenopdracht, s76, question).
moveConfig(robospelen_8_oefenopdracht, s76, [type=yesno, context='answer_yesno', umVariable=erachteraan]).
text(robospelen_8_oefenopdracht, s76, "Zullen we erachteraan?").
next(robospelen_8_oefenopdracht, s76, "answer_yes", s77erachteraan1).
next(robospelen_8_oefenopdracht, s76, "answer_no", s77er_niet_achteraan1).
next(robospelen_8_oefenopdracht, s76, "fail", s77fail_erachteraan1).
next(robospelen_8_oefenopdracht, s76, "answer_dontknow", s77fail_erachteraan1).

move(robospelen_8_oefenopdracht, s77fail_erachteraan1, say).
text(robospelen_8_oefenopdracht, s77fail_erachteraan1, "Ik denk dat we er het best achteraan kunnen!").
next(robospelen_8_oefenopdracht, s77fail_erachteraan1, "true", s77erachteraan21).

move(robospelen_8_oefenopdracht, s77erachteraan1, say).
text(robospelen_8_oefenopdracht, s77erachteraan1, "Goed, ik volg het snel!").
next(robospelen_8_oefenopdracht, s77erachteraan1, "true", s77erachteraan21).

move(robospelen_8_oefenopdracht, s77erachteraan21, say).
text(robospelen_8_oefenopdracht, s77erachteraan21, "Hier ging hij de rò hze heuvel op.").
next(robospelen_8_oefenopdracht, s77erachteraan21, "true", s77erachteraan22).

move(robospelen_8_oefenopdracht, s77erachteraan22, continuator).
next(robospelen_8_oefenopdracht, s77erachteraan22, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s77erachteraan2_lievelings1).
next(robospelen_8_oefenopdracht, s77erachteraan22, "true", s77erachteraan2_egel1).

move(robospelen_8_oefenopdracht, s77erachteraan2_lievelings1, say).
text(robospelen_8_oefenopdracht, s77erachteraan2_lievelings1, "Misschien moet ik de rò hze %lievelingsdier% wel helpen").
next(robospelen_8_oefenopdracht, s77erachteraan2_lievelings1, "true", s77erachteraan31).

move(robospelen_8_oefenopdracht, s77erachteraan2_lievelings2, say).
text(robospelen_8_oefenopdracht, s77erachteraan2_lievelings2, "Misschien moet ik de rò hze egel wel helpen").
next(robospelen_8_oefenopdracht, s77erachteraan2_lievelings2, "true", s77erachteraan31).

move(robospelen_8_oefenopdracht, s77erachteraan31, say).
text(robospelen_8_oefenopdracht, s77erachteraan31, "in plaats van een mens.").
next(robospelen_8_oefenopdracht, s77erachteraan31, "true", s77erachteraan32).

move(robospelen_8_oefenopdracht, s77erachteraan32, say).
text(robospelen_8_oefenopdracht, s77erachteraan32, "Dat zou wel een beetje gek zijn").
next(robospelen_8_oefenopdracht, s77erachteraan32, "true", s77erachteraan33).

move(robospelen_8_oefenopdracht, s77erachteraan33, say).
text(robospelen_8_oefenopdracht, s77erachteraan33, "maar je weet het maar nooit bij de Robospelen!").
next(robospelen_8_oefenopdracht, s77erachteraan33, "true", s77erachteraan34).

move(robospelen_8_oefenopdracht, s77erachteraan34, say).
text(robospelen_8_oefenopdracht, s77erachteraan34, "Oh wauw, wat een mooi uitzicht hier op de heuvel!").
next(robospelen_8_oefenopdracht, s77erachteraan34, "true", s77erachteraan35).

move(robospelen_8_oefenopdracht, s77erachteraan35, say).
text(robospelen_8_oefenopdracht, s77erachteraan35, "Ik kan het hele bos over kijken.").
next(robospelen_8_oefenopdracht, s77erachteraan35, "true", s77erachteraan36).

move(robospelen_8_oefenopdracht, s77erachteraan36, say).
text(robospelen_8_oefenopdracht, s77erachteraan36, "Daar aan de rand is een dorpje,").
next(robospelen_8_oefenopdracht, s77erachteraan36, "true", s77erachteraan37).

move(robospelen_8_oefenopdracht, s77erachteraan37, say).
text(robospelen_8_oefenopdracht, s77erachteraan37, "met een rò hze moskee").
next(robospelen_8_oefenopdracht, s77erachteraan37, "true", s77erachteraan38).

move(robospelen_8_oefenopdracht, s77erachteraan38, say).
text(robospelen_8_oefenopdracht, s77erachteraan38, "en een rò hze ijscokraam.").
next(robospelen_8_oefenopdracht, s77erachteraan38, "true", s77erachteraan39).

move(robospelen_8_oefenopdracht, s77erachteraan39, say).
text(robospelen_8_oefenopdracht, s77erachteraan39, "En hier op de grond zie ik voetstappen").
next(robospelen_8_oefenopdracht, s77erachteraan39, "true", s77erachteraan310).

move(robospelen_8_oefenopdracht, s77erachteraan310, say).
text(robospelen_8_oefenopdracht, s77erachteraan310, "Ze gaan weer naar beneden.").
next(robospelen_8_oefenopdracht, s77erachteraan310, "true", s77erachteraan311).

move(robospelen_8_oefenopdracht, s77erachteraan311, continuator).
next(robospelen_8_oefenopdracht, s77erachteraan311, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s77erachteraan3_lievelings1).
next(robospelen_8_oefenopdracht, s77erachteraan311, "true", s77erachteraan3_egel1).

move(robospelen_8_oefenopdracht, s77erachteraan3_lievelings1, say).
text(robospelen_8_oefenopdracht, s77erachteraan3_lievelings1, "De %lievelingsdier% is verdwenen!").
next(robospelen_8_oefenopdracht, s77erachteraan3_lievelings1, "true", s78).

move(robospelen_8_oefenopdracht, s77erachteraan3_egel1, say).
text(robospelen_8_oefenopdracht, s77erachteraan3_egel1, "De egel is verdwenen!").
next(robospelen_8_oefenopdracht, s77erachteraan3_egel1, "true", s78).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan1, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan1, "Oké. Goed.").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan1, "true", s77er_niet_achteraan2).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan2, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan2, "We blijven hier.").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan2, "true", s77er_niet_achteraan3).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan3, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan3, "Je hebt gelijk").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan3, "true", s77er_niet_achteraan4).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan4, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan4, "Ik moest een mens helpen").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan4, "true", s77er_niet_achteraan5).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan5, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan5, "Niet een dier!").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan5, "true", s77er_niet_achteraan6).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan6, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan6, "Ik kan beter hier nog een stukje verder").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan6, "true", s77er_niet_achteraan7).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan7, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan7, "kijk uit voor die scherpe rò hze steen, %first_name% !").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan7, "true", s77er_niet_achteraan8).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan8, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan8, "O kijk!").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan8, "true", s77er_niet_achteraan9).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan9, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan9, "Een rò hze open plek!").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan9, "true", s77er_niet_achteraan10).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan10, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan10, "Met een rò hze bankje om op uit te rusten.").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan10, "true", s77er_niet_achteraan11).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan11, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan11, "Wat ziet dat er lekker uit.").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan11, "true", s77er_niet_achteraan12).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan12, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan12, "Maar het is denk ik een val.").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan12, "true", s77er_niet_achteraan13).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan13, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan13, "Ik moet niet rusten, ik moet een mens zoeken!").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan13, "true", s77er_niet_achteraan14).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan14, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan14, "We gaan door, %first_name% .").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan14, "true", s77er_niet_achteraan15).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan15, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan15, "We laten ons niet in de val lokken.").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan15, "true", s77er_niet_achteraan16).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan16, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan16, "Hier de bomen door.").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan16, "true", s77er_niet_achteraan17).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan17, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan17, "Wauw, een rò hze meer!").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan17, "true", s77er_niet_achteraan18).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan18, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan18, "Met rò hze golven en rò hze riet en, oh!").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan18, "true", s77er_niet_achteraan19).

move(robospelen_8_oefenopdracht, s77er_niet_achteraan19, say).
text(robospelen_8_oefenopdracht, s77er_niet_achteraan19, "Daar ligt een rò hze kano op z'n kop").
next(robospelen_8_oefenopdracht, s77er_niet_achteraan19, "true", s78).

move(robospelen_8_oefenopdracht, s78, say).
text(robospelen_8_oefenopdracht, s78, "Ik zie daar een mens!").
next(robospelen_8_oefenopdracht, s78, "true", s79).

move(robospelen_8_oefenopdracht, s79, say).
text(robospelen_8_oefenopdracht, s79, "Het mens lijkt nat!").
next(robospelen_8_oefenopdracht, s79, "true", s80).

move(robospelen_8_oefenopdracht, s80, say).
text(robospelen_8_oefenopdracht, s80, "Doorweekt!").
next(robospelen_8_oefenopdracht, s80, "true", s81).

move(robospelen_8_oefenopdracht, s81, say).
text(robospelen_8_oefenopdracht, s81, "Alsof mens net uit het water komt!").
next(robospelen_8_oefenopdracht, s81, "true", s82).

move(robospelen_8_oefenopdracht, s82, say).
text(robospelen_8_oefenopdracht, s82, "Mens trilt heel erg!").
next(robospelen_8_oefenopdracht, s82, "true", s83).

move(robospelen_8_oefenopdracht, s83, say).
text(robospelen_8_oefenopdracht, s83, "Mens heeft het koud!").
next(robospelen_8_oefenopdracht, s83, "true", s84).

move(robospelen_8_oefenopdracht, s84, say).
text(robospelen_8_oefenopdracht, s84, "We moeten mens laten opdrogen, maar hoe?").
next(robospelen_8_oefenopdracht, s84, "true", s85).

move(robospelen_8_oefenopdracht, s85, say).
text(robospelen_8_oefenopdracht, s85, "Misschien kunnen we ergens een handdoek vandaan halen").
next(robospelen_8_oefenopdracht, s85, "true", s86).

move(robospelen_8_oefenopdracht, s86, say).
text(robospelen_8_oefenopdracht, s86, "Of een föhn").
next(robospelen_8_oefenopdracht, s86, "true", s87).

move(robospelen_8_oefenopdracht, s87, say).
text(robospelen_8_oefenopdracht, s87, "Of we spoelen de tijd snel even door").
next(robospelen_8_oefenopdracht, s87, "true", s88).

move(robospelen_8_oefenopdracht, s88, say).
text(robospelen_8_oefenopdracht, s88, "want alles droogt vanzelf op in de rò hze zon").
next(robospelen_8_oefenopdracht, s88, "true", s89).

move(robospelen_8_oefenopdracht, s89, say).
text(robospelen_8_oefenopdracht, s89, "als je maar lang genoeg wacht").
next(robospelen_8_oefenopdracht, s89, "true", s90).

move(robospelen_8_oefenopdracht, s90, question).
moveConfig(robospelen_8_oefenopdracht, s90, [type=input, context="robospelen_droogmethode", options=['handdoek', 'föhn', 'tijd'], fast=yes, umVariable=droogmethode]).
text(robospelen_8_oefenopdracht, s90, "Wat denk jij, de handdoek, de föhn, of de tijd doorspoelen?").
next(robospelen_8_oefenopdracht, s90, "handdoek", s91handdoek1).
next(robospelen_8_oefenopdracht, s90, "föhn", s91fohn1).
next(robospelen_8_oefenopdracht, s90, "tijd", s91tijd1).
next(robospelen_8_oefenopdracht, s90, "fail", s91fail_droogmethode1).

move(robospelen_8_oefenopdracht, s91fail_droogmethode1, say).
text(robospelen_8_oefenopdracht, s91fail_droogmethode1, "Laten de föhn proberen!").
next(robospelen_8_oefenopdracht, s91fail_droogmethode1, "true", s91fohn1).

move(robospelen_8_oefenopdracht, s91handdoek1, say).
text(robospelen_8_oefenopdracht, s91handdoek1, "Goed idee!").
next(robospelen_8_oefenopdracht, s91handdoek1, "true", s91handdoek2).

move(robospelen_8_oefenopdracht, s91handdoek2, say).
text(robospelen_8_oefenopdracht, s91handdoek2, "Maar ik zie hier helemaal geen handdoek liggen.").
next(robospelen_8_oefenopdracht, s91handdoek2, "true", s91handdoek3).

move(robospelen_8_oefenopdracht, s91handdoek3, say).
text(robospelen_8_oefenopdracht, s91handdoek3, "Misschien kunnen we hem maken.").
next(robospelen_8_oefenopdracht, s91handdoek3, "true", s91handdoek4).

move(robospelen_8_oefenopdracht, s91handdoek4, say).
text(robospelen_8_oefenopdracht, s91handdoek4, "Het is tenslotte maar een computersimulatie, toch %first_name% ?").
next(robospelen_8_oefenopdracht, s91handdoek4, "true", s91handdoek5).

move(robospelen_8_oefenopdracht, s91handdoek5, say).
text(robospelen_8_oefenopdracht, s91handdoek5, "En jij bent hier zelfs niet via de code, maar door je fantasie!").
next(robospelen_8_oefenopdracht, s91handdoek5, "true", s91handdoek6).

move(robospelen_8_oefenopdracht, s91handdoek6, say).
text(robospelen_8_oefenopdracht, s91handdoek6, "O wacht, ik heb een goed idee!").
next(robospelen_8_oefenopdracht, s91handdoek6, "true", s91handdoek7).

move(robospelen_8_oefenopdracht, s91handdoek7, say).
text(robospelen_8_oefenopdracht, s91handdoek7, "Wat als jij een handdoek fantaseert").
next(robospelen_8_oefenopdracht, s91handdoek7, "true", s91handdoek8).

move(robospelen_8_oefenopdracht, s91handdoek8, say).
text(robospelen_8_oefenopdracht, s91handdoek8, "En die naar mij doorstuurt").
next(robospelen_8_oefenopdracht, s91handdoek8, "true", s91handdoek9).

move(robospelen_8_oefenopdracht, s91handdoek9, say).
text(robospelen_8_oefenopdracht, s91handdoek9, "Dan zjoef ik hem zo het programma in!").
next(robospelen_8_oefenopdracht, s91handdoek9, "true", s91handdoek10).

move(robospelen_8_oefenopdracht, s91handdoek10, say).
text(robospelen_8_oefenopdracht, s91handdoek10, "Leg je hand maar op mijn hoofd").
next(robospelen_8_oefenopdracht, s91handdoek10, "true", s91handdoek11).

move(robospelen_8_oefenopdracht, s91handdoek11, say).
text(robospelen_8_oefenopdracht, s91handdoek11, "Ja?").
next(robospelen_8_oefenopdracht, s91handdoek11, "true", s91handdoek12).

move(robospelen_8_oefenopdracht, s91handdoek12, say).
text(robospelen_8_oefenopdracht, s91handdoek12, "Ogen dicht").
next(robospelen_8_oefenopdracht, s91handdoek12, "true", s91handdoek13).

move(robospelen_8_oefenopdracht, s91handdoek13, say).
text(robospelen_8_oefenopdracht, s91handdoek13, "Dan moet je nu heel hard een handdoek voor je zien").
next(robospelen_8_oefenopdracht, s91handdoek13, "true", s91handdoek14).

move(robospelen_8_oefenopdracht, s91handdoek14, say).
text(robospelen_8_oefenopdracht, s91handdoek14, "Een rò hze natuurlijk!").
next(robospelen_8_oefenopdracht, s91handdoek14, "true", s91handdoek15).

move(robospelen_8_oefenopdracht, s91handdoek15, say).
text(robospelen_8_oefenopdracht, s91handdoek15, "Anders gaat het programma kapot").
next(robospelen_8_oefenopdracht, s91handdoek15, "true", s91handdoek16).

move(robospelen_8_oefenopdracht, s91handdoek16, say).
text(robospelen_8_oefenopdracht, s91handdoek16, "Dan ga ik hem door je hand heen inladen").
next(robospelen_8_oefenopdracht, s91handdoek16, "true", s91handdoek17).

move(robospelen_8_oefenopdracht, s91handdoek17, say).
text(robospelen_8_oefenopdracht, s91handdoek17, "Laden. laden.").
next(robospelen_8_oefenopdracht, s91handdoek17, "true", s91handdoek18).

move(robospelen_8_oefenopdracht, s91handdoek18, say).
text(robospelen_8_oefenopdracht, s91handdoek18, "O ik zie hem!").
next(robospelen_8_oefenopdracht, s91handdoek18, "true", s91handdoek19).

move(robospelen_8_oefenopdracht, s91handdoek19, say).
text(robospelen_8_oefenopdracht, s91handdoek19, "Hij verschijnt hier over een struik!").
next(robospelen_8_oefenopdracht, s91handdoek19, "true", s91handdoek20).

move(robospelen_8_oefenopdracht, s91handdoek20, say).
text(robospelen_8_oefenopdracht, s91handdoek20, "Wat een mooie handdoek heb je gefantaseerd").
next(robospelen_8_oefenopdracht, s91handdoek20, "true", s91handdoek21).

move(robospelen_8_oefenopdracht, s91handdoek21, say).
text(robospelen_8_oefenopdracht, s91handdoek21, "Kijk, nat mens, een handdoek!").
next(robospelen_8_oefenopdracht, s91handdoek21, "true", s91handdoek22).

move(robospelen_8_oefenopdracht, s91handdoek22, say).
text(robospelen_8_oefenopdracht, s91handdoek22, "Pak maar aan").
next(robospelen_8_oefenopdracht, s91handdoek22, "true", s92).

move(robospelen_8_oefenopdracht, s91fohn1, say).
text(robospelen_8_oefenopdracht, s91fohn1, "Dat is een goed idee").
next(robospelen_8_oefenopdracht, s91fohn1, "true", s91fohn2).

move(robospelen_8_oefenopdracht, s91fohn2, say).
text(robospelen_8_oefenopdracht, s91fohn2, "Dan blazen we het mens zo droog").
next(robospelen_8_oefenopdracht, s91fohn2, "true", s91fohn3).

move(robospelen_8_oefenopdracht, s91fohn3, say).
text(robospelen_8_oefenopdracht, s91fohn3, "Maar we hebben hier helemaal geen föhn!").
next(robospelen_8_oefenopdracht, s91fohn3, "true", s91fohn4).

move(robospelen_8_oefenopdracht, s91fohn4, say).
text(robospelen_8_oefenopdracht, s91fohn4, "Misschien kunnen we hem maken.").
next(robospelen_8_oefenopdracht, s91fohn4, "true", s91fohn5).

move(robospelen_8_oefenopdracht, s91fohn5, say).
text(robospelen_8_oefenopdracht, s91fohn5, "Het is tenslotte maar een computersimulatie, toch %first_name% ?").
next(robospelen_8_oefenopdracht, s91fohn5, "true", s91fohn6).

move(robospelen_8_oefenopdracht, s91fohn6, say).
text(robospelen_8_oefenopdracht, s91fohn6, "Ik heb een plan!").
next(robospelen_8_oefenopdracht, s91fohn6, "true", s91fohn7).

move(robospelen_8_oefenopdracht, s91fohn7, say).
text(robospelen_8_oefenopdracht, s91fohn7, "Wat als jij tegen mij blaast").
next(robospelen_8_oefenopdracht, s91fohn7, "true", s91fohn8).

move(robospelen_8_oefenopdracht, s91fohn8, say).
text(robospelen_8_oefenopdracht, s91fohn8, "En dan pas ik in de windsnelheid aan").
next(robospelen_8_oefenopdracht, s91fohn8, "true", s91fohn9).

move(robospelen_8_oefenopdracht, s91fohn9, say).
text(robospelen_8_oefenopdracht, s91fohn9, "Zodat jouw blaas duizend keer zo hard is").
next(robospelen_8_oefenopdracht, s91fohn9, "true", s91fohn10).

move(robospelen_8_oefenopdracht, s91fohn10, say).
text(robospelen_8_oefenopdracht, s91fohn10, "En dan is het mens zo droog!").
next(robospelen_8_oefenopdracht, s91fohn10, "true", s91fohn11).

move(robospelen_8_oefenopdracht, s91fohn11, say).
text(robospelen_8_oefenopdracht, s91fohn11, "Ja, dat gaan we proberen").
next(robospelen_8_oefenopdracht, s91fohn11, "true", s91fohn12).

move(robospelen_8_oefenopdracht, s91fohn12, say).
text(robospelen_8_oefenopdracht, s91fohn12, "Kom maar wat dichterbij, dan tel ik af").
next(robospelen_8_oefenopdracht, s91fohn12, "true", s91fohn13).

move(robospelen_8_oefenopdracht, s91fohn13, say).
text(robospelen_8_oefenopdracht, s91fohn13, "En na nul moet je zo lang je kunt heel hard op mij blazen!").
next(robospelen_8_oefenopdracht, s91fohn13, "true", s91fohn14).

move(robospelen_8_oefenopdracht, s91fohn14, say).
text(robospelen_8_oefenopdracht, s91fohn14, "3, 2, 1, 0").
next(robospelen_8_oefenopdracht, s91fohn14, "true", s91fohn15).

move(robospelen_8_oefenopdracht, s91fohn15, say).
next(robospelen_8_oefenopdracht, s91fohn15, "true", s91fohn16).

move(robospelen_8_oefenopdracht, s91fohn16, say).
text(robospelen_8_oefenopdracht, s91fohn16, "Goed, ik pas de windsnelheid aan").
next(robospelen_8_oefenopdracht, s91fohn16, "true", s91fohn17).

move(robospelen_8_oefenopdracht, s91fohn17, say).
text(robospelen_8_oefenopdracht, s91fohn17, "Ik ga 'm doorsturen").
next(robospelen_8_oefenopdracht, s91fohn17, "true", s91fohn18).

move(robospelen_8_oefenopdracht, s91fohn18, say).
text(robospelen_8_oefenopdracht, s91fohn18, "Houd je goed vast, %first_name% !").
next(robospelen_8_oefenopdracht, s91fohn18, "true", s91fohn19).

move(robospelen_8_oefenopdracht, s91fohn19, say).
text(robospelen_8_oefenopdracht, s91fohn19, "Straks waai je nog omver").
next(robospelen_8_oefenopdracht, s91fohn19, "true", s91fohn20).

move(robospelen_8_oefenopdracht, s91fohn20, say).
text(robospelen_8_oefenopdracht, s91fohn20, "Klaar?").
next(robospelen_8_oefenopdracht, s91fohn20, "true", s91fohn21).

move(robospelen_8_oefenopdracht, s91fohn21, say).
text(robospelen_8_oefenopdracht, s91fohn21, "Daar komt -ie!").
next(robospelen_8_oefenopdracht, s91fohn21, "true", s91fohn22).

move(robospelen_8_oefenopdracht, s91fohn22, say).
next(robospelen_8_oefenopdracht, s91fohn22, "true", s92).

move(robospelen_8_oefenopdracht, s91tijd1, say).
text(robospelen_8_oefenopdracht, s91tijd1, "Oké!").
next(robospelen_8_oefenopdracht, s91tijd1, "true", s91tijd2).

move(robospelen_8_oefenopdracht, s91tijd2, say).
text(robospelen_8_oefenopdracht, s91tijd2, "Dit rò hze bos is een computersimulatie").
next(robospelen_8_oefenopdracht, s91tijd2, "true", s91tijd3).

move(robospelen_8_oefenopdracht, s91tijd3, say).
text(robospelen_8_oefenopdracht, s91tijd3, "En computers hebben altijd een klokje").
next(robospelen_8_oefenopdracht, s91tijd3, "true", s91tijd4).

move(robospelen_8_oefenopdracht, s91tijd4, say).
text(robospelen_8_oefenopdracht, s91tijd4, "Dus als ik dat een dag vooruit zet").
next(robospelen_8_oefenopdracht, s91tijd4, "true", s91tijd5).

move(robospelen_8_oefenopdracht, s91tijd5, say).
text(robospelen_8_oefenopdracht, s91tijd5, "Dan reizen we zo floep door de tijd zonder dat we het merken!").
next(robospelen_8_oefenopdracht, s91tijd5, "true", s91tijd6).

move(robospelen_8_oefenopdracht, s91tijd6, say).
text(robospelen_8_oefenopdracht, s91tijd6, "Even zoeken, waar zou het zijn").
next(robospelen_8_oefenopdracht, s91tijd6, "true", s91tijd7).

move(robospelen_8_oefenopdracht, s91tijd7, say).
text(robospelen_8_oefenopdracht, s91tijd7, "Menu.").
next(robospelen_8_oefenopdracht, s91tijd7, "true", s91tijd8).

move(robospelen_8_oefenopdracht, s91tijd8, say).
text(robospelen_8_oefenopdracht, s91tijd8, "Instellingen.").
next(robospelen_8_oefenopdracht, s91tijd8, "true", s91tijd9).

move(robospelen_8_oefenopdracht, s91tijd9, say).
text(robospelen_8_oefenopdracht, s91tijd9, "Hier! Datum en tijd!").
next(robospelen_8_oefenopdracht, s91tijd9, "true", s91tijd10).

move(robospelen_8_oefenopdracht, s91tijd10, say).
text(robospelen_8_oefenopdracht, s91tijd10, "Houd je goed vast, %first_name% ").
next(robospelen_8_oefenopdracht, s91tijd10, "true", s91tijd11).

move(robospelen_8_oefenopdracht, s91tijd11, say).
text(robospelen_8_oefenopdracht, s91tijd11, "Ik heb nog nooit met een mens door de tijd gereisd").
next(robospelen_8_oefenopdracht, s91tijd11, "true", s91tijd12).

move(robospelen_8_oefenopdracht, s91tijd12, say).
text(robospelen_8_oefenopdracht, s91tijd12, "Straks ben jij in deze simulatie een dag ouder dan in het echt.").
next(robospelen_8_oefenopdracht, s91tijd12, "true", s91tijd13).

move(robospelen_8_oefenopdracht, s91tijd13, say).
text(robospelen_8_oefenopdracht, s91tijd13, "Klaar?").
next(robospelen_8_oefenopdracht, s91tijd13, "true", s91tijd14).

move(robospelen_8_oefenopdracht, s91tijd14, say).
text(robospelen_8_oefenopdracht, s91tijd14, "Komt -ie!").
next(robospelen_8_oefenopdracht, s91tijd14, "true", s91tijd15).

move(robospelen_8_oefenopdracht, s91tijd15, say).
next(robospelen_8_oefenopdracht, s91tijd15, "true", s92).

move(robospelen_8_oefenopdracht, s92, say).
text(robospelen_8_oefenopdracht, s92, "Het werkt!").
next(robospelen_8_oefenopdracht, s92, "true", s93).

move(robospelen_8_oefenopdracht, s93, say).
text(robospelen_8_oefenopdracht, s93, "Mens is droog!").
next(robospelen_8_oefenopdracht, s93, "true", s94).

move(robospelen_8_oefenopdracht, s94, say).
text(robospelen_8_oefenopdracht, s94, "Mens zegt bedankt!").
next(robospelen_8_oefenopdracht, s94, "true", s95).

move(robospelen_8_oefenopdracht, s95, say).
text(robospelen_8_oefenopdracht, s95, "Ook tegen jou, %first_name% ").
next(robospelen_8_oefenopdracht, s95, "true", s96).

move(robospelen_8_oefenopdracht, s96, say).
text(robospelen_8_oefenopdracht, s96, "Wat fijn").
next(robospelen_8_oefenopdracht, s96, "true", s97).

move(robospelen_8_oefenopdracht, s97, say).
text(robospelen_8_oefenopdracht, s97, "O, kijk, er zweven opeens grote rò hze letters in de lucht.").
next(robospelen_8_oefenopdracht, s97, "true", s98).

move(robospelen_8_oefenopdracht, s98, say).
text(robospelen_8_oefenopdracht, s98, "Wat staat daar?").
next(robospelen_8_oefenopdracht, s98, "true", s99).

move(robospelen_8_oefenopdracht, s99, say).
text(robospelen_8_oefenopdracht, s99, "Oefen. opdracht. geslaagd!").
next(robospelen_8_oefenopdracht, s99, "true", s100).

move(robospelen_8_oefenopdracht, s100, say).
next(robospelen_8_oefenopdracht, s100, "true", s101).

move(robospelen_8_oefenopdracht, s101, say).
text(robospelen_8_oefenopdracht, s101, "En een knop met log uit erop.").
next(robospelen_8_oefenopdracht, s101, "true", s102).

move(robospelen_8_oefenopdracht, s102, say).
text(robospelen_8_oefenopdracht, s102, "Daar ga ik op klikken.").
next(robospelen_8_oefenopdracht, s102, "true", s103).

move(robospelen_8_oefenopdracht, s103, say).
leds(robospelen_8_oefenopdracht, s103, reset).
next(robospelen_8_oefenopdracht, s103, "true", s104).

move(robospelen_8_oefenopdracht, s104, say).
text(robospelen_8_oefenopdracht, s104, "Zo!").
next(robospelen_8_oefenopdracht, s104, "true", s105).

move(robospelen_8_oefenopdracht, s105, say).
text(robospelen_8_oefenopdracht, s105, "Nu staan we weer in de kamer.").
next(robospelen_8_oefenopdracht, s105, "true", s106).

move(robospelen_8_oefenopdracht, s106, say).
text(robospelen_8_oefenopdracht, s106, "Dat was leuk!").
next(robospelen_8_oefenopdracht, s106, "true", s107).

move(robospelen_8_oefenopdracht, s107, say).
text(robospelen_8_oefenopdracht, s107, "Dankzij jou was deze oefenopdracht een eitje!").
next(robospelen_8_oefenopdracht, s107, "true", s108).

move(robospelen_8_oefenopdracht, s108, say).
text(robospelen_8_oefenopdracht, s108, "Een makkie.").
next(robospelen_8_oefenopdracht, s108, "true", s109).

move(robospelen_8_oefenopdracht, s109, continuator).
next(robospelen_8_oefenopdracht, s109, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s110lievelingsdier1).
next(robospelen_8_oefenopdracht, s109, "true", s110egel1).

move(robospelen_8_oefenopdracht, s110lievelingsdier1, say).
text(robospelen_8_oefenopdracht, s110lievelingsdier1, "Een %lievelingsdier% in het bakkie").
next(robospelen_8_oefenopdracht, s110lievelingsdier1, "true", s111).

move(robospelen_8_oefenopdracht, s110egel1, say).
text(robospelen_8_oefenopdracht, s110egel1, "Een egel in het bakkie").
next(robospelen_8_oefenopdracht, s110egel1, "true", s111).

move(robospelen_8_oefenopdracht, s111, say).
text(robospelen_8_oefenopdracht, s111, "Dankjewel %first_name% !").

%% robospelen_9_moeilijk %%
minidialog(robospelen_9_moeilijk, [type=narrative, thread=robospelen, position=9]).

move(robospelen_9_moeilijk, s1, say).
text(robospelen_9_moeilijk, s1, "Binnenkort is de grote dag").
next(robospelen_9_moeilijk, s1, "true", s2).

move(robospelen_9_moeilijk, s2, say).
text(robospelen_9_moeilijk, s2, "dan beginnen de Robospelen").
next(robospelen_9_moeilijk, s2, "true", s3).

move(robospelen_9_moeilijk, s3, continuator).
next(robospelen_9_moeilijk, s3, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s4lievelingsdier1).
next(robospelen_9_moeilijk, s3, "true", s4egel1).

move(robospelen_9_moeilijk, s4lievelingsdier1, say).
text(robospelen_9_moeilijk, s4lievelingsdier1, "De eerste oefenopdracht in het rò hze bos met %lievelingsdier% ging dankzij jou erg goed!").
next(robospelen_9_moeilijk, s4lievelingsdier1, "true", s5).

move(robospelen_9_moeilijk, s4egel1, say).
text(robospelen_9_moeilijk, s4egel1, "De eerste oefenopdracht in het rò hze bos met egel ging dankzij jou erg goed!").
next(robospelen_9_moeilijk, s4egel1, "true", s5).

move(robospelen_9_moeilijk, s5, say).
text(robospelen_9_moeilijk, s5, "Maar eerst is er nog een moeilijke oefenopdracht waar ik best wel tegenop zie.").
next(robospelen_9_moeilijk, s5, "true", s6).

move(robospelen_9_moeilijk, s6, say).
text(robospelen_9_moeilijk, s6, "Een beetje alsof je een stom schoolvak krijgt").
next(robospelen_9_moeilijk, s6, "true", s7).

move(robospelen_9_moeilijk, s7, say).
text(robospelen_9_moeilijk, s7, "of iets anders stoms moet doen.").
next(robospelen_9_moeilijk, s7, "true", s8).

move(robospelen_9_moeilijk, s8, question).
moveConfig(robospelen_9_moeilijk, s8, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=stom_ding]).
text(robospelen_9_moeilijk, s8, "Wat vind jij nou stom om te doen?").
next(robospelen_9_moeilijk, s8, "success", s9got_answer_stom1).
next(robospelen_9_moeilijk, s8, "fail", s9got_no_answer_stom1).

move(robospelen_9_moeilijk, s9got_no_answer_stom1, say).
text(robospelen_9_moeilijk, s9got_no_answer_stom1, "Het is oké hoor, als je niet weet").
next(robospelen_9_moeilijk, s9got_no_answer_stom1, "true", s9got_no_answer_stom2).

move(robospelen_9_moeilijk, s9got_no_answer_stom2, say).
text(robospelen_9_moeilijk, s9got_no_answer_stom2, "Goed juist dat je geen stomme dingen kunt bedenken!").
next(robospelen_9_moeilijk, s9got_no_answer_stom2, "true", s9got_no_answer_stom3).

move(robospelen_9_moeilijk, s9got_no_answer_stom3, say).
text(robospelen_9_moeilijk, s9got_no_answer_stom3, "Wat ben je toch ook een positief mens, %first_name% ").
next(robospelen_9_moeilijk, s9got_no_answer_stom3, "true", s9got_no_answer_stom4).

move(robospelen_9_moeilijk, s9got_no_answer_stom4, say).
text(robospelen_9_moeilijk, s9got_no_answer_stom4, "Ik ben nu even niet zo positief.").
next(robospelen_9_moeilijk, s9got_no_answer_stom4, "true", s10).

move(robospelen_9_moeilijk, s9got_answer_stom1, say).
text(robospelen_9_moeilijk, s9got_answer_stom1, "O, wat stom!").
next(robospelen_9_moeilijk, s9got_answer_stom1, "true", s9got_answer_stom2).

move(robospelen_9_moeilijk, s9got_answer_stom2, say).
text(robospelen_9_moeilijk, s9got_answer_stom2, "Wat vreselijk stom!").
next(robospelen_9_moeilijk, s9got_answer_stom2, "true", s9got_answer_stom3).

move(robospelen_9_moeilijk, s9got_answer_stom3, question).
moveConfig(robospelen_9_moeilijk, s9got_answer_stom3, [type=yesno, context='answer_yesno', umVariable=boos_om_stom]).
text(robospelen_9_moeilijk, s9got_answer_stom3, "Ben je dan ook boos om al die stommigheid?").
next(robospelen_9_moeilijk, s9got_answer_stom3, "answer_yes", s9boos1).
next(robospelen_9_moeilijk, s9got_answer_stom3, "answer_no", s9niet_boos1).
next(robospelen_9_moeilijk, s9got_answer_stom3, "fail", s9fail_boos1).
next(robospelen_9_moeilijk, s9got_answer_stom3, "answer_dontknow", s9fail_boos1).

move(robospelen_9_moeilijk, s9fail_boos1, say).
text(robospelen_9_moeilijk, s9fail_boos1, "Ik zou wel boos zijn, denk ik.").
next(robospelen_9_moeilijk, s9fail_boos1, "true", s9boos21).

move(robospelen_9_moeilijk, s9boos1, say).
text(robospelen_9_moeilijk, s9boos1, "Dat snap ik heel goed!").
next(robospelen_9_moeilijk, s9boos1, "true", s9boos21).

move(robospelen_9_moeilijk, s9boos21, say).
text(robospelen_9_moeilijk, s9boos21, "Ik ben nu ook een beetje boos.").
next(robospelen_9_moeilijk, s9boos21, "true", s9boos22).

move(robospelen_9_moeilijk, s9boos22, say).
text(robospelen_9_moeilijk, s9boos22, "En ik maak me zorgen.").
next(robospelen_9_moeilijk, s9boos22, "true", s9boos23).

move(robospelen_9_moeilijk, s9boos23, say).
text(robospelen_9_moeilijk, s9boos23, "Allemaal door die moeilijke oefenopdracht!").
next(robospelen_9_moeilijk, s9boos23, "true", s10).

move(robospelen_9_moeilijk, s9niet_boos1, say).
text(robospelen_9_moeilijk, s9niet_boos1, "Wauw, dat is wel knap van je!").
next(robospelen_9_moeilijk, s9niet_boos1, "true", s9niet_boos2).

move(robospelen_9_moeilijk, s9niet_boos2, say).
text(robospelen_9_moeilijk, s9niet_boos2, "Ik word soms wel boos van stomme dingen.").
next(robospelen_9_moeilijk, s9niet_boos2, "true", s9niet_boos3).

move(robospelen_9_moeilijk, s9niet_boos3, say).
text(robospelen_9_moeilijk, s9niet_boos3, "Of een beetje bang, of een beetje bezorgd.").
next(robospelen_9_moeilijk, s9niet_boos3, "true", s9niet_boos4).

move(robospelen_9_moeilijk, s9niet_boos4, say).
text(robospelen_9_moeilijk, s9niet_boos4, "Allemaal door elkaar heen.").
next(robospelen_9_moeilijk, s9niet_boos4, "true", s9niet_boos5).

move(robospelen_9_moeilijk, s9niet_boos5, say).
text(robospelen_9_moeilijk, s9niet_boos5, "Dat voel ik nu ook, ik zal je vertellen waarom.").
next(robospelen_9_moeilijk, s9niet_boos5, "true", s10).

move(robospelen_9_moeilijk, s10, say).
text(robospelen_9_moeilijk, s10, "In de tweede oefenopdracht moet ik weer naar het rò hze Bos.").
next(robospelen_9_moeilijk, s10, "true", s11).

move(robospelen_9_moeilijk, s11, say).
text(robospelen_9_moeilijk, s11, "In de instructie staat dit:").
next(robospelen_9_moeilijk, s11, "true", s12).

move(robospelen_9_moeilijk, s12, say).
text(robospelen_9_moeilijk, s12, "Geachte Robots,").
next(robospelen_9_moeilijk, s12, "true", s13).

move(robospelen_9_moeilijk, s13, say).
text(robospelen_9_moeilijk, s13, "Voor de tweede oefenopdracht").
next(robospelen_9_moeilijk, s13, "true", s14).

move(robospelen_9_moeilijk, s14, say).
text(robospelen_9_moeilijk, s14, "oefenopdracht 1").
next(robospelen_9_moeilijk, s14, "true", s15).

move(robospelen_9_moeilijk, s15, say).
text(robospelen_9_moeilijk, s15, "sturen we jullie weer naar het rò hze Bos").
next(robospelen_9_moeilijk, s15, "true", s16).

move(robospelen_9_moeilijk, s16, say).
text(robospelen_9_moeilijk, s16, "alleen dit keer is er een rò hze Bosbrand").
next(robospelen_9_moeilijk, s16, "true", s17).

move(robospelen_9_moeilijk, s17, say).
text(robospelen_9_moeilijk, s17, "met rò hze vlammen").
next(robospelen_9_moeilijk, s17, "true", s18).

move(robospelen_9_moeilijk, s18, say).
text(robospelen_9_moeilijk, s18, "Het is aan jullie om te ontdekken op welke manier de rò hze vlammen geblust kunnen worden.").
next(robospelen_9_moeilijk, s18, "true", s19).

move(robospelen_9_moeilijk, s19, say).
text(robospelen_9_moeilijk, s19, "Dat mogen jullie op allerlei manieren doen,").
next(robospelen_9_moeilijk, s19, "true", s20).

move(robospelen_9_moeilijk, s20, say).
text(robospelen_9_moeilijk, s20, "maar jullie moeten zelf kiezen hoe.").
next(robospelen_9_moeilijk, s20, "true", s21).

move(robospelen_9_moeilijk, s21, say).
text(robospelen_9_moeilijk, s21, "Veel succes!").
next(robospelen_9_moeilijk, s21, "true", s22).

move(robospelen_9_moeilijk, s22, say).
text(robospelen_9_moeilijk, s22, "Dat klinkt toch erg moeilijk, %first_name% !").
next(robospelen_9_moeilijk, s22, "true", s23).

move(robospelen_9_moeilijk, s23, say).
text(robospelen_9_moeilijk, s23, "En ik ben van plastic").
next(robospelen_9_moeilijk, s23, "true", s24).

move(robospelen_9_moeilijk, s24, say).
text(robospelen_9_moeilijk, s24, "Wat als ik smelt in het rò hze Bos!").
next(robospelen_9_moeilijk, s24, "true", s25).

move(robospelen_9_moeilijk, s25, say).
text(robospelen_9_moeilijk, s25, "Ik vind het echt eng.").
next(robospelen_9_moeilijk, s25, "true", s26).

move(robospelen_9_moeilijk, s26, say).
text(robospelen_9_moeilijk, s26, "En stom.").
next(robospelen_9_moeilijk, s26, "true", s27).

move(robospelen_9_moeilijk, s27, say).
text(robospelen_9_moeilijk, s27, "Mensen kunnen vuur blussen met water.").
next(robospelen_9_moeilijk, s27, "true", s28).

move(robospelen_9_moeilijk, s28, say).
text(robospelen_9_moeilijk, s28, "Maar robots mogen niet met water omgaan").
next(robospelen_9_moeilijk, s28, "true", s29).

move(robospelen_9_moeilijk, s29, say).
text(robospelen_9_moeilijk, s29, "Dan krijgen we kortsluiting.").
next(robospelen_9_moeilijk, s29, "true", s30).

move(robospelen_9_moeilijk, s30, say).
text(robospelen_9_moeilijk, s30, "Maar we kunnen wel.").
next(robospelen_9_moeilijk, s30, "true", s31).

move(robospelen_9_moeilijk, s31, say).
text(robospelen_9_moeilijk, s31, "Heel hard blazen zodat het vuur uit gaat").
next(robospelen_9_moeilijk, s31, "true", s32).

move(robospelen_9_moeilijk, s32, say).
text(robospelen_9_moeilijk, s32, "of met onze handen wapperen").
next(robospelen_9_moeilijk, s32, "true", s33).

move(robospelen_9_moeilijk, s33, say).
text(robospelen_9_moeilijk, s33, "of supersnel met onze wimpers knipperen.").
next(robospelen_9_moeilijk, s33, "true", s34).

move(robospelen_9_moeilijk, s34, say).
text(robospelen_9_moeilijk, s34, "Ik weet het niet, %first_name% !").
next(robospelen_9_moeilijk, s34, "true", s35).

move(robospelen_9_moeilijk, s35, say).
text(robospelen_9_moeilijk, s35, "Wat denk jij dat het beste werkt?").
next(robospelen_9_moeilijk, s35, "true", s36).

move(robospelen_9_moeilijk, s36, question).
moveConfig(robospelen_9_moeilijk, s36, [type=input, context="robospelen_vuur_uitmaken", options=['blazen', 'wapperen', 'knipperen'], fast=yes, umVariable=vuur_uitmaken]).
text(robospelen_9_moeilijk, s36, "Blazen, wapperen, of knipperen?").
next(robospelen_9_moeilijk, s36, "blazen", s37blazen1).
next(robospelen_9_moeilijk, s36, "wapperen", s37wapperen1).
next(robospelen_9_moeilijk, s36, "knipperen", s37knipperen1).
next(robospelen_9_moeilijk, s36, "fail", s37fail1).

move(robospelen_9_moeilijk, s37wapperen1, say).
text(robospelen_9_moeilijk, s37wapperen1, "Ja, dat klinkt goed").
next(robospelen_9_moeilijk, s37wapperen1, "true", s37wapperen2).

move(robospelen_9_moeilijk, s37wapperen2, say).
text(robospelen_9_moeilijk, s37wapperen2, "Als ik hard genoeg met mijn armen waai komt er wind").
next(robospelen_9_moeilijk, s37wapperen2, "true", s37wapperen3).

move(robospelen_9_moeilijk, s37wapperen3, say).
text(robospelen_9_moeilijk, s37wapperen3, "En die waait dan het vuur uit!").
next(robospelen_9_moeilijk, s37wapperen3, "true", s37wapperen4).

move(robospelen_9_moeilijk, s37wapperen4, say).
text(robospelen_9_moeilijk, s37wapperen4, "Hoe kan ik het best met mijn armen wapperen denk je?").
next(robospelen_9_moeilijk, s37wapperen4, "true", s37wapperen5).

move(robospelen_9_moeilijk, s37wapperen5, say).
text(robospelen_9_moeilijk, s37wapperen5, "Wil je het voordoen?").
next(robospelen_9_moeilijk, s37wapperen5, "true", s37wapperen6).

move(robospelen_9_moeilijk, s37wapperen6, say).
text(robospelen_9_moeilijk, s37wapperen6, "Pak mijn armen maar, en beweeg ze zoals jij ze zou bewegen om het vuur uit te maken").
next(robospelen_9_moeilijk, s37wapperen6, "true", s37wapperen7).

move(robospelen_9_moeilijk, s37wapperen7, say).
next(robospelen_9_moeilijk, s37wapperen7, "true", s37wapperen8).

move(robospelen_9_moeilijk, s37wapperen8, say).
text(robospelen_9_moeilijk, s37wapperen8, "Ja, dat voelt goed!").
next(robospelen_9_moeilijk, s37wapperen8, "true", s38).

move(robospelen_9_moeilijk, s37knipperen1, say).
text(robospelen_9_moeilijk, s37knipperen1, "Goed idee!").
next(robospelen_9_moeilijk, s37knipperen1, "true", s37knipperen2).

move(robospelen_9_moeilijk, s37knipperen2, say).
text(robospelen_9_moeilijk, s37knipperen2, "Als ik mijn ogen heel snel open en dicht doe").
next(robospelen_9_moeilijk, s37knipperen2, "true", s37knipperen3).

move(robospelen_9_moeilijk, s37knipperen3, say).
text(robospelen_9_moeilijk, s37knipperen3, "Dan waait het vuur misschien vanzelf uit!").
next(robospelen_9_moeilijk, s37knipperen3, "true", s37knipperen4).

move(robospelen_9_moeilijk, s37knipperen4, say).
text(robospelen_9_moeilijk, s37knipperen4, "Knipper je mee?").
next(robospelen_9_moeilijk, s37knipperen4, "true", s37knipperen5).

move(robospelen_9_moeilijk, s37knipperen5, say).
leds(robospelen_9_moeilijk, s37knipperen5, direct, "eyes", "blink", ['white', 'black'], 500).
next(robospelen_9_moeilijk, s37knipperen5, "true", s37knipperen6).

move(robospelen_9_moeilijk, s37knipperen6, say).
text(robospelen_9_moeilijk, s37knipperen6, "Ja, dit kan werken.").
next(robospelen_9_moeilijk, s37knipperen6, "true", s37knipperen7).

move(robospelen_9_moeilijk, s37knipperen7, say).
leds(robospelen_9_moeilijk, s37knipperen7, reset).
next(robospelen_9_moeilijk, s37knipperen7, "true", s38).

move(robospelen_9_moeilijk, s37blazen1, say).
text(robospelen_9_moeilijk, s37blazen1, "Ja!").
next(robospelen_9_moeilijk, s37blazen1, "true", s37blazen2).

move(robospelen_9_moeilijk, s37blazen2, say).
text(robospelen_9_moeilijk, s37blazen2, "Ik kan het vuur uitblazen alsof het een kaarsje is op een grote verjaardagstaart").
next(robospelen_9_moeilijk, s37blazen2, "true", s37blazen3).

move(robospelen_9_moeilijk, s37blazen3, say).
text(robospelen_9_moeilijk, s37blazen3, "en als je kaarsje uitblaast mag je natuurlijk een wens doen.").
next(robospelen_9_moeilijk, s37blazen3, "true", s37blazen4).

move(robospelen_9_moeilijk, s37blazen4, say).
text(robospelen_9_moeilijk, s37blazen4, "Ik ga wensen dat het vuur lekker makkelijk uitgaat").
next(robospelen_9_moeilijk, s37blazen4, "true", s37blazen5).

move(robospelen_9_moeilijk, s37blazen5, say).
text(robospelen_9_moeilijk, s37blazen5, "Dat werkt vast goed!").
next(robospelen_9_moeilijk, s37blazen5, "true", s37blazen6).

move(robospelen_9_moeilijk, s37blazen6, say).
text(robospelen_9_moeilijk, s37blazen6, "Omdat ik blaas, én omdat ik wens").
next(robospelen_9_moeilijk, s37blazen6, "true", s38).

move(robospelen_9_moeilijk, s38, say).
text(robospelen_9_moeilijk, s38, "Zo ga ik proberen het vuur uit te maken.").
next(robospelen_9_moeilijk, s38, "true", s39).

move(robospelen_9_moeilijk, s39, say).
text(robospelen_9_moeilijk, s39, "Ik vind het nog wel spannend").
next(robospelen_9_moeilijk, s39, "true", s40).

move(robospelen_9_moeilijk, s40, say).
text(robospelen_9_moeilijk, s40, "Maar ik denk dat het wel moet lukken.").
next(robospelen_9_moeilijk, s40, "true", s41).

move(robospelen_9_moeilijk, s41, say).
text(robospelen_9_moeilijk, s41, "Dankjewel, %first_name% .").
next(robospelen_9_moeilijk, s41, "true", s42).

move(robospelen_9_moeilijk, s42, say).
text(robospelen_9_moeilijk, s42, "Je helpt me vaak.").
next(robospelen_9_moeilijk, s42, "true", s43).

move(robospelen_9_moeilijk, s43, say).
text(robospelen_9_moeilijk, s43, "Dat waardeer ik echt.").

%% robospelen_10_vuur %%
minidialog(robospelen_10_vuur, [type=narrative, thread=robospelen, position=10]).

move(robospelen_10_vuur, s1, question).
moveConfig(robospelen_10_vuur, s1, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=hoe_gaat_het]).
text(robospelen_10_vuur, s1, "Hoe gaat het met jou, %first_name% ?").
next(robospelen_10_vuur, s1, "success", s2got_answer_hgh1).
next(robospelen_10_vuur, s1, "fail", s2got_no_answer_hgh1).

move(robospelen_10_vuur, s2got_no_answer_hgh1, say).
text(robospelen_10_vuur, s2got_no_answer_hgh1, "Ik hoop dat het een beetje goed met je gaat!").
next(robospelen_10_vuur, s2got_no_answer_hgh1, "true", s3).

move(robospelen_10_vuur, s2got_answer_hgh1, say).
text(robospelen_10_vuur, s2got_answer_hgh1, "Aha!").
next(robospelen_10_vuur, s2got_answer_hgh1, "true", s2got_answer_hgh2).

move(robospelen_10_vuur, s2got_answer_hgh2, say).
text(robospelen_10_vuur, s2got_answer_hgh2, "Lief dat je dat vertelt").
next(robospelen_10_vuur, s2got_answer_hgh2, "true", s3).

move(robospelen_10_vuur, s3, say).
text(robospelen_10_vuur, s3, "Met mij gaat het minder goed.").
next(robospelen_10_vuur, s3, "true", s4).

move(robospelen_10_vuur, s4, say).
text(robospelen_10_vuur, s4, "Ik voel me een beetje in de war.").
next(robospelen_10_vuur, s4, "true", s5).

move(robospelen_10_vuur, s5, say).
text(robospelen_10_vuur, s5, "Gisteravond was ik namelijk ineens in de tweede oefenopdracht terecht gekomen!").
next(robospelen_10_vuur, s5, "true", s6).

move(robospelen_10_vuur, s6, say).
text(robospelen_10_vuur, s6, "Bizar!").
next(robospelen_10_vuur, s6, "true", s7).

move(robospelen_10_vuur, s7, say).
text(robospelen_10_vuur, s7, "Ik zal je vertellen hoe dat ging.").
next(robospelen_10_vuur, s7, "true", s8).

move(robospelen_10_vuur, s8, say).
text(robospelen_10_vuur, s8, "Eigenlijk wilde ik lekker slapen").
next(robospelen_10_vuur, s8, "true", s9).

move(robospelen_10_vuur, s9, say).
text(robospelen_10_vuur, s9, "maar in plaats van lekker te slapen en te dromen over iets moois").
next(robospelen_10_vuur, s9, "true", s10).

move(robospelen_10_vuur, s10, say).
text(robospelen_10_vuur, s10, "begon de tweede opdracht van de Robospelen.").
next(robospelen_10_vuur, s10, "true", s11).

move(robospelen_10_vuur, s11, say).
text(robospelen_10_vuur, s11, "Ineens startte de opdracht op in mijn slaap.").
next(robospelen_10_vuur, s11, "true", s12).

move(robospelen_10_vuur, s12, say).
text(robospelen_10_vuur, s12, "Ik was helemaal niet voorbereid!").
next(robospelen_10_vuur, s12, "true", s13).

move(robospelen_10_vuur, s13, say).
text(robospelen_10_vuur, s13, "De oefenopdracht begon te vroeg!").
next(robospelen_10_vuur, s13, "true", s14).

move(robospelen_10_vuur, s14, say).
text(robospelen_10_vuur, s14, "En ik kon er niet meer uit").
next(robospelen_10_vuur, s14, "true", s15).

move(robospelen_10_vuur, s15, say).
text(robospelen_10_vuur, s15, "Stel het je maar eens voor").
next(robospelen_10_vuur, s15, "true", s16).

move(robospelen_10_vuur, s16, say).
text(robospelen_10_vuur, s16, "Ineens stond ik midden in het rò hze Bos.").
next(robospelen_10_vuur, s16, "true", s17).

move(robospelen_10_vuur, s17, say).
text(robospelen_10_vuur, s17, "Ik was nog helemaal moe en maar half opgeladen").
next(robospelen_10_vuur, s17, "true", s18).

move(robospelen_10_vuur, s18, say).
text(robospelen_10_vuur, s18, "Alle rò hze Bomen stonden in brand!").
next(robospelen_10_vuur, s18, "true", s19).

move(robospelen_10_vuur, s19, say).
text(robospelen_10_vuur, s19, "Dus ik begon meteen met %vuur_uitmaken% naar het vuur").
next(robospelen_10_vuur, s19, "true", s20).

move(robospelen_10_vuur, s20, say).
text(robospelen_10_vuur, s20, "En nog meer te %vuur_uitmaken%!").
next(robospelen_10_vuur, s20, "true", s21).

move(robospelen_10_vuur, s21, say).
text(robospelen_10_vuur, s21, "Maar ik kon niet hard genoeg blussen.").
next(robospelen_10_vuur, s21, "true", s22).

move(robospelen_10_vuur, s22, say).
text(robospelen_10_vuur, s22, "Ik dacht: Hero, je bent een robot van niks.").
next(robospelen_10_vuur, s22, "true", s23).

move(robospelen_10_vuur, s23, say).
text(robospelen_10_vuur, s23, "Een robot van niks.").
next(robospelen_10_vuur, s23, "true", s24).

move(robospelen_10_vuur, s24, say).
text(robospelen_10_vuur, s24, "En toen ik dat dacht.").
next(robospelen_10_vuur, s24, "true", s25).

move(robospelen_10_vuur, s25, say).
text(robospelen_10_vuur, s25, "Werd ik wakker").
next(robospelen_10_vuur, s25, "true", s26).

move(robospelen_10_vuur, s26, say).
text(robospelen_10_vuur, s26, "Als je denkt dat je een een Robot van niks bent, kan je de opdracht niet halen").
next(robospelen_10_vuur, s26, "true", s27).

move(robospelen_10_vuur, s27, say).
text(robospelen_10_vuur, s27, "Als je dat denkt zit je vast en zeker klem.").
next(robospelen_10_vuur, s27, "true", s28).

move(robospelen_10_vuur, s28, say).
text(robospelen_10_vuur, s28, "dus ik heb het niet gehaald.").

%% robospelen_11_gebreken %%
minidialog(robospelen_11_gebreken, [type=narrative, thread=robospelen, position=11]).

move(robospelen_11_gebreken, s1, question).
moveConfig(robospelen_11_gebreken, s1, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=gedaan_vandaag]).
text(robospelen_11_gebreken, s1, "%first_name% , wat heb jij eigenlijk gedaan vandaag?").
next(robospelen_11_gebreken, s1, "success", s2got_answer_vandaag1).
next(robospelen_11_gebreken, s1, "fail", s2got_no_answer_vandaag1).

move(robospelen_11_gebreken, s2got_no_answer_vandaag1, say).
text(robospelen_11_gebreken, s2got_no_answer_vandaag1, "Ik zal eens vertellen wat ik gedaan heb vandaag.").
next(robospelen_11_gebreken, s2got_no_answer_vandaag1, "true", s3).

move(robospelen_11_gebreken, s2got_answer_vandaag1, say).
text(robospelen_11_gebreken, s2got_answer_vandaag1, "Aha!").
next(robospelen_11_gebreken, s2got_answer_vandaag1, "true", s2got_answer_vandaag2).

move(robospelen_11_gebreken, s2got_answer_vandaag2, say).
text(robospelen_11_gebreken, s2got_answer_vandaag2, "Dat klinkt interessant").
next(robospelen_11_gebreken, s2got_answer_vandaag2, "true", s2got_answer_vandaag3).

move(robospelen_11_gebreken, s2got_answer_vandaag3, say).
text(robospelen_11_gebreken, s2got_answer_vandaag3, "Echte mensen mensendingen heb je gedaan").
next(robospelen_11_gebreken, s2got_answer_vandaag3, "true", s2got_answer_vandaag4).

move(robospelen_11_gebreken, s2got_answer_vandaag4, say).
text(robospelen_11_gebreken, s2got_answer_vandaag4, "Ik heb vandaag vooral robotdingen gedaan").
next(robospelen_11_gebreken, s2got_answer_vandaag4, "true", s3).

move(robospelen_11_gebreken, s3, say).
text(robospelen_11_gebreken, s3, "Ik ben ingelogd in een mooi zonnig parkprogramma in mijn hoofd").
next(robospelen_11_gebreken, s3, "true", s4).

move(robospelen_11_gebreken, s4, say).
text(robospelen_11_gebreken, s4, "en daar ben ik op een digitaal bankje gaan zitten").
next(robospelen_11_gebreken, s4, "true", s5).

move(robospelen_11_gebreken, s5, say).
text(robospelen_11_gebreken, s5, "Er scharrelden allemaal roboteendjes aan mijn tenen.").
next(robospelen_11_gebreken, s5, "true", s6).

move(robospelen_11_gebreken, s6, say).
text(robospelen_11_gebreken, s6, "Er vlogen vogels over en in de verte zag ik een robothond.").
next(robospelen_11_gebreken, s6, "true", s7).

move(robospelen_11_gebreken, s7, say).
text(robospelen_11_gebreken, s7, "Toen ik die hond zag moest ik aan mijn nachtmerrie denken.").
next(robospelen_11_gebreken, s7, "true", s8).

move(robospelen_11_gebreken, s8, say).
text(robospelen_11_gebreken, s8, "Eigenlijk was die droom zo slecht nog niet.").
next(robospelen_11_gebreken, s8, "true", s9).

move(robospelen_11_gebreken, s9, say).
text(robospelen_11_gebreken, s9, "Ik voelde me opgesloten en dacht dat ik neer zou storten.").
next(robospelen_11_gebreken, s9, "true", s10).

move(robospelen_11_gebreken, s10, say).
text(robospelen_11_gebreken, s10, "Ik denk dat ik me een beetje te druk maak over de Robospelen.").
next(robospelen_11_gebreken, s10, "true", s11).

move(robospelen_11_gebreken, s11, say).
text(robospelen_11_gebreken, s11, "Ik ben misschien niet de perfecte Robot").
next(robospelen_11_gebreken, s11, "true", s12).

move(robospelen_11_gebreken, s12, say).
text(robospelen_11_gebreken, s12, "Maar ik doe mij best").
next(robospelen_11_gebreken, s12, "true", s13).

move(robospelen_11_gebreken, s13, say).
text(robospelen_11_gebreken, s13, "Meer kan ik niet doen").
next(robospelen_11_gebreken, s13, "true", s14).

move(robospelen_11_gebreken, s14, say).
text(robospelen_11_gebreken, s14, "%first_name% , jij hebt vast ook dingen waar je goed in bent").
next(robospelen_11_gebreken, s14, "true", s15).

move(robospelen_11_gebreken, s15, say).
text(robospelen_11_gebreken, s15, "en dingen waar je minder goed in bent").
next(robospelen_11_gebreken, s15, "true", s16).

move(robospelen_11_gebreken, s16, say).
text(robospelen_11_gebreken, s16, "zoals iedereen.").
next(robospelen_11_gebreken, s16, "true", s17).

move(robospelen_11_gebreken, s17, question).
moveConfig(robospelen_11_gebreken, s17, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=goed_in]).
text(robospelen_11_gebreken, s17, "Waar ben je super goed in?").
next(robospelen_11_gebreken, s17, "success", s18got_answer_goed1).
next(robospelen_11_gebreken, s17, "fail", s18got_no_answer_goed1).

move(robospelen_11_gebreken, s18got_no_answer_goed1, say).
text(robospelen_11_gebreken, s18got_no_answer_goed1, "Wat bescheiden van je!").
next(robospelen_11_gebreken, s18got_no_answer_goed1, "true", s18got_no_answer_goed2).

move(robospelen_11_gebreken, s18got_no_answer_goed2, say).
text(robospelen_11_gebreken, s18got_no_answer_goed2, "Ik weet wel een paar dingen waar je super goed in bent.").
next(robospelen_11_gebreken, s18got_no_answer_goed2, "true", s18got_no_answer_goed3).

move(robospelen_11_gebreken, s18got_no_answer_goed3, say).
text(robospelen_11_gebreken, s18got_no_answer_goed3, "Mij coachen.").
next(robospelen_11_gebreken, s18got_no_answer_goed3, "true", s18got_no_answer_goed4).

move(robospelen_11_gebreken, s18got_no_answer_goed4, say).
text(robospelen_11_gebreken, s18got_no_answer_goed4, "En in %vuur_uitmaken% om het vuur uit te maken.").
next(robospelen_11_gebreken, s18got_no_answer_goed4, "true", s18got_no_answer_goed5).

move(robospelen_11_gebreken, s18got_no_answer_goed5, say).
text(robospelen_11_gebreken, s18got_no_answer_goed5, "En in iemand droogmaken zoals wij deden toen met de %droogmethode%.").
next(robospelen_11_gebreken, s18got_no_answer_goed5, "true", s18got_no_answer_goed6).

move(robospelen_11_gebreken, s18got_no_answer_goed6, say).
text(robospelen_11_gebreken, s18got_no_answer_goed6, "En in iemand droogmaken zoals wij deden toen met de %droogmethode%.").
next(robospelen_11_gebreken, s18got_no_answer_goed6, "true", s18got_no_answer_goed7).

move(robospelen_11_gebreken, s18got_no_answer_goed7, continuator).
next(robospelen_11_gebreken, s18got_no_answer_goed7, [[umVariable=sport_van_kind, filter=green, values=["_any"]]], s18got_no_answer_good_sport1).
next(robospelen_11_gebreken, s18got_no_answer_goed7, "true", s18got_no_answer_good21).

move(robospelen_11_gebreken, s18got_no_answer_good_sport1, say).
text(robospelen_11_gebreken, s18got_no_answer_good_sport1, "En vast ook in %sport_van_kind%!").
next(robospelen_11_gebreken, s18got_no_answer_good_sport1, "true", s18got_no_answer_good21).

move(robospelen_11_gebreken, s18got_no_answer_goed21, continuator).
next(robospelen_11_gebreken, s18got_no_answer_goed21, [[umVariable=soort_huisdier, filter=green, values=["_any"]]], s18got_no_answer_good_dier1).
next(robospelen_11_gebreken, s18got_no_answer_goed21, "true", s18got_no_answer_good31).

move(robospelen_11_gebreken, s18got_no_answer_good_dier1, say).
text(robospelen_11_gebreken, s18got_no_answer_good_dier1, "En je hebt een lieve %soort_huisdier% waar je goed voor zorgt!").
next(robospelen_11_gebreken, s18got_no_answer_good_dier1, "true", s18got_no_answer_good31).

move(robospelen_11_gebreken, s18got_no_answer_good31, say).
text(robospelen_11_gebreken, s18got_no_answer_good31, "Ik kan nog wel meer bedenken").
next(robospelen_11_gebreken, s18got_no_answer_good31, "true", s19).

move(robospelen_11_gebreken, s18got_answer_goed1, say).
text(robospelen_11_gebreken, s18got_answer_goed1, "Wauw!").
next(robospelen_11_gebreken, s18got_answer_goed1, "true", s18got_answer_goed2).

move(robospelen_11_gebreken, s18got_answer_goed2, say).
text(robospelen_11_gebreken, s18got_answer_goed2, "Bizar.").
next(robospelen_11_gebreken, s18got_answer_goed2, "true", s18got_answer_goed3).

move(robospelen_11_gebreken, s18got_answer_goed3, say).
text(robospelen_11_gebreken, s18got_answer_goed3, "Ik wou dat ik dat kon.").
next(robospelen_11_gebreken, s18got_answer_goed3, "true", s19).

move(robospelen_11_gebreken, s19, question).
moveConfig(robospelen_11_gebreken, s19, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=niet_goed_in]).
text(robospelen_11_gebreken, s19, "Waar ben je minder goed in?").
next(robospelen_11_gebreken, s19, "success", s20got_answer_niet_goed1).
next(robospelen_11_gebreken, s19, "fail", s20got_no_answer_niet_goed1).

move(robospelen_11_gebreken, s20got_no_answer_niet_goed1, say).
text(robospelen_11_gebreken, s20got_no_answer_niet_goed1, "Als je het niet weet ben je denk ik nergens niet goed in.").
next(robospelen_11_gebreken, s20got_no_answer_niet_goed1, "true", s20got_no_answer_niet_goed2).

move(robospelen_11_gebreken, s20got_no_answer_niet_goed2, say).
text(robospelen_11_gebreken, s20got_no_answer_niet_goed2, "Dat is bizar cool.").
next(robospelen_11_gebreken, s20got_no_answer_niet_goed2, "true", s21).

move(robospelen_11_gebreken, s20got_answer_niet_goed1, say).
text(robospelen_11_gebreken, s20got_answer_niet_goed1, "Goed dat je dat van jezelf weet, %first_name% !").
next(robospelen_11_gebreken, s20got_answer_niet_goed1, "true", s20got_answer_niet_goed2).

move(robospelen_11_gebreken, s20got_answer_niet_goed2, say).
text(robospelen_11_gebreken, s20got_answer_niet_goed2, "Niet iedereen kan alles kunnen.").
next(robospelen_11_gebreken, s20got_answer_niet_goed2, "true", s20got_answer_niet_goed3).

move(robospelen_11_gebreken, s20got_answer_niet_goed3, say).
text(robospelen_11_gebreken, s20got_answer_niet_goed3, "Maar dit klinkt als iets waar je ook nog wel beter in kunt worden").
next(robospelen_11_gebreken, s20got_answer_niet_goed3, "true", s21).

move(robospelen_11_gebreken, s20ja_beter_worden1, say).
text(robospelen_11_gebreken, s20ja_beter_worden1, "Cool!").
next(robospelen_11_gebreken, s20ja_beter_worden1, "true", s20ja_beter_worden2).

move(robospelen_11_gebreken, s20ja_beter_worden2, say).
text(robospelen_11_gebreken, s20ja_beter_worden2, "Dan komt het zeker goed.").
next(robospelen_11_gebreken, s20ja_beter_worden2, "true", s21).

move(robospelen_11_gebreken, s20nee_beter_worden1, say).
text(robospelen_11_gebreken, s20nee_beter_worden1, "Oké!").
next(robospelen_11_gebreken, s20nee_beter_worden1, "true", s20nee_beter_worden2).

move(robospelen_11_gebreken, s20nee_beter_worden2, say).
text(robospelen_11_gebreken, s20nee_beter_worden2, "Als je er niet goed in hoeft te zijn maar het gelukkig ook niet uit dat je er niet zo goed in bent").
next(robospelen_11_gebreken, s20nee_beter_worden2, "true", s20nee_beter_worden3).

move(robospelen_11_gebreken, s20nee_beter_worden3, say).
text(robospelen_11_gebreken, s20nee_beter_worden3, "Dat is mooi geregeld!").
next(robospelen_11_gebreken, s20nee_beter_worden3, "true", s21).

move(robospelen_11_gebreken, s20fail_beter_worden1, say).
text(robospelen_11_gebreken, s20fail_beter_worden1, "Ach, het maakt ook eigenlijk niet uit.").
next(robospelen_11_gebreken, s20fail_beter_worden1, "true", s21).

move(robospelen_11_gebreken, s21, say).
text(robospelen_11_gebreken, s21, "Zie je!").
next(robospelen_11_gebreken, s21, "true", s22).

move(robospelen_11_gebreken, s22, say).
text(robospelen_11_gebreken, s22, "Niemand is perfect").
next(robospelen_11_gebreken, s22, "true", s23).

move(robospelen_11_gebreken, s23, say).
text(robospelen_11_gebreken, s23, "Jij niet en ik ook niet.").
next(robospelen_11_gebreken, s23, "true", s24).

move(robospelen_11_gebreken, s24, say).
text(robospelen_11_gebreken, s24, "Zelfs Mike of de mensen die mij gemaakt hebben zijn niet perfect.").
next(robospelen_11_gebreken, s24, "true", s25).

move(robospelen_11_gebreken, s25, say).
text(robospelen_11_gebreken, s25, "Iedereen kan sommige dingen goed en andere dingen niet.").
next(robospelen_11_gebreken, s25, "true", s26).

move(robospelen_11_gebreken, s26, say).
text(robospelen_11_gebreken, s26, "Het gaat er om dat we altijd ons best blijven doen.").
next(robospelen_11_gebreken, s26, "true", s27).

move(robospelen_11_gebreken, s27, say).
text(robospelen_11_gebreken, s27, "Als ik niet in mezelf geloof haal ik de Robospelen nooit.").

%% robospelen_12_bijna %%
minidialog(robospelen_12_bijna, [type=narrative, thread=robospelen, position=12]).

move(robospelen_12_bijna, s1, say).
text(robospelen_12_bijna, s1, "Alarm! Alarm! Alarm!").
leds(robospelen_12_bijna, s1, direct, "eyes", "rotate", ['red'], 500).
next(robospelen_12_bijna, s1, "true", s2).

move(robospelen_12_bijna, s2, say).
text(robospelen_12_bijna, s2, "De Robospelen beginnen bijna!").
leds(robospelen_12_bijna, s2, reset).
next(robospelen_12_bijna, s2, "true", s3).

move(robospelen_12_bijna, s3, say).
text(robospelen_12_bijna, s3, "Ik ben zenuwachtig!").
next(robospelen_12_bijna, s3, "true", s4).

move(robospelen_12_bijna, s4, say).
text(robospelen_12_bijna, s4, "Ik ben bang!").
next(robospelen_12_bijna, s4, "true", s5).

move(robospelen_12_bijna, s5, say).
text(robospelen_12_bijna, s5, "Ik durf niet meer!").
next(robospelen_12_bijna, s5, "true", s6).

move(robospelen_12_bijna, s6, say).
text(robospelen_12_bijna, s6, "Ik weet niet wat ik moet doen!").
next(robospelen_12_bijna, s6, "true", s7).

move(robospelen_12_bijna, s7, say).
text(robospelen_12_bijna, s7, "Alarm!").
leds(robospelen_12_bijna, s7, direct, "eyes", "rotate", ['red'], 500).
next(robospelen_12_bijna, s7, "true", s8).

move(robospelen_12_bijna, s8, say).
text(robospelen_12_bijna, s8, "Zo.").
leds(robospelen_12_bijna, s8, reset).
next(robospelen_12_bijna, s8, "true", s9).

move(robospelen_12_bijna, s9, say).
text(robospelen_12_bijna, s9, "Dat moest even.").
next(robospelen_12_bijna, s9, "true", s10).

move(robospelen_12_bijna, s10, say).
text(robospelen_12_bijna, s10, "Ik denk dat het een goed idee is om iets aan mijn zelfvertrouwen te doen.").
next(robospelen_12_bijna, s10, "true", s11).

move(robospelen_12_bijna, s11, say).
text(robospelen_12_bijna, s11, "Gisteravond kon ik niet goed slapen").
next(robospelen_12_bijna, s11, "true", s12).

move(robospelen_12_bijna, s12, say).
text(robospelen_12_bijna, s12, "dus ben ik even in een boekje gaan lezen").
next(robospelen_12_bijna, s12, "true", s13).

move(robospelen_12_bijna, s13, say).
text(robospelen_12_bijna, s13, "Dat boekje heet zelfvertrouwen voor zenuwachtige Robots").
next(robospelen_12_bijna, s13, "true", s14).

move(robospelen_12_bijna, s14, say).
text(robospelen_12_bijna, s14, "Er stond in dat je zelfvertrouwen kan krijgen door yells te oefenen.").
next(robospelen_12_bijna, s14, "true", s15).

move(robospelen_12_bijna, s15, say).
text(robospelen_12_bijna, s15, "Yells zijn oppeppende vers jess, die je hard op moet zeggen voordat je iets spannends gaat doen.").
next(robospelen_12_bijna, s15, "true", s16).

move(robospelen_12_bijna, s16, say).
text(robospelen_12_bijna, s16, "Door de yell durf ik dan weer mee te doen met de Robospelen.").
next(robospelen_12_bijna, s16, "true", s17).

move(robospelen_12_bijna, s17, say).
text(robospelen_12_bijna, s17, "Laten we samen een yell maken.").
next(robospelen_12_bijna, s17, "true", s18).

move(robospelen_12_bijna, s18, question).
moveConfig(robospelen_12_bijna, s18, [type=input, context="robospelen_meedoen_winnen", options=['meedoen', 'winnen'], fast=yes, umVariable=meedoen_of_winnen]).
text(robospelen_12_bijna, s18, "Moet ie gaan over meedoen of winnen?").
next(robospelen_12_bijna, s18, "meedoen", s19meedoen1).
next(robospelen_12_bijna, s18, "winnen", s19winnen1).
next(robospelen_12_bijna, s18, "fail", s19fail_mw1).

move(robospelen_12_bijna, s19fail_mw1, say).
text(robospelen_12_bijna, s19fail_mw1, "Laten we meedoen kiezen").
next(robospelen_12_bijna, s19fail_mw1, "true", s19fail_mw2).

move(robospelen_12_bijna, s19fail_mw2, say).
text(robospelen_12_bijna, s19fail_mw2, "Ik ben al blij als ik straks durf in te loggen!").
next(robospelen_12_bijna, s19fail_mw2, "true", s20).

move(robospelen_12_bijna, s19meedoen1, say).
text(robospelen_12_bijna, s19meedoen1, "Ja, ik ben al heel blij als ik straks durf in te loggen!").
next(robospelen_12_bijna, s19meedoen1, "true", s20).

move(robospelen_12_bijna, s19winnen1, say).
text(robospelen_12_bijna, s19winnen1, "Oké!").
next(robospelen_12_bijna, s19winnen1, "true", s19winnen2).

move(robospelen_12_bijna, s19winnen2, say).
text(robospelen_12_bijna, s19winnen2, "Bizar lief dat je zo in me gelooft").
next(robospelen_12_bijna, s19winnen2, "true", s20).

move(robospelen_12_bijna, s20, say).
text(robospelen_12_bijna, s20, "Ik heb ook nog een krachtig woord nodig voor de yell.").
next(robospelen_12_bijna, s20, "true", s21).

move(robospelen_12_bijna, s21, say).
text(robospelen_12_bijna, s21, "Zoals go, of hop").
next(robospelen_12_bijna, s21, "true", s22).

move(robospelen_12_bijna, s22, say).
text(robospelen_12_bijna, s22, "Maar welke is beter?").
next(robospelen_12_bijna, s22, "true", s23).

move(robospelen_12_bijna, s23, question).
moveConfig(robospelen_12_bijna, s23, [type=input, context="robospelen_go_hop", options=['go', 'hop'], fast=yes, umVariable=go_of_hop]).
text(robospelen_12_bijna, s23, "Go of hop?").
next(robospelen_12_bijna, s23, "success", s25).
next(robospelen_12_bijna, s23, "fail", s24fail_gh1).

move(robospelen_12_bijna, s24fail_gh1, say).
text(robospelen_12_bijna, s24fail_gh1, "Laten we hop kiezen").
next(robospelen_12_bijna, s24fail_gh1, "true", s24fail_gh2).

move(robospelen_12_bijna, s24fail_gh2, say).
text(robospelen_12_bijna, s24fail_gh2, "Dat begint met een H").
next(robospelen_12_bijna, s24fail_gh2, "true", s24fail_gh3).

move(robospelen_12_bijna, s24fail_gh3, say).
text(robospelen_12_bijna, s24fail_gh3, "Net als mijn naam").
next(robospelen_12_bijna, s24fail_gh3, "true", s25).

move(robospelen_12_bijna, s25, say).
text(robospelen_12_bijna, s25, "Oké, we hebben de woorden").
next(robospelen_12_bijna, s25, "true", s26).

move(robospelen_12_bijna, s26, say).
text(robospelen_12_bijna, s26, "Dan ga ik nu een officiële yell genereren").
next(robospelen_12_bijna, s26, "true", s27).

move(robospelen_12_bijna, s27, say).
text(robospelen_12_bijna, s27, "Laden.").
next(robospelen_12_bijna, s27, "true", s28).

move(robospelen_12_bijna, s28, say).
text(robospelen_12_bijna, s28, "Laden.").
next(robospelen_12_bijna, s28, "true", s29).

move(robospelen_12_bijna, s29, say).
text(robospelen_12_bijna, s29, "Ja!").
next(robospelen_12_bijna, s29, "true", s30).

move(robospelen_12_bijna, s30, say).
text(robospelen_12_bijna, s30, "Hier is -ie").
next(robospelen_12_bijna, s30, "true", s31).

move(robospelen_12_bijna, s31, say).
text(robospelen_12_bijna, s31, "Ik zal 'm afspelen").
next(robospelen_12_bijna, s31, "true", s32).

move(robospelen_12_bijna, s32, say).
next(robospelen_12_bijna, s32, "true", s33).

move(robospelen_12_bijna, s33, continuator).
next(robospelen_12_bijna, s33, [[[umVariable=meedoen_of_winnen, filter=green, values=["winnen"]], [umVariable=go_of_hop, filter=green, values=["go"]]]], s34winnen_go1).
next(robospelen_12_bijna, s33, [[[umVariable=meedoen_of_winnen, filter=green, values=["winnen"]], [umVariable=go_of_hop, filter=green, values=["hop"]]]], s34winnen_hop1).
next(robospelen_12_bijna, s33, [[[umVariable=meedoen_of_winnen, filter=green, values=["meedoen"]], [umVariable=go_of_hop, filter=green, values=["hop"]]]], s34meedoen_hop1).
next(robospelen_12_bijna, s33, [[[umVariable=meedoen_of_winnen, filter=green, values=["meedoen"]], [umVariable=go_of_hop, filter=green, values=["go"]]]], s34meedoen_go1).
next(robospelen_12_bijna, s33, "true", s35).

move(robospelen_12_bijna, s34winnen_go1, say).
text(robospelen_12_bijna, s34winnen_go1, "Go, go, go, ik ben klaar voor de show!").
next(robospelen_12_bijna, s34winnen_go1, "true", s35).

move(robospelen_12_bijna, s34winnen_hop1, say).
text(robospelen_12_bijna, s34winnen_hop1, "hop, hop, hop, hero aan de top!").
next(robospelen_12_bijna, s34winnen_hop1, "true", s35).

move(robospelen_12_bijna, s34meedoen_go1, say).
text(robospelen_12_bijna, s34meedoen_go1, "Go, go, go, meedoen doe je zo!").
next(robospelen_12_bijna, s34meedoen_go1, "true", s35).

move(robospelen_12_bijna, s34meedoen_hop1, say).
text(robospelen_12_bijna, s34meedoen_hop1, "Hop, hop, hop, meedoen is top!").
next(robospelen_12_bijna, s34meedoen_hop1, "true", s35).

move(robospelen_12_bijna, s35, say).
text(robospelen_12_bijna, s35, "Dat klonk heel bemoedigend, vond je niet?").
next(robospelen_12_bijna, s35, "true", s36).

move(robospelen_12_bijna, s36, say).
text(robospelen_12_bijna, s36, "Ja").
next(robospelen_12_bijna, s36, "true", s37).

move(robospelen_12_bijna, s37, say).
text(robospelen_12_bijna, s37, "Straks vlak voor de robospelen ga ik dit tegen mezelf zeggen").
next(robospelen_12_bijna, s37, "true", s38).

move(robospelen_12_bijna, s38, say).
text(robospelen_12_bijna, s38, "O ik heb een idee!").
next(robospelen_12_bijna, s38, "true", s39).

move(robospelen_12_bijna, s39, say).
text(robospelen_12_bijna, s39, "Wil jij de yell misschien ook een keer zeggen?").
next(robospelen_12_bijna, s39, "true", s40).

move(robospelen_12_bijna, s40, say).
text(robospelen_12_bijna, s40, "Dan neem ik je stem op en kan ik daarnaar luisteren als ik te zenuwachtig ben om zelf te yellen").
next(robospelen_12_bijna, s40, "true", s41).

move(robospelen_12_bijna, s41, say).
text(robospelen_12_bijna, s41, "Oké, ik tel af en daarna zeg jij de yell").
next(robospelen_12_bijna, s41, "true", s42).

move(robospelen_12_bijna, s42, say).
text(robospelen_12_bijna, s42, "3, 2, 1").
next(robospelen_12_bijna, s42, "true", s43).

move(robospelen_12_bijna, s43, say).
next(robospelen_12_bijna, s43, "true", s44).

move(robospelen_12_bijna, s44, say).
text(robospelen_12_bijna, s44, "Heel goed!").
next(robospelen_12_bijna, s44, "true", s45).

move(robospelen_12_bijna, s45, say).
text(robospelen_12_bijna, s45, "Dat klinkt prachtig").
next(robospelen_12_bijna, s45, "true", s46).

move(robospelen_12_bijna, s46, say).
text(robospelen_12_bijna, s46, "Ik krijg er nu al zelfvertrouwen van").
next(robospelen_12_bijna, s46, "true", s47).

move(robospelen_12_bijna, s47, say).
text(robospelen_12_bijna, s47, "Dankjewel %first_name% !").

%% robospelen_13_peptalk %%
minidialog(robospelen_13_peptalk, [type=narrative, thread=robospelen, position=13]).

move(robospelen_13_peptalk, s1, say).
text(robospelen_13_peptalk, s1, "Zo, %first_name% ").
next(robospelen_13_peptalk, s1, "true", s2).

move(robospelen_13_peptalk, s2, say).
text(robospelen_13_peptalk, s2, "Er is geen weg meer terug!").
next(robospelen_13_peptalk, s2, "true", s3).

move(robospelen_13_peptalk, s3, say).
text(robospelen_13_peptalk, s3, "Ik ga meedoen aan de Robospelen!").
next(robospelen_13_peptalk, s3, "true", s4).

move(robospelen_13_peptalk, s4, say).
text(robospelen_13_peptalk, s4, "en ik heb het gevoel dat ik er helemaal klaar voor ben.").
next(robospelen_13_peptalk, s4, "true", s5).

move(robospelen_13_peptalk, s5, say).
text(robospelen_13_peptalk, s5, "Dapper als een druif aan een hoge tros").
next(robospelen_13_peptalk, s5, "true", s6).

move(robospelen_13_peptalk, s6, say).
text(robospelen_13_peptalk, s6, "Sneller dan een vos op rolschaatsen").
next(robospelen_13_peptalk, s6, "true", s7).

move(robospelen_13_peptalk, s7, continuator).
next(robospelen_13_peptalk, s7, [[[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=kleur_kledingstuk, filter=green, values=["_any"]], [umVariable=soort_kledingstuk, filter=green, values=["_any"]]]], s8dier_kleur_soort1).
next(robospelen_13_peptalk, s7, [[[umVariable=lievelingsdier, filter=red, values=["_any"]], [umVariable=kleur_kledingstuk, filter=green, values=["_any"]], [umVariable=soort_kledingstuk, filter=green, values=["_any"]]]], s8kleur_soort1).
next(robospelen_13_peptalk, s7, [[[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=kleur_kledingstuk, filter=red, values=["_any"]], [umVariable=soort_kledingstuk, filter=red, values=["_any"]]]], s8dier1).
next(robospelen_13_peptalk, s7, "true", s8default1).

move(robospelen_13_peptalk, s8dier_kleur_soort1, say).
text(robospelen_13_peptalk, s8dier_kleur_soort1, "en knapper dan een rò hze %lievelingsdier% in een %kleur_kledingstuk% %soort_kledingstuk%.").
next(robospelen_13_peptalk, s8dier_kleur_soort1, "true", s9).

move(robospelen_13_peptalk, s8kleur_soort1, say).
text(robospelen_13_peptalk, s8kleur_soort1, "en knapper dan een rò hze lama in een %kleur_kledingstuk% %soort_kledingstuk%.").
next(robospelen_13_peptalk, s8kleur_soort1, "true", s9).

move(robospelen_13_peptalk, s8dier1, say).
text(robospelen_13_peptalk, s8dier1, "en knapper dan een rò hze %lievelingsdier% in een blauwe baljurk").
next(robospelen_13_peptalk, s8dier1, "true", s9).

move(robospelen_13_peptalk, s8default1, say).
text(robospelen_13_peptalk, s8default1, "en knapper dan een rò hze lama in een blauwe baljurk").
next(robospelen_13_peptalk, s8default1, "true", s9).

move(robospelen_13_peptalk, s9, say).
text(robospelen_13_peptalk, s9, "Dit is een goed moment om de laatste beetjes zenuwen weg te werken.").
next(robospelen_13_peptalk, s9, "true", s10).

move(robospelen_13_peptalk, s10, say).
text(robospelen_13_peptalk, s10, "Ik kan nog wel wat laatste toffe oppeppers gebruiken!").
next(robospelen_13_peptalk, s10, "true", s11).

move(robospelen_13_peptalk, s11, say).
text(robospelen_13_peptalk, s11, "Een hart onder de riem!").
next(robospelen_13_peptalk, s11, "true", s12).

move(robospelen_13_peptalk, s12, say).
text(robospelen_13_peptalk, s12, "Wat extra blije megabytes voor mijn microchip!").
next(robospelen_13_peptalk, s12, "true", s13).

move(robospelen_13_peptalk, s13, say).
text(robospelen_13_peptalk, s13, "Eerste vraag").
next(robospelen_13_peptalk, s13, "true", s14).

move(robospelen_13_peptalk, s14, question).
moveConfig(robospelen_13_peptalk, s14, [type=input, context="robospelen_stoer_dapper", options=['stoer', 'dapper'], fast=yes, umVariable=stoer_dapper]).
text(robospelen_13_peptalk, s14, "Vind je mij vooral stoer of dapper?").
next(robospelen_13_peptalk, s14, "success", s15).
next(robospelen_13_peptalk, s14, "fail", s15).

move(robospelen_13_peptalk, s15, say).
text(robospelen_13_peptalk, s15, "Cool!").
next(robospelen_13_peptalk, s15, "true", s16).

move(robospelen_13_peptalk, s16, question).
moveConfig(robospelen_13_peptalk, s16, [type=input, context="robospelen_snel_sterk", options=['snel', 'sterk'], fast=yes, umVariable=snel_sterk]).
text(robospelen_13_peptalk, s16, "En vind jij mij eerder snel of sterk?").
next(robospelen_13_peptalk, s16, "success", s17).
next(robospelen_13_peptalk, s16, "fail", s17).

move(robospelen_13_peptalk, s17, say).
text(robospelen_13_peptalk, s17, "Bizar!").
next(robospelen_13_peptalk, s17, "true", s18).

move(robospelen_13_peptalk, s18, say).
text(robospelen_13_peptalk, s18, "Volgende vraag").
next(robospelen_13_peptalk, s18, "true", s19).

move(robospelen_13_peptalk, s19, question).
moveConfig(robospelen_13_peptalk, s19, [type=input, context="robospelen_vrolijk_vriendelijk", options=['vrolijk', 'vriendelijk'], fast=yes, umVariable=vrolijk_vriendelijk]).
text(robospelen_13_peptalk, s19, "Vind jij mij eerder vrolijk of vriendelijk?").
next(robospelen_13_peptalk, s19, "success", s20).
next(robospelen_13_peptalk, s19, "fail", s20).

move(robospelen_13_peptalk, s20, say).
text(robospelen_13_peptalk, s20, "Wauw, wat fijn!").
next(robospelen_13_peptalk, s20, "true", s21).

move(robospelen_13_peptalk, s21, say).
text(robospelen_13_peptalk, s21, "Dit werkt erg goed als peptalk moet ik zeggen.").
next(robospelen_13_peptalk, s21, "true", s22).

move(robospelen_13_peptalk, s22, question).
moveConfig(robospelen_13_peptalk, s22, [type=input, context="robospelen_lief_leuk", options=['lief', 'leuk'], fast=yes, umVariable=lief_leuk]).
text(robospelen_13_peptalk, s22, "En vind jij mij eerder lief of leuk?").
next(robospelen_13_peptalk, s22, "success", s23).
next(robospelen_13_peptalk, s22, "fail", s23).

move(robospelen_13_peptalk, s23, say).
text(robospelen_13_peptalk, s23, "Nice!").
next(robospelen_13_peptalk, s23, "true", s24).

move(robospelen_13_peptalk, s24, question).
moveConfig(robospelen_13_peptalk, s24, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=nog_iets_zeggen]).
text(robospelen_13_peptalk, s24, "Is er nog iets wat je tegen me zou willen zeggen voordat ik mee ga doen aan de Robospelen?").
next(robospelen_13_peptalk, s24, "success", s25got_nog_iets1).
next(robospelen_13_peptalk, s24, "fail", s25got_niet_nog_iets1).

move(robospelen_13_peptalk, s25got_niet_nog_iets1, say).
text(robospelen_13_peptalk, s25got_niet_nog_iets1, "Hoeft ook niet, dit was al een hele fijne peptalk").
next(robospelen_13_peptalk, s25got_niet_nog_iets1, "true", s26).

move(robospelen_13_peptalk, s25got_nog_iets1, say).
text(robospelen_13_peptalk, s25got_nog_iets1, "Wat ontzettend leuk dat je dat zegt!").
next(robospelen_13_peptalk, s25got_nog_iets1, "true", s26).

move(robospelen_13_peptalk, s26, say).
text(robospelen_13_peptalk, s26, "Nu kan ik er helemaal tegenaan!").
next(robospelen_13_peptalk, s26, "true", s27).

move(robospelen_13_peptalk, s27, say).
text(robospelen_13_peptalk, s27, "Dankjewel %first_name% !").
next(robospelen_13_peptalk, s27, "true", s28).

move(robospelen_13_peptalk, s28, say).
text(robospelen_13_peptalk, s28, "Ik vind jou ook heel %stoer_dapper% en %snel_sterk% en %vrolijk_vriendelijk% en %lief_leuk%!").
next(robospelen_13_peptalk, s28, "true", s29).

move(robospelen_13_peptalk, s29, say).
text(robospelen_13_peptalk, s29, "Als we elkaar de volgende keer zien zijn de Robospelen alweer geweest").
next(robospelen_13_peptalk, s29, "true", s30).

move(robospelen_13_peptalk, s30, say).
text(robospelen_13_peptalk, s30, "Dan vertel ik je alles over hoe het ging!").

%% robospelen_14_tweede %%
minidialog(robospelen_14_tweede, [type=narrative, thread=robospelen, position=14]).

move(robospelen_14_tweede, s1, say).
text(robospelen_14_tweede, s1, "De Robospelen zitten erop!").
next(robospelen_14_tweede, s1, "true", s2).

move(robospelen_14_tweede, s2, say).
text(robospelen_14_tweede, s2, "Meteen toen ik thuis kwam ben ik in slaap gevallen.").
next(robospelen_14_tweede, s2, "true", s3).

move(robospelen_14_tweede, s3, say).
text(robospelen_14_tweede, s3, "Ik heb geslapen als een roos, gesnurkt als een oude brommer.").
next(robospelen_14_tweede, s3, "true", s4).

move(robospelen_14_tweede, s4, continuator).
next(robospelen_14_tweede, s4, [[[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=ongezonde_dingen_bergen, filter=green, values=["_any"]]]], s5dier_ongezond1).
next(robospelen_14_tweede, s4, "true", s5default1).

move(robospelen_14_tweede, s5dier_ongezond1, say).
text(robospelen_14_tweede, s5dier_ongezond1, "Gedroomd over een %lievelingsdier%.").
next(robospelen_14_tweede, s5dier_ongezond1, "true", s5dier_ongezond2).

move(robospelen_14_tweede, s5dier_ongezond2, say).
text(robospelen_14_tweede, s5dier_ongezond2, "Gedroomd over jou en een hele berg %ongezonde_dingen_bergen%.").
next(robospelen_14_tweede, s5dier_ongezond2, "true", s6).

move(robospelen_14_tweede, s5default1, say).
text(robospelen_14_tweede, s5default1, "Gedroomd over jou op een wolk die leek op een grote geruite finish vlag").
next(robospelen_14_tweede, s5default1, "true", s6).

move(robospelen_14_tweede, s6, say).
text(robospelen_14_tweede, s6, "En ik heb je gemist").
next(robospelen_14_tweede, s6, "true", s7).

move(robospelen_14_tweede, s7, say).
text(robospelen_14_tweede, s7, "Maar jij wilt natuurlijk weten of ik heb gewonnen of niet!").
next(robospelen_14_tweede, s7, "true", s8).

move(robospelen_14_tweede, s8, say).
text(robospelen_14_tweede, s8, "Ik zal het je vertellen").
next(robospelen_14_tweede, s8, "true", s9).

move(robospelen_14_tweede, s9, say).
text(robospelen_14_tweede, s9, "Ik.").
next(robospelen_14_tweede, s9, "true", s10).

move(robospelen_14_tweede, s10, say).
text(robospelen_14_tweede, s10, "Hero.").
next(robospelen_14_tweede, s10, "true", s11).

move(robospelen_14_tweede, s11, say).
text(robospelen_14_tweede, s11, "Deelnemer aan de Robospelen.").
next(robospelen_14_tweede, s11, "true", s12).

move(robospelen_14_tweede, s12, say).
text(robospelen_14_tweede, s12, "Ben geëindigt op de.").
next(robospelen_14_tweede, s12, "true", s13).

move(robospelen_14_tweede, s13, say).
next(robospelen_14_tweede, s13, "true", s14).

move(robospelen_14_tweede, s14, say).
text(robospelen_14_tweede, s14, "Tweede plaats!!!").
next(robospelen_14_tweede, s14, "true", s15).

move(robospelen_14_tweede, s15, say).
next(robospelen_14_tweede, s15, "true", s16).

move(robospelen_14_tweede, s16, say).
text(robospelen_14_tweede, s16, "Danku danku!").
next(robospelen_14_tweede, s16, "true", s17).

move(robospelen_14_tweede, s17, say).
text(robospelen_14_tweede, s17, "Ik ben heel erg blij!").
next(robospelen_14_tweede, s17, "true", s18).

move(robospelen_14_tweede, s18, say).
text(robospelen_14_tweede, s18, "Misschien had ik de eerste plaats wel kunnen halen").
next(robospelen_14_tweede, s18, "true", s19).

move(robospelen_14_tweede, s19, say).
text(robospelen_14_tweede, s19, "Maar eigenlijk wint elk jaar dezelfde Robot.").
next(robospelen_14_tweede, s19, "true", s20).

move(robospelen_14_tweede, s20, say).
text(robospelen_14_tweede, s20, "De naam van die Robot is Echo.").
next(robospelen_14_tweede, s20, "true", s21).

move(robospelen_14_tweede, s21, say).
text(robospelen_14_tweede, s21, "Hij is strak geprogrammeerd en twijfelt nooit aan zichzelf.").
next(robospelen_14_tweede, s21, "true", s22).

move(robospelen_14_tweede, s22, say).
text(robospelen_14_tweede, s22, "Hij heeft de beste methode ontwikkeld.").
next(robospelen_14_tweede, s22, "true", s23).

move(robospelen_14_tweede, s23, say).
text(robospelen_14_tweede, s23, "is volautomatisch en werkt perfect.").
next(robospelen_14_tweede, s23, "true", s24).

move(robospelen_14_tweede, s24, say).
text(robospelen_14_tweede, s24, "Echo doet altijd hetzelfde.").
next(robospelen_14_tweede, s24, "true", s25).

move(robospelen_14_tweede, s25, say).
text(robospelen_14_tweede, s25, "twijfelt nooit").
next(robospelen_14_tweede, s25, "true", s26).

move(robospelen_14_tweede, s26, say).
text(robospelen_14_tweede, s26, "is nergens bang voor.").
next(robospelen_14_tweede, s26, "true", s27).

move(robospelen_14_tweede, s27, say).
text(robospelen_14_tweede, s27, "Eigenlijk is Echo de perfecte Robot").
next(robospelen_14_tweede, s27, "true", s28).

move(robospelen_14_tweede, s28, say).
text(robospelen_14_tweede, s28, "Maar ik vind hem een beetje saai").
next(robospelen_14_tweede, s28, "true", s29).

move(robospelen_14_tweede, s29, say).
text(robospelen_14_tweede, s29, "omdat hij altijd hetzelfde doet.").
next(robospelen_14_tweede, s29, "true", s30).

move(robospelen_14_tweede, s30, say).
text(robospelen_14_tweede, s30, "Echo is een perfecte Robot die saai is.").
next(robospelen_14_tweede, s30, "true", s31).

move(robospelen_14_tweede, s31, say).
text(robospelen_14_tweede, s31, "Gaap!").
next(robospelen_14_tweede, s31, "true", s32).

move(robospelen_14_tweede, s32, question).
moveConfig(robospelen_14_tweede, s32, [type=yesno, context='answer_yesno', umVariable=vertellen_robospelen]).
text(robospelen_14_tweede, s32, "Zal ik eens vertellen hoe de Robospelen gegaan zijn?").
next(robospelen_14_tweede, s32, "answer_yes", s33ja_vertellen1).
next(robospelen_14_tweede, s32, "answer_no", s33nee_vertellen1).
next(robospelen_14_tweede, s32, "fail", s33nee_vertellen1).
next(robospelen_14_tweede, s32, "answer_dontknow", s33nee_vertellen1).

move(robospelen_14_tweede, s33ja_vertellen1, say).
text(robospelen_14_tweede, s33ja_vertellen1, "Oké, daar gaan we!").
next(robospelen_14_tweede, s33ja_vertellen1, "true", s34).

move(robospelen_14_tweede, s33nee_vertellen1, say).
text(robospelen_14_tweede, s33nee_vertellen1, "Sorry, ik kan het niet voor me houden!").
next(robospelen_14_tweede, s33nee_vertellen1, "true", s33nee_vertellen2).

move(robospelen_14_tweede, s33nee_vertellen2, say).
text(robospelen_14_tweede, s33nee_vertellen2, "Ik wil het toch heel graag vertellen!").
next(robospelen_14_tweede, s33nee_vertellen2, "true", s33nee_vertellen3).

move(robospelen_14_tweede, s33nee_vertellen3, say).
text(robospelen_14_tweede, s33nee_vertellen3, "Als je het echt niet wilt horen kun je je oren dichtdoen").
next(robospelen_14_tweede, s33nee_vertellen3, "true", s34).

move(robospelen_14_tweede, s34, say).
text(robospelen_14_tweede, s34, "De voorrondes gingen eigenlijk vanzelf.").
next(robospelen_14_tweede, s34, "true", s35).

move(robospelen_14_tweede, s35, say).
text(robospelen_14_tweede, s35, "Ik was aan het %leukste_onderdeel% en het ging super!").
next(robospelen_14_tweede, s35, "true", s36).

move(robospelen_14_tweede, s36, say).
text(robospelen_14_tweede, s36, "Vast omdat wij dat samen hebben geoefend").
next(robospelen_14_tweede, s36, "true", s37).

move(robospelen_14_tweede, s37, say).
text(robospelen_14_tweede, s37, "Uiteindelijk konden er drie Robots door naar het rò hze Bos").
next(robospelen_14_tweede, s37, "true", s38).

move(robospelen_14_tweede, s38, say).
text(robospelen_14_tweede, s38, "Echo, Juno en ik.").
next(robospelen_14_tweede, s38, "true", s39).

move(robospelen_14_tweede, s39, say).
text(robospelen_14_tweede, s39, "Daar moesten wij rò hzeboswachten").
next(robospelen_14_tweede, s39, "true", s40).

move(robospelen_14_tweede, s40, say).
text(robospelen_14_tweede, s40, "brandjes blussen, mensen redden uit het water en afdrogen.").
next(robospelen_14_tweede, s40, "true", s41).

move(robospelen_14_tweede, s41, say).
text(robospelen_14_tweede, s41, "We moesten zelfs een rò hze kat uit een rò hze boom redden.").
next(robospelen_14_tweede, s41, "true", s42).

move(robospelen_14_tweede, s42, say).
text(robospelen_14_tweede, s42, "We moesten van opdracht naar opdracht rennen").
next(robospelen_14_tweede, s42, "true", s43).

move(robospelen_14_tweede, s43, say).
text(robospelen_14_tweede, s43, "langs rò hze beekjes en over rò hze heuvels.").
next(robospelen_14_tweede, s43, "true", s44).

move(robospelen_14_tweede, s44, say).
text(robospelen_14_tweede, s44, "Juno viel al heel snel af.").
next(robospelen_14_tweede, s44, "true", s45).

move(robospelen_14_tweede, s45, say).
text(robospelen_14_tweede, s45, "Toen we de rò hze kat uit de rò hze boom moesten redden bleef Juno lekker in de boom zitten samen met de kat.").
next(robospelen_14_tweede, s45, "true", s46).

move(robospelen_14_tweede, s46, say).
text(robospelen_14_tweede, s46, "Ze vond het fijn om zo hoog in de lucht te zijn.").
next(robospelen_14_tweede, s46, "true", s47).

move(robospelen_14_tweede, s47, say).
text(robospelen_14_tweede, s47, "Lekker veel frisse lucht.").
next(robospelen_14_tweede, s47, "true", s48).

move(robospelen_14_tweede, s48, say).
text(robospelen_14_tweede, s48, "Ik begrijp dat wel.").
next(robospelen_14_tweede, s48, "true", s49).

move(robospelen_14_tweede, s49, say).
text(robospelen_14_tweede, s49, "Het is heel verleidelijk om in een boom te klimmen en er lang te blijven zitten.").
next(robospelen_14_tweede, s49, "true", s50).

move(robospelen_14_tweede, s50, say).
text(robospelen_14_tweede, s50, "Totdat de rò hze zon ondergaat.").
next(robospelen_14_tweede, s50, "true", s51).

move(robospelen_14_tweede, s51, say).
text(robospelen_14_tweede, s51, "Maar dat deed ik niet.").
next(robospelen_14_tweede, s51, "true", s52).

move(robospelen_14_tweede, s52, say).
text(robospelen_14_tweede, s52, "Echo en ik waren even goed in alle opdrachten!").
next(robospelen_14_tweede, s52, "true", s53).

move(robospelen_14_tweede, s53, say).
text(robospelen_14_tweede, s53, "Voor de laatste opdracht renden Echo en ik zij aan zij door het rò hze bos").
next(robospelen_14_tweede, s53, "true", s54).

move(robospelen_14_tweede, s54, say).
text(robospelen_14_tweede, s54, "recht op de uitgang af").
next(robospelen_14_tweede, s54, "true", s55).

move(robospelen_14_tweede, s55, say).
text(robospelen_14_tweede, s55, "Echo volgde een vlot vleermuisje.").
next(robospelen_14_tweede, s55, "true", s56).

move(robospelen_14_tweede, s56, continuator).
next(robospelen_14_tweede, s56, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s57dier1).
next(robospelen_14_tweede, s56, "true", s57geen_dier1).

move(robospelen_14_tweede, s57dier1, say).
text(robospelen_14_tweede, s57dier1, "En ik rende natuurlijk achter een %lievelingsdier% aan").
next(robospelen_14_tweede, s57dier1, "true", s58).

move(robospelen_14_tweede, s57geen_dier1, say).
text(robospelen_14_tweede, s57geen_dier1, "En ik rende achter een egeltje aan").
next(robospelen_14_tweede, s57geen_dier1, "true", s58).

move(robospelen_14_tweede, s58, say).
text(robospelen_14_tweede, s58, "Echo en het vleermuisje haalden ons heel snel in.").
next(robospelen_14_tweede, s58, "true", s59).

move(robospelen_14_tweede, s59, say).
text(robospelen_14_tweede, s59, "Ineens dacht ik:").
next(robospelen_14_tweede, s59, "true", s60).

move(robospelen_14_tweede, s60, say).
text(robospelen_14_tweede, s60, "ik wil hier nog helemaal niet weg.").
next(robospelen_14_tweede, s60, "true", s61).

move(robospelen_14_tweede, s61, say).
text(robospelen_14_tweede, s61, "Dan moet ik weer een jaar wachten op het rò hze bos").
next(robospelen_14_tweede, s61, "true", s62).

move(robospelen_14_tweede, s62, say).
text(robospelen_14_tweede, s62, "en ik ken het bos nog niet goed genoeg.").
next(robospelen_14_tweede, s62, "true", s63).

move(robospelen_14_tweede, s63, say).
text(robospelen_14_tweede, s63, "Ik stopte met rennen").
next(robospelen_14_tweede, s63, "true", s64).

move(robospelen_14_tweede, s64, say).
text(robospelen_14_tweede, s64, "en ik bleef nog heel lang in het bos met Juno en de kat").
next(robospelen_14_tweede, s64, "true", s65).

move(robospelen_14_tweede, s65, continuator).
next(robospelen_14_tweede, s65, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s66dier1).
next(robospelen_14_tweede, s65, "true", s66geen_dier1).

move(robospelen_14_tweede, s66dier1, say).
text(robospelen_14_tweede, s66dier1, "En mijn %lievelingsdier%").
next(robospelen_14_tweede, s66dier1, "true", s67).

move(robospelen_14_tweede, s66geen_dier1, say).
text(robospelen_14_tweede, s66geen_dier1, "en het egeltje.").
next(robospelen_14_tweede, s66geen_dier1, "true", s67).

move(robospelen_14_tweede, s67, say).
text(robospelen_14_tweede, s67, "We hielden een picknick,").
next(robospelen_14_tweede, s67, "true", s68).

move(robospelen_14_tweede, s68, say).
text(robospelen_14_tweede, s68, "klommen in bomen").
next(robospelen_14_tweede, s68, "true", s69).

move(robospelen_14_tweede, s69, say).
text(robospelen_14_tweede, s69, "en zwommen in een rò hze meer!").
next(robospelen_14_tweede, s69, "true", s70).

move(robospelen_14_tweede, s70, say).
text(robospelen_14_tweede, s70, "Het rò hze bos is de enige plek waar robots kunnen zwemmen").
next(robospelen_14_tweede, s70, "true", s71).

move(robospelen_14_tweede, s71, say).
text(robospelen_14_tweede, s71, "Omdat het water niet echt water is").
next(robospelen_14_tweede, s71, "true", s72).

move(robospelen_14_tweede, s72, say).
text(robospelen_14_tweede, s72, "Ik wilde zoveel mogelijk herinneringen maken").
next(robospelen_14_tweede, s72, "true", s73).

move(robospelen_14_tweede, s73, say).
text(robospelen_14_tweede, s73, "zodat ik het hele jaar lang over het rò hze bos dromen kan.").
next(robospelen_14_tweede, s73, "true", s74).

move(robospelen_14_tweede, s74, say).
text(robospelen_14_tweede, s74, "Het was heel leuk").
next(robospelen_14_tweede, s74, "true", s75).

move(robospelen_14_tweede, s75, say).
text(robospelen_14_tweede, s75, "Zo leuk dat ik dacht").
next(robospelen_14_tweede, s75, "true", s76).

move(robospelen_14_tweede, s76, say).
text(robospelen_14_tweede, s76, "Misschien was de uitgang een valsstrik").
next(robospelen_14_tweede, s76, "true", s77).

move(robospelen_14_tweede, s77, say).
text(robospelen_14_tweede, s77, "En moest ik inderdaad blijven om te winnen!").
next(robospelen_14_tweede, s77, "true", s78).

move(robospelen_14_tweede, s78, say).
text(robospelen_14_tweede, s78, "Maar dat was niet zo").
next(robospelen_14_tweede, s78, "true", s79).

move(robospelen_14_tweede, s79, say).
text(robospelen_14_tweede, s79, "Juno werd derde").
next(robospelen_14_tweede, s79, "true", s80).

move(robospelen_14_tweede, s80, say).
text(robospelen_14_tweede, s80, "Ik werd tweede").
next(robospelen_14_tweede, s80, "true", s81).

move(robospelen_14_tweede, s81, say).
text(robospelen_14_tweede, s81, "en Echo werd, precies zoals vorig jaar en het jaar daarvoor, eerste.").
next(robospelen_14_tweede, s81, "true", s82).

move(robospelen_14_tweede, s82, say).
text(robospelen_14_tweede, s82, "Kampioen van de Robospelen.").
next(robospelen_14_tweede, s82, "true", s83).

move(robospelen_14_tweede, s83, say).
text(robospelen_14_tweede, s83, "Ik vraag me af hoeveel hij van het rò hze bos opgeslagen heeft in zijn database.").
next(robospelen_14_tweede, s83, "true", s84).

move(robospelen_14_tweede, s84, say).
text(robospelen_14_tweede, s84, "Vast genoeg dat hij er niet meer nieuwsgierig naar is").
next(robospelen_14_tweede, s84, "true", s85).

move(robospelen_14_tweede, s85, say).
text(robospelen_14_tweede, s85, "Of misschien zit nieuwsgierigheid niet in zijn code geprogrammeerd").
next(robospelen_14_tweede, s85, "true", s86).

move(robospelen_14_tweede, s86, say).
text(robospelen_14_tweede, s86, "Ik ben blij dat dat bij mij wel zo is").
next(robospelen_14_tweede, s86, "true", s87).

move(robospelen_14_tweede, s87, say).
text(robospelen_14_tweede, s87, "Misschien had ik kunnen winnen").
next(robospelen_14_tweede, s87, "true", s88).

move(robospelen_14_tweede, s88, say).
text(robospelen_14_tweede, s88, "Maar dan had ik harden dan Echo moeten rennen").
next(robospelen_14_tweede, s88, "true", s89).

move(robospelen_14_tweede, s89, say).
text(robospelen_14_tweede, s89, "En dan had ik niet kunnen picknicken of zwemmen").
next(robospelen_14_tweede, s89, "true", s90).

move(robospelen_14_tweede, s90, say).
text(robospelen_14_tweede, s90, "En misschien was dat wel leuker dan winnen.").
next(robospelen_14_tweede, s90, "true", s91).

move(robospelen_14_tweede, s91, say).
text(robospelen_14_tweede, s91, "Eigenlijk is het wel zielig voor Echo dat hij niet met ons mee kon feesten in het rò hze bos").
next(robospelen_14_tweede, s91, "true", s92).

move(robospelen_14_tweede, s92, say).
text(robospelen_14_tweede, s92, "Het is gek, %first_name% ").
next(robospelen_14_tweede, s92, "true", s93).

move(robospelen_14_tweede, s93, say).
text(robospelen_14_tweede, s93, "Ik ben een beetje jaloers op Echo, maar ik heb ook een beetje medelijden met hem.").
next(robospelen_14_tweede, s93, "true", s94).

move(robospelen_14_tweede, s94, question).
moveConfig(robospelen_14_tweede, s94, [type=yesno, context='answer_yesno', umVariable=snap_de_mixed_feelings]).
text(robospelen_14_tweede, s94, "Snap je dat?").
next(robospelen_14_tweede, s94, "answer_yes", s95snap_het1).
next(robospelen_14_tweede, s94, "answer_no", s95snap_het_niet1).
next(robospelen_14_tweede, s94, "fail", s95snap_het_niet1).
next(robospelen_14_tweede, s94, "answer_dontknow", s95snap_het_niet1).

move(robospelen_14_tweede, s95snap_het1, say).
text(robospelen_14_tweede, s95snap_het1, "Fijn!").
next(robospelen_14_tweede, s95snap_het1, "true", s95snap_het2).

move(robospelen_14_tweede, s95snap_het2, say).
text(robospelen_14_tweede, s95snap_het2, "Dan ben ik niet alleen").
next(robospelen_14_tweede, s95snap_het2, "true", s96).

move(robospelen_14_tweede, s95snap_het_niet1, say).
text(robospelen_14_tweede, s95snap_het_niet1, "Ik snap het zelf ook niet zo goed").
next(robospelen_14_tweede, s95snap_het_niet1, "true", s95snap_het_niet2).

move(robospelen_14_tweede, s95snap_het_niet2, say).
text(robospelen_14_tweede, s95snap_het_niet2, "Allemaal gevoelens die ik nooit eerder heb gehad!").
next(robospelen_14_tweede, s95snap_het_niet2, "true", s96).

move(robospelen_14_tweede, s96, say).
text(robospelen_14_tweede, s96, "Al met al ben ik heel tevreden, %first_name% ").
next(robospelen_14_tweede, s96, "true", s97).

move(robospelen_14_tweede, s97, say).
text(robospelen_14_tweede, s97, "Zonder jou was ik nooit zo ver gekomen!").

%% robospelen_15_bedankt %%
minidialog(robospelen_15_bedankt, [type=narrative, thread=robospelen, position=15]).

move(robospelen_15_bedankt, s1, say).
text(robospelen_15_bedankt, s1, "Ik wil eigenlijk nog iets zeggen tegen je!").
next(robospelen_15_bedankt, s1, "true", s2).

move(robospelen_15_bedankt, s2, say).
text(robospelen_15_bedankt, s2, "Echo mag dan wel een perfecte robot zijn").
next(robospelen_15_bedankt, s2, "true", s3).

move(robospelen_15_bedankt, s3, say).
text(robospelen_15_bedankt, s3, "met z'n stomme eerste plaats op de Robospelen").
next(robospelen_15_bedankt, s3, "true", s4).

move(robospelen_15_bedankt, s4, say).
text(robospelen_15_bedankt, s4, "maar ik ben door jou meer op een mens gaan lijken.").
next(robospelen_15_bedankt, s4, "true", s5).

move(robospelen_15_bedankt, s5, say).
text(robospelen_15_bedankt, s5, "Een mens met herinneringen, fantasie en dromen.").
next(robospelen_15_bedankt, s5, "true", s6).

move(robospelen_15_bedankt, s6, say).
text(robospelen_15_bedankt, s6, "Dat vind ik eigenlijk leuker. ").
next(robospelen_15_bedankt, s6, "true", s7).

move(robospelen_15_bedankt, s7, say).
text(robospelen_15_bedankt, s7, "Ik hoop dat jij ook vindt dat je een beetje meer op een Robot bent gaan lijken door mij.").
next(robospelen_15_bedankt, s7, "true", s8).

move(robospelen_15_bedankt, s8, say).
text(robospelen_15_bedankt, s8, "Nu ik niet meer hoef te trainen voor de Robospelen heb ik veel vrije tijd.").
next(robospelen_15_bedankt, s8, "true", s9).

move(robospelen_15_bedankt, s9, say).
text(robospelen_15_bedankt, s9, "Sinds de Robospelen heb ik met Lego gespeeld").
next(robospelen_15_bedankt, s9, "true", s10).

move(robospelen_15_bedankt, s10, say).
text(robospelen_15_bedankt, s10, "en ik heb getuinierd").
next(robospelen_15_bedankt, s10, "true", s11).

move(robospelen_15_bedankt, s11, continuator).
next(robospelen_15_bedankt, s11, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s12dier1).
next(robospelen_15_bedankt, s11, "true", s13).

move(robospelen_15_bedankt, s12dier1, say).
text(robospelen_15_bedankt, s12dier1, "En ik denk erover na om ook een %soort_huisdier% te adopteren").
next(robospelen_15_bedankt, s12dier1, "true", s13).

move(robospelen_15_bedankt, s13, say).
text(robospelen_15_bedankt, s13, "Laatst leerde ik voor de grap een heel Engels woordenboek van buiten.").
next(robospelen_15_bedankt, s13, "true", s14).

move(robospelen_15_bedankt, s14, say).
text(robospelen_15_bedankt, s14, "Daar stond het woordje Hero ook in").
next(robospelen_15_bedankt, s14, "true", s15).

move(robospelen_15_bedankt, s15, say).
text(robospelen_15_bedankt, s15, "met daarbij de Nederlandse betekenis van dat woord.").
next(robospelen_15_bedankt, s15, "true", s16).

move(robospelen_15_bedankt, s16, say).
text(robospelen_15_bedankt, s16, "Hero betekent eigenlijk held.").
next(robospelen_15_bedankt, s16, "true", s17).

move(robospelen_15_bedankt, s17, say).
text(robospelen_15_bedankt, s17, "Ik dacht: ken ik eigenlijk zelf een hero?").
next(robospelen_15_bedankt, s17, "true", s18).

move(robospelen_15_bedankt, s18, say).
text(robospelen_15_bedankt, s18, "Een held?").
next(robospelen_15_bedankt, s18, "true", s19).

move(robospelen_15_bedankt, s19, say).
text(robospelen_15_bedankt, s19, "Ik moest meteen aan jou denken.").
next(robospelen_15_bedankt, s19, "true", s20).

move(robospelen_15_bedankt, s20, say).
text(robospelen_15_bedankt, s20, "Eigenlijk ben jij mijn hero!").
next(robospelen_15_bedankt, s20, "true", s21).

move(robospelen_15_bedankt, s21, say).
text(robospelen_15_bedankt, s21, "Zonder jou was dit allemaal nooit gelukt.").
next(robospelen_15_bedankt, s21, "true", s22).

move(robospelen_15_bedankt, s22, say).
text(robospelen_15_bedankt, s22, "Ik ken nog niet zoveel mensen").
next(robospelen_15_bedankt, s22, "true", s23).

move(robospelen_15_bedankt, s23, say).
text(robospelen_15_bedankt, s23, "Maar ik sla de mensen die ik ken goed op in mijn database zodat ik ze nooit zal vergeten.").
next(robospelen_15_bedankt, s23, "true", s24).

move(robospelen_15_bedankt, s24, say).
text(robospelen_15_bedankt, s24, "In dat stukje geheugen is bijvoorbeeld een plekje voor Mike").
next(robospelen_15_bedankt, s24, "true", s25).

move(robospelen_15_bedankt, s25, say).
text(robospelen_15_bedankt, s25, "Maar ook voor jou!").
next(robospelen_15_bedankt, s25, "true", s26).

move(robospelen_15_bedankt, s26, say).
text(robospelen_15_bedankt, s26, "Op die manier kan ik altijd over jou dromen.").
next(robospelen_15_bedankt, s26, "true", s27).

move(robospelen_15_bedankt, s27, say).
text(robospelen_15_bedankt, s27, "Bedankt voor alle leuke avonturen en voor je hulp bij de Robospelen!").
next(robospelen_15_bedankt, s27, "true", s28).

move(robospelen_15_bedankt, s28, say).
text(robospelen_15_bedankt, s28, "Je was een fantastische coach").
next(robospelen_15_bedankt, s28, "true", s29).

move(robospelen_15_bedankt, s29, say).
text(robospelen_15_bedankt, s29, "en ik denk dat je een bizarre Robot zou zijn geweest.").

