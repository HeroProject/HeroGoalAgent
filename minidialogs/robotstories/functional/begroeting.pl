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
moveConfig(begroeting_leuke_dag_gehad, s4ja2, [type=openend, context='answer_open', inputModality=[speech=1]]).
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

%% eerste_begroeting_secret_handshake %%
minidialog(eerste_begroeting_secret_handshake, [type=functional, function=greeting]).

move(eerste_begroeting_secret_handshake, s1, say).
text(eerste_begroeting_secret_handshake, s1, "Hallo, mijn naam is Hero!").
next(eerste_begroeting_secret_handshake, s1, "true", s2).

move(eerste_begroeting_secret_handshake, s2, say).
text(eerste_begroeting_secret_handshake, s2, "Jij heet %first_name% , toch?").
next(eerste_begroeting_secret_handshake, s2, "true", s3).

move(eerste_begroeting_secret_handshake, s3, say).
text(eerste_begroeting_secret_handshake, s3, "Ik heb nog nooit een %first_name%  ontmoet.").
next(eerste_begroeting_secret_handshake, s3, "true", s4).

move(eerste_begroeting_secret_handshake, s4, question).
moveConfig(eerste_begroeting_secret_handshake, s4, [type=yesno, context='answer_yesno', umVariable=een_hero_ontmoet]).
text(eerste_begroeting_secret_handshake, s4, "Heb jij wel eens iemand anders die Hero heet ontmoet?").
next(eerste_begroeting_secret_handshake, s4, "answer_yes", s5ja1).
next(eerste_begroeting_secret_handshake, s4, "answer_no", s5nee1).
next(eerste_begroeting_secret_handshake, s4, "answer_dontknow", s5nee1).
next(eerste_begroeting_secret_handshake, s4, "fail", s5fail1).

move(eerste_begroeting_secret_handshake, s5ja1, say).
text(eerste_begroeting_secret_handshake, s5ja1, "Toch wel!").
next(eerste_begroeting_secret_handshake, s5ja1, "true", s5ja2).

move(eerste_begroeting_secret_handshake, s5ja2, say).
text(eerste_begroeting_secret_handshake, s5ja2, "Ik wist niet dat er ook mensen waren die Hero heten.").
next(eerste_begroeting_secret_handshake, s5ja2, "true", s6).

move(eerste_begroeting_secret_handshake, s5nee1, say).
text(eerste_begroeting_secret_handshake, s5nee1, "Hoera!").
next(eerste_begroeting_secret_handshake, s5nee1, "true", s5nee2).

move(eerste_begroeting_secret_handshake, s5nee2, say).
text(eerste_begroeting_secret_handshake, s5nee2, "Dan ben ik de eerste Hero die jij ontmoet hebt!").
next(eerste_begroeting_secret_handshake, s5nee2, "true", s6).

move(eerste_begroeting_secret_handshake, s5fail1, say).
text(eerste_begroeting_secret_handshake, s5fail1, "Sorry, ik weet niet zo goed wat ik moet zeggen. ").
next(eerste_begroeting_secret_handshake, s5fail1, "true", s5fail2).

move(eerste_begroeting_secret_handshake, s5fail2, say).
text(eerste_begroeting_secret_handshake, s5fail2, "Ik vind het heel spannend om je te ontmoeten.").
next(eerste_begroeting_secret_handshake, s5fail2, "true", s6).

move(eerste_begroeting_secret_handshake, s6, say).
text(eerste_begroeting_secret_handshake, s6, "Ik heb gezien dat volwassenen elkaar een hand geven als ze elkaar ontmoeten.").
next(eerste_begroeting_secret_handshake, s6, "true", s7).

move(eerste_begroeting_secret_handshake, s7, say).
text(eerste_begroeting_secret_handshake, s7, "Maar dat lijkt me eigenlijk een beetje saai.").
next(eerste_begroeting_secret_handshake, s7, "true", s8).

move(eerste_begroeting_secret_handshake, s8, say).
text(eerste_begroeting_secret_handshake, s8, "Iedereen geeft elkaar al een hand.").
next(eerste_begroeting_secret_handshake, s8, "true", s9).

move(eerste_begroeting_secret_handshake, s9, say).
text(eerste_begroeting_secret_handshake, s9, "Laten wij onze eigen geheime begroeting bedenken!").

