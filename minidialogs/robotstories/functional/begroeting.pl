%%%% HEADER %%%%
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

%% begroeting_leuke_dag_gehad %%
minidialog(begroeting_leuke_dag_gehad, [type=functional, function=greeting]).

move(begroeting_leuke_dag_gehad, s1, say).
text(begroeting_leuke_dag_gehad, s1, "Hallo %first_name% !").
next(begroeting_leuke_dag_gehad, s1, "true", s2).

move(begroeting_leuke_dag_gehad, s2, continuator).
next(begroeting_leuke_dag_gehad, s2, [[expCondition=memory]], s3memory1).
next(begroeting_leuke_dag_gehad, s2, [[expCondition=control]], s3control1).
next(begroeting_leuke_dag_gehad, s2, "true", s4).

move(begroeting_leuke_dag_gehad, s3control1, say).
anim(begroeting_leuke_dag_gehad, s3control1, file, "resources/gestures/wave1.json").
next(begroeting_leuke_dag_gehad, s3control1, "true", s4).

move(begroeting_leuke_dag_gehad, s3memory1, say).
audio(begroeting_leuke_dag_gehad, s3memory1, id, handshake_sound).
anim(begroeting_leuke_dag_gehad, s3memory1, id, handshake_motion).
next(begroeting_leuke_dag_gehad, s3memory1, "true", s4).

move(begroeting_leuke_dag_gehad, s4, say).
text(begroeting_leuke_dag_gehad, s4, "Leuk je weer te zien!").
next(begroeting_leuke_dag_gehad, s4, "true", s5).

move(begroeting_leuke_dag_gehad, s5, question).
moveConfig(begroeting_leuke_dag_gehad, s5, [type=yesno, context='answer_yesno', umVariable=leuke_dag_vandaag]).
text(begroeting_leuke_dag_gehad, s5, "Heb je een leuke dag vandaag?").
next(begroeting_leuke_dag_gehad, s5, "answer_yes", s6ja1).
next(begroeting_leuke_dag_gehad, s5, "answer_no", s6nee1).
next(begroeting_leuke_dag_gehad, s5, "answer_dontknow", s6nee1).
next(begroeting_leuke_dag_gehad, s5, "fail", s6nee1).

move(begroeting_leuke_dag_gehad, s6ja1, say).
text(begroeting_leuke_dag_gehad, s6ja1, "Gelukkig!").
next(begroeting_leuke_dag_gehad, s6ja1, "true", s6ja2).

move(begroeting_leuke_dag_gehad, s6ja2, question).
moveConfig(begroeting_leuke_dag_gehad, s6ja2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=gedaan_vandaag]).
text(begroeting_leuke_dag_gehad, s6ja2, "Wat heb je dan gedaan?").
next(begroeting_leuke_dag_gehad, s6ja2, "success", s6ja3).
next(begroeting_leuke_dag_gehad, s6ja2, "fail", s6ja3).

move(begroeting_leuke_dag_gehad, s6ja3, say).
text(begroeting_leuke_dag_gehad, s6ja3, "Dat klinkt goed.").

move(begroeting_leuke_dag_gehad, s6nee1, say).
text(begroeting_leuke_dag_gehad, s6nee1, "Oh, dat is jammer!").
next(begroeting_leuke_dag_gehad, s6nee1, "true", s6nee2).

move(begroeting_leuke_dag_gehad, s6nee2, say).
text(begroeting_leuke_dag_gehad, s6nee2, "Laten we het dan snel over iets leuks hebben.").

%% begroeting_4 %%
minidialog(begroeting_4, [type=functional, function=greeting]).

move(begroeting_4, s1, say).
start_interaction_probe(begroeting_4, s1).
next(begroeting_4, s1, "true", s2).

move(begroeting_4, s2, say).
text(begroeting_4, s2, "Hallo %first_name% !").
next(begroeting_4, s2, "true", s3).

move(begroeting_4, s3, say).
text(begroeting_4, s3, "Wat leuk je weer te zien").
next(begroeting_4, s3, "true", s4).

