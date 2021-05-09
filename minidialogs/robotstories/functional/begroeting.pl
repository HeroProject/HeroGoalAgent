%%%% HEADER %%%%
%% begroeting_leuke_dag_gehad %%
minidialog(begroeting_leuke_dag_gehad, [type=functional, function=greeting]).

move(begroeting_leuke_dag_gehad, s1, say).
text(begroeting_leuke_dag_gehad, s1, "Hallo %first_name% !").
next(begroeting_leuke_dag_gehad, s1, "true", s2).

move(begroeting_leuke_dag_gehad, s2, say).
text(begroeting_leuke_dag_gehad, s2, "Leuk je weer te zien!").
next(begroeting_leuke_dag_gehad, s2, "true", s3).

move(begroeting_leuke_dag_gehad, s3, question).
moveConfig(begroeting_leuke_dag_gehad, s3, [type=yesno, context='answer_yesno', umVariable=leuke_dag_vandaag]).
text(begroeting_leuke_dag_gehad, s3, "Had je een leuke dag vandaag?").
next(begroeting_leuke_dag_gehad, s3, "answer_yes", s4ja1).
next(begroeting_leuke_dag_gehad, s3, "answer_no", s4nee1).
next(begroeting_leuke_dag_gehad, s3, "answer_dontknow", s4nee1).
next(begroeting_leuke_dag_gehad, s3, "fail", s4nee1).

move(begroeting_leuke_dag_gehad, s4ja1, say).
text(begroeting_leuke_dag_gehad, s4ja1, "Gelukkig!").
next(begroeting_leuke_dag_gehad, s4ja1, "true", s4ja2).

move(begroeting_leuke_dag_gehad, s4ja2, question).
moveConfig(begroeting_leuke_dag_gehad, s4ja2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=gedaan_vandaag]).
text(begroeting_leuke_dag_gehad, s4ja2, "Wat heb je dan gedaan?").
next(begroeting_leuke_dag_gehad, s4ja2, "success", s4ja3).
next(begroeting_leuke_dag_gehad, s4ja2, "fail", s4ja3).

move(begroeting_leuke_dag_gehad, s4ja3, say).
text(begroeting_leuke_dag_gehad, s4ja3, "Dat klinkt goed.").

move(begroeting_leuke_dag_gehad, s4nee1, say).
text(begroeting_leuke_dag_gehad, s4nee1, "Oh, dat is jammer!").
next(begroeting_leuke_dag_gehad, s4nee1, "true", s4nee2).

move(begroeting_leuke_dag_gehad, s4nee2, say).
text(begroeting_leuke_dag_gehad, s4nee2, "Laten we het dan snel over iets leuks hebben.").

%% eerste_begroeting %%
minidialog(eerste_begroeting, [type=functional, function=greeting]).

move(eerste_begroeting, s1, say).
text(eerste_begroeting, s1, "Hallo, mijn naam is Hero!").
anim(eerste_begroeting, s1, file, "resources/gestures/wave1.json").
next(eerste_begroeting, s1, "true", s2).

move(eerste_begroeting, s2, say).
text(eerste_begroeting, s2, "En ik ben een robot.").
next(eerste_begroeting, s2, "true", s3).

move(eerste_begroeting, s3, say).
moveConfig(eerste_begroeting, s3, [waitTimer=3000]).
text(eerste_begroeting, s3, "Hoe heet jij?").
next(eerste_begroeting, s3, "true", s4).

move(eerste_begroeting, s4, say).
text(eerste_begroeting, s4, "%first_name%, wat een mooie naam!").
next(eerste_begroeting, s4, "true", s5).

move(eerste_begroeting, s5, say).
text(eerste_begroeting, s5, "Ik heb nog nooit iemand ontmoet die zo heet. Denk ik").
next(eerste_begroeting, s5, "true", s6).

move(eerste_begroeting, s6, say).
text(eerste_begroeting, s6, "Laat ik eerst wat over mijzelf vertellen").
next(eerste_begroeting, s6, "true", s7).

move(eerste_begroeting, s7, say).
text(eerste_begroeting, s7, "Ik ben aan het oefenen om een zorg robot te worden.").
next(eerste_begroeting, s7, "true", s8).

move(eerste_begroeting, s8, say).
text(eerste_begroeting, s8, "Zodat ik kinderen in het ziekenhuis kan helpen.").
next(eerste_begroeting, s8, "true", s9).

move(eerste_begroeting, s9, say).
text(eerste_begroeting, s9, "Ik moet nog veel leren, maar ik doe mijn best.").
next(eerste_begroeting, s9, "true", s10).

move(eerste_begroeting, s10, say).
text(eerste_begroeting, s10, "Wat fijn dat je mij daarbij wilt helpen").
next(eerste_begroeting, s10, "true", s11).

move(eerste_begroeting, s11, say).
text(eerste_begroeting, s11, "Ik vind het leuk om te kletsen en verhaaltjes te vertellen \pau=300\ ").

