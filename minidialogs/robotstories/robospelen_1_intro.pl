minidialog(robospelen_1_intro, [type=narrative, thread=robospelen, position=1, depedencies=[]]).

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
%anim(robospelen_1_intro, s19, file, "resources/gestures/gesture_robospelen_1_intro_s19_19.json").
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
text(robospelen_1_intro, s24, "Dus ik moet nog veel oefenen voor de RoboSpelen er zijn!").
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
moveConfig(robospelen_1_intro, s30, [type=yesno, context='answer_yesno']).
text(robospelen_1_intro, s30, "Weet jij wat ze bedoelen?").
next(robospelen_1_intro, s30, "answer_yes", s31ja1).
next(robospelen_1_intro, s30, "answer_no", s31nee1).
next(robospelen_1_intro, s30, "answer_dontknow", s31nee1).
next(robospelen_1_intro, s30, "fail", s31nee1).

move(robospelen_1_intro, s31ja1, say).
text(robospelen_1_intro, s31ja1, "Aha! Wat ben jij toch slim.").

move(robospelen_1_intro, s31nee1, say).
text(robospelen_1_intro, s31nee1, "Hmm.").
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