move(begroeting_4, s4, continuator).
next(begroeting_4, s4, [[expCondition=memory]], s5memory1).
next(begroeting_4, s4, [[expCondition=control]], s5control1).
next(begroeting_4, s4, "true", s6).

move(begroeting_4, s5control1, say).
anim(begroeting_4, s5control1, file, "resources/gestures/wave1.json").
next(begroeting_4, s5control1, "true", s6).

move(begroeting_4, s5memory1, say).
text(begroeting_4, s5memory1, "Ik blijf de geheime beroeting die we samen gemaakt hebben erg leuk vinden!").
next(begroeting_4, s5memory1, "true", s5memory2).

move(begroeting_4, s5memory2, say).
audio(begroeting_4, s5memory2, id, handshake_sound).
anim(begroeting_4, s5memory2, id, handshake_motion).
next(begroeting_4, s5memory2, "true", s6).

move(begroeting_4, s6, say).
stop_interaction_probe(begroeting_4, s6).
next(begroeting_4, s6, "true", s7).

move(begroeting_4, s7, question).
moveConfig(begroeting_4, s7, [type=yesno, context='answer_yesno', umVariable=leuke_dag_vandaag]).
text(begroeting_4, s7, "Heb je een leuke dag vandaag?").
next(begroeting_4, s7, "answer_yes", s8ja1).
next(begroeting_4, s7, "answer_no", s8nee1).
next(begroeting_4, s7, "answer_dontknow", s8nee1).
next(begroeting_4, s7, "fail", s8nee1).

move(begroeting_4, s8ja1, say).
text(begroeting_4, s8ja1, "Gelukkig!").
next(begroeting_4, s8ja1, "true", s8ja2).

move(begroeting_4, s8ja2, question).
moveConfig(begroeting_4, s8ja2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=gedaan_vandaag]).
text(begroeting_4, s8ja2, "Wat heb je dan gedaan?").
next(begroeting_4, s8ja2, "success", s8ja3).
next(begroeting_4, s8ja2, "fail", s8ja3).

move(begroeting_4, s8ja3, say).
text(begroeting_4, s8ja3, "Dat klinkt goed.").

move(begroeting_4, s8nee1, say).
text(begroeting_4, s8nee1, "Oh, dat is jammer!").
next(begroeting_4, s8nee1, "true", s8nee2).

move(begroeting_4, s8nee2, say).
text(begroeting_4, s8nee2, "Laten we het dan snel over iets leuks hebben.").

%% begroeting_5 %%
minidialog(begroeting_5, [type=functional, function=greeting]).

move(begroeting_5, s1, say).
text(begroeting_5, s1, "Hallo %first_name% !").
next(begroeting_5, s1, "true", s2).

move(begroeting_5, s2, say).
text(begroeting_5, s2, "Wat leuk je weer te zien").
next(begroeting_5, s2, "true", s3).

move(begroeting_5, s3, continuator).
next(begroeting_5, s3, [[expCondition=memory]], s4memory1).
next(begroeting_5, s3, [[expCondition=control]], s4control1).
next(begroeting_5, s3, "true", s5).

move(begroeting_5, s4control1, say).
anim(begroeting_5, s4control1, file, "resources/gestures/wave1.json").
next(begroeting_5, s4control1, "true", s5).

move(begroeting_5, s4memory1, say).
audio(begroeting_5, s4memory1, id, handshake_sound).
anim(begroeting_5, s4memory1, id, handshake_motion).
next(begroeting_5, s4memory1, "true", s5).

move(begroeting_5, s5, say).
text(begroeting_5, s5, "Het is vandaag de laatste keer al weer.").
next(begroeting_5, s5, "true", s6).

move(begroeting_5, s6, question).
moveConfig(begroeting_5, s6, [type=yesno, context='answer_yesno']).
text(begroeting_5, s6, "Vind je dat ook jammer?").
next(begroeting_5, s6, "answer_yes", s7ja1).
next(begroeting_5, s6, "answer_no", s7nee1).
next(begroeting_5, s6, "answer_dontknow", s7nee1).
next(begroeting_5, s6, "fail", s7nee1).

