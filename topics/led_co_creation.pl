%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 			LED CO-CREATION		           %%%
%%%           LED color and animation selection		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LED location selection and animation flag		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s1, question).
stateConfig(co_led_selection, s1, [type=input, context='answer_light_location', options=['ogen', 'buik', 'voeten', 'allemaal'], defaultAnswer='ogen']).
text(co_led_selection, s1, "De lichtjes die je kunt inkleuren zijn de ogen, buik, voeten, of ze allemaal. Wat kies jij?").
next(co_led_selection, s1, 'success', s2).
next(co_led_selection, s1, 'fail', s2f).

state(co_led_selection, s2, say).
text(co_led_selection, s2, "%co_led_selection_s1%, helemaal prima!").
next(co_led_selection, s2, "true", s3).

state(co_led_selection, s2f, say).
text(co_led_selection, s2f, "Sorry, ik heb je niet helemaal begrepen. Laten we de %co_led_selection_s1% in kleuren.").
next(co_led_selection, s2f, "true", s3).

state(co_led_selection, s3, question).
stateConfig(co_led_selection, s3, [type=yesno, context='answer_yesno']).
text(co_led_selection, s3, "Wil je er ook een animatie bij?").
next(co_led_selection, s3, 'answer_yes', s3anim).
next(co_led_selection, s3, 'answer_no', s3no).
next(co_led_selection, s3, 'answer_dontknow', s3d).
next(co_led_selection, s3, 'fail', s3d).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% No Animation					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s3no, say).
text(co_led_selection, s3no, "Prima. Dan hoeven we nu alleen nog een kleur te kiezen.").
next(co_led_selection, s3no, "true", s4no).

state(co_led_selection, s3d, say).
text(co_led_selection, s3d, "Laten we dit keer alleen een kleur kiezen.").
next(co_led_selection, s3d, "true", s4no).

state(co_led_selection, s4no, branchingPoint).
stateConfig(co_led_selection, s4no, [branchDecider=entity, branchSource=co_led_selection_s1]).
next(co_led_selection, s4no, "ogen", s5no).
next(co_led_selection, s4no, "buik", s5no).
next(co_led_selection, s4no, "voeten", s5no).
next(co_led_selection, s4no, "allemaal", s5noall).
next(co_led_selection, s4no, "fail", s5no). % omdat default = ogen

%%%%%%%%%%%%%% One light %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s5no, question).
stateConfig(co_led_selection, s5no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='groen']).
text(co_led_selection, s5no, "Welke kleur moet het lichtje van de %co_led_selection_s1% krijgen?").
next(co_led_selection, s5no, 'success', s6no).
next(co_led_selection, s5no, 'fail', s5nof).

state(co_led_selection, s5nof, say).
text(co_led_selection, s5nof, "Ik kon je even niet verstaan. Ik vind zelf %co_led_selection_s5no% een geschikte kleur.").
next(co_led_selection, s5nof, "true", s6no).

state(co_led_selection, s6no, branchingPoint).
stateConfig(co_led_selection, s6no, [branchDecider=entity, branchSource=co_led_selection_s1]).
next(co_led_selection, s6no, "ogen", s6noeyes).
next(co_led_selection, s6no, "buik", s6nochest). 
next(co_led_selection, s6no, "voeten", s6nofeet).
next(co_led_selection, s6no, "fail", s6noeyes). % omdat default = ogen

