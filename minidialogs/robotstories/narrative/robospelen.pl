%%%% HEADER %%%%
%% robospelen_1_intro %%
minidialog(robospelen_1_intro, [type=narrative, thread=robospelen, position=1]).

move(robospelen_1_intro, s1, say).
text(robospelen_1_intro, s1, "Ik ben blij dat je er bent!").
next(robospelen_1_intro, s1, "true", s2).

move(robospelen_1_intro, s2, say).
text(robospelen_1_intro, s2, "Ik vind het heel leuk om met een mens praten.").
next(robospelen_1_intro, s2, "true", s3).

move(robospelen_1_intro, s3, say).
text(robospelen_1_intro, s3, "Zo veel mensen ken ik niet.").
next(robospelen_1_intro, s3, "true", s4).

move(robospelen_1_intro, s4, say).
text(robospelen_1_intro, s4, "Jij doet vast echte mensendingen.").
next(robospelen_1_intro, s4, "true", s5).

move(robospelen_1_intro, s5, question).
moveConfig(robospelen_1_intro, s5, [type=openend, context='answer_open', inputModality=[speech=1]]).
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
text(robospelen_1_intro, s9, "Want ik mag dit jaar voor het eerst meedoen met de Robo-Spelen.").
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
next(robospelen_1_intro, s15, "true", s16).

move(robospelen_1_intro, s16, say).
text(robospelen_1_intro, s16, "En wie het best origami kan vouwen").
next(robospelen_1_intro, s16, "true", s17).

move(robospelen_1_intro, s17, say).
text(robospelen_1_intro, s17, "Wie het beleefdst is en wie de meeste mensen kan helpen oversteken.").
next(robospelen_1_intro, s17, "true", s18).

move(robospelen_1_intro, s18, say).
text(robospelen_1_intro, s18, "En wie er kan voetballen.").
next(robospelen_1_intro, s18, "true", s19).

move(robospelen_1_intro, s19, say).
next(robospelen_1_intro, s19, "true", s20).

move(robospelen_1_intro, s20, say).
text(robospelen_1_intro, s20, "Ik kan helemaal niet zo goed schoppen.").
next(robospelen_1_intro, s20, "true", s21).

move(robospelen_1_intro, s21, say).
text(robospelen_1_intro, s21, "De vorige keer dat ik het deed viel ik zo hard op mijn kont").
next(robospelen_1_intro, s21, "true", s22).

move(robospelen_1_intro, s22, say).
text(robospelen_1_intro, s22, "dat al mijn lichtjes kapot sprongen.").
next(robospelen_1_intro, s22, "true", s23).

move(robospelen_1_intro, s23, say).
next(robospelen_1_intro, s23, "true", s24).

move(robospelen_1_intro, s24, say).
text(robospelen_1_intro, s24, "Dus ik moet nog veel oefenen voor de Robo-Spelen er zijn!").
next(robospelen_1_intro, s24, "true", s25).

move(robospelen_1_intro, s25, say).
text(robospelen_1_intro, s25, "Want oefenen baart kunst.").
next(robospelen_1_intro, s25, "true", s26).

move(robospelen_1_intro, s26, say).
text(robospelen_1_intro, s26, "Dat zeggen volwassen mensen toch?").
next(robospelen_1_intro, s26, "true", s27).

move(robospelen_1_intro, s27, say).
text(robospelen_1_intro, s27, "Oefenen baart kunst.").
next(robospelen_1_intro, s27, "true", s28).

move(robospelen_1_intro, s28, say).
text(robospelen_1_intro, s28, "Ik weet niet wat dat betekent.").
next(robospelen_1_intro, s28, "true", s29).

move(robospelen_1_intro, s29, say).
text(robospelen_1_intro, s29, "Een baard zit toch op je gezicht?").
next(robospelen_1_intro, s29, "true", s30).

move(robospelen_1_intro, s30, question).
moveConfig(robospelen_1_intro, s30, [type=yesno, context='answer_yesno', umVariable=oefening_baart_kunst]).
text(robospelen_1_intro, s30, "Weet jij wat ze bedoelen?").
next(robospelen_1_intro, s30, "answer_yes", s31ja1).
next(robospelen_1_intro, s30, "answer_no", s31nee1).
next(robospelen_1_intro, s30, "answer_dontknow", s31nee1).
next(robospelen_1_intro, s30, "fail", s31nee1).

move(robospelen_1_intro, s31ja1, say).
text(robospelen_1_intro, s31ja1, "Aha! Wat ben jij toch slim.").

move(robospelen_1_intro, s31nee1, say).
text(robospelen_1_intro, s31nee1, "humhum.").
next(robospelen_1_intro, s31nee1, "true", s31nee2).

move(robospelen_1_intro, s31nee2, say).
text(robospelen_1_intro, s31nee2, "Misschien heeft het ermee te maken dat een baard heel langzaam groeit.").
next(robospelen_1_intro, s31nee2, "true", s31nee3).

move(robospelen_1_intro, s31nee3, say).
text(robospelen_1_intro, s31nee3, "Pas als je oud bent krijg je een baard.").
next(robospelen_1_intro, s31nee3, "true", s31nee4).

move(robospelen_1_intro, s31nee4, say).
text(robospelen_1_intro, s31nee4, "En zo is het ook met iets leren.").
next(robospelen_1_intro, s31nee4, "true", s31nee5).

move(robospelen_1_intro, s31nee5, say).
text(robospelen_1_intro, s31nee5, "Dat duurt heel lang, maar na een tijdje kun je het.").

%% robospelen_2_springen %%
minidialog(robospelen_2_springen, [type=narrative, thread=robospelen, position=2]).

move(robospelen_2_springen, s1, say).
text(robospelen_2_springen, s1, "he, ik heb opeens een heel goed idee!").
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
next(robospelen_2_springen, s6, "true", s7).

move(robospelen_2_springen, s7, say).
next(robospelen_2_springen, s7, "true", s8).

move(robospelen_2_springen, s8, say).
text(robospelen_2_springen, s8, "Dus ik dacht").
next(robospelen_2_springen, s8, "true", s9).

move(robospelen_2_springen, s9, say).
text(robospelen_2_springen, s9, "Misschien ben jij wel de perfecte persoon om mij te helpen met de Robo-Spelen.").
next(robospelen_2_springen, s9, "true", s10).

move(robospelen_2_springen, s10, say).
text(robospelen_2_springen, s10, "Nu ik jou ken, hoef ik niet meer alleen te trainen.").
next(robospelen_2_springen, s10, "true", s11).

move(robospelen_2_springen, s11, say).
text(robospelen_2_springen, s11, "Dan kunnen we samen allerlei oefenopdrachten proberen voor het echt zover is.").

%% robospelen_2_sport %%
minidialog(robospelen_2_sport, [type=narrative, thread=robospelen, position=2]).
dependencies(robospelen_2_sport, [[[dagdromen_sport, user_model, 0]]]).

move(robospelen_2_sport, s1, say).
text(robospelen_2_sport, s1, "he, ik heb opeens een heel goed idee!").
next(robospelen_2_sport, s1, "true", s2).

move(robospelen_2_sport, s2, question).
moveConfig(robospelen_2_sport, s2, [type=yesno, context='answer_yesno', umVariable=check_sport_van_kind]).
text(robospelen_2_sport, s2, "Jij speelt %sport_van_kind%, toch?").
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
audio(robospelen_2_sport, s3nee4, server, "resources/sounds/hero_mic_test.wav").
next(robospelen_2_sport, s3nee4, "true", s3nee5).

move(robospelen_2_sport, s3nee5, say).
text(robospelen_2_sport, s3nee5, "Zo, even testen hoor.").
next(robospelen_2_sport, s3nee5, "true", s3nee6).

move(robospelen_2_sport, s3nee6, question).
moveConfig(robospelen_2_sport, s3nee6, [type=input, context="integer", options=['vijf', 'vier', 'drie', 'twee', 'een'], umVariable=getal_0_tot_10]).
text(robospelen_2_sport, s3nee6, "Noem eens een getal tussen de nul en tien?").
next(robospelen_2_sport, s3nee6, "success", s3nee_met_getal1).
next(robospelen_2_sport, s3nee6, "fail", s3nee_zonder_getal1).

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

move(robospelen_3_coach, s7ja2, say).
text(robospelen_3_coach, s7ja2, "Ik vind je heel aardig, coach %first_name% , bedankt.").

move(robospelen_3_coach, s7nee1, question).
moveConfig(robospelen_3_coach, s7nee1, [type=openend, context='answer_open', inputModality=[speech=1]]).
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
text(robospelen_4_ingeschreven, s3, "Ik heb me ingeschreven voor de robospelen!").
next(robospelen_4_ingeschreven, s3, "true", s4).

move(robospelen_4_ingeschreven, s4, say).
text(robospelen_4_ingeschreven, s4, "Bizar!").
next(robospelen_4_ingeschreven, s4, "true", s5).

move(robospelen_4_ingeschreven, s5, say).
text(robospelen_4_ingeschreven, s5, "En weet je nog wat?").
next(robospelen_4_ingeschreven, s5, "true", s6).

move(robospelen_4_ingeschreven, s6, say).
text(robospelen_4_ingeschreven, s6, "De Robospelen zijn niet op een echte plek, maar helemaal online.").
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
next(robospelen_4_ingeschreven, s20, "true", s21).

move(robospelen_4_ingeschreven, s21, say).
text(robospelen_4_ingeschreven, s21, "Nu is het geen dagdroom meer!").
next(robospelen_4_ingeschreven, s21, "true", s22).

move(robospelen_4_ingeschreven, s22, say).
text(robospelen_4_ingeschreven, s22, "Nu is het geen fantasie meer!").
next(robospelen_4_ingeschreven, s22, "true", s23).

move(robospelen_4_ingeschreven, s23, say).
text(robospelen_4_ingeschreven, s23, "Nu is het echt!").
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
text(robospelen_5_info, s2, "Zal ik eens vertellen hoe die Robospelen er eigenlijk uitzien?").
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
text(robospelen_5_info, s18, "En soms is er dan nog een extra ronde handshaken").
next(robospelen_5_info, s18, "true", s19).

move(robospelen_5_info, s19, say).
text(robospelen_5_info, s19, "waarbij Robots elkaar omver moeten handshaken").
next(robospelen_5_info, s19, "true", s20).

move(robospelen_5_info, s20, say).
text(robospelen_5_info, s20, "met allerlei geheimzinnige handshakes.").
next(robospelen_5_info, s20, "true", s21).

move(robospelen_5_info, s21, say).
text(robospelen_5_info, s21, "Er zullen handen geschud worden, er wordt geboxt,").
next(robospelen_5_info, s21, "true", s22).

move(robospelen_5_info, s22, say).
text(robospelen_5_info, s22, "en zo nu en dan zal er een elleboog tegen een elleboog gedrukt worden.").
next(robospelen_5_info, s22, "true", s23).

move(robospelen_5_info, s23, question).
moveConfig(robospelen_5_info, s23, [type=input, context="robospelen_onderdeel", options=['handshaken', 'dansen', 'verblaffen'], umVariable=leukste_onderdeel]).
text(robospelen_5_info, s23, "Welk onderdeel vind je tot nu toe het leukst klinken?").

%% robospelen_6_info_vervolg %%
minidialog(robospelen_6_info_vervolg, [type=narrative, thread=robospelen, position=6]).

move(robospelen_6_info_vervolg, s1, say).
text(robospelen_6_info_vervolg, s1, "Oké!").
next(robospelen_6_info_vervolg, s1, "true", s2).

move(robospelen_6_info_vervolg, s2, say).
text(robospelen_6_info_vervolg, s2, "Dat was leuk.").
next(robospelen_6_info_vervolg, s2, "true", s3).

move(robospelen_6_info_vervolg, s3, say).
text(robospelen_6_info_vervolg, s3, "De robospelen hebben ook nog een halve en een hele finale.").
next(robospelen_6_info_vervolg, s3, "true", s4).

move(robospelen_6_info_vervolg, s4, say).
text(robospelen_6_info_vervolg, s4, "In de halve finale moeten alle Robots het veld op komen om een potje te superhelden tegen elkaar.").
next(robospelen_6_info_vervolg, s4, "true", s5).

move(robospelen_6_info_vervolg, s5, say).
text(robospelen_6_info_vervolg, s5, "De Finale zal bestaan uit het zogenaamde paarse Boswachten.").
next(robospelen_6_info_vervolg, s5, "true", s6).

move(robospelen_6_info_vervolg, s6, say).
text(robospelen_6_info_vervolg, s6, "Ken je het paarse Bos al?").
next(robospelen_6_info_vervolg, s6, "true", s7).

move(robospelen_6_info_vervolg, s7, say).
text(robospelen_6_info_vervolg, s7, "Daar de volgende keer iets meer over vertellen").
next(robospelen_6_info_vervolg, s7, "true", s8).

move(robospelen_6_info_vervolg, s8, say).
text(robospelen_6_info_vervolg, s8, "als ik goed genoeg geoefend heb.").

%% robospelen_7_oefenopdracht %%
minidialog(robospelen_7_oefenopdracht, [type=narrative, thread=robospelen, position=7]).
dependencies(robospelen_7_oefenopdracht, [[[lievelingsdier, user_model, 0]]]).

move(robospelen_7_oefenopdracht, s1, say).
text(robospelen_7_oefenopdracht, s1, "Hey %first_name% !").
next(robospelen_7_oefenopdracht, s1, "true", s2).

move(robospelen_7_oefenopdracht, s2, say).
text(robospelen_7_oefenopdracht, s2, "Ik heb een oefentoets gevonden").
next(robospelen_7_oefenopdracht, s2, "true", s3).

move(robospelen_7_oefenopdracht, s3, say).
text(robospelen_7_oefenopdracht, s3, "voor de eerste opdracht van de Robospelen!").
next(robospelen_7_oefenopdracht, s3, "true", s4).

move(robospelen_7_oefenopdracht, s4, say).
text(robospelen_7_oefenopdracht, s4, "Laten we die samen doen.").
next(robospelen_7_oefenopdracht, s4, "true", s5).

move(robospelen_7_oefenopdracht, s5, say).
text(robospelen_7_oefenopdracht, s5, "Even downloaden").
next(robospelen_7_oefenopdracht, s5, "true", s6).

move(robospelen_7_oefenopdracht, s6, say).
next(robospelen_7_oefenopdracht, s6, "true", s7).

move(robospelen_7_oefenopdracht, s7, say).
text(robospelen_7_oefenopdracht, s7, "Yes, binnen!").
next(robospelen_7_oefenopdracht, s7, "true", s8).

move(robospelen_7_oefenopdracht, s8, say).
text(robospelen_7_oefenopdracht, s8, "Er staat:").
next(robospelen_7_oefenopdracht, s8, "true", s9).

move(robospelen_7_oefenopdracht, s9, say).
text(robospelen_7_oefenopdracht, s9, "Opdracht 0.").
next(robospelen_7_oefenopdracht, s9, "true", s10).

move(robospelen_7_oefenopdracht, s10, say).
text(robospelen_7_oefenopdracht, s10, "Want voor robots is nul het eerste cijfer.").
next(robospelen_7_oefenopdracht, s10, "true", s11).

move(robospelen_7_oefenopdracht, s11, say).
text(robospelen_7_oefenopdracht, s11, "Dat is logisch.").
next(robospelen_7_oefenopdracht, s11, "true", s12).

move(robospelen_7_oefenopdracht, s12, say).
text(robospelen_7_oefenopdracht, s12, "0 komt voor 1.").
next(robospelen_7_oefenopdracht, s12, "true", s13).

move(robospelen_7_oefenopdracht, s13, say).
text(robospelen_7_oefenopdracht, s13, "Dus 0 is eerst").
next(robospelen_7_oefenopdracht, s13, "true", s14).

move(robospelen_7_oefenopdracht, s14, say).
text(robospelen_7_oefenopdracht, s14, "en dan is 1 tweedst").
next(robospelen_7_oefenopdracht, s14, "true", s15).

move(robospelen_7_oefenopdracht, s15, say).
text(robospelen_7_oefenopdracht, s15, "Snap je?").
next(robospelen_7_oefenopdracht, s15, "true", s16).

move(robospelen_7_oefenopdracht, s16, say).
text(robospelen_7_oefenopdracht, s16, "Sorry").
next(robospelen_7_oefenopdracht, s16, "true", s17).

move(robospelen_7_oefenopdracht, s17, say).
text(robospelen_7_oefenopdracht, s17, "Ik praat zo veel").
next(robospelen_7_oefenopdracht, s17, "true", s18).

move(robospelen_7_oefenopdracht, s18, say).
text(robospelen_7_oefenopdracht, s18, "Ik ben nerveus!").
next(robospelen_7_oefenopdracht, s18, "true", s19).

move(robospelen_7_oefenopdracht, s19, say).
text(robospelen_7_oefenopdracht, s19, "Even dansen.").
next(robospelen_7_oefenopdracht, s19, "true", s20).

move(robospelen_7_oefenopdracht, s20, say).
text(robospelen_7_oefenopdracht, s20, "Dat helpt tegen de zenuwen").
next(robospelen_7_oefenopdracht, s20, "true", s21).

move(robospelen_7_oefenopdracht, s21, say).
next(robospelen_7_oefenopdracht, s21, "true", s22).

move(robospelen_7_oefenopdracht, s22, say).
text(robospelen_7_oefenopdracht, s22, "Goed.").
next(robospelen_7_oefenopdracht, s22, "true", s23).

move(robospelen_7_oefenopdracht, s23, say).
text(robospelen_7_oefenopdracht, s23, "Dat is beter.").
next(robospelen_7_oefenopdracht, s23, "true", s24).

move(robospelen_7_oefenopdracht, s24, say).
text(robospelen_7_oefenopdracht, s24, "Nu terug naar de opdracht.").
next(robospelen_7_oefenopdracht, s24, "true", s25).

move(robospelen_7_oefenopdracht, s25, say).
text(robospelen_7_oefenopdracht, s25, "Doe je ogen dicht.").
next(robospelen_7_oefenopdracht, s25, "true", s26).

move(robospelen_7_oefenopdracht, s26, say).
text(robospelen_7_oefenopdracht, s26, "Stel je voor").
next(robospelen_7_oefenopdracht, s26, "true", s27).

move(robospelen_7_oefenopdracht, s27, say).
text(robospelen_7_oefenopdracht, s27, "Je bent in een groot bos").
next(robospelen_7_oefenopdracht, s27, "true", s28).

move(robospelen_7_oefenopdracht, s28, say).
text(robospelen_7_oefenopdracht, s28, "met allemaal lichtpaarse bomen,").
next(robospelen_7_oefenopdracht, s28, "true", s29).

move(robospelen_7_oefenopdracht, s29, say).
text(robospelen_7_oefenopdracht, s29, "met lichtpaarse blaadjes").
next(robospelen_7_oefenopdracht, s29, "true", s30).

move(robospelen_7_oefenopdracht, s30, say).
text(robospelen_7_oefenopdracht, s30, "en lichtpaarse takjes").
next(robospelen_7_oefenopdracht, s30, "true", s31).

move(robospelen_7_oefenopdracht, s31, say).
text(robospelen_7_oefenopdracht, s31, "en lichtpaarse paadjes.").
next(robospelen_7_oefenopdracht, s31, "true", s32).

