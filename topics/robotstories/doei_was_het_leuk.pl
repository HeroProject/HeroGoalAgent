state(doei_was_het_leuk, s1, say).
text(doei_was_het_leuk, s1, "Het is alweer tijd!").
next(doei_was_het_leuk, s1, "true", s2).

state(doei_was_het_leuk, s2, say).
text(doei_was_het_leuk, s2, "Ik vond het superleuk om met je te kletsen").
next(doei_was_het_leuk, s2, "true", s3).

state(doei_was_het_leuk, s3, question).
stateConfig(doei_was_het_leuk, s3, [type=yesno, context='answer_yesno']).
text(doei_was_het_leuk, s3, "Vond jij het ook leuk om met mij te kletsen?").
next(doei_was_het_leuk, s3, "answer_yes", s4ja1).
next(doei_was_het_leuk, s3, "answer_no", s4nee1).
next(doei_was_het_leuk, s3, "answer_dontknow", s4nee1).
next(doei_was_het_leuk, s3, "fail", s4nee1).

state(doei_was_het_leuk, s4ja1, say).
text(doei_was_het_leuk, s4ja1, "Wat fijn om te horen!").
next(doei_was_het_leuk, s4ja1, "true", s4ja2).

state(doei_was_het_leuk, s4ja2, say).
text(doei_was_het_leuk, s4ja2, "Laten we de volgende keer lekker verder kletsen.").
next(doei_was_het_leuk, s4ja2, "true", s5).

state(doei_was_het_leuk, s4nee1, say).
text(doei_was_het_leuk, s4nee1, "Nou wat jammer zeg, volgende keer beter.").
next(doei_was_het_leuk, s4nee1, "true", s4nee2).

state(doei_was_het_leuk, s4nee2, say).
text(doei_was_het_leuk, s4nee2, "Dan zorg ik dat de volgende keer extra leuke dingen doen.").
next(doei_was_het_leuk, s4nee2, "true", s5).

state(doei_was_het_leuk, s5, say).
text(doei_was_het_leuk, s5, "Laten we onze secret handshake nog een keer doen!").
next(doei_was_het_leuk, s5, "true", s6).

state(doei_was_het_leuk, s6, say).
anim(doei_was_het_leuk, s6, file, "resources/gestures/gesture_doei_was_het_leuk_s6_6.json").
next(doei_was_het_leuk, s6, "true", s7).

state(doei_was_het_leuk, s7, say).
text(doei_was_het_leuk, s7, "Tot de volgende keer, %first_name% ").

