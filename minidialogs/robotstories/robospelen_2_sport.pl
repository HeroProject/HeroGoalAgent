minidialog(robospelen_2_sport, [type=narrative, thread=robospelen, position=2]).
dependency(robospelen_2_sport, dagdromen_sport, user_model, 0).

move(robospelen_2_sport, s1, say).
text(robospelen_2_sport, s1, "Sport").
%text(robospelen_2_sport, s1, "Hé, ik heb opeens een heel goed idee!").
%next(robospelen_2_sport, s1, "true", s2).

move(robospelen_2_sport, s2, question).
moveConfig(robospelen_2_sport, s2, [type=yesno, context='answer_yesno']).
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
audio(robospelen_2_sport, s3nee4, file, "resources/sounds/hero_mic_test.wav").
anim(robospelen_2_sport, s3nee4, file, "resources/gestures/gesture_robospelen_2_sport_s3nee4_2.json").
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

