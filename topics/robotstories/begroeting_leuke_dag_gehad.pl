state(begroeting_leuke_dag_gehad, s1, say).
text(begroeting_leuke_dag_gehad, s1, "Hallo %first_name% ").
play_motion_file(begroeting_leuke_dag_gehad, s1, "resources/gestures/wave1.json").
next(begroeting_leuke_dag_gehad, s1, "true", s2).

state(begroeting_leuke_dag_gehad, s2, say).
text(begroeting_leuke_dag_gehad, s2, "Leuk je weer te zien!").
next(begroeting_leuke_dag_gehad, s2, "true", s3).

state(begroeting_leuke_dag_gehad, s3, question).
stateConfig(begroeting_leuke_dag_gehad, s3, [type=yesno, context='answer_yesno']).
text(begroeting_leuke_dag_gehad, s3, "Had je een leuke dag vandaag?").
next(begroeting_leuke_dag_gehad, s3, "answer_yes", s4ja1).
next(begroeting_leuke_dag_gehad, s3, "answer_no", s4nee1).
next(begroeting_leuke_dag_gehad, s3, "answer_dontknow", s4nee1).
next(begroeting_leuke_dag_gehad, s3, "fail", s4nee1).

state(begroeting_leuke_dag_gehad, s4ja1, say).
text(begroeting_leuke_dag_gehad, s4ja1, "Gelukkig!").
next(begroeting_leuke_dag_gehad, s4ja1, "true", s4ja2).

state(begroeting_leuke_dag_gehad, s4ja2, question).
stateConfig(begroeting_leuke_dag_gehad, s4ja2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(begroeting_leuke_dag_gehad, s4ja2, "Wat heb je dan gedaan?").
next(begroeting_leuke_dag_gehad, s4ja2, "success", s4ja3).
next(begroeting_leuke_dag_gehad, s4ja2, "fail", s4ja3).

state(begroeting_leuke_dag_gehad, s4ja3, say).
text(begroeting_leuke_dag_gehad, s4ja3, "Dat klinkt goed.").

state(begroeting_leuke_dag_gehad, s4nee1, say).
text(begroeting_leuke_dag_gehad, s4nee1, "Oh, dat is jammer!").
next(begroeting_leuke_dag_gehad, s4nee1, "true", s4nee2).

state(begroeting_leuke_dag_gehad, s4nee2, say).
text(begroeting_leuke_dag_gehad, s4nee2, "Laten we het dan snel over iets leuks hebben.").

