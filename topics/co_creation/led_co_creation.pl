%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 			LED CO-CREATION		           %%%
%%%           LED color and animation selection		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LED Animation Check					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s1, say).
scrup_answers(co_led_selection, s1).
next(co_led_selection, s1, "true", s2).

state(co_led_selection, s2, question).
stateConfig(co_led_selection, s2, [type=yesno, context='answer_yesno']).
text(co_led_selection, s2, "Wil je er ook een animatie bij?").
next(co_led_selection, s2, 'answer_yes', s3anim).
next(co_led_selection, s2, 'answer_no', s3no).
next(co_led_selection, s2, 'answer_dontknow', s3d).
next(co_led_selection, s2, 'fail', s3d).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% No Animation					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s3no, say).
text(co_led_selection, s3no, "Prima. Dan hoeven we nu alleen nog de kleuren te kiezen.").
next(co_led_selection, s3no, "true", s4no).

state(co_led_selection, s3d, say).
text(co_led_selection, s3d, "Laten we dit keer alleen de kleuren kiezen.").
next(co_led_selection, s3d, "true", s4no).

state(co_led_selection, s4no, question).
stateConfig(co_led_selection, s4no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='groen']).
text(co_led_selection, s4no, "Welke kleur moeten de ogen krijgen?").
next(co_led_selection, s4no, 'success', s5no).
next(co_led_selection, s4no, 'fail', s4nof).

state(co_led_selection, s4nof, say).
text(co_led_selection, s4nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s4no% gaan.").
next(co_led_selection, s4nof, "true", s5no).

state(co_led_selection, s5no, question).
stateConfig(co_led_selection, s5no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='paars']).
text(co_led_selection, s5no, "Welke kleur moet de buik krijgen?").
next(co_led_selection, s5no, 'success', s6no).
next(co_led_selection, s5no, 'fail', s5nof).

state(co_led_selection, s5nof, say).
text(co_led_selection, s5nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s5no% gaan.").
next(co_led_selection, s5nof, "true", s6no).

state(co_led_selection, s6no, question).
stateConfig(co_led_selection, s6no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='oranje']).
text(co_led_selection, s6no, "Welke kleur moeten de voeten krijgen?").
next(co_led_selection, s6no, 'success', s7no).
next(co_led_selection, s6no, 'fail', s6nof).

state(co_led_selection, s6nof, say).
text(co_led_selection, s6nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s6no% gaan.").
next(co_led_selection, s6nof, "true", s7no).

%% Save result %%
state(co_led_selection, s7no, say).
save_led_anim(co_led_selection, s7no, ["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["co_led_selection_s4no", "co_led_selection_s5no", "co_led_selection_s6no"], 0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% With Animation					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s3anim, question). % ogen of allemaal
stateConfig(co_led_selection, s3anim, [type=input, context='answer_light_animation', options=['knipperen', 'heen en weer'], defaultAnswer='knipperen']).
text(co_led_selection, s3anim, "Wil je dat de lichtjes knipperen of heen en weer gaan?").
next(co_led_selection, s3anim, 'success', s4anim).
next(co_led_selection, s3anim, 'fail', s3animf).

state(co_led_selection, s3animf, say).
text(co_led_selection, s3animf, "Sorry, ik heb je niet helemaal begrepen. Ik laat de lichtjes wel knipperen.").
next(co_led_selection, s3animf, "true", s5animknip).

state(co_led_selection, s4anim, say).
text(co_led_selection, s4anim, "%co_led_selection_s3anim%, helemaal prima.").
next(co_led_selection, s4anim, "true", s5anim).

state(co_led_selection, s5anim, branchingPoint).
stateConfig(co_led_selection, s5anim, [branchDecider=entity, branchSource=co_led_selection_s3anim]).
next(co_led_selection, s5anim, "knipperen", s5animknip).
next(co_led_selection, s5anim, "heen en weer", s5animheen).
next(co_led_selection, s5anim, "fail", s5animf).

%%%%%%%%%%%%%% Blinking animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s5animknip, question).
stateConfig(co_led_selection, s5animknip, [type=input, context='answer_color_list', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='["paars", "oranje"]', maxAnswerTime=[speechinputfirst=10000, speechinputnoninitial=8000]]).
text(co_led_selection, s5animknip, "Welke kleuren moet de lichtjes krijgen?").
next(co_led_selection, s5animknip, 'success', s6animknip).
next(co_led_selection, s5animknip, 'fail', s5animknipf).

state(co_led_selection, s5animknipf, say).
text(co_led_selection, s5animknipf, "Sorry ik kon je niet goed verstaan. Mij lijken paars en oranje wel geinig.").
next(co_led_selection, s5animknipf, "true", s7animknip).

state(co_led_selection, s6animknip, say).
text(co_led_selection, s6animknip, "Uit stekende keuze.").
next(co_led_selection, s6animknip, "true", s7animknip).

%% Save result %%
state(co_led_selection, s7animknip, say).
save_led_anim(co_led_selection, s7animknip, "all", "blink", "co_led_selection_s5animknip", 500).
stateConfig(co_led_selection, s7animknip, [ledColorIsList="true"]).

%%%%%%%%%%%%%% Alternate animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s5animheen, question). % left color
stateConfig(co_led_selection, s5animheen, [type=input, context='answer_color', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='blauw']).
text(co_led_selection, s5animheen, "Welke kleur moet de linker kant krijgen?").
next(co_led_selection, s5animheen, 'success', s5animweer).
next(co_led_selection, s5animheen, 'fail', s5animheenf).

state(co_led_selection, s5animheenf, say).
text(co_led_selection, s5animheenf, "Sorry, ik heb je niet helemaal begrepen. %co_led_selection_s5animheen% is wel een leuke kleur om te doen.").
next(co_led_selection, s5animheenf, "true", s5animweer).

state(co_led_selection, s5animweer, question). % left color
stateConfig(co_led_selection, s5animweer, [type=input, context='answer_color', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='oranje']).
text(co_led_selection, s5animweer, "Welke kleur moet de rechter kant krijgen?").
next(co_led_selection, s5animweer, 'success', s6animheen).
next(co_led_selection, s5animweer, 'fail', s5animweerf).

state(co_led_selection, s5animheenf, say).
text(co_led_selection, s5animheenf, "Sorry, ik heb je niet helemaal begrepen. %co_led_selection_s5animweer% is wel een leuke kleur om te doen.").
next(co_led_selection, s5animheenf, "true", s6animheen).

state(co_led_selection, s6animheen, say).
text(co_led_selection, s6animheen, "Uit stekende keuze.").
next(co_led_selection, s6animheen, "true", s7animheen).

%% Save result %%
state(co_led_selection, s7animheen, say).
save_led_anim(co_led_selection, s7animheen, "all", "alternate", ["co_led_selection_s5animweer", "co_led_selection_s5animheen"], 500).  