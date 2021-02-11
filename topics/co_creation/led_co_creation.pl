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
stateConfig(co_led_selection, s2, [type = branch, context = "involvement_selection", options = ['maken', 'downloaden'],
branchIntents=['maken' = 'involvement_maken', 'downloaden' = 'involvement_downloaden'], branchingPoints=[[co_led_selection, s4]]]).
text(co_led_selection, s2, "Wil jij de lichtshow maken of zal ik wat opties downloaden?").
next(co_led_selection, s2, "success", s3).
next(co_led_selection, s2, "fail", s3f).

state(co_led_selection, s3f, say).
text(co_led_selection, s3f, "Weet je wat? Ik download gewoon wat licht animaties.").
next(co_led_selection, s3f, 'true', sdownload1).

state(co_led_selection, s3, say).
text(co_led_selection,  s3, "Oke we gaan het %co_led_selection_s2%.").
next(co_led_selection,  s3, "true",  s4).

state(co_led_selection, s4, branchingPoint).
next(co_led_selection, s4, "maken", s5).
next(co_led_selection, s4, "downloaden", sdownload1).
next(co_led_selection, s4, "fail", sdownload1).

state(co_led_selection, s5, question).
stateConfig(co_led_selection, s5, [type=yesno, context='answer_yesno']).
text(co_led_selection, s5, "Wil je er ook een animatie bij?").
next(co_led_selection, s5, 'answer_yes', s3anim).
next(co_led_selection, s5, 'answer_no', s3no).
next(co_led_selection, s5, 'answer_dontknow', s3d).
next(co_led_selection, s5, 'fail', s3d).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Download						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_led_selection, sdownload1, say).
text(co_led_selection,  sdownload1, "Ik ben nu twee licht animaties aan het downloaden.").
start_led_anim(co_led_selection, sdownload1, "eyes", "rotate", ["purple"], 500).
stateConfig(co_led_selection, sdownload1, [waitTimer=1500]).
next(co_led_selection,  sdownload1, "true",  sdownload2).

state(co_led_selection, sdownload2, say).
text(co_led_selection,  sdownload2, "Klaar. Dit is optie 1").
stop_led_anim(co_led_selection, sdownload2).
next(co_led_selection,  sdownload2, "true",  sdownload3).

state(co_led_selection, sdownload3, say).
play_led_anim_option(co_led_selection, sdownload3, 1).
stateConfig(co_led_selection, sdownload3, [waitTimer=3000]).
next(co_led_selection, sdownload3, "true", sdownload4).

state(co_led_selection, sdownload4, say).
text(co_led_selection,  sdownload4, "En dit is optie 2").
stop_led_anim(co_led_selection, sdownload4).
next(co_led_selection,  sdownload4, "true",  sdownload5).

state(co_led_selection, sdownload5, say).
play_led_anim_option(co_led_selection, sdownload5, 2).
stateConfig(co_led_selection, sdownload5, [waitTimer=3000]).
next(co_led_selection, sdownload5, "true", sdownload6).

state(co_led_selection, sdownload6, question).
stateConfig(co_led_selection, sdownload6, [type = branch, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'robot kiest'], defaultAnswer='tweede',
branchIntents=['eerste' = 'involvement_option_one', 'tweede' = 'involvement_option_two', 'robot kiest' = 'involvement_robot_picks'], branchingPoints=[[co_led_selection, sdownload7]]]).
text(co_led_selection, sdownload6, "Wil jij de eerste of tweede licht show, of zal ik kiezen?").
stop_led_anim(co_led_selection, sdownload6).
next(co_led_selection, sdownload6, "success", sdownload7).
next(co_led_selection, sdownload6, "fail", sdownload7f).

state(co_led_selection, sdownload7f, say).
text(co_led_selection,  sdownload7f, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_led_selection,  sdownload7f, "true",  sdownload8robot).

state(co_led_selection, sdownload7, branchingPoint).
next(co_led_selection, sdownload7, "eerste", sdownload8eerste).
next(co_led_selection, sdownload7, "tweede", sdownload8tweede).
next(co_led_selection, sdownload7, "robot kiest", sdownload8robot).

state(co_led_selection, sdownload8eerste, say).
text(co_led_selection,  sdownload8eerste, "De eerste, goede keuze.").
save_led_anim_option(co_led_selection, sdownload8eerste, 1).

state(co_led_selection, sdownload8tweede, say).
text(co_led_selection,  sdownload8tweede, "De tweede, goede keuze.").
save_led_anim_option(co_led_selection, sdownload8tweede, 2).