%%% Save result %%%
state(co_led_selection, s6noeyes, say).
save_led_anim(co_led_selection, s6noeyes, ["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["co_led_selection_s5no", "off", "off"], 0).

state(co_led_selection, s6nochest, say).
save_led_anim(co_led_selection, s6nochest, ["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["off", "co_led_selection_s5no", "off"], 0).

state(co_led_selection, s6nofeet, say).
save_led_anim(co_led_selection, s6nofeet, ["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["off", "off", "co_led_selection_s5no"], 0).

%%%%%%%%%%%%%% Multiple lights %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s5noall, question).
stateConfig(co_led_selection, s5noall, [type=yesno, context='answer_yesno']).
text(co_led_selection, s5noall, "Moeten alle lichtjes dezelfde kleur krijgen?").
next(co_led_selection, s5noall, 'answer_yes', s5noallsame).
next(co_led_selection, s5noall, 'answer_no', s5noalldiff).
next(co_led_selection, s5noall, 'answer_dontknow', s5noalld).
next(co_led_selection, s5noall, 'fail', s5noalld).

%%% All colors same %%%
state(co_led_selection, s5noalld, say).
text(co_led_selection, s5noalld, "Laten we voor nu het simpel houden en kiezen voor 1 kleur.").
next(co_led_selection, s5noalld, "true", s5noallsame).

state(co_led_selection, s5noallsame, question).
stateConfig(co_led_selection, s5noallsame, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='groen']).
text(co_led_selection, s5noallsame, "Welke kleur moet alle lichtjes krijgen?").
next(co_led_selection, s5noallsame, 'success', s6noallsame).
next(co_led_selection, s5noallsame, 'fail', s5noallsamef).

state(co_led_selection, s5noallsamef, say).
text(co_led_selection, s5noallsamef, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor groen gaan.").
next(co_led_selection, s5noallsamef, "true", s6noallsame).

%% Save result %%
state(co_led_selection, s6noallsame, say).
save_led_anim(co_led_selection, s6noallsame, ["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["co_led_selection_s5noallsame", "co_led_selection_s5noallsame", "co_led_selection_s5noallsame"], 0).

%%% All colors different %%%
state(co_led_selection, s5noalldiff, question).
stateConfig(co_led_selection, s5noalldiff, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='groen']).
text(co_led_selection, s5noalldiff, "Welke kleur moeten de ogen krijgen?").
next(co_led_selection, s5noalldiff, 'success', s5noalldiff2).
next(co_led_selection, s5noalldiff, 'fail', s5noalldifff).

state(co_led_selection, s5noalldifff, say).
text(co_led_selection, s5noalldifff, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s5noalldiff% gaan.").
next(co_led_selection, s5noalldifff, "true", s5noalldiff2).

state(co_led_selection, s5noalldiff2, question).
stateConfig(co_led_selection, s5noalldiff2, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='paars']).
text(co_led_selection, s5noalldiff2, "Welke kleur moet de buik krijgen?").
next(co_led_selection, s5noalldiff2, 'success', s5noalldiff3).
next(co_led_selection, s5noalldiff2, 'fail', s5noalldiff2f).

state(co_led_selection, s5noalldiff2f, say).
text(co_led_selection, s5noalldiff2f, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s5noalldiff2% gaan.").
next(co_led_selection, s5noalldiff2f, "true", s5noalldiff3).

state(co_led_selection, s5noalldiff3, question).
stateConfig(co_led_selection, s5noalldiff3, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='oranje']).
text(co_led_selection, s5noalldiff3, "Welke kleur moeten de voeten krijgen?").
next(co_led_selection, s5noalldiff3, 'success', s6noalldiff).
next(co_led_selection, s5noalldiff3, 'fail', s5noalldiff3f).

state(co_led_selection, s5noalldiff3f, say).
text(co_led_selection, s5noalldiff3f, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_selection_s5noalldiff3% gaan.").
next(co_led_selection, s5noalldiff3f, "true", s6noalldiff).

%% Save result %%
state(co_led_selection, s6noalldiff, say).
save_led_anim(co_led_selection, s6noalldiff, ["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["co_led_selection_s5noalldiff", "co_led_selection_s5noalldiff2", "co_led_selection_s5noalldiff3"], 0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% With Animation					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s3anim, branchingPoint).
stateConfig(co_led_selection, s3anim, [branchDecider=entity, branchSource=co_led_selection_s1]).
next(co_led_selection, s3anim, "ogen", s4animeye).
next(co_led_selection, s3anim, "buik", s5animknip). % buik kan alleen maar knipperen.
next(co_led_selection, s3anim, "voeten", s4animfeet).
next(co_led_selection, s3anim, "allemaal", s4animeye).
next(co_led_selection, s3anim, "fail", s4animeye). % omdat default = ogen

state(co_led_selection, s4animeye, question). % ogen of allemaal
stateConfig(co_led_selection, s4animeye, [type=input, context='answer_light_animation', options=['knipperen', 'heen en weer', 'draaien'], defaultAnswer='knipperen']).
text(co_led_selection, s4animeye, "De animaties waar je uit kunt kiezen zijn, het knipperen van de lichtjes, het heen en weer gaan van de lichtjes, en het draaien van de ogen. Welke animatie kies jij?").
next(co_led_selection, s4animeye, 'success', s5anim).
next(co_led_selection, s4animeye, 'fail', s4animf).

state(co_led_selection, s4animfeet, question). % voeten
stateConfig(co_led_selection, s4animfeet, [type=quiz, context='answer_light_animation', options=['knipperen', 'heen en weer'], correctAnswer=['knipperen', 'heen en weer']]).
text(co_led_selection, s4animfeet, "De animaties waar je uit kunt kiezen zijn, het knipperen van de lichtjes, en het heen en weer gaan van de lichtjes. Welke animatie kies jij?").
next(co_led_selection, s4animfeet, 'correct', s5animfeet).
next(co_led_selection, s4animfeet, 'incorrect', s4animfeetf).
next(co_led_selection, s4animfeet, 'fail', s4animf).

state(co_led_selection, s4animfeetf, say).
text(co_led_selection, s4animfeetf, "Alleen de ogen kunnen draaien helaas. Ik laat ze wel knipperen.").
next(co_led_selection, s4animfeetf, "true", s5animknip).

state(co_led_selection, s4animf, say).
text(co_led_selection, s4animf, "Sorry, ik heb je niet helemaal begrepen. Ik de lichtjes ze wel knipperen.").
next(co_led_selection, s4animf, "true", s5animknip).

state(co_led_selection, s5anim, branchingPoint).
stateConfig(co_led_selection, s5anim, [branchDecider=entity, branchSource=co_led_selection_s4animeye]).
next(co_led_selection, s5anim, "knipperen", s5animknip).
next(co_led_selection, s5anim, "heen en weer", s5animheen).
next(co_led_selection, s5anim, "draaien", s5animdraai).
next(co_led_selection, s5anim, "fail", s5animf).

state(co_led_selection, s5animfeet, branchingPoint).
stateConfig(co_led_selection, s5animfeet, [branchDecider=entity, branchSource=co_led_selection_s4animfeet]).
next(co_led_selection, s5animfeet, "knipperen", s5animknip).
next(co_led_selection, s5animfeet, "heen en weer", s5animheen).
next(co_led_selection, s5animfeet, "fail", s5animknip).

%%%%%%%%%%%%%% Blinking animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s5animknip, question).
stateConfig(co_led_selection, s5animknip, [type=input, context='answer_color_list', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='["paars", "oranje"]']).
text(co_led_selection, s5animknip, "Welke kleuren moet de lichtjes krijgen?").
next(co_led_selection, s5animknip, 'success', s6animknip).
next(co_led_selection, s5animknip, 'fail', s5animknipf).

state(co_led_selection, s5animknipf, say).
text(co_led_selection, s5animknipf, "Sorry ik kon je niet goed verstaan. Mij kijken paars en oranje wel geinig.").
next(co_led_selection, s5animknipf, "true", s6animknip).

%% Save result %%
state(co_led_selection, s6animknip, say).
save_led_anim(co_led_selection, s6animknip, "co_led_selection_s1", "co_led_selection_s4animeye", "co_led_selection_s5animknip", 500).
stateConfig(co_led_selection, s6animknip, [ledColorIsList="true"]).

%%%%%%%%%%%%%% Alternate animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s5animheen, question). % left color
stateConfig(co_led_selection, s5animheen, [type=input, context='answer_color', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='blauw']).
text(co_led_selection, s5animheen, "Welke kleur moet de linker kant krijgen?").
next(co_led_selection, s5animheen, 'success', s5animweer).
next(co_led_selection, s5animheen, 'fail', s5animheenf).

state(co_led_selection, s5animheenf, say).
text(co_led_selection, s5animheenf, "Sorry, ik heb je niet helemaal begrepen. Blauw is wel een leuke kleur om te doen.").
next(co_led_selection, s5animheenf, "true", s5animweer).

state(co_led_selection, s5animweer, question). % left color
stateConfig(co_led_selection, s5animweer, [type=input, context='answer_color', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='oranje']).
text(co_led_selection, s5animweer, "Welke kleur moet de rechter kant krijgen?").
next(co_led_selection, s5animweer, 'success', s6animheen).
next(co_led_selection, s5animweer, 'fail', s5animweerf).

state(co_led_selection, s5animheenf, say).
text(co_led_selection, s5animheenf, "Sorry, ik heb je niet helemaal begrepen. Oranje is wel een leuke kleur om te doen.").
next(co_led_selection, s5animheenf, "true", s6animheen).

state(co_led_selection, s6animheen, branchingPoint).
stateConfig(co_led_selection, s6animheen, [branchDecider=entity, branchSource=co_led_selection_s1]).
next(co_led_selection, s6animheen, "ogen", s6animheeneye).
next(co_led_selection, s6animheen, "voeten", s6animheenfeet).
next(co_led_selection, s6animheen, "allemaal", s6animheeneye).
next(co_led_selection, s6animheen, "fail", s6animheeneye). % omdat default = ogen

%% Save result %%
state(co_led_selection, s6animheeneye, say).
save_led_anim(co_led_selection, s6animheeneye, "co_led_selection_s1", "co_led_selection_s4animeye", ["co_led_selection_s5animweer", "co_led_selection_s5animheen"], 500).

state(co_led_selection, s6animheenfeet, say).
save_led_anim(co_led_selection, s6animheenfeet, "co_led_selection_s1", "co_led_selection_s4animfeet", ["co_led_selection_s5animweer", "co_led_selection_s5animheen"], 500).


%%%%%%%%%%%%%% Eye spinning animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s5animdraai, question). % spinning color
stateConfig(co_led_selection, s5animdraai, [type=input, context='answer_color', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='blauw']).
text(co_led_selection, s5animdraai, "Welke kleur moeten de draaiende ogen krijgen?").
next(co_led_selection, s5animdraai, 'success', s6animdraai).
next(co_led_selection, s5animdraai, 'fail', s5animdraaif).

state(co_led_selection, s5animdraaif, say).
text(co_led_selection, s5animdraaif, "Sorry, ik heb je niet helemaal begrepen. Blauw is wel een leuke kleur om te doen.").
next(co_led_selection, s5animdraaif, "true", s6animdraai).

%% Save result %%
state(co_led_selection, s6animdraai, say).
save_led_anim(co_led_selection, s6animdraai, "co_led_selection_s1", "co_led_selection_s4animeye", ["co_led_selection_s5animdraai"], 500).