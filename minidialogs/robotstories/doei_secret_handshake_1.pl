move(doei_secret_handshake_1, s1, say).
text(doei_secret_handshake_1, s1, "Ik moet alweer bijna gaan!").
next(doei_secret_handshake_1, s1, "true", s2).

move(doei_secret_handshake_1, s2, say).
text(doei_secret_handshake_1, s2, "Laten we onze secret handshake nog een keer doen.").
next(doei_secret_handshake_1, s2, "true", s3).

move(doei_secret_handshake_1, s3, say).
%anim(doei_secret_handshake_1, s3, file, "resources/gestures/gesture_doei_secret_handshake_1_s3_3.json").
next(doei_secret_handshake_1, s3, "true", s4).

move(doei_secret_handshake_1, s4, say).
text(doei_secret_handshake_1, s4, "Cool.").
next(doei_secret_handshake_1, s4, "true", s5).

move(doei_secret_handshake_1, s5, say).
text(doei_secret_handshake_1, s5, "Dag lieve %first_name% ").
next(doei_secret_handshake_1, s5, "true", s6).

move(doei_secret_handshake_1, s6, say).
text(doei_secret_handshake_1, s6, "Tot de volgende keer!").

