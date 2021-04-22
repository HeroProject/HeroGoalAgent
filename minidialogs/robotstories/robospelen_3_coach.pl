minidialog(robospelen_3_coach, [type=narrative, thread=robospelen, position=3]).

move(robospelen_3_coach, s1, say).
text(robospelen_3_coach, s1, "En misschien kun je me dingen leren die jij veel beter kunt.").
%next(robospelen_3_coach, s1, "true", s2).

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
moveConfig(robospelen_3_coach, s6, [type=yesno, context='answer_yesno']).
text(robospelen_3_coach, s6, "Lijkt dat je een goed idee?").
next(robospelen_3_coach, s6, "answer_yes", s7ja1).
next(robospelen_3_coach, s6, "fail", s7ja1).
next(robospelen_3_coach, s6, "answer_no", s7nee1).
next(robospelen_3_coach, s6, "answer_dontknow", s7nee1).

move(robospelen_3_coach, s7ja1, say).
text(robospelen_3_coach, s7ja1, "Hoera! Dan ben jij vanaf nu coach %first_name% .").
next(robospelen_3_coach, s7ja1, "true", s7ja2).

move(robospelen_3_coach, s7ja2, say).
text(robospelen_3_coach, s7ja2, "Ik vind je heel aardig, coach %first_name%  bedankt.").

move(robospelen_3_coach, s7nee1, question).
moveConfig(robospelen_3_coach, s7nee1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(robospelen_3_coach, s7nee1, "Oh! Waarom niet?").
next(robospelen_3_coach, s7nee1, "success", s7nee2).
next(robospelen_3_coach, s7nee1, "fail", s7nee2).

move(robospelen_3_coach, s7nee2, say).
text(robospelen_3_coach, s7nee2, "Hmmm.").
next(robospelen_3_coach, s7nee2, "true", s7nee3).

move(robospelen_3_coach, s7nee3, say).
text(robospelen_3_coach, s7nee3, "Misschien kunnen we er later nog een over nadenken.").
next(robospelen_3_coach, s7nee3, "true", s7nee4).

move(robospelen_3_coach, s7nee4, say).
text(robospelen_3_coach, s7nee4, "Je lijkt mij een super top coach!").

