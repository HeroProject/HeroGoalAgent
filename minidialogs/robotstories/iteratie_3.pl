%% eerste_begroeting %%
minidialog(rs_3_intro, [type=functional, function=greeting]).

move(rs_3_intro, s1, say).
text(rs_3_intro, s1, "Hallo, mijn naam is Hero!").
anim(rs_3_intro, s1, file, "resources/gestures/wave1.json").
next(rs_3_intro, s1, "true", s2).

move(rs_3_intro, s2, say).
text(rs_3_intro, s2, "En ik ben een robot.").