move(begroeting_5, s7ja1, say).
text(begroeting_5, s7ja1, "Ik ook!").
next(begroeting_5, s7ja1, "true", s8).

move(begroeting_5, s7nee1, say).
text(begroeting_5, s7nee1, "Het is natuurlijk ook goed om dingen af te ronden.").
next(begroeting_5, s7nee1, "true", s8).

move(begroeting_5, s8, say).
text(begroeting_5, s8, "Gelukkig hebben we voor vandaag nog een aantal leuke dingen om te bespreken.").
next(begroeting_5, s8, "true", s9).

move(begroeting_5, s9, say).
text(begroeting_5, s9, "Laten we snel verder gaan.").

%% demo_begroeting %%
minidialog(demo_begroeting, [type=functional, function=greeting]).

move(demo_begroeting, s1, say).
text(demo_begroeting, s1, "Hallo, mijn naam is Hero!").
anim(demo_begroeting, s1, file, "resources/gestures/wave1.json").
next(demo_begroeting, s1, "true", s2).

move(demo_begroeting, s2, say).
text(demo_begroeting, s2, "En ik ben een robot.").
next(demo_begroeting, s2, "true", s3).

move(demo_begroeting, s3, say).
moveConfig(demo_begroeting, s3, [waitTimer=3000]).
text(demo_begroeting, s3, "Hoe heet jij?").
next(demo_begroeting, s3, "true", s4).

move(demo_begroeting, s4, say).
text(demo_begroeting, s4, "%first_name%, wat een mooie naam!").
next(demo_begroeting, s4, "true", s5).

move(demo_begroeting, s5, say).
text(demo_begroeting, s5, "Ik heb nog nooit iemand ontmoet die zo heet. Denk ik").
next(demo_begroeting, s5, "true", s6).

move(demo_begroeting, s6, say).
text(demo_begroeting, s6, "Laat ik eerst wat over mijzelf vertellen").
next(demo_begroeting, s6, "true", s7).

move(demo_begroeting, s7, say).
text(demo_begroeting, s7, "Ik ben aan het oefenen om een zorg robot te worden.").
next(demo_begroeting, s7, "true", s8).

move(demo_begroeting, s8, say).
text(demo_begroeting, s8, "Zodat ik kinderen in het ziekenhuis kan helpen.").
next(demo_begroeting, s8, "true", s9).

move(demo_begroeting, s9, say).
text(demo_begroeting, s9, "Ik moet nog veel leren, maar ik doe mijn best.").
next(demo_begroeting, s9, "true", s10).

move(demo_begroeting, s10, say).
text(demo_begroeting, s10, "Wat fijn dat je mij daarbij wilt helpen").
next(demo_begroeting, s10, "true", s11).

move(demo_begroeting, s11, question).
moveConfig(demo_begroeting, s11, [type=yesno, context='answer_yesno']).
text(demo_begroeting, s11, "Weet jij al wat jij later wil worden?").
next(demo_begroeting, s11, "answer_yes", s12ja).
next(demo_begroeting, s11, "answer_no", s12nee).
next(demo_begroeting, s11, "answer_dontknow", s12nee).
next(demo_begroeting, s11, "fail", s12nee).

move(demo_begroeting, s12nee, say).
text(demo_begroeting, s12nee, "Dat is prima. Je hebt nog even om daar achter te komen.").

move(demo_begroeting, s12ja, question).
moveConfig(demo_begroeting, s12ja, [type=input, context="professions", options=['Dokter', 'Politieagent', 'Influencer', 'Wetenschapper', 'Voetballer', 'Leraar', 'Kunstenaar'], fast=yes, topics=[success=['_answer']], umVariable=demo_beroep]).
text(demo_begroeting, s12ja, "Wat wil jij dan later worden?").
next(demo_begroeting, s12ja, "success", s13success).
next(demo_begroeting, s12ja, "fail", s13fail).