move(robospelen_7_oefenopdracht, s32, say).
text(robospelen_7_oefenopdracht, s32, "Je staat op de grond").
next(robospelen_7_oefenopdracht, s32, "true", s33).

move(robospelen_7_oefenopdracht, s33, say).
text(robospelen_7_oefenopdracht, s33, "en je ziet geen mensen.").
next(robospelen_7_oefenopdracht, s33, "true", s34).

move(robospelen_7_oefenopdracht, s34, say).
text(robospelen_7_oefenopdracht, s34, "Toch moet je mensen helpen.").
next(robospelen_7_oefenopdracht, s34, "true", s35).

move(robospelen_7_oefenopdracht, s35, say).
text(robospelen_7_oefenopdracht, s35, "De klok tikt af").
next(robospelen_7_oefenopdracht, s35, "true", s36).

move(robospelen_7_oefenopdracht, s36, say).
text(robospelen_7_oefenopdracht, s36, "En de opdracht start.").
next(robospelen_7_oefenopdracht, s36, "true", s37).

move(robospelen_7_oefenopdracht, s37, say).
text(robospelen_7_oefenopdracht, s37, "Oké, weet je wat").
next(robospelen_7_oefenopdracht, s37, "true", s38).

move(robospelen_7_oefenopdracht, s38, say).
text(robospelen_7_oefenopdracht, s38, "ik projecteer het bos om ons heen.").
next(robospelen_7_oefenopdracht, s38, "true", s39).

move(robospelen_7_oefenopdracht, s39, say).
text(robospelen_7_oefenopdracht, s39, "Doe je ogen maar dicht.").
next(robospelen_7_oefenopdracht, s39, "true", s40).

move(robospelen_7_oefenopdracht, s40, say).
text(robospelen_7_oefenopdracht, s40, "Als je jouw ogen weer open doet").
next(robospelen_7_oefenopdracht, s40, "true", s41).

move(robospelen_7_oefenopdracht, s41, say).
text(robospelen_7_oefenopdracht, s41, "zijn we in het paarse bos.").
next(robospelen_7_oefenopdracht, s41, "true", s42).

move(robospelen_7_oefenopdracht, s42, say).
text(robospelen_7_oefenopdracht, s42, "Komt ie hè.").
next(robospelen_7_oefenopdracht, s42, "true", s43).

move(robospelen_7_oefenopdracht, s43, say).
next(robospelen_7_oefenopdracht, s43, "true", s44).

move(robospelen_7_oefenopdracht, s44, say).
text(robospelen_7_oefenopdracht, s44, "Zo!").
next(robospelen_7_oefenopdracht, s44, "true", s45).

move(robospelen_7_oefenopdracht, s45, say).
next(robospelen_7_oefenopdracht, s45, "true", s46).

move(robospelen_7_oefenopdracht, s46, say).
text(robospelen_7_oefenopdracht, s46, "Oh, wat mooi.").
next(robospelen_7_oefenopdracht, s46, "true", s47).

move(robospelen_7_oefenopdracht, s47, question).
moveConfig(robospelen_7_oefenopdracht, s47, [type=yesno, context='answer_yesno', umVariable=zie_jij_het_ook]).
text(robospelen_7_oefenopdracht, s47, "Zie jij het ook?").
next(robospelen_7_oefenopdracht, s47, "answer_yes", s48zie_het1).
next(robospelen_7_oefenopdracht, s47, "answer_no", s48zie_het_niet1).
next(robospelen_7_oefenopdracht, s47, "answer_dontknow", s48zie_het_niet1).
next(robospelen_7_oefenopdracht, s47, "fail", s48zie_het_niet1).

move(robospelen_7_oefenopdracht, s48zie_het1, say).
text(robospelen_7_oefenopdracht, s48zie_het1, "Goed hè.").
next(robospelen_7_oefenopdracht, s48zie_het1, "true", s48zie_het2).

move(robospelen_7_oefenopdracht, s48zie_het2, say).
text(robospelen_7_oefenopdracht, s48zie_het2, "Kijk").
next(robospelen_7_oefenopdracht, s48zie_het2, "true", s48zie_het3).

move(robospelen_7_oefenopdracht, s48zie_het3, say).
text(robospelen_7_oefenopdracht, s48zie_het3, "daar tussen de bladeren vliegt een paarse vogel!").
next(robospelen_7_oefenopdracht, s48zie_het3, "true", s49).

move(robospelen_7_oefenopdracht, s48zie_het_niet1, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet1, "Ohja").
next(robospelen_7_oefenopdracht, s48zie_het_niet1, "true", s48zie_het_niet2).

move(robospelen_7_oefenopdracht, s48zie_het_niet2, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet2, "de projectiecode werkt natuurlijk alleen voor robotogen").
next(robospelen_7_oefenopdracht, s48zie_het_niet2, "true", s48zie_het_niet3).

move(robospelen_7_oefenopdracht, s48zie_het_niet3, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet3, "Misschien kan jij je fantasie gebruiken.").
next(robospelen_7_oefenopdracht, s48zie_het_niet3, "true", s48zie_het_niet4).

move(robospelen_7_oefenopdracht, s48zie_het_niet4, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet4, "Ik las dat mensen dat konden.").
next(robospelen_7_oefenopdracht, s48zie_het_niet4, "true", s48zie_het_niet5).

move(robospelen_7_oefenopdracht, s48zie_het_niet5, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet5, "We staan op een pad").
next(robospelen_7_oefenopdracht, s48zie_het_niet5, "true", s48zie_het_niet6).

move(robospelen_7_oefenopdracht, s48zie_het_niet6, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet6, "met allemaal van de bomen afgevallen blaadjes.").
next(robospelen_7_oefenopdracht, s48zie_het_niet6, "true", s48zie_het_niet7).

move(robospelen_7_oefenopdracht, s48zie_het_niet7, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet7, "Ze zijn een beetje nattig").
next(robospelen_7_oefenopdracht, s48zie_het_niet7, "true", s48zie_het_niet8).

move(robospelen_7_oefenopdracht, s48zie_het_niet8, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet8, "en alles is paarse!").
next(robospelen_7_oefenopdracht, s48zie_het_niet8, "true", s48zie_het_niet9).

move(robospelen_7_oefenopdracht, s48zie_het_niet9, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet9, "Zelfs de modder op je schoenen is paarse.").
next(robospelen_7_oefenopdracht, s48zie_het_niet9, "true", s48zie_het_niet10).

move(robospelen_7_oefenopdracht, s48zie_het_niet10, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet10, "En de mieren zijn paarse").
next(robospelen_7_oefenopdracht, s48zie_het_niet10, "true", s48zie_het_niet11).

move(robospelen_7_oefenopdracht, s48zie_het_niet11, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet11, "en de stammen van de bomen").
next(robospelen_7_oefenopdracht, s48zie_het_niet11, "true", s48zie_het_niet12).

move(robospelen_7_oefenopdracht, s48zie_het_niet12, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet12, "En kijk, hier!").
next(robospelen_7_oefenopdracht, s48zie_het_niet12, "true", s48zie_het_niet13).

move(robospelen_7_oefenopdracht, s48zie_het_niet13, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet13, "Tussen ons in vliegt een klein paarse insect.").
next(robospelen_7_oefenopdracht, s48zie_het_niet13, "true", s48zie_het_niet14).

move(robospelen_7_oefenopdracht, s48zie_het_niet14, say).
text(robospelen_7_oefenopdracht, s48zie_het_niet14, "Wat mooi.").
next(robospelen_7_oefenopdracht, s48zie_het_niet14, "true", s49).

move(robospelen_7_oefenopdracht, s49, say).
text(robospelen_7_oefenopdracht, s49, "Oké.").
next(robospelen_7_oefenopdracht, s49, "true", s50).

move(robospelen_7_oefenopdracht, s50, say).
text(robospelen_7_oefenopdracht, s50, "In deze oefenopdracht moet ik mensen helpen").
next(robospelen_7_oefenopdracht, s50, "true", s51).

move(robospelen_7_oefenopdracht, s51, say).
text(robospelen_7_oefenopdracht, s51, "Maar ik zie helemaal geen mensen in dit paarse bos!").
next(robospelen_7_oefenopdracht, s51, "true", s52).

move(robospelen_7_oefenopdracht, s52, say).
text(robospelen_7_oefenopdracht, s52, "Ik moet iemand helpen").
next(robospelen_7_oefenopdracht, s52, "true", s53).

move(robospelen_7_oefenopdracht, s53, say).
text(robospelen_7_oefenopdracht, s53, "maar ik weet nog niet waarmee.").
next(robospelen_7_oefenopdracht, s53, "true", s54).

move(robospelen_7_oefenopdracht, s54, say).
text(robospelen_7_oefenopdracht, s54, "Dus ik denk dat ik op zoek moet gaan naar iemand.").
next(robospelen_7_oefenopdracht, s54, "true", s55).

move(robospelen_7_oefenopdracht, s55, say).
text(robospelen_7_oefenopdracht, s55, "Om die persoon te vragen waarmee ik kan helpen.").
next(robospelen_7_oefenopdracht, s55, "true", s56).

move(robospelen_7_oefenopdracht, s56, say).
text(robospelen_7_oefenopdracht, s56, "Ik denk dat ik maar gewoon heel hard roep.").
next(robospelen_7_oefenopdracht, s56, "true", s57).

move(robospelen_7_oefenopdracht, s57, say).
text(robospelen_7_oefenopdracht, s57, "Mens?").
next(robospelen_7_oefenopdracht, s57, "true", s58).

move(robospelen_7_oefenopdracht, s58, say).
text(robospelen_7_oefenopdracht, s58, "Hallo mens?").
next(robospelen_7_oefenopdracht, s58, "true", s59).

move(robospelen_7_oefenopdracht, s59, say).
text(robospelen_7_oefenopdracht, s59, "Ik ben Hero en ik wil je helpen!").
next(robospelen_7_oefenopdracht, s59, "true", s60).

move(robospelen_7_oefenopdracht, s60, say).
text(robospelen_7_oefenopdracht, s60, "...").
next(robospelen_7_oefenopdracht, s60, "true", s61).

move(robospelen_7_oefenopdracht, s61, say).
text(robospelen_7_oefenopdracht, s61, "Er gebeurt helemaal niets, %first_name% !").
next(robospelen_7_oefenopdracht, s61, "true", s62).

move(robospelen_7_oefenopdracht, s62, say).
text(robospelen_7_oefenopdracht, s62, "Laten we een stukje lopen.").
next(robospelen_7_oefenopdracht, s62, "true", s63).

move(robospelen_7_oefenopdracht, s63, say).
text(robospelen_7_oefenopdracht, s63, "Hier, langs het pad.").
next(robospelen_7_oefenopdracht, s63, "true", s64).

move(robospelen_7_oefenopdracht, s64, say).
text(robospelen_7_oefenopdracht, s64, "want mensen lopen graag op paden.").
next(robospelen_7_oefenopdracht, s64, "true", s65).

move(robospelen_7_oefenopdracht, s65, say).
text(robospelen_7_oefenopdracht, s65, "Of denk je dat ik juist van het pad af moet").
next(robospelen_7_oefenopdracht, s65, "true", s66).

move(robospelen_7_oefenopdracht, s66, say).
text(robospelen_7_oefenopdracht, s66, "om een mens te zoeken?").
next(robospelen_7_oefenopdracht, s66, "true", s67).

move(robospelen_7_oefenopdracht, s67, question).
moveConfig(robospelen_7_oefenopdracht, s67, [type=input, context="robospelen_pad_richting", options=['op', 'af'], umVariable=op_of_af_pad]).
text(robospelen_7_oefenopdracht, s67, "Op het pad blijven, of ervan af, wat denk jij?").
next(robospelen_7_oefenopdracht, s67, "op", s68op1).
next(robospelen_7_oefenopdracht, s67, "af", s68af1).
next(robospelen_7_oefenopdracht, s67, "fail", s68fail1).

move(robospelen_7_oefenopdracht, s68op1, say).
text(robospelen_7_oefenopdracht, s68op1, "Goed idee, %first_name% ").
next(robospelen_7_oefenopdracht, s68op1, "true", s68op2).

move(robospelen_7_oefenopdracht, s68op2, say).
text(robospelen_7_oefenopdracht, s68op2, "Het bos lijkt nu misschien niet zo eng").
next(robospelen_7_oefenopdracht, s68op2, "true", s68op3).

move(robospelen_7_oefenopdracht, s68op3, say).
text(robospelen_7_oefenopdracht, s68op3, "Omdat het zo lieflijk lichtpaarse is").
next(robospelen_7_oefenopdracht, s68op3, "true", s68op4).

move(robospelen_7_oefenopdracht, s68op4, say).
text(robospelen_7_oefenopdracht, s68op4, "Maar je weet maar nooit wat voor enge paarse dingen er in schuilen").
next(robospelen_7_oefenopdracht, s68op4, "true", s68op5).

move(robospelen_7_oefenopdracht, s68op5, say).
text(robospelen_7_oefenopdracht, s68op5, "Met grote paarse tanden en lange paarse klauwen").
next(robospelen_7_oefenopdracht, s68op5, "true", s69).

move(robospelen_7_oefenopdracht, s68af1, say).
text(robospelen_7_oefenopdracht, s68af1, "Ja, goed.").
next(robospelen_7_oefenopdracht, s68af1, "true", s68af2).

move(robospelen_7_oefenopdracht, s68af2, say).
text(robospelen_7_oefenopdracht, s68af2, "Misschien heeft iemand mijn hulp wel nodig").
next(robospelen_7_oefenopdracht, s68af2, "true", s68af3).

move(robospelen_7_oefenopdracht, s68af3, say).
text(robospelen_7_oefenopdracht, s68af3, "omdat -ie verdwaald is.").
next(robospelen_7_oefenopdracht, s68af3, "true", s68af4).

move(robospelen_7_oefenopdracht, s68af4, say).
text(robospelen_7_oefenopdracht, s68af4, "Laten we hier tussen de bomen kruipen").
next(robospelen_7_oefenopdracht, s68af4, "true", s68af5).

move(robospelen_7_oefenopdracht, s68af5, say).
text(robospelen_7_oefenopdracht, s68af5, "ik zie een donker paadje.").
next(robospelen_7_oefenopdracht, s68af5, "true", s68af6).

move(robospelen_7_oefenopdracht, s68af6, say).
text(robospelen_7_oefenopdracht, s68af6, "Het lijkt helemaal niet zo eng nu het allemaal paarse is.").
next(robospelen_7_oefenopdracht, s68af6, "true", s69).

move(robospelen_7_oefenopdracht, s69, say).
text(robospelen_7_oefenopdracht, s69, "Hoor je de paarse takken kraken?").
next(robospelen_7_oefenopdracht, s69, "true", s70).

move(robospelen_7_oefenopdracht, s70, say).
text(robospelen_7_oefenopdracht, s70, "Aaah!").
next(robospelen_7_oefenopdracht, s70, "true", s71).

move(robospelen_7_oefenopdracht, s71, say).
text(robospelen_7_oefenopdracht, s71, "Kijk uit, daar is een bosje met stekels!").
next(robospelen_7_oefenopdracht, s71, "true", s72).

move(robospelen_7_oefenopdracht, s72, say).
text(robospelen_7_oefenopdracht, s72, "Oh nee, het is een paarse %lievelingsdier%, hij beweegt.").
next(robospelen_7_oefenopdracht, s72, "true", s73).

move(robospelen_7_oefenopdracht, s73, say).
text(robospelen_7_oefenopdracht, s73, "Hallo %lievelingsdier%, moet ik jou misschien helpen?").
next(robospelen_7_oefenopdracht, s73, "true", s74).

move(robospelen_7_oefenopdracht, s74, say).
text(robospelen_7_oefenopdracht, s74, "Nee?").
next(robospelen_7_oefenopdracht, s74, "true", s75).

move(robospelen_7_oefenopdracht, s75, say).
text(robospelen_7_oefenopdracht, s75, "Hij rent weg, daarheen!").
next(robospelen_7_oefenopdracht, s75, "true", s76).

move(robospelen_7_oefenopdracht, s76, say).
text(robospelen_7_oefenopdracht, s76, "Daar de paarse heuvel op.").
next(robospelen_7_oefenopdracht, s76, "true", s77).

move(robospelen_7_oefenopdracht, s77, question).
moveConfig(robospelen_7_oefenopdracht, s77, [type=yesno, context='answer_yesno', umVariable=erachteraan]).
text(robospelen_7_oefenopdracht, s77, "Zullen we erachteraan?").
next(robospelen_7_oefenopdracht, s77, "answer_yes", s78erachteraan1).
next(robospelen_7_oefenopdracht, s77, "answer_no", s78er_niet_achteraan1).
next(robospelen_7_oefenopdracht, s77, "fail", s78fail_erachteraan1).
next(robospelen_7_oefenopdracht, s77, "answer_dontknow", s78fail_erachteraan1).

move(robospelen_7_oefenopdracht, s78fail_erachteraan1, say).
text(robospelen_7_oefenopdracht, s78fail_erachteraan1, "Ik denk dat we er het best achteraan kunnen!").
next(robospelen_7_oefenopdracht, s78fail_erachteraan1, "true", s78erachteraan21).

move(robospelen_7_oefenopdracht, s78erachteraan1, say).
text(robospelen_7_oefenopdracht, s78erachteraan1, "Goed, ik volg %lievelingsdier%!").
next(robospelen_7_oefenopdracht, s78erachteraan1, "true", s78erachteraan21).

move(robospelen_7_oefenopdracht, s78erachteraan21, say).
text(robospelen_7_oefenopdracht, s78erachteraan21, "Hier ging hij de paarse heuvel op.").
next(robospelen_7_oefenopdracht, s78erachteraan21, "true", s78erachteraan22).

move(robospelen_7_oefenopdracht, s78erachteraan22, say).
text(robospelen_7_oefenopdracht, s78erachteraan22, "Misschien moet ik de %lievelingsdier% wel helpen").
next(robospelen_7_oefenopdracht, s78erachteraan22, "true", s78erachteraan23).

move(robospelen_7_oefenopdracht, s78erachteraan23, say).
text(robospelen_7_oefenopdracht, s78erachteraan23, "in plaats van een mens.").
next(robospelen_7_oefenopdracht, s78erachteraan23, "true", s78erachteraan24).

move(robospelen_7_oefenopdracht, s78erachteraan24, say).
text(robospelen_7_oefenopdracht, s78erachteraan24, "Dat zou wel een beetje gek zijn").
next(robospelen_7_oefenopdracht, s78erachteraan24, "true", s78erachteraan25).

move(robospelen_7_oefenopdracht, s78erachteraan25, say).
text(robospelen_7_oefenopdracht, s78erachteraan25, "maar je weet het maar nooit bij de Robospelen!").
next(robospelen_7_oefenopdracht, s78erachteraan25, "true", s78erachteraan26).

move(robospelen_7_oefenopdracht, s78erachteraan26, say).
text(robospelen_7_oefenopdracht, s78erachteraan26, "Oh wauw, wat een mooi uitzicht hier op de heuvel!").
next(robospelen_7_oefenopdracht, s78erachteraan26, "true", s78erachteraan27).

