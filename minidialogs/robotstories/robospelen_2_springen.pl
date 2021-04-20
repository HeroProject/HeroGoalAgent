move(robospelen_2_springen, s1, say).
text(robospelen_2_springen, s1, "Hé, ik heb opeens een heel goed idee!").
next(robospelen_2_springen, s1, "true", s2).

move(robospelen_2_springen, s2, say).
text(robospelen_2_springen, s2, "Jij kunt volgens mij heel veel écht moeilijke dingen.").
next(robospelen_2_springen, s2, "true", s3).

move(robospelen_2_springen, s3, say).
text(robospelen_2_springen, s3, "Zoals springen.").
next(robospelen_2_springen, s3, "true", s4).

move(robospelen_2_springen, s4, question).
moveConfig(robospelen_2_springen, s4, [type=yesno, context='answer_yesno']).
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
anim(robospelen_2_springen, s7, file, "resources/gestures/gesture_robospelen_2_springen_s7_7.json").
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