move(demo_begroeting, s13success, say).
text(demo_begroeting, s13success, "Facinerend! Ik sla het gelijk op.").
next(demo_begroeting, s13success, "true", s14).

move(demo_begroeting, s14, question).
moveConfig(demo_begroeting, s14, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(demo_begroeting, s14, "Wat lijkt je zo leuk om %demo_beroep% te worden?").
next(demo_begroeting, s14, "success", s15).
next(demo_begroeting, s14, "fail", s15).

move(demo_begroeting, s13fail, question).
moveConfig(demo_begroeting, s13fail, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(demo_begroeting, s13fail, "Dat beroep ken ik niet. Wat moet je dan doen?").
next(demo_begroeting, s13fail, "success", s15).
next(demo_begroeting, s13fail, "fail", s15).

move(demo_begroeting, s15, say).
text(demo_begroeting, s15, "Gaaf hoor!").

%% demo_begroeting_2 %%
minidialog(demo_begroeting_2, [type=functional, function=greeting]).

move(demo_begroeting_2, s1, say).
text(demo_begroeting_2, s1, "Hallo %first_name% !").
next(demo_begroeting_2, s1, "true", s2).

move(demo_begroeting_2, s2, continuator).
next(demo_begroeting_2, s2, [[expCondition=memory]], s3memory1).
next(demo_begroeting_2, s2, [[expCondition=control]], s3control1).
next(demo_begroeting_2, s2, "true", s4).

move(demo_begroeting_2, s3control1, say).
anim(demo_begroeting_2, s3control1, file, "resources/gestures/wave1.json").
next(demo_begroeting_2, s3control1, "true", s4).

move(demo_begroeting_2, s3memory1, say).
audio(demo_begroeting_2, s3memory1, id, handshake_sound).
anim(demo_begroeting_2, s3memory1, id, handshake_motion).
next(demo_begroeting_2, s3memory1, "true", s4).

move(demo_begroeting_2, s4, say).
text(demo_begroeting_2, s4, "Leuk je weer te zien!").
next(demo_begroeting_2, s4, "true", s5).

move(demo_begroeting_2, s5, question).
moveConfig(demo_begroeting_2, s5, [type=yesno, context='answer_yesno']).
text(demo_begroeting_2, s5, "Heb je een leuke dag vandaag?").
next(demo_begroeting_2, s5, "answer_yes", s6ja1).
next(demo_begroeting_2, s5, "answer_no", s6nee1).
next(demo_begroeting_2, s5, "answer_dontknow", s6nee1).
next(demo_begroeting_2, s5, "fail", s6nee1).

move(demo_begroeting_2, s6nee1, say).
text(demo_begroeting_2, s6nee1, "Oh, dat is jammer!").
next(demo_begroeting_2, s6nee1, "true", s6nee2).

move(demo_begroeting_2, s6nee2, say).
text(demo_begroeting_2, s6nee2, "Laten we het dan snel over iets leuks hebben.").

move(demo_begroeting_2, s6ja1, say).
text(demo_begroeting_2, s6ja1, "Gelukkig!").
next(demo_begroeting_2, s6ja1, "true", s7).

move(demo_begroeting_2, s7, question).
moveConfig(demo_begroeting_2, s7, [type=yesno, context='answer_yesno']).
text(demo_begroeting_2, s7, "Heb je nog %demo_beroep% achtige dingen gedaan?").
next(demo_begroeting_2, s7, "answer_yes", s8ja1).
next(demo_begroeting_2, s7, "answer_no", s8nee1).
next(demo_begroeting_2, s7, "answer_dontknow", s8nee1).
next(demo_begroeting_2, s7, "fail", s8nee1).

move(demo_begroeting_2, s8ja1, say).
text(demo_begroeting_2, s8ja1, "Dat klinkt goed. Daar wil ik straks van alles over horen. Maar eerst even over de Robo spelen.").

move(demo_begroeting_2, s8nee1, say).
text(demo_begroeting_2, s8nee1, "Misschien kunnen we dat straks nog doen. Maar eerst even over de Robo spelen.").