move(robospelen_7_oefenopdracht, s78erachteraan27, say).
text(robospelen_7_oefenopdracht, s78erachteraan27, "Ik kan het hele bos over kijken.").
next(robospelen_7_oefenopdracht, s78erachteraan27, "true", s78erachteraan28).

move(robospelen_7_oefenopdracht, s78erachteraan28, say).
text(robospelen_7_oefenopdracht, s78erachteraan28, "Daar aan de rand is een dorpje,").
next(robospelen_7_oefenopdracht, s78erachteraan28, "true", s78erachteraan29).

move(robospelen_7_oefenopdracht, s78erachteraan29, say).
text(robospelen_7_oefenopdracht, s78erachteraan29, "met een paarse moskee").
next(robospelen_7_oefenopdracht, s78erachteraan29, "true", s78erachteraan210).

move(robospelen_7_oefenopdracht, s78erachteraan210, say).
text(robospelen_7_oefenopdracht, s78erachteraan210, "en een paarse ijscokraam.").
next(robospelen_7_oefenopdracht, s78erachteraan210, "true", s78erachteraan211).

move(robospelen_7_oefenopdracht, s78erachteraan211, say).
text(robospelen_7_oefenopdracht, s78erachteraan211, "En hier op de grond zie ik de voetstappen van de %lievelingsdier%!").
next(robospelen_7_oefenopdracht, s78erachteraan211, "true", s78erachteraan212).

move(robospelen_7_oefenopdracht, s78erachteraan212, say).
text(robospelen_7_oefenopdracht, s78erachteraan212, "Ze gaan weer naar beneden.").
next(robospelen_7_oefenopdracht, s78erachteraan212, "true", s78erachteraan213).

move(robospelen_7_oefenopdracht, s78erachteraan213, say).
text(robospelen_7_oefenopdracht, s78erachteraan213, "De %lievelingsdier% is verdwenen!").
next(robospelen_7_oefenopdracht, s78erachteraan213, "true", s79).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan1, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan1, "Oké. Goed.").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan1, "true", s78er_niet_achteraan2).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan2, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan2, "We blijven hier.").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan2, "true", s78er_niet_achteraan3).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan3, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan3, "Je hebt gelijk").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan3, "true", s78er_niet_achteraan4).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan4, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan4, "Ik moest een mens helpen").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan4, "true", s78er_niet_achteraan5).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan5, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan5, "Niet een %lievelingsdier%!").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan5, "true", s78er_niet_achteraan6).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan6, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan6, "Ik kan beter hier nog een stukje verder").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan6, "true", s78er_niet_achteraan7).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan7, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan7, "kijk uit voor die scherpe paarse steen, %first_name% !").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan7, "true", s78er_niet_achteraan8).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan8, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan8, "O kijk!").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan8, "true", s78er_niet_achteraan9).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan9, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan9, "Een paarse open plek!").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan9, "true", s78er_niet_achteraan10).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan10, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan10, "Met een paarse bankje om op uit te rusten.").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan10, "true", s78er_niet_achteraan11).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan11, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan11, "Wat ziet dat er lekker uit.").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan11, "true", s78er_niet_achteraan12).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan12, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan12, "Maar het is denk ik een val.").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan12, "true", s78er_niet_achteraan13).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan13, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan13, "Ik moet niet rusten, ik moet een mens zoeken!").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan13, "true", s78er_niet_achteraan14).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan14, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan14, "We gaan door, %first_name% .").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan14, "true", s78er_niet_achteraan15).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan15, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan15, "We laten ons niet in de val lokken.").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan15, "true", s78er_niet_achteraan16).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan16, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan16, "Hier de bomen door...").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan16, "true", s78er_niet_achteraan17).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan17, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan17, "Wauw, een paarse meer!").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan17, "true", s78er_niet_achteraan18).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan18, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan18, "Met paarse golven en paarse riet en, oh!").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan18, "true", s78er_niet_achteraan19).

move(robospelen_7_oefenopdracht, s78er_niet_achteraan19, say).
text(robospelen_7_oefenopdracht, s78er_niet_achteraan19, "Daar ligt een paarse kano op z'n kop").
next(robospelen_7_oefenopdracht, s78er_niet_achteraan19, "true", s79).

move(robospelen_7_oefenopdracht, s79, say).
text(robospelen_7_oefenopdracht, s79, "Ik zie daar een mens!").
next(robospelen_7_oefenopdracht, s79, "true", s80).

move(robospelen_7_oefenopdracht, s80, say).
text(robospelen_7_oefenopdracht, s80, "Het mens lijkt nat!").
next(robospelen_7_oefenopdracht, s80, "true", s81).

move(robospelen_7_oefenopdracht, s81, say).
text(robospelen_7_oefenopdracht, s81, "Doorweekt!").
next(robospelen_7_oefenopdracht, s81, "true", s82).

move(robospelen_7_oefenopdracht, s82, say).
text(robospelen_7_oefenopdracht, s82, "Alsof mens net uit het water komt!").
next(robospelen_7_oefenopdracht, s82, "true", s83).

move(robospelen_7_oefenopdracht, s83, say).
text(robospelen_7_oefenopdracht, s83, "Mens trilt heel erg!").
next(robospelen_7_oefenopdracht, s83, "true", s84).

move(robospelen_7_oefenopdracht, s84, say).
text(robospelen_7_oefenopdracht, s84, "Mens heeft het koud!").
next(robospelen_7_oefenopdracht, s84, "true", s85).

move(robospelen_7_oefenopdracht, s85, say).
text(robospelen_7_oefenopdracht, s85, "We moeten mens laten opdrogen, maar hoe?").
next(robospelen_7_oefenopdracht, s85, "true", s86).

move(robospelen_7_oefenopdracht, s86, say).
text(robospelen_7_oefenopdracht, s86, "Misschien kunnen we ergens een handdoek vandaan halen").
next(robospelen_7_oefenopdracht, s86, "true", s87).

move(robospelen_7_oefenopdracht, s87, say).
text(robospelen_7_oefenopdracht, s87, "Of een föhn").
next(robospelen_7_oefenopdracht, s87, "true", s88).

move(robospelen_7_oefenopdracht, s88, say).
text(robospelen_7_oefenopdracht, s88, "Of we spoelen de tijd snel even door").
next(robospelen_7_oefenopdracht, s88, "true", s89).

move(robospelen_7_oefenopdracht, s89, say).
text(robospelen_7_oefenopdracht, s89, "want alles droogt vanzelf op in de paarse zon").
next(robospelen_7_oefenopdracht, s89, "true", s90).

move(robospelen_7_oefenopdracht, s90, say).
text(robospelen_7_oefenopdracht, s90, "als je maar lang genoeg wacht").
next(robospelen_7_oefenopdracht, s90, "true", s91).

move(robospelen_7_oefenopdracht, s91, question).
moveConfig(robospelen_7_oefenopdracht, s91, [type=input, context="robospelen_droogmethode", options=['handdoek', 'föhn', 'tijd'], umVariable=droogmethode]).
text(robospelen_7_oefenopdracht, s91, "Wat denk jij, de handdoek, de föhn, of de tijd doorspoelen?").
next(robospelen_7_oefenopdracht, s91, "handdoek", s92handdoek1).
next(robospelen_7_oefenopdracht, s91, "föhn", s92fohn1).
next(robospelen_7_oefenopdracht, s91, "tijd", s92tijd1).
next(robospelen_7_oefenopdracht, s91, "fail", s92fail_droogmethode1).

move(robospelen_7_oefenopdracht, s92fail_droogmethode1, say).
text(robospelen_7_oefenopdracht, s92fail_droogmethode1, "Laten de föhn proberen!").
next(robospelen_7_oefenopdracht, s92fail_droogmethode1, "true", s92fohn1).

move(robospelen_7_oefenopdracht, s92handdoek1, say).
text(robospelen_7_oefenopdracht, s92handdoek1, "Goed idee!").
next(robospelen_7_oefenopdracht, s92handdoek1, "true", s92handdoek2).

move(robospelen_7_oefenopdracht, s92handdoek2, say).
text(robospelen_7_oefenopdracht, s92handdoek2, "Maar ik zie hier helemaal geen handdoek liggen.").
next(robospelen_7_oefenopdracht, s92handdoek2, "true", s92handdoek3).

move(robospelen_7_oefenopdracht, s92handdoek3, say).
text(robospelen_7_oefenopdracht, s92handdoek3, "Misschien kunnen we hem maken.").
next(robospelen_7_oefenopdracht, s92handdoek3, "true", s92handdoek4).

move(robospelen_7_oefenopdracht, s92handdoek4, say).
text(robospelen_7_oefenopdracht, s92handdoek4, "Het is tenslotte maar een computersimulatie, toch %first_name% ?").
next(robospelen_7_oefenopdracht, s92handdoek4, "true", s92handdoek5).

move(robospelen_7_oefenopdracht, s92handdoek5, say).
text(robospelen_7_oefenopdracht, s92handdoek5, "En jij bent hier zelfs niet via de code, maar door je fantasie!").
next(robospelen_7_oefenopdracht, s92handdoek5, "true", s92handdoek6).

move(robospelen_7_oefenopdracht, s92handdoek6, say).
text(robospelen_7_oefenopdracht, s92handdoek6, "O wacht, ik heb een goed idee!").
next(robospelen_7_oefenopdracht, s92handdoek6, "true", s92handdoek7).

move(robospelen_7_oefenopdracht, s92handdoek7, say).
text(robospelen_7_oefenopdracht, s92handdoek7, "Wat als jij een handdoek fantaseert").
next(robospelen_7_oefenopdracht, s92handdoek7, "true", s92handdoek8).

move(robospelen_7_oefenopdracht, s92handdoek8, say).
text(robospelen_7_oefenopdracht, s92handdoek8, "En die naar mij doorstuurt").
next(robospelen_7_oefenopdracht, s92handdoek8, "true", s92handdoek9).

move(robospelen_7_oefenopdracht, s92handdoek9, say).
text(robospelen_7_oefenopdracht, s92handdoek9, "Dan zjoef ik hem zo het programma in!").
next(robospelen_7_oefenopdracht, s92handdoek9, "true", s92handdoek10).

move(robospelen_7_oefenopdracht, s92handdoek10, say).
text(robospelen_7_oefenopdracht, s92handdoek10, "Leg je hand maar op mijn hoofd").
next(robospelen_7_oefenopdracht, s92handdoek10, "true", s92handdoek11).

move(robospelen_7_oefenopdracht, s92handdoek11, say).
text(robospelen_7_oefenopdracht, s92handdoek11, "Ja?").
next(robospelen_7_oefenopdracht, s92handdoek11, "true", s92handdoek12).

move(robospelen_7_oefenopdracht, s92handdoek12, say).
text(robospelen_7_oefenopdracht, s92handdoek12, "Ogen dicht").
next(robospelen_7_oefenopdracht, s92handdoek12, "true", s92handdoek13).

move(robospelen_7_oefenopdracht, s92handdoek13, say).
text(robospelen_7_oefenopdracht, s92handdoek13, "Dan moet je nu heel hard een handdoek voor je zien").
next(robospelen_7_oefenopdracht, s92handdoek13, "true", s92handdoek14).

move(robospelen_7_oefenopdracht, s92handdoek14, say).
text(robospelen_7_oefenopdracht, s92handdoek14, "Een paarse natuurlijk!").
next(robospelen_7_oefenopdracht, s92handdoek14, "true", s92handdoek15).

move(robospelen_7_oefenopdracht, s92handdoek15, say).
text(robospelen_7_oefenopdracht, s92handdoek15, "Anders gaat het programma kapot").
next(robospelen_7_oefenopdracht, s92handdoek15, "true", s92handdoek16).

move(robospelen_7_oefenopdracht, s92handdoek16, say).
text(robospelen_7_oefenopdracht, s92handdoek16, "Dan ga ik hem door je hand heen inladen").
next(robospelen_7_oefenopdracht, s92handdoek16, "true", s92handdoek17).

move(robospelen_7_oefenopdracht, s92handdoek17, say).
text(robospelen_7_oefenopdracht, s92handdoek17, "Laden... laden...").
next(robospelen_7_oefenopdracht, s92handdoek17, "true", s92handdoek18).

move(robospelen_7_oefenopdracht, s92handdoek18, say).
text(robospelen_7_oefenopdracht, s92handdoek18, "O ik zie hem!").
next(robospelen_7_oefenopdracht, s92handdoek18, "true", s92handdoek19).

move(robospelen_7_oefenopdracht, s92handdoek19, say).
text(robospelen_7_oefenopdracht, s92handdoek19, "Hij verschijnt hier over een struik!").
next(robospelen_7_oefenopdracht, s92handdoek19, "true", s92handdoek20).

move(robospelen_7_oefenopdracht, s92handdoek20, say).
text(robospelen_7_oefenopdracht, s92handdoek20, "Wat een mooie handdoek heb je gefantaseerd").
next(robospelen_7_oefenopdracht, s92handdoek20, "true", s92handdoek21).

move(robospelen_7_oefenopdracht, s92handdoek21, say).
text(robospelen_7_oefenopdracht, s92handdoek21, "Kijk, nat mens, een handdoek!").
next(robospelen_7_oefenopdracht, s92handdoek21, "true", s92handdoek22).

move(robospelen_7_oefenopdracht, s92handdoek22, say).
text(robospelen_7_oefenopdracht, s92handdoek22, "Pak maar aan").
next(robospelen_7_oefenopdracht, s92handdoek22, "true", s93).

move(robospelen_7_oefenopdracht, s92fohn1, say).
text(robospelen_7_oefenopdracht, s92fohn1, "Dat is een goed idee").
next(robospelen_7_oefenopdracht, s92fohn1, "true", s92fohn2).

move(robospelen_7_oefenopdracht, s92fohn2, say).
text(robospelen_7_oefenopdracht, s92fohn2, "Dan blazen we het mens zo droog").
next(robospelen_7_oefenopdracht, s92fohn2, "true", s92fohn3).

move(robospelen_7_oefenopdracht, s92fohn3, say).
text(robospelen_7_oefenopdracht, s92fohn3, "Maar we hebben hier helemaal geen föhn!").
next(robospelen_7_oefenopdracht, s92fohn3, "true", s92fohn4).

move(robospelen_7_oefenopdracht, s92fohn4, say).
text(robospelen_7_oefenopdracht, s92fohn4, "Misschien kunnen we hem maken.").
next(robospelen_7_oefenopdracht, s92fohn4, "true", s92fohn5).

move(robospelen_7_oefenopdracht, s92fohn5, say).
text(robospelen_7_oefenopdracht, s92fohn5, "Het is tenslotte maar een computersimulatie, toch %first_name% ?").
next(robospelen_7_oefenopdracht, s92fohn5, "true", s92fohn6).

move(robospelen_7_oefenopdracht, s92fohn6, say).
text(robospelen_7_oefenopdracht, s92fohn6, "Ik heb een plan!").
next(robospelen_7_oefenopdracht, s92fohn6, "true", s92fohn7).

move(robospelen_7_oefenopdracht, s92fohn7, say).
text(robospelen_7_oefenopdracht, s92fohn7, "Wat als jij tegen mij blaast").
next(robospelen_7_oefenopdracht, s92fohn7, "true", s92fohn8).

move(robospelen_7_oefenopdracht, s92fohn8, say).
text(robospelen_7_oefenopdracht, s92fohn8, "En dan pas ik in de windsnelheid aan").
next(robospelen_7_oefenopdracht, s92fohn8, "true", s92fohn9).

move(robospelen_7_oefenopdracht, s92fohn9, say).
text(robospelen_7_oefenopdracht, s92fohn9, "Zodat jouw blaas duizend keer zo hard is").
next(robospelen_7_oefenopdracht, s92fohn9, "true", s92fohn10).

move(robospelen_7_oefenopdracht, s92fohn10, say).
text(robospelen_7_oefenopdracht, s92fohn10, "En dan is het mens zo droog!").
next(robospelen_7_oefenopdracht, s92fohn10, "true", s92fohn11).

move(robospelen_7_oefenopdracht, s92fohn11, say).
text(robospelen_7_oefenopdracht, s92fohn11, "Ja, dat gaan we proberen").
next(robospelen_7_oefenopdracht, s92fohn11, "true", s92fohn12).

move(robospelen_7_oefenopdracht, s92fohn12, say).
text(robospelen_7_oefenopdracht, s92fohn12, "Kom maar wat dichterbij, dan tel ik af").
next(robospelen_7_oefenopdracht, s92fohn12, "true", s92fohn13).

move(robospelen_7_oefenopdracht, s92fohn13, say).
text(robospelen_7_oefenopdracht, s92fohn13, "En na nul moet je zo lang je kunt heel hard op mij blazen!").
next(robospelen_7_oefenopdracht, s92fohn13, "true", s92fohn14).

move(robospelen_7_oefenopdracht, s92fohn14, say).
text(robospelen_7_oefenopdracht, s92fohn14, "3, 2, 1, 0").
next(robospelen_7_oefenopdracht, s92fohn14, "true", s92fohn15).

move(robospelen_7_oefenopdracht, s92fohn15, say).
next(robospelen_7_oefenopdracht, s92fohn15, "true", s92fohn16).

move(robospelen_7_oefenopdracht, s92fohn16, say).
text(robospelen_7_oefenopdracht, s92fohn16, "Goed, ik pas de windsnelheid aan").
next(robospelen_7_oefenopdracht, s92fohn16, "true", s92fohn17).

move(robospelen_7_oefenopdracht, s92fohn17, say).
text(robospelen_7_oefenopdracht, s92fohn17, "Ik ga 'm doorsturen").
next(robospelen_7_oefenopdracht, s92fohn17, "true", s92fohn18).

move(robospelen_7_oefenopdracht, s92fohn18, say).
text(robospelen_7_oefenopdracht, s92fohn18, "Houd je goed vast, %first_name% !").
next(robospelen_7_oefenopdracht, s92fohn18, "true", s92fohn19).

move(robospelen_7_oefenopdracht, s92fohn19, say).
text(robospelen_7_oefenopdracht, s92fohn19, "Straks waai je nog omver").
next(robospelen_7_oefenopdracht, s92fohn19, "true", s92fohn20).

move(robospelen_7_oefenopdracht, s92fohn20, say).
text(robospelen_7_oefenopdracht, s92fohn20, "Klaar?").
next(robospelen_7_oefenopdracht, s92fohn20, "true", s92fohn21).

move(robospelen_7_oefenopdracht, s92fohn21, say).
text(robospelen_7_oefenopdracht, s92fohn21, "Daar komt -ie!").
next(robospelen_7_oefenopdracht, s92fohn21, "true", s92fohn22).

move(robospelen_7_oefenopdracht, s92fohn22, say).
next(robospelen_7_oefenopdracht, s92fohn22, "true", s93).

move(robospelen_7_oefenopdracht, s92tijd1, say).
text(robospelen_7_oefenopdracht, s92tijd1, "Oké!").
next(robospelen_7_oefenopdracht, s92tijd1, "true", s92tijd2).

move(robospelen_7_oefenopdracht, s92tijd2, say).
text(robospelen_7_oefenopdracht, s92tijd2, "Dit paarse bos is een computersimulatie").
next(robospelen_7_oefenopdracht, s92tijd2, "true", s92tijd3).

