state(eerste_begroeting_secret_handshake, s1, say).
text(eerste_begroeting_secret_handshake, s1, "Hallo, mijn naam is Hero!").
anim(eerste_begroeting_secret_handshake, s1, file, "resources/gestures/wave1.json").
next(eerste_begroeting_secret_handshake, s1, "true", s2).

state(eerste_begroeting_secret_handshake, s2, say).
text(eerste_begroeting_secret_handshake, s2, "Jij heet %first_name%  toch?").
next(eerste_begroeting_secret_handshake, s2, "true", s3).

state(eerste_begroeting_secret_handshake, s3, say).
text(eerste_begroeting_secret_handshake, s3, "Ik heb nog nooit een %first_name% ontmoet.").
next(eerste_begroeting_secret_handshake, s3, "true", s4).

state(eerste_begroeting_secret_handshake, s4, question).
stateConfig(eerste_begroeting_secret_handshake, s4, [type=yesno, context='answer_yesno']).
text(eerste_begroeting_secret_handshake, s4, "Heb jij wel eens iemand anders die Hero heet ontmoet?").
next(eerste_begroeting_secret_handshake, s4, "answer_yes", s5ja1).
next(eerste_begroeting_secret_handshake, s4, "answer_no", s5nee1).
next(eerste_begroeting_secret_handshake, s4, "answer_dontknow", s5nee1).
next(eerste_begroeting_secret_handshake, s4, "fail", s5fail1).

state(eerste_begroeting_secret_handshake, s5ja1, say).
text(eerste_begroeting_secret_handshake, s5ja1, "Toch wel!").
next(eerste_begroeting_secret_handshake, s5ja1, "true", s5ja2).

state(eerste_begroeting_secret_handshake, s5ja2, say).
text(eerste_begroeting_secret_handshake, s5ja2, "Ik wist niet dat er ook mensen waren die Hero heten.").
next(eerste_begroeting_secret_handshake, s5ja2, "true", s6).

state(eerste_begroeting_secret_handshake, s5nee1, say).
text(eerste_begroeting_secret_handshake, s5nee1, "Hoera!").
next(eerste_begroeting_secret_handshake, s5nee1, "true", s5nee2).

state(eerste_begroeting_secret_handshake, s5nee2, say).
text(eerste_begroeting_secret_handshake, s5nee2, "Dan ben ik de eerste Hero die jij ontmoet hebt!").
next(eerste_begroeting_secret_handshake, s5nee2, "true", s6).

state(eerste_begroeting_secret_handshake, s5fail1, say).
text(eerste_begroeting_secret_handshake, s5fail1, "Sorry, ik weet niet zo goed wat ik moet zeggen. ").
next(eerste_begroeting_secret_handshake, s5fail1, "true", s5fail2).

state(eerste_begroeting_secret_handshake, s5fail2, say).
text(eerste_begroeting_secret_handshake, s5fail2, "Ik vind het heel spannend om je te ontmoeten.").
next(eerste_begroeting_secret_handshake, s5fail2, "true", s6).

state(eerste_begroeting_secret_handshake, s6, say).
text(eerste_begroeting_secret_handshake, s6, "Ik heb gezien dat volwassenen elkaar een hand geven als ze elkaar ontmoeten.").
next(eerste_begroeting_secret_handshake, s6, "true", s7).

state(eerste_begroeting_secret_handshake, s7, say).
text(eerste_begroeting_secret_handshake, s7, "Maar dat lijkt me eigenlijk een beetje saai.").
next(eerste_begroeting_secret_handshake, s7, "true", s8).

state(eerste_begroeting_secret_handshake, s8, say).
text(eerste_begroeting_secret_handshake, s8, "Iedereen geeft elkaar al een hand.").
next(eerste_begroeting_secret_handshake, s8, "true", s9).

state(eerste_begroeting_secret_handshake, s9, say).
text(eerste_begroeting_secret_handshake, s9, "Laten wij onze eigen geheime begroeting bedenken!").