state(co_led_selection, sdownload8robot, say).
text(co_led_selection,  sdownload8robot, "Prima! De tweede vond ik het leukst. Dus die heb ik gekozen.").
save_led_anim_option(co_led_selection, sdownload8robot, 2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Create - No Animation				   %%%
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
next(co_led_selection, s4no, 'success', s4nos).
next(co_led_selection, s4no, 'fail', s4nof).

state(co_led_selection, s4nos, say).
text(co_led_selection, s4nos, "%co_led_selection_s4no%").
next(co_led_selection, s4nos, "true", s5no).

state(co_led_selection, s4nof, say).
text(co_led_selection, s4nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s4no% gaan.").
next(co_led_selection, s4nof, "true", s5no).

state(co_led_selection, s5no, question).
stateConfig(co_led_selection, s5no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='paars']).
text(co_led_selection, s5no, "Welke kleur moet de buik krijgen?").
next(co_led_selection, s5no, 'success', s5nos).
next(co_led_selection, s5no, 'fail', s5nof).

state(co_led_selection, s5nos, say).
text(co_led_selection, s5nos, "%co_led_selection_s5no%").
next(co_led_selection, s5nos, "true", s6no).

state(co_led_selection, s5nof, say).
text(co_led_selection, s5nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s5no% gaan.").
next(co_led_selection, s5nof, "true", s6no).

state(co_led_selection, s6no, question).
stateConfig(co_led_selection, s6no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='oranje']).
text(co_led_selection, s6no, "Welke kleur moeten de voeten krijgen?").
next(co_led_selection, s6no, 'success', s6nos).
next(co_led_selection, s6no, 'fail', s6nof).

state(co_led_selection, s6nos, say).
text(co_led_selection, s6nos, "%co_led_selection_s6no%").
next(co_led_selection, s6nos, "true", s7no).

state(co_led_selection, s6nof, say).
text(co_led_selection, s6nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s6no% gaan.").
next(co_led_selection, s6nof, "true", s7no).

%% Save result %%
state(co_led_selection, s7no, say).
text(co_led_selection, s7no, "Deze mooie lichtshow heb ik opgeslagen").
save_led_anim(co_led_selection, s7no, ["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["co_led_selection_s4no", "co_led_selection_s5no", "co_led_selection_s6no"], 0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Create - With Animation				   %%%
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
text(co_led_selection, s5animknip, "Ik heb tenminste twee kleuren nodig, welke vind je leuk?").
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
next(co_led_selection, s5animheen, 'success', s5animheens).
next(co_led_selection, s5animheen, 'fail', s5animheenf).

state(co_led_selection, s5animheens, say).
text(co_led_selection, s5animheens, "%co_led_selection_s5animheen%").
next(co_led_selection, s5animheens, "true", s5animweer).

state(co_led_selection, s5animheenf, say).
text(co_led_selection, s5animheenf, "Sorry, ik heb je niet helemaal begrepen. %co_led_selection_s5animheen% is wel een leuke kleur om te doen.").
next(co_led_selection, s5animheenf, "true", s5animweer).

state(co_led_selection, s5animweer, question). % left color
stateConfig(co_led_selection, s5animweer, [type=input, context='answer_color', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='oranje']).
text(co_led_selection, s5animweer, "Welke kleur moet de rechter kant krijgen?").
next(co_led_selection, s5animweer, 'success', s5animweers).
next(co_led_selection, s5animweer, 'fail', s5animweerf).

state(co_led_selection, s5animweers, say).
text(co_led_selection, s5animweers, "%co_led_selection_s5animweer%").
next(co_led_selection, s5animweers, "true", s6animheen).

state(co_led_selection, s5animheenf, say).
text(co_led_selection, s5animheenf, "Sorry, ik heb je niet helemaal begrepen. %co_led_selection_s5animweer% is wel een leuke kleur om te doen.").
next(co_led_selection, s5animheenf, "true", s6animheen).

state(co_led_selection, s6animheen, say).
text(co_led_selection, s6animheen, "Uit stekende keuzes.").
next(co_led_selection, s6animheen, "true", s7animheen).

%% Save result %%
state(co_led_selection, s7animheen, say).
text(co_led_selection, s7animheen, "Deze mooie lichtshow heb ik opgeslagen").
save_led_anim(co_led_selection, s7animheen, "all", "alternate", ["co_led_selection_s5animweer", "co_led_selection_s5animheen"], 500).  