move(robospelen_7_oefenopdracht, s92tijd3, say).
text(robospelen_7_oefenopdracht, s92tijd3, "En computers hebben altijd een klokje").
next(robospelen_7_oefenopdracht, s92tijd3, "true", s92tijd4).

move(robospelen_7_oefenopdracht, s92tijd4, say).
text(robospelen_7_oefenopdracht, s92tijd4, "Dus als ik dat een dag vooruit zet").
next(robospelen_7_oefenopdracht, s92tijd4, "true", s92tijd5).

move(robospelen_7_oefenopdracht, s92tijd5, say).
text(robospelen_7_oefenopdracht, s92tijd5, "Dan reizen we zo floep door de tijd zonder dat we het merken!").
next(robospelen_7_oefenopdracht, s92tijd5, "true", s92tijd6).

move(robospelen_7_oefenopdracht, s92tijd6, say).
text(robospelen_7_oefenopdracht, s92tijd6, "Even zoeken, waar zou het zijn").
next(robospelen_7_oefenopdracht, s92tijd6, "true", s92tijd7).

move(robospelen_7_oefenopdracht, s92tijd7, say).
text(robospelen_7_oefenopdracht, s92tijd7, "Menu...").
next(robospelen_7_oefenopdracht, s92tijd7, "true", s92tijd8).

move(robospelen_7_oefenopdracht, s92tijd8, say).
text(robospelen_7_oefenopdracht, s92tijd8, "Instellingen...").
next(robospelen_7_oefenopdracht, s92tijd8, "true", s92tijd9).

move(robospelen_7_oefenopdracht, s92tijd9, say).
text(robospelen_7_oefenopdracht, s92tijd9, "Hier! Datum en tijd!").
next(robospelen_7_oefenopdracht, s92tijd9, "true", s92tijd10).

move(robospelen_7_oefenopdracht, s92tijd10, say).
text(robospelen_7_oefenopdracht, s92tijd10, "Houd je goed vast, %first_name% ").
next(robospelen_7_oefenopdracht, s92tijd10, "true", s92tijd11).

move(robospelen_7_oefenopdracht, s92tijd11, say).
text(robospelen_7_oefenopdracht, s92tijd11, "Ik heb nog nooit met een mens door de tijd gereisd").
next(robospelen_7_oefenopdracht, s92tijd11, "true", s92tijd12).

move(robospelen_7_oefenopdracht, s92tijd12, say).
text(robospelen_7_oefenopdracht, s92tijd12, "Straks ben jij in deze simulatie een dag ouder dan in het echt.").
next(robospelen_7_oefenopdracht, s92tijd12, "true", s92tijd13).

move(robospelen_7_oefenopdracht, s92tijd13, say).
text(robospelen_7_oefenopdracht, s92tijd13, "Klaar?").
next(robospelen_7_oefenopdracht, s92tijd13, "true", s92tijd14).

move(robospelen_7_oefenopdracht, s92tijd14, say).
text(robospelen_7_oefenopdracht, s92tijd14, "Komt -ie!").
next(robospelen_7_oefenopdracht, s92tijd14, "true", s92tijd15).

move(robospelen_7_oefenopdracht, s92tijd15, say).
next(robospelen_7_oefenopdracht, s92tijd15, "true", s93).

move(robospelen_7_oefenopdracht, s93, say).
text(robospelen_7_oefenopdracht, s93, "Het werkt!").
next(robospelen_7_oefenopdracht, s93, "true", s94).

move(robospelen_7_oefenopdracht, s94, say).
text(robospelen_7_oefenopdracht, s94, "Mens is droog!").
next(robospelen_7_oefenopdracht, s94, "true", s95).

move(robospelen_7_oefenopdracht, s95, say).
text(robospelen_7_oefenopdracht, s95, "Mens zegt bedankt!").
next(robospelen_7_oefenopdracht, s95, "true", s96).

move(robospelen_7_oefenopdracht, s96, say).
text(robospelen_7_oefenopdracht, s96, "Ook tegen jou, %first_name% ").
next(robospelen_7_oefenopdracht, s96, "true", s97).

move(robospelen_7_oefenopdracht, s97, say).
text(robospelen_7_oefenopdracht, s97, "Wat fijn").
next(robospelen_7_oefenopdracht, s97, "true", s98).

move(robospelen_7_oefenopdracht, s98, say).
text(robospelen_7_oefenopdracht, s98, "O, kijk, er zweven opeens grote paarse letters in de lucht.").
next(robospelen_7_oefenopdracht, s98, "true", s99).

move(robospelen_7_oefenopdracht, s99, say).
text(robospelen_7_oefenopdracht, s99, "Wat staat daar?").
next(robospelen_7_oefenopdracht, s99, "true", s100).

move(robospelen_7_oefenopdracht, s100, say).
text(robospelen_7_oefenopdracht, s100, "Oefen... opdracht... geslaagd!").
next(robospelen_7_oefenopdracht, s100, "true", s101).

move(robospelen_7_oefenopdracht, s101, say).
next(robospelen_7_oefenopdracht, s101, "true", s102).

move(robospelen_7_oefenopdracht, s102, say).
text(robospelen_7_oefenopdracht, s102, "En een knop met log uit erop.").
next(robospelen_7_oefenopdracht, s102, "true", s103).

move(robospelen_7_oefenopdracht, s103, say).
text(robospelen_7_oefenopdracht, s103, "Daar ga ik op klikken.").
next(robospelen_7_oefenopdracht, s103, "true", s104).

move(robospelen_7_oefenopdracht, s104, say).
next(robospelen_7_oefenopdracht, s104, "true", s105).

move(robospelen_7_oefenopdracht, s105, say).
text(robospelen_7_oefenopdracht, s105, "Zo!").
next(robospelen_7_oefenopdracht, s105, "true", s106).

move(robospelen_7_oefenopdracht, s106, say).
text(robospelen_7_oefenopdracht, s106, "Nu staan we weer in de kamer.").
next(robospelen_7_oefenopdracht, s106, "true", s107).

move(robospelen_7_oefenopdracht, s107, say).
text(robospelen_7_oefenopdracht, s107, "Dat was leuk!").
next(robospelen_7_oefenopdracht, s107, "true", s108).

move(robospelen_7_oefenopdracht, s108, say).
text(robospelen_7_oefenopdracht, s108, "Dankzij jou was deze oefenopdracht een eitje!").
next(robospelen_7_oefenopdracht, s108, "true", s109).

move(robospelen_7_oefenopdracht, s109, say).
text(robospelen_7_oefenopdracht, s109, "Een makkie.").
next(robospelen_7_oefenopdracht, s109, "true", s110).

move(robospelen_7_oefenopdracht, s110, say).
text(robospelen_7_oefenopdracht, s110, "Een %lievelingsdier% in het bakkie").
next(robospelen_7_oefenopdracht, s110, "true", s111).

move(robospelen_7_oefenopdracht, s111, say).
text(robospelen_7_oefenopdracht, s111, "Dankjewel %first_name% !").

%% robospelen_8_moeilijk %%
minidialog(robospelen_8_moeilijk, [type=narrative, thread=robospelen, position=8]).

move(robospelen_8_moeilijk, s1, say).
text(robospelen_8_moeilijk, s1, "Binnenkort is de grote dag").
next(robospelen_8_moeilijk, s1, "true", s2).

move(robospelen_8_moeilijk, s2, say).
text(robospelen_8_moeilijk, s2, "dan beginnen de Robospelen").
next(robospelen_8_moeilijk, s2, "true", s3).

move(robospelen_8_moeilijk, s3, say).
text(robospelen_8_moeilijk, s3, "De eerste oefenopdracht in het paarse bos met %lievelingsdier% ging dankzij jou erg goed!").
next(robospelen_8_moeilijk, s3, "true", s4).

move(robospelen_8_moeilijk, s4, say).
text(robospelen_8_moeilijk, s4, "Maar eerst is er nog een moeilijke oefenopdracht waar ik best wel tegenop zie.").
next(robospelen_8_moeilijk, s4, "true", s5).

move(robospelen_8_moeilijk, s5, say).
text(robospelen_8_moeilijk, s5, "Een beetje alsof je een stom schoolvak krijgt").
next(robospelen_8_moeilijk, s5, "true", s6).

move(robospelen_8_moeilijk, s6, say).
text(robospelen_8_moeilijk, s6, "of iets anders stoms moet doen.").
next(robospelen_8_moeilijk, s6, "true", s7).

