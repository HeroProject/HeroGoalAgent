move(test_som, s1, question).
moveConfig(test_som, s1, [type=quiz, context='integer', correctAnswer=[180], maxAnswerTime=[tablet=0], form=numberField]).
text(test_som, s1, "Wat is 9 keer 20?").
next(test_som, s1, 'correct', s2cor).
next(test_som, s1, 'incorrect', s2incor).
next(test_som, s1, 'fail', s2f).

move(test_som, s2cor, say).
text(test_som, s2cor, "Ja klopt!").

move(test_som, s2incor, say).
text(test_som, s2incor, "Helaas. Het moest 180 zijn.").

move(test_som, s2f, say).
text(test_som, s2f, "Zal ik het maar verklappen? Het is 180.").

move(test_sor_open, s1, question).
moveConfig(test_sor_open, s1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(test_sor_open, s1, "Waarom is een zeeluiaard je lievelingsdier?").
next(test_sor_open, s1, 'success', s2).
next(test_sor_open, s1, 'fail', s2f).

move(test_sor_open, s2, say).
text(test_sor_open, s2, "Daar ben ik het helemaal mee eens.").

move(test_sor_open, s2f, say).
text(test_sor_open, s2f, "Leuk hoor.").

%%%%%

move(sor_test_full, s1, say).
text(sor_test_full, s1, "Een robotvriend van mij is stalhulp.").
next(sor_test_full, s1, "true", s2).

move(sor_test_full, s2, say).
text(sor_test_full, s2, "Hij moet de paarden tellen.").
math_generate(sor_test_full, s2).
next(sor_test_full, s2, "true", s3).

move(sor_test_full, s3, say).
text(sor_test_full, s3, "Er zijn %math_left% stallen. En in elke stal zitten %math_right% paarden.").
next(sor_test_full, s3, "true", s4).

move(sor_test_full, s4, say).
text(sor_test_full, s4, "Hoeveel paarden zijn er in totaal?").
next(sor_test_full, s4, "true", s5).

move(sor_test_full, s5, say).
text(sor_test_full, s5, "We moeten dus uitrekenen hoeveel %math_left% keer %math_right% is.").
display(sor_test_full, s5, "%math_left% x %math_right%", always).
next(sor_test_full, s5, "true", s6).

move(sor_test_full, s6, question).
moveConfig(sor_test_full, s6, [type=quiz, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField]).
text(sor_test_full, s6, "Wat is %math_left% keer %math_right%?").
display(sor_test_full, s6, "%math_left% x %math_right%", always).
next(sor_test_full, s6, 'correct', s7cor).
next(sor_test_full, s6, 'incorrect', s7incor).
next(sor_test_full, s1, 'fail', s7f).

move(sor_test_full, s7cor, say).
text(sor_test_full, s7cor, "Ja klopt!").

move(sor_test_full, s7incor, say).
text(sor_test_full, s7incor, "Helaas. Het moest %math_answer% zijn.").

move(sor_test_full, s7f, say).
text(sor_test_full, s7f, "Zal ik het maar verklappen? Het is %math_answer%.").