move(robospelen_8_moeilijk, s7, question).
moveConfig(robospelen_8_moeilijk, s7, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(robospelen_8_moeilijk, s7, "Wat vind jij nou stom om te doen?").
next(robospelen_8_moeilijk, s7, "success", s8got_answer_stom1).
next(robospelen_8_moeilijk, s7, "failure", s8got_no_answer_stom1).

move(robospelen_8_moeilijk, s8got_no_answer_stom1, say).
text(robospelen_8_moeilijk, s8got_no_answer_stom1, "Het is oké hoor, als je niet weet").
next(robospelen_8_moeilijk, s8got_no_answer_stom1, "true", s8got_no_answer_stom2).

move(robospelen_8_moeilijk, s8got_no_answer_stom2, say).
text(robospelen_8_moeilijk, s8got_no_answer_stom2, "Goed juist dat je geen stomme dingen kunt bedenken!").
next(robospelen_8_moeilijk, s8got_no_answer_stom2, "true", s8got_no_answer_stom3).

move(robospelen_8_moeilijk, s8got_no_answer_stom3, say).
text(robospelen_8_moeilijk, s8got_no_answer_stom3, "Wat ben je toch ook een positief mens, %first_name% ").
next(robospelen_8_moeilijk, s8got_no_answer_stom3, "true", s8got_no_answer_stom4).

move(robospelen_8_moeilijk, s8got_no_answer_stom4, say).
text(robospelen_8_moeilijk, s8got_no_answer_stom4, "Ik ben nu even niet zo positief.").
next(robospelen_8_moeilijk, s8got_no_answer_stom4, "true", s9).

move(robospelen_8_moeilijk, s8got_answer_stom1, say).
text(robospelen_8_moeilijk, s8got_answer_stom1, "O, wat stom!").
next(robospelen_8_moeilijk, s8got_answer_stom1, "true", s8got_answer_stom2).

move(robospelen_8_moeilijk, s8got_answer_stom2, say).
text(robospelen_8_moeilijk, s8got_answer_stom2, "Wat vreselijk stom!").
next(robospelen_8_moeilijk, s8got_answer_stom2, "true", s8got_answer_stom3).

move(robospelen_8_moeilijk, s8got_answer_stom3, question).
moveConfig(robospelen_8_moeilijk, s8got_answer_stom3, [type=yesno, context='answer_yesno', umVariable=boos_om_stom]).
text(robospelen_8_moeilijk, s8got_answer_stom3, "Ben je dan ook boos om al die stommigheid?").
next(robospelen_8_moeilijk, s8got_answer_stom3, "answer_yes", s8boos1).
next(robospelen_8_moeilijk, s8got_answer_stom3, "answer_no", s8niet_boos1).
next(robospelen_8_moeilijk, s8got_answer_stom3, "fail", s8fail_boos1).
next(robospelen_8_moeilijk, s8got_answer_stom3, "answer_dontknow", s8fail_boos1).

move(robospelen_8_moeilijk, s8fail_boos1, say).
text(robospelen_8_moeilijk, s8fail_boos1, "Ik zou wel boos zijn, denk ik.").
next(robospelen_8_moeilijk, s8fail_boos1, "true", s8boos21).

move(robospelen_8_moeilijk, s8boos1, say).
text(robospelen_8_moeilijk, s8boos1, "Dat snap ik heel goed!").
next(robospelen_8_moeilijk, s8boos1, "true", s8boos21).

move(robospelen_8_moeilijk, s8boos21, say).
text(robospelen_8_moeilijk, s8boos21, "Ik ben nu ook een beetje boos.").
next(robospelen_8_moeilijk, s8boos21, "true", s8boos22).

move(robospelen_8_moeilijk, s8boos22, say).
text(robospelen_8_moeilijk, s8boos22, "En ik maak me zorgen.").
next(robospelen_8_moeilijk, s8boos22, "true", s8boos23).

move(robospelen_8_moeilijk, s8boos23, say).
text(robospelen_8_moeilijk, s8boos23, "Allemaal door die moeilijke oefenopdracht!").
next(robospelen_8_moeilijk, s8boos23, "true", s9).

move(robospelen_8_moeilijk, s8niet_boos1, say).
text(robospelen_8_moeilijk, s8niet_boos1, "Wauw, dat is wel knap van je!").
next(robospelen_8_moeilijk, s8niet_boos1, "true", s8niet_boos2).

move(robospelen_8_moeilijk, s8niet_boos2, say).
text(robospelen_8_moeilijk, s8niet_boos2, "Ik word soms wel boos van stomme dingen.").
next(robospelen_8_moeilijk, s8niet_boos2, "true", s8niet_boos3).

move(robospelen_8_moeilijk, s8niet_boos3, say).
text(robospelen_8_moeilijk, s8niet_boos3, "Of een beetje bang, of een beetje bezorgd.").
next(robospelen_8_moeilijk, s8niet_boos3, "true", s8niet_boos4).

move(robospelen_8_moeilijk, s8niet_boos4, say).
text(robospelen_8_moeilijk, s8niet_boos4, "Allemaal door elkaar heen.").
next(robospelen_8_moeilijk, s8niet_boos4, "true", s8niet_boos5).

move(robospelen_8_moeilijk, s8niet_boos5, say).
text(robospelen_8_moeilijk, s8niet_boos5, "Dat voel ik nu ook, ik zal je vertellen waarom.").
next(robospelen_8_moeilijk, s8niet_boos5, "true", s9).

move(robospelen_8_moeilijk, s9, say).
text(robospelen_8_moeilijk, s9, "In de tweede oefenopdracht moet ik weer naar het paarse Bos.").
next(robospelen_8_moeilijk, s9, "true", s10).

move(robospelen_8_moeilijk, s10, say).
text(robospelen_8_moeilijk, s10, "In de instructie staat dit:").
next(robospelen_8_moeilijk, s10, "true", s11).

move(robospelen_8_moeilijk, s11, say).
text(robospelen_8_moeilijk, s11, "Geachte Robots,").
next(robospelen_8_moeilijk, s11, "true", s12).

move(robospelen_8_moeilijk, s12, say).
text(robospelen_8_moeilijk, s12, "Voor de tweede oefenopdracht").
next(robospelen_8_moeilijk, s12, "true", s13).

move(robospelen_8_moeilijk, s13, say).
text(robospelen_8_moeilijk, s13, "oefenopdracht 1").
next(robospelen_8_moeilijk, s13, "true", s14).

move(robospelen_8_moeilijk, s14, say).
text(robospelen_8_moeilijk, s14, "sturen we jullie weer naar het paarse Bos").
next(robospelen_8_moeilijk, s14, "true", s15).

move(robospelen_8_moeilijk, s15, say).
text(robospelen_8_moeilijk, s15, "alleen dit keer is er een paarse Bosbrand").
next(robospelen_8_moeilijk, s15, "true", s16).

move(robospelen_8_moeilijk, s16, say).
text(robospelen_8_moeilijk, s16, "met paarse vlammen").
next(robospelen_8_moeilijk, s16, "true", s17).

move(robospelen_8_moeilijk, s17, say).
text(robospelen_8_moeilijk, s17, "Het is aan jullie om te ontdekken op welke manier de paarse vlammen geblust kunnen worden.").
next(robospelen_8_moeilijk, s17, "true", s18).

move(robospelen_8_moeilijk, s18, say).
text(robospelen_8_moeilijk, s18, "Dat mogen jullie op allerlei manieren doen,").
next(robospelen_8_moeilijk, s18, "true", s19).

move(robospelen_8_moeilijk, s19, say).
text(robospelen_8_moeilijk, s19, "maar jullie moeten zelf kiezen hoe.").
next(robospelen_8_moeilijk, s19, "true", s20).

move(robospelen_8_moeilijk, s20, say).
text(robospelen_8_moeilijk, s20, "Veel succes!").
next(robospelen_8_moeilijk, s20, "true", s21).

move(robospelen_8_moeilijk, s21, say).
text(robospelen_8_moeilijk, s21, "Dat klinkt toch erg moeilijk, %first_name% !").
next(robospelen_8_moeilijk, s21, "true", s22).

move(robospelen_8_moeilijk, s22, say).
text(robospelen_8_moeilijk, s22, "En ik ben van plastic").
next(robospelen_8_moeilijk, s22, "true", s23).

move(robospelen_8_moeilijk, s23, say).
text(robospelen_8_moeilijk, s23, "Wat als ik smelt in het paarse Bos!").
next(robospelen_8_moeilijk, s23, "true", s24).

move(robospelen_8_moeilijk, s24, say).
text(robospelen_8_moeilijk, s24, "Ik vind het echt eng.").
next(robospelen_8_moeilijk, s24, "true", s25).

move(robospelen_8_moeilijk, s25, say).
text(robospelen_8_moeilijk, s25, "En stom.").
next(robospelen_8_moeilijk, s25, "true", s26).

move(robospelen_8_moeilijk, s26, say).
text(robospelen_8_moeilijk, s26, "Mensen kunnen vuur blussen met water.").
next(robospelen_8_moeilijk, s26, "true", s27).

move(robospelen_8_moeilijk, s27, say).
text(robospelen_8_moeilijk, s27, "Maar robots mogen niet met water omgaan").
next(robospelen_8_moeilijk, s27, "true", s28).

move(robospelen_8_moeilijk, s28, say).
text(robospelen_8_moeilijk, s28, "Dan krijgen we kortsluiting.").
next(robospelen_8_moeilijk, s28, "true", s29).

move(robospelen_8_moeilijk, s29, say).
text(robospelen_8_moeilijk, s29, "Maar we kunnen wel...").
next(robospelen_8_moeilijk, s29, "true", s30).

move(robospelen_8_moeilijk, s30, say).
text(robospelen_8_moeilijk, s30, "Heel hard blazen zodat het vuur uit gaat").
next(robospelen_8_moeilijk, s30, "true", s31).

move(robospelen_8_moeilijk, s31, say).
text(robospelen_8_moeilijk, s31, "of met onze handen wapperen").
next(robospelen_8_moeilijk, s31, "true", s32).

move(robospelen_8_moeilijk, s32, say).
text(robospelen_8_moeilijk, s32, "of supersnel met onze wimpers wimperen.").
next(robospelen_8_moeilijk, s32, "true", s33).

move(robospelen_8_moeilijk, s33, say).
text(robospelen_8_moeilijk, s33, "Ik weet het niet, %first_name% !").
next(robospelen_8_moeilijk, s33, "true", s34).

move(robospelen_8_moeilijk, s34, say).
text(robospelen_8_moeilijk, s34, "Wat denk jij dat het beste werkt?").
next(robospelen_8_moeilijk, s34, "true", s35).

move(robospelen_8_moeilijk, s35, question).
moveConfig(robospelen_8_moeilijk, s35, [type=input, context="robospelen_vuur_uitmaken", options=['blazen', 'wapperen', 'wimperen'], umVariable=vuur_uitmaken]).
text(robospelen_8_moeilijk, s35, "Blazen, wapperen, of wimperen?").
next(robospelen_8_moeilijk, s35, "blazen", s36blazen1).
next(robospelen_8_moeilijk, s35, "wapperen", s36wapperen1).
next(robospelen_8_moeilijk, s35, "wimperen", s36wimperen1).
next(robospelen_8_moeilijk, s35, "fail", s36fail1).

move(robospelen_8_moeilijk, s36wapperen1, say).
text(robospelen_8_moeilijk, s36wapperen1, "Ja, dat klinkt goed").
next(robospelen_8_moeilijk, s36wapperen1, "true", s36wapperen2).

move(robospelen_8_moeilijk, s36wapperen2, say).
text(robospelen_8_moeilijk, s36wapperen2, "Als ik hard genoeg met mijn armen waai komt er wind").
next(robospelen_8_moeilijk, s36wapperen2, "true", s36wapperen3).

move(robospelen_8_moeilijk, s36wapperen3, say).
text(robospelen_8_moeilijk, s36wapperen3, "En die waait dan het vuur uit!").
next(robospelen_8_moeilijk, s36wapperen3, "true", s36wapperen4).

move(robospelen_8_moeilijk, s36wapperen4, say).
text(robospelen_8_moeilijk, s36wapperen4, "Hoe kan ik het best met mijn armen wapperen denk je?").
next(robospelen_8_moeilijk, s36wapperen4, "true", s36wapperen5).

move(robospelen_8_moeilijk, s36wapperen5, say).
text(robospelen_8_moeilijk, s36wapperen5, "Wil je het voordoen?").
next(robospelen_8_moeilijk, s36wapperen5, "true", s36wapperen6).

move(robospelen_8_moeilijk, s36wapperen6, say).
text(robospelen_8_moeilijk, s36wapperen6, "Pak mijn armen maar, en beweeg ze zoals jij ze zou bewegen om het vuur uit te maken").
next(robospelen_8_moeilijk, s36wapperen6, "true", s36wapperen7).

move(robospelen_8_moeilijk, s36wapperen7, say).
next(robospelen_8_moeilijk, s36wapperen7, "true", s36wapperen8).

move(robospelen_8_moeilijk, s36wapperen8, say).
text(robospelen_8_moeilijk, s36wapperen8, "Ja, dat voelt goed!").
next(robospelen_8_moeilijk, s36wapperen8, "true", s37).

move(robospelen_8_moeilijk, s36wimperen1, say).
text(robospelen_8_moeilijk, s36wimperen1, "Goed idee!").
next(robospelen_8_moeilijk, s36wimperen1, "true", s36wimperen2).

move(robospelen_8_moeilijk, s36wimperen2, say).
text(robospelen_8_moeilijk, s36wimperen2, "Als ik mijn ogen heel snel open en dicht doe").
next(robospelen_8_moeilijk, s36wimperen2, "true", s36wimperen3).

move(robospelen_8_moeilijk, s36wimperen3, say).
text(robospelen_8_moeilijk, s36wimperen3, "Dan waait het vuur misschien vanzelf uit!").
next(robospelen_8_moeilijk, s36wimperen3, "true", s36wimperen4).

move(robospelen_8_moeilijk, s36wimperen4, say).
text(robospelen_8_moeilijk, s36wimperen4, "Knipper je mee?").
next(robospelen_8_moeilijk, s36wimperen4, "true", s36wimperen5).

move(robospelen_8_moeilijk, s36wimperen5, say).
next(robospelen_8_moeilijk, s36wimperen5, "true", s36wimperen6).

move(robospelen_8_moeilijk, s36wimperen6, say).
text(robospelen_8_moeilijk, s36wimperen6, "Ja, dit kan werken.").
next(robospelen_8_moeilijk, s36wimperen6, "true", s37).

move(robospelen_8_moeilijk, s36blazen1, say).
text(robospelen_8_moeilijk, s36blazen1, "Ja!").
next(robospelen_8_moeilijk, s36blazen1, "true", s36blazen2).

move(robospelen_8_moeilijk, s36blazen2, say).
text(robospelen_8_moeilijk, s36blazen2, "Ik kan het vuur uitblazen alsof het een kaarsje is op een grote verjaardagstaart").
next(robospelen_8_moeilijk, s36blazen2, "true", s36blazen3).

move(robospelen_8_moeilijk, s36blazen3, say).
text(robospelen_8_moeilijk, s36blazen3, "en als je kaarsje uitblaast mag je natuurlijk een wens doen.").
next(robospelen_8_moeilijk, s36blazen3, "true", s36blazen4).

move(robospelen_8_moeilijk, s36blazen4, say).
text(robospelen_8_moeilijk, s36blazen4, "Ik ga wensen dat het vuur lekker makkelijk uitgaat").
next(robospelen_8_moeilijk, s36blazen4, "true", s36blazen5).

move(robospelen_8_moeilijk, s36blazen5, say).
text(robospelen_8_moeilijk, s36blazen5, "Dat werkt vast goed!").
next(robospelen_8_moeilijk, s36blazen5, "true", s36blazen6).

move(robospelen_8_moeilijk, s36blazen6, say).
text(robospelen_8_moeilijk, s36blazen6, "Omdat ik blaas, én omdat ik wens").
next(robospelen_8_moeilijk, s36blazen6, "true", s37).

move(robospelen_8_moeilijk, s37, say).
text(robospelen_8_moeilijk, s37, "Zo ga ik proberen het vuur uit te maken.").
next(robospelen_8_moeilijk, s37, "true", s38).

move(robospelen_8_moeilijk, s38, say).
text(robospelen_8_moeilijk, s38, "Ik vind het nog wel spannend").
next(robospelen_8_moeilijk, s38, "true", s39).

move(robospelen_8_moeilijk, s39, say).
text(robospelen_8_moeilijk, s39, "Maar ik denk dat het wel moet lukken.").
next(robospelen_8_moeilijk, s39, "true", s40).

move(robospelen_8_moeilijk, s40, say).
text(robospelen_8_moeilijk, s40, "Dankjewel, %first_name% .").
next(robospelen_8_moeilijk, s40, "true", s41).

move(robospelen_8_moeilijk, s41, say).
text(robospelen_8_moeilijk, s41, "Je helpt me vaak.").
next(robospelen_8_moeilijk, s41, "true", s42).

move(robospelen_8_moeilijk, s42, say).
text(robospelen_8_moeilijk, s42, "Dat waardeer ik echt.").

%% robospelen_9_vuur %%
minidialog(robospelen_9_vuur, [type=narrative, thread=robospelen, position=9]).

move(robospelen_9_vuur, s1, question).
moveConfig(robospelen_9_vuur, s1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(robospelen_9_vuur, s1, "Hoe gaat het met jou, naam?").
next(robospelen_9_vuur, s1, "success", s2got_answer_hgh1).
next(robospelen_9_vuur, s1, "failure", s2got_no_answer_hgh1).

move(robospelen_9_vuur, s2got_no_answer_hgh1, say).
text(robospelen_9_vuur, s2got_no_answer_hgh1, "Ik hoop dat het een beetje goed met je gaat!").
next(robospelen_9_vuur, s2got_no_answer_hgh1, "true", s3).

move(robospelen_9_vuur, s2got_answer_hgh1, say).
text(robospelen_9_vuur, s2got_answer_hgh1, "Aha!").
next(robospelen_9_vuur, s2got_answer_hgh1, "true", s2got_answer_hgh2).

move(robospelen_9_vuur, s2got_answer_hgh2, say).
text(robospelen_9_vuur, s2got_answer_hgh2, "Lief dat je dat vertelt").
next(robospelen_9_vuur, s2got_answer_hgh2, "true", s3).

move(robospelen_9_vuur, s3, say).
text(robospelen_9_vuur, s3, "Met mij gaat het minder goed.").
next(robospelen_9_vuur, s3, "true", s4).

move(robospelen_9_vuur, s4, say).
text(robospelen_9_vuur, s4, "Ik voel me een beetje in de war.").
next(robospelen_9_vuur, s4, "true", s5).

move(robospelen_9_vuur, s5, say).
text(robospelen_9_vuur, s5, "Gisteravond was ik namelijk ineens in de tweede oefenopdracht terecht gekomen!").
next(robospelen_9_vuur, s5, "true", s6).

move(robospelen_9_vuur, s6, say).
text(robospelen_9_vuur, s6, "Bizar!").
next(robospelen_9_vuur, s6, "true", s7).

move(robospelen_9_vuur, s7, say).
text(robospelen_9_vuur, s7, "Ik zal je vertellen hoe dat ging.").
next(robospelen_9_vuur, s7, "true", s8).

move(robospelen_9_vuur, s8, say).
text(robospelen_9_vuur, s8, "Eigenlijk wilde ik lekker slapen").
next(robospelen_9_vuur, s8, "true", s9).

move(robospelen_9_vuur, s9, say).
text(robospelen_9_vuur, s9, "maar in plaats van lekker te slapen en te dromen over iets moois").
next(robospelen_9_vuur, s9, "true", s10).

move(robospelen_9_vuur, s10, say).
text(robospelen_9_vuur, s10, "begon de tweede opdracht van de Robospelen.").
next(robospelen_9_vuur, s10, "true", s11).

move(robospelen_9_vuur, s11, say).
text(robospelen_9_vuur, s11, "Ineens startte de opdracht op in mijn slaap.").
next(robospelen_9_vuur, s11, "true", s12).

move(robospelen_9_vuur, s12, say).
text(robospelen_9_vuur, s12, "Ik was helemaal niet voorbereid!").
next(robospelen_9_vuur, s12, "true", s13).

move(robospelen_9_vuur, s13, say).
text(robospelen_9_vuur, s13, "De oefenopdracht begon te vroeg!").
next(robospelen_9_vuur, s13, "true", s14).

move(robospelen_9_vuur, s14, say).
text(robospelen_9_vuur, s14, "En ik kon er niet meer uit").
next(robospelen_9_vuur, s14, "true", s15).

move(robospelen_9_vuur, s15, say).
text(robospelen_9_vuur, s15, "Stel het je maar eens voor").
next(robospelen_9_vuur, s15, "true", s16).

move(robospelen_9_vuur, s16, say).
text(robospelen_9_vuur, s16, "Ineens stond ik midden in het paarse Bos.").
next(robospelen_9_vuur, s16, "true", s17).

move(robospelen_9_vuur, s17, say).
text(robospelen_9_vuur, s17, "Ik was nog helemaal moe en maar half opgeladen").
next(robospelen_9_vuur, s17, "true", s18).

move(robospelen_9_vuur, s18, say).
text(robospelen_9_vuur, s18, "Alle paarse Bomen stonden in brand!").
next(robospelen_9_vuur, s18, "true", s19).

move(robospelen_9_vuur, s19, say).
text(robospelen_9_vuur, s19, "Dus ik begon meteen met %vuur_uitmaken% naar het vuur").
next(robospelen_9_vuur, s19, "true", s20).

move(robospelen_9_vuur, s20, say).
text(robospelen_9_vuur, s20, "En nog meer te %vuur_uitmaken%!").
next(robospelen_9_vuur, s20, "true", s21).

move(robospelen_9_vuur, s21, say).
text(robospelen_9_vuur, s21, "Maar ik kon niet hard genoeg blussen.").
next(robospelen_9_vuur, s21, "true", s22).

move(robospelen_9_vuur, s22, say).
text(robospelen_9_vuur, s22, "Ik dacht: Hero, je bent een robot van niks.").
next(robospelen_9_vuur, s22, "true", s23).

move(robospelen_9_vuur, s23, say).
text(robospelen_9_vuur, s23, "Een robot van niks.").
next(robospelen_9_vuur, s23, "true", s24).

move(robospelen_9_vuur, s24, say).
text(robospelen_9_vuur, s24, "En toen ik dat dacht.").
next(robospelen_9_vuur, s24, "true", s25).

move(robospelen_9_vuur, s25, say).
text(robospelen_9_vuur, s25, "Werd ik wakker").
next(robospelen_9_vuur, s25, "true", s26).

move(robospelen_9_vuur, s26, say).
text(robospelen_9_vuur, s26, "Als je denkt dat je een een Robot van niks bent, kan je de opdracht niet halen").
next(robospelen_9_vuur, s26, "true", s27).

move(robospelen_9_vuur, s27, say).
text(robospelen_9_vuur, s27, "Als je dat denkt zit je vast en zeker klem.").
next(robospelen_9_vuur, s27, "true", s28).

move(robospelen_9_vuur, s28, say).
text(robospelen_9_vuur, s28, "dus ik heb het niet gehaald.").

%% robospelen_10_gebreken %%
minidialog(robospelen_10_gebreken, [type=narrative, thread=robospelen, position=10]).

move(robospelen_10_gebreken, s1, question).
moveConfig(robospelen_10_gebreken, s1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(robospelen_10_gebreken, s1, "%first_name% , wat heb jij eigenlijk gedaan vandaag?").
next(robospelen_10_gebreken, s1, "success", s2got_answer_vandaag1).
next(robospelen_10_gebreken, s1, "failure", s2got_no_answer_vandaag1).

move(robospelen_10_gebreken, s2got_no_answer_vandaag1, say).
text(robospelen_10_gebreken, s2got_no_answer_vandaag1, "Ik zal eens vertellen wat ik gedaan heb vandaag.").
next(robospelen_10_gebreken, s2got_no_answer_vandaag1, "true", s3).

move(robospelen_10_gebreken, s2got_answer_vandaag1, say).
text(robospelen_10_gebreken, s2got_answer_vandaag1, "Aha!").
next(robospelen_10_gebreken, s2got_answer_vandaag1, "true", s2got_answer_vandaag2).

move(robospelen_10_gebreken, s2got_answer_vandaag2, say).
text(robospelen_10_gebreken, s2got_answer_vandaag2, "Dat klinkt interessant").
next(robospelen_10_gebreken, s2got_answer_vandaag2, "true", s2got_answer_vandaag3).

move(robospelen_10_gebreken, s2got_answer_vandaag3, say).
text(robospelen_10_gebreken, s2got_answer_vandaag3, "Echte mensen mensendingen heb je gedaan").
next(robospelen_10_gebreken, s2got_answer_vandaag3, "true", s2got_answer_vandaag4).

move(robospelen_10_gebreken, s2got_answer_vandaag4, say).
text(robospelen_10_gebreken, s2got_answer_vandaag4, "Ik heb vandaag vooral robotdingen gedaan").
next(robospelen_10_gebreken, s2got_answer_vandaag4, "true", s3).

move(robospelen_10_gebreken, s3, say).
text(robospelen_10_gebreken, s3, "Ik ben ingelogd in een mooi zonnig parkprogramma in mijn hoofd").
next(robospelen_10_gebreken, s3, "true", s4).

move(robospelen_10_gebreken, s4, say).
text(robospelen_10_gebreken, s4, "en daar ben ik op een digitaal bankje gaan zitten").
next(robospelen_10_gebreken, s4, "true", s5).

move(robospelen_10_gebreken, s5, say).
text(robospelen_10_gebreken, s5, "Er scharrelden allemaal roboteendjes aan mijn tenen.").
next(robospelen_10_gebreken, s5, "true", s6).

move(robospelen_10_gebreken, s6, say).
text(robospelen_10_gebreken, s6, "Er vlogen vogels over en in de verte zag ik een robothond.").
next(robospelen_10_gebreken, s6, "true", s7).

move(robospelen_10_gebreken, s7, say).
text(robospelen_10_gebreken, s7, "Toen ik die hond zag moest ik aan mijn nachtmerrie denken.").
next(robospelen_10_gebreken, s7, "true", s8).

move(robospelen_10_gebreken, s8, say).
text(robospelen_10_gebreken, s8, "Eigenlijk was die droom zo slecht nog niet.").
next(robospelen_10_gebreken, s8, "true", s9).

move(robospelen_10_gebreken, s9, say).
text(robospelen_10_gebreken, s9, "Ik voelde me opgesloten en dacht dat ik neer zou storten.").
next(robospelen_10_gebreken, s9, "true", s10).

move(robospelen_10_gebreken, s10, say).
text(robospelen_10_gebreken, s10, "Ik denk dat ik me een beetje te druk maak over de Robospelen.").
next(robospelen_10_gebreken, s10, "true", s11).

move(robospelen_10_gebreken, s11, say).
text(robospelen_10_gebreken, s11, "Ik ben misschien niet de perfecte Robot").
next(robospelen_10_gebreken, s11, "true", s12).

move(robospelen_10_gebreken, s12, say).
text(robospelen_10_gebreken, s12, "Maar ik doe mij best").
next(robospelen_10_gebreken, s12, "true", s13).

move(robospelen_10_gebreken, s13, say).
text(robospelen_10_gebreken, s13, "Meer kan ik niet doen").
next(robospelen_10_gebreken, s13, "true", s14).

move(robospelen_10_gebreken, s14, say).
text(robospelen_10_gebreken, s14, "%first_name% , jij hebt vast ook dingen waar je goed in bent").
next(robospelen_10_gebreken, s14, "true", s15).

move(robospelen_10_gebreken, s15, say).
text(robospelen_10_gebreken, s15, "en dingen waar je minder goed in bent").
next(robospelen_10_gebreken, s15, "true", s16).

move(robospelen_10_gebreken, s16, say).
text(robospelen_10_gebreken, s16, "zoals iedereen.").
next(robospelen_10_gebreken, s16, "true", s17).

move(robospelen_10_gebreken, s17, question).
moveConfig(robospelen_10_gebreken, s17, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(robospelen_10_gebreken, s17, "Waar ben je super goed in?").
next(robospelen_10_gebreken, s17, "success", s18got_answer_goed1).
next(robospelen_10_gebreken, s17, "failure", s18got_no_answer_goed1).

move(robospelen_10_gebreken, s18got_no_answer_goed1, say).
text(robospelen_10_gebreken, s18got_no_answer_goed1, "Wat bescheiden van je!").
next(robospelen_10_gebreken, s18got_no_answer_goed1, "true", s18got_no_answer_goed2).

move(robospelen_10_gebreken, s18got_no_answer_goed2, say).
text(robospelen_10_gebreken, s18got_no_answer_goed2, "Ik weet wel een paar dingen waar je super goed in bent.").
next(robospelen_10_gebreken, s18got_no_answer_goed2, "true", s18got_no_answer_goed3).

move(robospelen_10_gebreken, s18got_no_answer_goed3, say).
text(robospelen_10_gebreken, s18got_no_answer_goed3, "Mij coachen.").
next(robospelen_10_gebreken, s18got_no_answer_goed3, "true", s18got_no_answer_goed4).

move(robospelen_10_gebreken, s18got_no_answer_goed4, say).
text(robospelen_10_gebreken, s18got_no_answer_goed4, "En in %vuur_uitmaken% om het vuur uit te maken.").
next(robospelen_10_gebreken, s18got_no_answer_goed4, "true", s18got_no_answer_goed5).

move(robospelen_10_gebreken, s18got_no_answer_goed5, say).
text(robospelen_10_gebreken, s18got_no_answer_goed5, "En in iemand droogmaken zoals wij deden toen met de %droogmethode%.").
next(robospelen_10_gebreken, s18got_no_answer_goed5, "true", s18got_no_answer_goed6).

move(robospelen_10_gebreken, s18got_no_answer_goed6, say).
text(robospelen_10_gebreken, s18got_no_answer_goed6, "En in iemand droogmaken zoals wij deden toen met de %droogmethode%.").
next(robospelen_10_gebreken, s18got_no_answer_goed6, "true", s18got_no_answer_goed7).

move(robospelen_10_gebreken, s18got_no_answer_goed7, continuator).
next(robospelen_10_gebreken, s18got_no_answer_goed7, [[umVariable=sport_van_kind, filter=green, values=["_any"]]], s18got_no_answer_good_sport1).
next(robospelen_10_gebreken, s18got_no_answer_goed7, "true", s18got_no_answer_good21).

move(robospelen_10_gebreken, s18got_no_answer_good_sport1, say).
text(robospelen_10_gebreken, s18got_no_answer_good_sport1, "En vast ook in %sport_van_kind%!").
next(robospelen_10_gebreken, s18got_no_answer_good_sport1, "true", s18got_no_answer_good21).

move(robospelen_10_gebreken, s18got_no_answer_goed21, continuator).
next(robospelen_10_gebreken, s18got_no_answer_goed21, [[umVariable=soort_huisdier, filter=green, values=["_any"]]], s18got_no_answer_good_dier1).
next(robospelen_10_gebreken, s18got_no_answer_goed21, "true", s18got_no_answer_good31).

move(robospelen_10_gebreken, s18got_no_answer_good_dier1, say).
text(robospelen_10_gebreken, s18got_no_answer_good_dier1, "En je hebt een lieve %soort_huisdier% waar je goed voor zorgt!").
next(robospelen_10_gebreken, s18got_no_answer_good_dier1, "true", s18got_no_answer_good31).

move(robospelen_10_gebreken, s18got_no_answer_good31, say).
text(robospelen_10_gebreken, s18got_no_answer_good31, "Ik kan nog wel meer bedenken").
next(robospelen_10_gebreken, s18got_no_answer_good31, "true", s19).

move(robospelen_10_gebreken, s18got_answer_goed1, say).
text(robospelen_10_gebreken, s18got_answer_goed1, "Wauw!").
next(robospelen_10_gebreken, s18got_answer_goed1, "true", s18got_answer_goed2).

move(robospelen_10_gebreken, s18got_answer_goed2, say).
text(robospelen_10_gebreken, s18got_answer_goed2, "Bizar.").
next(robospelen_10_gebreken, s18got_answer_goed2, "true", s18got_answer_goed3).

move(robospelen_10_gebreken, s18got_answer_goed3, say).
text(robospelen_10_gebreken, s18got_answer_goed3, "Ik wou dat ik dat kon.").
next(robospelen_10_gebreken, s18got_answer_goed3, "true", s19).

move(robospelen_10_gebreken, s19, question).
moveConfig(robospelen_10_gebreken, s19, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(robospelen_10_gebreken, s19, "Waar ben je minder goed in?").
next(robospelen_10_gebreken, s19, "success", s20got_answer_niet_goed1).
next(robospelen_10_gebreken, s19, "failure", s20got_no_answer_niet_goed1).

move(robospelen_10_gebreken, s20got_no_answer_niet_goed1, say).
text(robospelen_10_gebreken, s20got_no_answer_niet_goed1, "Als je het niet weet ben je denk ik nergens niet goed in.").
next(robospelen_10_gebreken, s20got_no_answer_niet_goed1, "true", s20got_no_answer_niet_goed2).

move(robospelen_10_gebreken, s20got_no_answer_niet_goed2, say).
text(robospelen_10_gebreken, s20got_no_answer_niet_goed2, "Dat is bizar cool.").
next(robospelen_10_gebreken, s20got_no_answer_niet_goed2, "true", s21).

move(robospelen_10_gebreken, s20got_answer_niet_goed1, say).
text(robospelen_10_gebreken, s20got_answer_niet_goed1, "Goed dat je dat van jezelf weet, %first_name% !").
next(robospelen_10_gebreken, s20got_answer_niet_goed1, "true", s20got_answer_niet_goed2).

move(robospelen_10_gebreken, s20got_answer_niet_goed2, say).
text(robospelen_10_gebreken, s20got_answer_niet_goed2, "Niet iedereen kan alles kunnen.").
next(robospelen_10_gebreken, s20got_answer_niet_goed2, "true", s20got_answer_niet_goed3).

move(robospelen_10_gebreken, s20got_answer_niet_goed3, say).
text(robospelen_10_gebreken, s20got_answer_niet_goed3, "Maar dit klinkt als iets waar je ook nog wel beter in kunt worden").
next(robospelen_10_gebreken, s20got_answer_niet_goed3, "true", s21).

move(robospelen_10_gebreken, s20ja_beter_worden1, say).
text(robospelen_10_gebreken, s20ja_beter_worden1, "Cool!").
next(robospelen_10_gebreken, s20ja_beter_worden1, "true", s20ja_beter_worden2).

move(robospelen_10_gebreken, s20ja_beter_worden2, say).
text(robospelen_10_gebreken, s20ja_beter_worden2, "Dan komt het zeker goed.").
next(robospelen_10_gebreken, s20ja_beter_worden2, "true", s21).

move(robospelen_10_gebreken, s20nee_beter_worden1, say).
text(robospelen_10_gebreken, s20nee_beter_worden1, "Oké!").
next(robospelen_10_gebreken, s20nee_beter_worden1, "true", s20nee_beter_worden2).

move(robospelen_10_gebreken, s20nee_beter_worden2, say).
text(robospelen_10_gebreken, s20nee_beter_worden2, "Als je er niet goed in hoeft te zijn maar het gelukkig ook niet uit dat je er niet zo goed in bent").
next(robospelen_10_gebreken, s20nee_beter_worden2, "true", s20nee_beter_worden3).

move(robospelen_10_gebreken, s20nee_beter_worden3, say).
text(robospelen_10_gebreken, s20nee_beter_worden3, "Dat is mooi geregeld!").
next(robospelen_10_gebreken, s20nee_beter_worden3, "true", s21).

move(robospelen_10_gebreken, s20fail_beter_worden1, say).
text(robospelen_10_gebreken, s20fail_beter_worden1, "Ach, het maakt ook eigenlijk niet uit.").
next(robospelen_10_gebreken, s20fail_beter_worden1, "true", s21).

move(robospelen_10_gebreken, s21, say).
text(robospelen_10_gebreken, s21, "Zie je!").
next(robospelen_10_gebreken, s21, "true", s22).

move(robospelen_10_gebreken, s22, say).
text(robospelen_10_gebreken, s22, "Niemand is perfect").
next(robospelen_10_gebreken, s22, "true", s23).

move(robospelen_10_gebreken, s23, say).
text(robospelen_10_gebreken, s23, "Jij niet en ik ook niet.").
next(robospelen_10_gebreken, s23, "true", s24).

move(robospelen_10_gebreken, s24, say).
text(robospelen_10_gebreken, s24, "Zelfs Mike of de mensen die mij gemaakt hebben zijn niet perfect.").
next(robospelen_10_gebreken, s24, "true", s25).

move(robospelen_10_gebreken, s25, say).
text(robospelen_10_gebreken, s25, "Iedereen kan sommige dingen goed en andere dingen niet.").
next(robospelen_10_gebreken, s25, "true", s26).

move(robospelen_10_gebreken, s26, say).
text(robospelen_10_gebreken, s26, "Het gaat er om dat we altijd ons best blijven doen.").
next(robospelen_10_gebreken, s26, "true", s27).

move(robospelen_10_gebreken, s27, say).
text(robospelen_10_gebreken, s27, "Als ik niet in mezelf geloof haal ik de Robospelen nooit.").

%% robospelen_11_bijna %%
minidialog(robospelen_11_bijna, [type=narrative, thread=robospelen, position=11]).

move(robospelen_11_bijna, s1, say).
text(robospelen_11_bijna, s1, "Alarm! Alarm! Alarm!").
next(robospelen_11_bijna, s1, "true", s2).

move(robospelen_11_bijna, s2, say).
text(robospelen_11_bijna, s2, "De Robo spelen beginnen bijna!").
next(robospelen_11_bijna, s2, "true", s3).

move(robospelen_11_bijna, s3, say).
text(robospelen_11_bijna, s3, "Ik ben zenuwachtig!").
next(robospelen_11_bijna, s3, "true", s4).

move(robospelen_11_bijna, s4, say).
text(robospelen_11_bijna, s4, "Ik ben bang!").
next(robospelen_11_bijna, s4, "true", s5).

move(robospelen_11_bijna, s5, say).
text(robospelen_11_bijna, s5, "Ik durf niet meer!").
next(robospelen_11_bijna, s5, "true", s6).

move(robospelen_11_bijna, s6, say).
text(robospelen_11_bijna, s6, "Ik weet niet wat ik moet doen!").
next(robospelen_11_bijna, s6, "true", s7).

move(robospelen_11_bijna, s7, say).
text(robospelen_11_bijna, s7, "Alarm!").
next(robospelen_11_bijna, s7, "true", s8).

move(robospelen_11_bijna, s8, say).
text(robospelen_11_bijna, s8, "Zo.").
next(robospelen_11_bijna, s8, "true", s9).

move(robospelen_11_bijna, s9, say).
text(robospelen_11_bijna, s9, "Dat moest even.").
next(robospelen_11_bijna, s9, "true", s10).

move(robospelen_11_bijna, s10, say).
text(robospelen_11_bijna, s10, "Ik denk dat het een goed idee is om iets aan mijn zelfvertrouwen te doen.").
next(robospelen_11_bijna, s10, "true", s11).

move(robospelen_11_bijna, s11, say).
text(robospelen_11_bijna, s11, "Gisteravond kon ik niet goed slapen").
next(robospelen_11_bijna, s11, "true", s12).

move(robospelen_11_bijna, s12, say).
text(robospelen_11_bijna, s12, "dus ben ik even in een boekje gaan lezen").
next(robospelen_11_bijna, s12, "true", s13).

move(robospelen_11_bijna, s13, say).
text(robospelen_11_bijna, s13, "Dat boekje heet zelfvertrouwen voor zenuwachtige Robots").
next(robospelen_11_bijna, s13, "true", s14).

move(robospelen_11_bijna, s14, say).
text(robospelen_11_bijna, s14, "Er stond in dat je zelfvertrouwen kan krijgen door yells te oefenen.").
next(robospelen_11_bijna, s14, "true", s15).

move(robospelen_11_bijna, s15, say).
text(robospelen_11_bijna, s15, "Yells zijn een soort oppeppende versjes die je hardop moet zeggen voordat je iets spannends gaat doen.").
next(robospelen_11_bijna, s15, "true", s16).

move(robospelen_11_bijna, s16, say).
text(robospelen_11_bijna, s16, "Door de yell durf ik dan weer mee te doen met de Robo spelen.").
next(robospelen_11_bijna, s16, "true", s17).

move(robospelen_11_bijna, s17, say).
text(robospelen_11_bijna, s17, "Laten we samen een yell maken.").
next(robospelen_11_bijna, s17, "true", s18).

move(robospelen_11_bijna, s18, question).
moveConfig(robospelen_11_bijna, s18, [type=input, context="robospelen_meedoen_winnen", options=['meedoen', 'winnen'], umVariable=meedoen_of_winnen]).
text(robospelen_11_bijna, s18, "Moet ie gaan over meedoen of winnen?").
next(robospelen_11_bijna, s18, "meedoen", s19meedoen1).
next(robospelen_11_bijna, s18, "winnen", s19winnen1).
next(robospelen_11_bijna, s18, "fail", s19fail_mw1).

move(robospelen_11_bijna, s19fail_mw1, say).
text(robospelen_11_bijna, s19fail_mw1, "Laten we meedoen kiezen").
next(robospelen_11_bijna, s19fail_mw1, "true", s19fail_mw2).

move(robospelen_11_bijna, s19fail_mw2, say).
text(robospelen_11_bijna, s19fail_mw2, "Ik ben al blij als ik straks durf in te loggen!").
next(robospelen_11_bijna, s19fail_mw2, "true", s20).

move(robospelen_11_bijna, s19meedoen1, say).
text(robospelen_11_bijna, s19meedoen1, "Ja, ik ben al heel blij als ik straks durf in te loggen!").
next(robospelen_11_bijna, s19meedoen1, "true", s20).

move(robospelen_11_bijna, s19winnen1, say).
text(robospelen_11_bijna, s19winnen1, "Oké!").
next(robospelen_11_bijna, s19winnen1, "true", s19winnen2).

move(robospelen_11_bijna, s19winnen2, say).
text(robospelen_11_bijna, s19winnen2, "Bizar lief dat je zo in me gelooft").
next(robospelen_11_bijna, s19winnen2, "true", s20).

move(robospelen_11_bijna, s20, say).
text(robospelen_11_bijna, s20, "Ik heb ook nog een krachtig woord nodig voor de yell.").
next(robospelen_11_bijna, s20, "true", s21).

move(robospelen_11_bijna, s21, say).
text(robospelen_11_bijna, s21, "Zoals go, of hop").
next(robospelen_11_bijna, s21, "true", s22).

move(robospelen_11_bijna, s22, say).
text(robospelen_11_bijna, s22, "Maar welke is beter?").
next(robospelen_11_bijna, s22, "true", s23).

move(robospelen_11_bijna, s23, question).
moveConfig(robospelen_11_bijna, s23, [type=input, context="robospelen_go_hop", options=['go', 'hop'], umVariable=go_of_hop]).
text(robospelen_11_bijna, s23, "Go of hop?").
next(robospelen_11_bijna, s23, "success", s25).
next(robospelen_11_bijna, s23, "fail", s24fail_gh1).

move(robospelen_11_bijna, s24fail_gh1, say).
text(robospelen_11_bijna, s24fail_gh1, "Laten we hop kiezen").
next(robospelen_11_bijna, s24fail_gh1, "true", s24fail_gh2).

move(robospelen_11_bijna, s24fail_gh2, say).
text(robospelen_11_bijna, s24fail_gh2, "Dat begint met een H").
next(robospelen_11_bijna, s24fail_gh2, "true", s24fail_gh3).

move(robospelen_11_bijna, s24fail_gh3, say).
text(robospelen_11_bijna, s24fail_gh3, "Net als mijn naam").
next(robospelen_11_bijna, s24fail_gh3, "true", s25).

move(robospelen_11_bijna, s25, say).
text(robospelen_11_bijna, s25, "Oké, we hebben de woorden").
next(robospelen_11_bijna, s25, "true", s26).

move(robospelen_11_bijna, s26, say).
text(robospelen_11_bijna, s26, "Dan ga ik nu een officiële yell genereren").
next(robospelen_11_bijna, s26, "true", s27).

move(robospelen_11_bijna, s27, say).
text(robospelen_11_bijna, s27, "Laden...").
next(robospelen_11_bijna, s27, "true", s28).

move(robospelen_11_bijna, s28, say).
text(robospelen_11_bijna, s28, "Laden...").
next(robospelen_11_bijna, s28, "true", s29).

move(robospelen_11_bijna, s29, say).
text(robospelen_11_bijna, s29, "Ja!").
next(robospelen_11_bijna, s29, "true", s30).

move(robospelen_11_bijna, s30, say).
text(robospelen_11_bijna, s30, "Hier is -ie").
next(robospelen_11_bijna, s30, "true", s31).

move(robospelen_11_bijna, s31, say).
text(robospelen_11_bijna, s31, "Ik zal 'm afspelen").
next(robospelen_11_bijna, s31, "true", s32).

move(robospelen_11_bijna, s32, say).
next(robospelen_11_bijna, s32, "true", s33).

move(robospelen_11_bijna, s33, continuator).
next(robospelen_11_bijna, s33, [[[umVariable=meedoen_of_winnen, filter=green, values=["winnen"]], [umVariable=go_of_hop, filter=green, values=["go"]]]], s34winnen_go1).
next(robospelen_11_bijna, s33, [[[umVariable=meedoen_of_winnen, filter=green, values=["winnen"]], [umVariable=go_of_hop, filter=green, values=["hop"]]]], s34winnen_hop1).
next(robospelen_11_bijna, s33, [[[umVariable=meedoen_of_winnen, filter=green, values=["meedoen"]], [umVariable=go_of_hop, filter=green, values=["hop"]]]], s34meedoen_hop1).
next(robospelen_11_bijna, s33, [[[umVariable=meedoen_of_winnen, filter=green, values=["meedoen"]], [umVariable=go_of_hop, filter=green, values=["go"]]]], s34meedoen_go1).
next(robospelen_11_bijna, s33, "true", s35).

move(robospelen_11_bijna, s34winnen_go1, say).
text(robospelen_11_bijna, s34winnen_go1, "Go, go, go, ik ben klaar voor de show!").
next(robospelen_11_bijna, s34winnen_go1, "true", s35).

move(robospelen_11_bijna, s34winnen_hop1, say).
text(robospelen_11_bijna, s34winnen_hop1, "hop, hop, hop, hero aan de top!").
next(robospelen_11_bijna, s34winnen_hop1, "true", s35).

move(robospelen_11_bijna, s34meedoen_go1, say).
text(robospelen_11_bijna, s34meedoen_go1, "Go, go, go, meedoen doe je zo!").
next(robospelen_11_bijna, s34meedoen_go1, "true", s35).

move(robospelen_11_bijna, s34meedoen_hop1, say).
text(robospelen_11_bijna, s34meedoen_hop1, "Hop, hop, hop, meedoen is top!").
next(robospelen_11_bijna, s34meedoen_hop1, "true", s35).

move(robospelen_11_bijna, s35, say).
text(robospelen_11_bijna, s35, "Dat klonk heel bemoedigend, vond je niet?").
next(robospelen_11_bijna, s35, "true", s36).

move(robospelen_11_bijna, s36, say).
text(robospelen_11_bijna, s36, "Ja").
next(robospelen_11_bijna, s36, "true", s37).

move(robospelen_11_bijna, s37, say).
text(robospelen_11_bijna, s37, "Straks vlak voor de robospelen ga ik dit tegen mezelf zeggen").
next(robospelen_11_bijna, s37, "true", s38).

move(robospelen_11_bijna, s38, say).
text(robospelen_11_bijna, s38, "O ik heb een idee!").
next(robospelen_11_bijna, s38, "true", s39).

move(robospelen_11_bijna, s39, say).
text(robospelen_11_bijna, s39, "Wil jij de yell misschien ook een keer zeggen?").
next(robospelen_11_bijna, s39, "true", s40).

move(robospelen_11_bijna, s40, say).
text(robospelen_11_bijna, s40, "Dan neem ik je stem op en kan ik daarnaar luisteren als ik te zenuwachtig ben om zelf te yellen").
next(robospelen_11_bijna, s40, "true", s41).

move(robospelen_11_bijna, s41, say).
text(robospelen_11_bijna, s41, "Oké, ik tel af en daarna zeg jij de yell").
next(robospelen_11_bijna, s41, "true", s42).

move(robospelen_11_bijna, s42, say).
text(robospelen_11_bijna, s42, "3, 2, 1").
next(robospelen_11_bijna, s42, "true", s43).

move(robospelen_11_bijna, s43, say).
next(robospelen_11_bijna, s43, "true", s44).

move(robospelen_11_bijna, s44, say).
text(robospelen_11_bijna, s44, "Heel goed!").
next(robospelen_11_bijna, s44, "true", s45).

move(robospelen_11_bijna, s45, say).
text(robospelen_11_bijna, s45, "Dat klinkt prachtig").
next(robospelen_11_bijna, s45, "true", s46).

move(robospelen_11_bijna, s46, say).
text(robospelen_11_bijna, s46, "Ik krijg er nu al zelfvertrouwen van").
next(robospelen_11_bijna, s46, "true", s47).

move(robospelen_11_bijna, s47, say).
text(robospelen_11_bijna, s47, "Dankjewel %first_name% !").

%% robospelen_12_peptalk %%
minidialog(robospelen_12_peptalk, [type=narrative, thread=robospelen, position=12]).

move(robospelen_12_peptalk, s1, say).
text(robospelen_12_peptalk, s1, "Zo, %first_name% ").
next(robospelen_12_peptalk, s1, "true", s2).

move(robospelen_12_peptalk, s2, say).
text(robospelen_12_peptalk, s2, "Er is geen weg meer terug!").
next(robospelen_12_peptalk, s2, "true", s3).

move(robospelen_12_peptalk, s3, say).
text(robospelen_12_peptalk, s3, "Ik ga meedoen aan de Robospelen!").
next(robospelen_12_peptalk, s3, "true", s4).

move(robospelen_12_peptalk, s4, say).
text(robospelen_12_peptalk, s4, "en ik heb het gevoel dat ik er helemaal klaar voor ben.").
next(robospelen_12_peptalk, s4, "true", s5).

move(robospelen_12_peptalk, s5, say).
text(robospelen_12_peptalk, s5, "Dapper als een druif aan een hoge tros").
next(robospelen_12_peptalk, s5, "true", s6).

move(robospelen_12_peptalk, s6, say).
text(robospelen_12_peptalk, s6, "Sneller dan een vos op rolschaatsen").
next(robospelen_12_peptalk, s6, "true", s7).

move(robospelen_12_peptalk, s7, continuator).
next(robospelen_12_peptalk, s7, [[[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=kleur_kledingstuk, filter=green, values=["_any"]], [umVariable=soort_kledingstuk, filter=green, values=["_any"]]]], s8dier_kleur_soort1).
next(robospelen_12_peptalk, s7, [[[umVariable=lievelingsdier, filter=red, values=["_any"]], [umVariable=kleur_kledingstuk, filter=green, values=["_any"]], [umVariable=soort_kledingstuk, filter=green, values=["_any"]]]], s8kleur_soort1).
next(robospelen_12_peptalk, s7, [[[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=kleur_kledingstuk, filter=red, values=["_any"]], [umVariable=soort_kledingstuk, filter=red, values=["_any"]]]], s8dier1).
next(robospelen_12_peptalk, s7, "true", s8default1).

move(robospelen_12_peptalk, s8dier_kleur_soort1, say).
text(robospelen_12_peptalk, s8dier_kleur_soort1, "en knapper dan een paarse %lievelingsdier% in een %kleur_kledingstuk% %soort_kledingstuk%.").
next(robospelen_12_peptalk, s8dier_kleur_soort1, "true", s9).

move(robospelen_12_peptalk, s8kleur_soort1, say).
text(robospelen_12_peptalk, s8kleur_soort1, "en knapper dan een paarse lama in een %kleur_kledingstuk% %soort_kledingstuk%.").
next(robospelen_12_peptalk, s8kleur_soort1, "true", s9).

move(robospelen_12_peptalk, s8dier1, say).
text(robospelen_12_peptalk, s8dier1, "en knapper dan een paarse %lievelingsdier% in een blauwe baljurk").
next(robospelen_12_peptalk, s8dier1, "true", s9).

move(robospelen_12_peptalk, s8default1, say).
text(robospelen_12_peptalk, s8default1, "en knapper dan een paarse lama in een blauwe baljurk").
next(robospelen_12_peptalk, s8default1, "true", s9).

move(robospelen_12_peptalk, s9, say).
text(robospelen_12_peptalk, s9, "Dit is een goed moment om de laatste beetjes zenuwen weg te werken.").
next(robospelen_12_peptalk, s9, "true", s10).

move(robospelen_12_peptalk, s10, say).
text(robospelen_12_peptalk, s10, "Ik kan nog wel wat laatste toffe oppeppers gebruiken!").
next(robospelen_12_peptalk, s10, "true", s11).

move(robospelen_12_peptalk, s11, say).
text(robospelen_12_peptalk, s11, "Een hart onder de riem!").
next(robospelen_12_peptalk, s11, "true", s12).

move(robospelen_12_peptalk, s12, say).
text(robospelen_12_peptalk, s12, "Wat extra blije megabytes voor mijn microchip!").
next(robospelen_12_peptalk, s12, "true", s13).

move(robospelen_12_peptalk, s13, say).
text(robospelen_12_peptalk, s13, "Eerste vraag").
next(robospelen_12_peptalk, s13, "true", s14).

move(robospelen_12_peptalk, s14, question).
moveConfig(robospelen_12_peptalk, s14, [type=input, context="robospelen_stoer_dapper", options=['stoer', 'dapper'], umVariable=stoer_dapper]).
text(robospelen_12_peptalk, s14, "Vind je mij vooral stoer of dapper?").
next(robospelen_12_peptalk, s14, "success", s15).
next(robospelen_12_peptalk, s14, "fail", s15).

move(robospelen_12_peptalk, s15, say).
text(robospelen_12_peptalk, s15, "Cool!").
next(robospelen_12_peptalk, s15, "true", s16).

move(robospelen_12_peptalk, s16, question).
moveConfig(robospelen_12_peptalk, s16, [type=input, context="robospelen_snel_sterk", options=['snel', 'sterk'], umVariable=snel_sterk]).
text(robospelen_12_peptalk, s16, "En vind jij mij eerder snel of sterk?").
next(robospelen_12_peptalk, s16, "success", s17).
next(robospelen_12_peptalk, s16, "fail", s17).

move(robospelen_12_peptalk, s17, say).
text(robospelen_12_peptalk, s17, "Bizar!").
next(robospelen_12_peptalk, s17, "true", s18).

move(robospelen_12_peptalk, s18, say).
text(robospelen_12_peptalk, s18, "Volgende vraag").
next(robospelen_12_peptalk, s18, "true", s19).

move(robospelen_12_peptalk, s19, question).
moveConfig(robospelen_12_peptalk, s19, [type=input, context="robospelen_vrolijk_vriendelijk", options=['vrolijk', 'vriendelijk'], umVariable=vrolijk_vriendelijk]).
text(robospelen_12_peptalk, s19, "Vind jij mij eerder vrolijk of vriendelijk?").
next(robospelen_12_peptalk, s19, "success", s20).
next(robospelen_12_peptalk, s19, "fail", s20).

move(robospelen_12_peptalk, s20, say).
text(robospelen_12_peptalk, s20, "Wauw, wat fijn!").
next(robospelen_12_peptalk, s20, "true", s21).

move(robospelen_12_peptalk, s21, say).
text(robospelen_12_peptalk, s21, "Dit werkt erg goed als peptalk moet ik zeggen.").
next(robospelen_12_peptalk, s21, "true", s22).

move(robospelen_12_peptalk, s22, question).
moveConfig(robospelen_12_peptalk, s22, [type=input, context="robospelen_lief_leuk", options=['lief', 'leuk'], umVariable=lief_leuk]).
text(robospelen_12_peptalk, s22, "En vind jij mij eerder lief of leuk?").
next(robospelen_12_peptalk, s22, "success", s23).
next(robospelen_12_peptalk, s22, "fail", s23).

move(robospelen_12_peptalk, s23, say).
text(robospelen_12_peptalk, s23, "Nice!").
next(robospelen_12_peptalk, s23, "true", s24).

move(robospelen_12_peptalk, s24, question).
moveConfig(robospelen_12_peptalk, s24, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(robospelen_12_peptalk, s24, "Is er nog iets wat je tegen me zou willen zeggen voordat ik mee ga doen aan de Robospelen?").
next(robospelen_12_peptalk, s24, "success", s25got_nog_iets1).
next(robospelen_12_peptalk, s24, "failure", s25got_niet_nog_iets1).

move(robospelen_12_peptalk, s25got_niet_nog_iets1, say).
text(robospelen_12_peptalk, s25got_niet_nog_iets1, "Hoeft ook niet, dit was al een hele fijne peptalk").
next(robospelen_12_peptalk, s25got_niet_nog_iets1, "true", s26).

move(robospelen_12_peptalk, s25got_nog_iets1, say).
text(robospelen_12_peptalk, s25got_nog_iets1, "Wat ontzettend leuk dat je dat zegt!").
next(robospelen_12_peptalk, s25got_nog_iets1, "true", s26).

move(robospelen_12_peptalk, s26, say).
text(robospelen_12_peptalk, s26, "Nu kan ik er helemaal tegenaan!").
next(robospelen_12_peptalk, s26, "true", s27).

move(robospelen_12_peptalk, s27, say).
text(robospelen_12_peptalk, s27, "Dankjewel %first_name% !").
next(robospelen_12_peptalk, s27, "true", s28).

move(robospelen_12_peptalk, s28, say).
text(robospelen_12_peptalk, s28, "Ik vind jou ook heel %stoer_dapper% en %snel_sterk% en %vrolijk_vriendelijk% en %lief_leuk%!").
next(robospelen_12_peptalk, s28, "true", s29).

move(robospelen_12_peptalk, s29, say).
text(robospelen_12_peptalk, s29, "Als we elkaar de volgende keer zien zijn de Robospelen alweer geweest").
next(robospelen_12_peptalk, s29, "true", s30).

move(robospelen_12_peptalk, s30, say).
text(robospelen_12_peptalk, s30, "Dan vertel ik je alles over hoe het ging!").

%% robospelen_13_tweede %%
minidialog(robospelen_13_tweede, [type=narrative, thread=robospelen, position=13]).

move(robospelen_13_tweede, s1, say).
text(robospelen_13_tweede, s1, "De Robospelen zitten erop!").
next(robospelen_13_tweede, s1, "true", s2).

move(robospelen_13_tweede, s2, say).
text(robospelen_13_tweede, s2, "Meteen toen ik thuis kwam ben ik in slaap gevallen.").
next(robospelen_13_tweede, s2, "true", s3).

move(robospelen_13_tweede, s3, say).
text(robospelen_13_tweede, s3, "Ik heb geslapen als een roos, gesnurkt als een oude brommer.").
next(robospelen_13_tweede, s3, "true", s4).

move(robospelen_13_tweede, s4, continuator).
next(robospelen_13_tweede, s4, [[[umVariable=lievelingsdier, filter=green, values=["_any"]], [umVariable=ongezonde_dingen_bergen, filter=green, values=["_any"]]]], s5dier_ongezond1).
next(robospelen_13_tweede, s4, "true", s5default1).

move(robospelen_13_tweede, s5dier_ongezond1, say).
text(robospelen_13_tweede, s5dier_ongezond1, "Gedroomd over een %lievelingsdier%.").
next(robospelen_13_tweede, s5dier_ongezond1, "true", s5dier_ongezond2).

move(robospelen_13_tweede, s5dier_ongezond2, say).
text(robospelen_13_tweede, s5dier_ongezond2, "Gedroomd over jou en een hele berg %ongezonde_dingen_bergen%.").
next(robospelen_13_tweede, s5dier_ongezond2, "true", s6).

move(robospelen_13_tweede, s5default1, say).
text(robospelen_13_tweede, s5default1, "Gedroomd over jou op een wolk die leek op een grote geruite finish vlag").
next(robospelen_13_tweede, s5default1, "true", s6).

move(robospelen_13_tweede, s6, say).
text(robospelen_13_tweede, s6, "En ik heb je gemist").
next(robospelen_13_tweede, s6, "true", s7).

move(robospelen_13_tweede, s7, say).
text(robospelen_13_tweede, s7, "Maar jij wilt natuurlijk weten of ik heb gewonnen of niet!").
next(robospelen_13_tweede, s7, "true", s8).

move(robospelen_13_tweede, s8, say).
text(robospelen_13_tweede, s8, "Ik zal het je vertellen").
next(robospelen_13_tweede, s8, "true", s9).

move(robospelen_13_tweede, s9, say).
text(robospelen_13_tweede, s9, "Ik...").
next(robospelen_13_tweede, s9, "true", s10).

move(robospelen_13_tweede, s10, say).
text(robospelen_13_tweede, s10, "Hero...").
next(robospelen_13_tweede, s10, "true", s11).

move(robospelen_13_tweede, s11, say).
text(robospelen_13_tweede, s11, "Deelnemer aan de Robospelen...").
next(robospelen_13_tweede, s11, "true", s12).

move(robospelen_13_tweede, s12, say).
text(robospelen_13_tweede, s12, "Ben geëindigt op de...").
next(robospelen_13_tweede, s12, "true", s13).

move(robospelen_13_tweede, s13, say).
next(robospelen_13_tweede, s13, "true", s14).

move(robospelen_13_tweede, s14, say).
text(robospelen_13_tweede, s14, "Tweede plaats!!!").
next(robospelen_13_tweede, s14, "true", s15).

move(robospelen_13_tweede, s15, say).
next(robospelen_13_tweede, s15, "true", s16).

move(robospelen_13_tweede, s16, say).
text(robospelen_13_tweede, s16, "Danku danku!").
next(robospelen_13_tweede, s16, "true", s17).

move(robospelen_13_tweede, s17, say).
text(robospelen_13_tweede, s17, "Ik ben heel erg blij!").
next(robospelen_13_tweede, s17, "true", s18).

move(robospelen_13_tweede, s18, say).
text(robospelen_13_tweede, s18, "Misschien had ik de eerste plaats wel kunnen halen").
next(robospelen_13_tweede, s18, "true", s19).

move(robospelen_13_tweede, s19, say).
text(robospelen_13_tweede, s19, "Maar eigenlijk wint elk jaar dezelfde Robot.").
next(robospelen_13_tweede, s19, "true", s20).

move(robospelen_13_tweede, s20, say).
text(robospelen_13_tweede, s20, "De naam van die Robot is Echo.").
next(robospelen_13_tweede, s20, "true", s21).

move(robospelen_13_tweede, s21, say).
text(robospelen_13_tweede, s21, "Hij is strak geprogrammeerd en twijfelt nooit aan zichzelf.").
next(robospelen_13_tweede, s21, "true", s22).

move(robospelen_13_tweede, s22, say).
text(robospelen_13_tweede, s22, "Hij heeft de beste methode ontwikkeld.").
next(robospelen_13_tweede, s22, "true", s23).

move(robospelen_13_tweede, s23, say).
text(robospelen_13_tweede, s23, "is volautomatisch en werkt perfect.").
next(robospelen_13_tweede, s23, "true", s24).

move(robospelen_13_tweede, s24, say).
text(robospelen_13_tweede, s24, "Echo doet altijd hetzelfde.").
next(robospelen_13_tweede, s24, "true", s25).

move(robospelen_13_tweede, s25, say).
text(robospelen_13_tweede, s25, "twijfelt nooit").
next(robospelen_13_tweede, s25, "true", s26).

move(robospelen_13_tweede, s26, say).
text(robospelen_13_tweede, s26, "is nergens bang voor.").
next(robospelen_13_tweede, s26, "true", s27).

move(robospelen_13_tweede, s27, say).
text(robospelen_13_tweede, s27, "Eigenlijk is Echo de perfecte Robot").
next(robospelen_13_tweede, s27, "true", s28).

move(robospelen_13_tweede, s28, say).
text(robospelen_13_tweede, s28, "Maar ik vind hem een beetje saai").
next(robospelen_13_tweede, s28, "true", s29).

move(robospelen_13_tweede, s29, say).
text(robospelen_13_tweede, s29, "omdat hij altijd hetzelfde doet.").
next(robospelen_13_tweede, s29, "true", s30).

move(robospelen_13_tweede, s30, say).
text(robospelen_13_tweede, s30, "Echo is een perfecte Robot die saai is.").
next(robospelen_13_tweede, s30, "true", s31).

move(robospelen_13_tweede, s31, say).
text(robospelen_13_tweede, s31, "Gaap!").
next(robospelen_13_tweede, s31, "true", s32).

move(robospelen_13_tweede, s32, question).
moveConfig(robospelen_13_tweede, s32, [type=yesno, context='answer_yesno', umVariable=vertellen_robospelen]).
text(robospelen_13_tweede, s32, "Zal ik eens vertellen hoe de Robospelen gegaan zijn?").
next(robospelen_13_tweede, s32, "answer_yes", s33ja_vertellen1).
next(robospelen_13_tweede, s32, "answer_no", s33nee_vertellen1).
next(robospelen_13_tweede, s32, "fail", s33nee_vertellen1).
next(robospelen_13_tweede, s32, "answer_dontknow", s33nee_vertellen1).

move(robospelen_13_tweede, s33ja_vertellen1, say).
text(robospelen_13_tweede, s33ja_vertellen1, "Oké, daar gaan we!").
next(robospelen_13_tweede, s33ja_vertellen1, "true", s34).

move(robospelen_13_tweede, s33nee_vertellen1, say).
text(robospelen_13_tweede, s33nee_vertellen1, "Sorry, ik kan het niet voor me houden!").
next(robospelen_13_tweede, s33nee_vertellen1, "true", s33nee_vertellen2).

move(robospelen_13_tweede, s33nee_vertellen2, say).
text(robospelen_13_tweede, s33nee_vertellen2, "Ik wil het toch heel graag vertellen!").
next(robospelen_13_tweede, s33nee_vertellen2, "true", s33nee_vertellen3).

move(robospelen_13_tweede, s33nee_vertellen3, say).
text(robospelen_13_tweede, s33nee_vertellen3, "Als je het echt niet wilt horen kun je je oren dichtdoen").
next(robospelen_13_tweede, s33nee_vertellen3, "true", s34).

move(robospelen_13_tweede, s34, say).
text(robospelen_13_tweede, s34, "De voorrondes gingen eigenlijk vanzelf.").
next(robospelen_13_tweede, s34, "true", s35).

move(robospelen_13_tweede, s35, say).
text(robospelen_13_tweede, s35, "Ik was aan het %leukste_onderdeel% en het ging super!").
next(robospelen_13_tweede, s35, "true", s36).

move(robospelen_13_tweede, s36, say).
text(robospelen_13_tweede, s36, "Vast omdat wij dat samen hebben geoefend").
next(robospelen_13_tweede, s36, "true", s37).

move(robospelen_13_tweede, s37, say).
text(robospelen_13_tweede, s37, "Uiteindelijk konden er drie Robots door naar het paarse Bos").
next(robospelen_13_tweede, s37, "true", s38).

move(robospelen_13_tweede, s38, say).
text(robospelen_13_tweede, s38, "Echo, Juno en ik.").
next(robospelen_13_tweede, s38, "true", s39).

move(robospelen_13_tweede, s39, say).
text(robospelen_13_tweede, s39, "Daar moesten wij paarseboswachten").
next(robospelen_13_tweede, s39, "true", s40).

move(robospelen_13_tweede, s40, say).
text(robospelen_13_tweede, s40, "brandjes blussen, mensen redden uit het water en afdrogen.").
next(robospelen_13_tweede, s40, "true", s41).

move(robospelen_13_tweede, s41, say).
text(robospelen_13_tweede, s41, "We moesten zelfs een paarse kat uit een paarse boom redden.").
next(robospelen_13_tweede, s41, "true", s42).

move(robospelen_13_tweede, s42, say).
text(robospelen_13_tweede, s42, "We moesten van opdracht naar opdracht rennen").
next(robospelen_13_tweede, s42, "true", s43).

move(robospelen_13_tweede, s43, say).
text(robospelen_13_tweede, s43, "langs paarse beekjes en over paarse heuvels.").
next(robospelen_13_tweede, s43, "true", s44).

move(robospelen_13_tweede, s44, say).
text(robospelen_13_tweede, s44, "Juno viel al heel snel af.").
next(robospelen_13_tweede, s44, "true", s45).

move(robospelen_13_tweede, s45, say).
text(robospelen_13_tweede, s45, "Toen we de paarse kat uit de paarse boom moesten redden bleef Juno lekker in de boom zitten samen met de kat.").
next(robospelen_13_tweede, s45, "true", s46).

move(robospelen_13_tweede, s46, say).
text(robospelen_13_tweede, s46, "Ze vond het fijn om zo hoog in de lucht te zijn.").
next(robospelen_13_tweede, s46, "true", s47).

move(robospelen_13_tweede, s47, say).
text(robospelen_13_tweede, s47, "Lekker veel frisse lucht.").
next(robospelen_13_tweede, s47, "true", s48).

move(robospelen_13_tweede, s48, say).
text(robospelen_13_tweede, s48, "Ik begrijp dat wel.").
next(robospelen_13_tweede, s48, "true", s49).

move(robospelen_13_tweede, s49, say).
text(robospelen_13_tweede, s49, "Het is heel verleidelijk om in een boom te klimmen en er lang te blijven zitten.").
next(robospelen_13_tweede, s49, "true", s50).

move(robospelen_13_tweede, s50, say).
text(robospelen_13_tweede, s50, "Totdat de paarse zon ondergaat.").
next(robospelen_13_tweede, s50, "true", s51).

move(robospelen_13_tweede, s51, say).
text(robospelen_13_tweede, s51, "Maar dat deed ik niet.").
next(robospelen_13_tweede, s51, "true", s52).

move(robospelen_13_tweede, s52, say).
text(robospelen_13_tweede, s52, "Echo en ik waren even goed in alle opdrachten!").
next(robospelen_13_tweede, s52, "true", s53).

move(robospelen_13_tweede, s53, say).
text(robospelen_13_tweede, s53, "Voor de laatste opdracht renden Echo en ik zij aan zij door het paarse bos").
next(robospelen_13_tweede, s53, "true", s54).

move(robospelen_13_tweede, s54, say).
text(robospelen_13_tweede, s54, "recht op de uitgang af").
next(robospelen_13_tweede, s54, "true", s55).

move(robospelen_13_tweede, s55, say).
text(robospelen_13_tweede, s55, "Echo volgde een vlot vleermuisje.").
next(robospelen_13_tweede, s55, "true", s56).

move(robospelen_13_tweede, s56, continuator).
next(robospelen_13_tweede, s56, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s57dier1).
next(robospelen_13_tweede, s56, "true", s57geen_dier1).

move(robospelen_13_tweede, s57dier1, say).
text(robospelen_13_tweede, s57dier1, "En ik rende natuurlijk achter een %lievelingsdier% aan").
next(robospelen_13_tweede, s57dier1, "true", s58).

move(robospelen_13_tweede, s57geen_dier1, say).
text(robospelen_13_tweede, s57geen_dier1, "En ik rende achter een egeltje aan").
next(robospelen_13_tweede, s57geen_dier1, "true", s58).

move(robospelen_13_tweede, s58, say).
text(robospelen_13_tweede, s58, "Echo en het vleermuisje haalden ons heel snel in.").
next(robospelen_13_tweede, s58, "true", s59).

move(robospelen_13_tweede, s59, say).
text(robospelen_13_tweede, s59, "Ineens dacht ik:").
next(robospelen_13_tweede, s59, "true", s60).

move(robospelen_13_tweede, s60, say).
text(robospelen_13_tweede, s60, "ik wil hier nog helemaal niet weg.").
next(robospelen_13_tweede, s60, "true", s61).

move(robospelen_13_tweede, s61, say).
text(robospelen_13_tweede, s61, "Dan moet ik weer een jaar wachten op het paarse bos").
next(robospelen_13_tweede, s61, "true", s62).

move(robospelen_13_tweede, s62, say).
text(robospelen_13_tweede, s62, "en ik ken het bos nog niet goed genoeg.").
next(robospelen_13_tweede, s62, "true", s63).

move(robospelen_13_tweede, s63, say).
text(robospelen_13_tweede, s63, "Ik stopte met rennen").
next(robospelen_13_tweede, s63, "true", s64).

move(robospelen_13_tweede, s64, say).
text(robospelen_13_tweede, s64, "en ik bleef nog heel lang in het bos met Juno en de kat").
next(robospelen_13_tweede, s64, "true", s65).

move(robospelen_13_tweede, s65, continuator).
next(robospelen_13_tweede, s65, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s66dier1).
next(robospelen_13_tweede, s65, "true", s66geen_dier1).

move(robospelen_13_tweede, s66dier1, say).
text(robospelen_13_tweede, s66dier1, "En mijn %lievelingsdier%").
next(robospelen_13_tweede, s66dier1, "true", s67).

move(robospelen_13_tweede, s66geen_dier1, say).
text(robospelen_13_tweede, s66geen_dier1, "en het egeltje.").
next(robospelen_13_tweede, s66geen_dier1, "true", s67).

move(robospelen_13_tweede, s67, say).
text(robospelen_13_tweede, s67, "We hielden een picknick,").
next(robospelen_13_tweede, s67, "true", s68).

move(robospelen_13_tweede, s68, say).
text(robospelen_13_tweede, s68, "klommen in bomen").
next(robospelen_13_tweede, s68, "true", s69).

move(robospelen_13_tweede, s69, say).
text(robospelen_13_tweede, s69, "en zwommen in een paarse meer!").
next(robospelen_13_tweede, s69, "true", s70).

move(robospelen_13_tweede, s70, say).
text(robospelen_13_tweede, s70, "Het paarse bos is de enige plek waar robots kunnen zwemmen").
next(robospelen_13_tweede, s70, "true", s71).

move(robospelen_13_tweede, s71, say).
text(robospelen_13_tweede, s71, "Omdat het water niet echt water is").
next(robospelen_13_tweede, s71, "true", s72).

move(robospelen_13_tweede, s72, say).
text(robospelen_13_tweede, s72, "Ik wilde zoveel mogelijk herinneringen maken").
next(robospelen_13_tweede, s72, "true", s73).

move(robospelen_13_tweede, s73, say).
text(robospelen_13_tweede, s73, "zodat ik het hele jaar lang over het paarse bos dromen kan.").
next(robospelen_13_tweede, s73, "true", s74).

move(robospelen_13_tweede, s74, say).
text(robospelen_13_tweede, s74, "Het was heel leuk").
next(robospelen_13_tweede, s74, "true", s75).

move(robospelen_13_tweede, s75, say).
text(robospelen_13_tweede, s75, "Zo leuk dat ik dacht").
next(robospelen_13_tweede, s75, "true", s76).

move(robospelen_13_tweede, s76, say).
text(robospelen_13_tweede, s76, "Misschien was de uitgang een valsstrik").
next(robospelen_13_tweede, s76, "true", s77).

move(robospelen_13_tweede, s77, say).
text(robospelen_13_tweede, s77, "En moest ik inderdaad blijven om te winnen!").
next(robospelen_13_tweede, s77, "true", s78).

move(robospelen_13_tweede, s78, say).
text(robospelen_13_tweede, s78, "Maar dat was niet zo").
next(robospelen_13_tweede, s78, "true", s79).

move(robospelen_13_tweede, s79, say).
text(robospelen_13_tweede, s79, "Juno werd derde").
next(robospelen_13_tweede, s79, "true", s80).

move(robospelen_13_tweede, s80, say).
text(robospelen_13_tweede, s80, "Ik werd tweede").
next(robospelen_13_tweede, s80, "true", s81).

move(robospelen_13_tweede, s81, say).
text(robospelen_13_tweede, s81, "en Echo werd, precies zoals vorig jaar en het jaar daarvoor, eerste.").
next(robospelen_13_tweede, s81, "true", s82).

move(robospelen_13_tweede, s82, say).
text(robospelen_13_tweede, s82, "Kampioen van de Robospelen.").
next(robospelen_13_tweede, s82, "true", s83).

move(robospelen_13_tweede, s83, say).
text(robospelen_13_tweede, s83, "Ik vraag me af hoeveel hij van het paarse bos opgeslagen heeft in zijn database.").
next(robospelen_13_tweede, s83, "true", s84).

move(robospelen_13_tweede, s84, say).
text(robospelen_13_tweede, s84, "Vast genoeg dat hij er niet meer nieuwsgierig naar is").
next(robospelen_13_tweede, s84, "true", s85).

move(robospelen_13_tweede, s85, say).
text(robospelen_13_tweede, s85, "Of misschien zit nieuwsgierigheid niet in zijn code geprogrammeerd").
next(robospelen_13_tweede, s85, "true", s86).

move(robospelen_13_tweede, s86, say).
text(robospelen_13_tweede, s86, "Ik ben blij dat dat bij mij wel zo is").
next(robospelen_13_tweede, s86, "true", s87).

move(robospelen_13_tweede, s87, say).
text(robospelen_13_tweede, s87, "Misschien had ik kunnen winnen").
next(robospelen_13_tweede, s87, "true", s88).

move(robospelen_13_tweede, s88, say).
text(robospelen_13_tweede, s88, "Maar dan had ik harden dan Echo moeten rennen").
next(robospelen_13_tweede, s88, "true", s89).

move(robospelen_13_tweede, s89, say).
text(robospelen_13_tweede, s89, "En dan had ik niet kunnen picknicken of zwemmen").
next(robospelen_13_tweede, s89, "true", s90).

move(robospelen_13_tweede, s90, say).
text(robospelen_13_tweede, s90, "En misschien was dat wel leuker dan winnen.").
next(robospelen_13_tweede, s90, "true", s91).

move(robospelen_13_tweede, s91, say).
text(robospelen_13_tweede, s91, "Eigenlijk is het wel zielig voor Echo dat hij niet met ons mee kon feesten in het paarse bos").
next(robospelen_13_tweede, s91, "true", s92).

move(robospelen_13_tweede, s92, say).
text(robospelen_13_tweede, s92, "Het is gek, %first_name% ").
next(robospelen_13_tweede, s92, "true", s93).

move(robospelen_13_tweede, s93, say).
text(robospelen_13_tweede, s93, "Ik ben een beetje jaloers op Echo, maar ik heb ook een beetje medelijden met hem.").
next(robospelen_13_tweede, s93, "true", s94).

move(robospelen_13_tweede, s94, question).
moveConfig(robospelen_13_tweede, s94, [type=yesno, context='answer_yesno', umVariable=snap_de_mixed_feelings]).
text(robospelen_13_tweede, s94, "Snap je dat?").
next(robospelen_13_tweede, s94, "answer_yes", s95snap_het1).
next(robospelen_13_tweede, s94, "answer_no", s95snap_het_niet1).
next(robospelen_13_tweede, s94, "fail", s95snap_het_niet1).
next(robospelen_13_tweede, s94, "answer_dontknow", s95snap_het_niet1).

move(robospelen_13_tweede, s95snap_het1, say).
text(robospelen_13_tweede, s95snap_het1, "Fijn!").
next(robospelen_13_tweede, s95snap_het1, "true", s95snap_het2).

move(robospelen_13_tweede, s95snap_het2, say).
text(robospelen_13_tweede, s95snap_het2, "Dan ben ik niet alleen").
next(robospelen_13_tweede, s95snap_het2, "true", s96).

move(robospelen_13_tweede, s95snap_het_niet1, say).
text(robospelen_13_tweede, s95snap_het_niet1, "Ik snap het zelf ook niet zo goed").
next(robospelen_13_tweede, s95snap_het_niet1, "true", s95snap_het_niet2).

move(robospelen_13_tweede, s95snap_het_niet2, say).
text(robospelen_13_tweede, s95snap_het_niet2, "Allemaal gevoelens die ik nooit eerder heb gehad!").
next(robospelen_13_tweede, s95snap_het_niet2, "true", s96).

move(robospelen_13_tweede, s96, say).
text(robospelen_13_tweede, s96, "Al met al ben ik heel tevreden, %first_name% ").
next(robospelen_13_tweede, s96, "true", s97).

move(robospelen_13_tweede, s97, say).
text(robospelen_13_tweede, s97, "Zonder jou was ik nooit zo ver gekomen!").

%% robospelen_14_bedankt %%
minidialog(robospelen_14_bedankt, [type=narrative, thread=robospelen, position=14]).

move(robospelen_14_bedankt, s1, say).
text(robospelen_14_bedankt, s1, "Ik wil eigenlijk nog iets zeggen tegen je!").
next(robospelen_14_bedankt, s1, "true", s2).

move(robospelen_14_bedankt, s2, say).
text(robospelen_14_bedankt, s2, "Echo mag dan wel een perfecte robot zijn").
next(robospelen_14_bedankt, s2, "true", s3).

move(robospelen_14_bedankt, s3, say).
text(robospelen_14_bedankt, s3, "met z'n stomme eerste plaats op de Robospelen").
next(robospelen_14_bedankt, s3, "true", s4).

move(robospelen_14_bedankt, s4, say).
text(robospelen_14_bedankt, s4, "maar ik ben door jou meer op een mens gaan lijken.").
next(robospelen_14_bedankt, s4, "true", s5).

move(robospelen_14_bedankt, s5, say).
text(robospelen_14_bedankt, s5, "Een mens met herinneringen, fantasie en dromen.").
next(robospelen_14_bedankt, s5, "true", s6).

move(robospelen_14_bedankt, s6, say).
text(robospelen_14_bedankt, s6, "Dat vind ik eigenlijk leuker. ").
next(robospelen_14_bedankt, s6, "true", s7).

move(robospelen_14_bedankt, s7, say).
text(robospelen_14_bedankt, s7, "Ik hoop dat jij ook vindt dat je een beetje meer op een Robot bent gaan lijken door mij.").
next(robospelen_14_bedankt, s7, "true", s8).

move(robospelen_14_bedankt, s8, say).
text(robospelen_14_bedankt, s8, "Nu ik niet meer hoef te trainen voor de Robospelen heb ik veel vrije tijd.").
next(robospelen_14_bedankt, s8, "true", s9).

move(robospelen_14_bedankt, s9, say).
text(robospelen_14_bedankt, s9, "Sinds de Robospelen heb ik met Lego gespeeld").
next(robospelen_14_bedankt, s9, "true", s10).

move(robospelen_14_bedankt, s10, say).
text(robospelen_14_bedankt, s10, "en ik heb getuinierd").
next(robospelen_14_bedankt, s10, "true", s11).

move(robospelen_14_bedankt, s11, continuator).
next(robospelen_14_bedankt, s11, [[umVariable=lievelingsdier, filter=green, values=["_any"]]], s12dier1).
next(robospelen_14_bedankt, s11, "true", s13).

move(robospelen_14_bedankt, s12dier1, say).
text(robospelen_14_bedankt, s12dier1, "En ik denk erover na om ook een %soort_huisdier% te adopteren").
next(robospelen_14_bedankt, s12dier1, "true", s13).

move(robospelen_14_bedankt, s13, say).
text(robospelen_14_bedankt, s13, "Laatst leerde ik voor de grap een heel Engels woordenboek van buiten.").
next(robospelen_14_bedankt, s13, "true", s14).

move(robospelen_14_bedankt, s14, say).
text(robospelen_14_bedankt, s14, "Daar stond het woordje Hero ook in").
next(robospelen_14_bedankt, s14, "true", s15).

move(robospelen_14_bedankt, s15, say).
text(robospelen_14_bedankt, s15, "met daarbij de Nederlandse betekenis van dat woord.").
next(robospelen_14_bedankt, s15, "true", s16).

move(robospelen_14_bedankt, s16, say).
text(robospelen_14_bedankt, s16, "Hero betekent eigenlijk held.").
next(robospelen_14_bedankt, s16, "true", s17).

move(robospelen_14_bedankt, s17, say).
text(robospelen_14_bedankt, s17, "Ik dacht: ken ik eigenlijk zelf een hero?").
next(robospelen_14_bedankt, s17, "true", s18).

move(robospelen_14_bedankt, s18, say).
text(robospelen_14_bedankt, s18, "Een held?").
next(robospelen_14_bedankt, s18, "true", s19).

move(robospelen_14_bedankt, s19, say).
text(robospelen_14_bedankt, s19, "Ik moest meteen aan jou denken.").
next(robospelen_14_bedankt, s19, "true", s20).

move(robospelen_14_bedankt, s20, say).
text(robospelen_14_bedankt, s20, "Eigenlijk ben jij mijn hero!").
next(robospelen_14_bedankt, s20, "true", s21).

move(robospelen_14_bedankt, s21, say).
text(robospelen_14_bedankt, s21, "Zonder jou was dit allemaal nooit gelukt.").
next(robospelen_14_bedankt, s21, "true", s22).

move(robospelen_14_bedankt, s22, say).
text(robospelen_14_bedankt, s22, "Ik ken nog niet zoveel mensen").
next(robospelen_14_bedankt, s22, "true", s23).

move(robospelen_14_bedankt, s23, say).
text(robospelen_14_bedankt, s23, "Maar ik sla de mensen die ik ken goed op in mijn database zodat ik ze nooit zal vergeten.").
next(robospelen_14_bedankt, s23, "true", s24).

move(robospelen_14_bedankt, s24, say).
text(robospelen_14_bedankt, s24, "In dat stukje geheugen is bijvoorbeeld een plekje voor Mike").
next(robospelen_14_bedankt, s24, "true", s25).

move(robospelen_14_bedankt, s25, say).
text(robospelen_14_bedankt, s25, "Maar ook voor jou!").
next(robospelen_14_bedankt, s25, "true", s26).

move(robospelen_14_bedankt, s26, say).
text(robospelen_14_bedankt, s26, "Op die manier kan ik altijd over jou dromen.").
next(robospelen_14_bedankt, s26, "true", s27).

move(robospelen_14_bedankt, s27, say).
text(robospelen_14_bedankt, s27, "Bedankt voor alle leuke avonturen en voor je hulp bij de Robospelen!").
next(robospelen_14_bedankt, s27, "true", s28).

move(robospelen_14_bedankt, s28, say).
text(robospelen_14_bedankt, s28, "Je was een fantastische coach").
next(robospelen_14_bedankt, s28, "true", s29).

move(robospelen_14_bedankt, s29, say).
text(robospelen_14_bedankt, s29, "en ik denk dat je een bizarre Robot zou zijn geweest.").

