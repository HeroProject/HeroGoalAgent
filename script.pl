%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Test script                                            %%%
%%% Run to evaluate various functions for script handling. %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functionality included in this test script:
% - say state with gesture (animation) and leds
% - question state: yes/no with speech
% - question state: yes/no with touch
% - question state: mc with speech
% - question state: mc with touch
% - variable %var% (with var a key filled by an earlier question)
% - perform choregraph behavior (see also resources folder)
% - play audio fragment (see also resources folder)
% - talk while playing a music fragment (see also resources folder)
% - question state: branching & default answer
% - record and replay of sound effect.
% - topic switch
%
% BEFORE RUNNING THIS SCRIPT, CHECK:
% - Install the choregraphe behaviors in the resource folder following the instructions.
% - Check flags in mas2g file (e.g. recordaudio).
% - Check whether relative path ../tablet-core/laptop/html from this directory gets you to html folder, or
%     set correct relative path using option htmldir = '...' in mas3g file.
:- dynamic audio/4.

topicOrder([startup, party, party2, theend]).

speechSpeed(100).

%%% Start up %%%
state(startup, s1, say).
anim(startup, s1, "wakeup/behavior_1").
leds(startup, s1, "white").
next(startup, s1, "true", s2).

state(startup, s2, say).
text(startup, s2, "Hallo, ik ben Hero").

%%% Chocolate - yesno %%%
state(chocolate, s1, question).
stateConfig(chocolate, s1, [type=yesno, response=speech, context='answer_yesno']).
text(chocolate, s1, "Hou je van chocola?").
next(chocolate, s1, 'answer_yes', s2y).
next(chocolate, s1, 'answer_no', s2n).
next(chocolate, s1, 'fail', s2f).

state(chocolate, s2y, say).
text(chocolate, s2y, "Ik houd ook van chocola!").

state(chocolate, s2n, say).
text(chocolate, s2n, "Ik vind chocola ook vies!").

state(chocolate, s2f, say).
text(chocolate, s2f, "Ik vind het ook een lastige keuze").

%%% Color - input %%%
state(color, s1, question).
stateConfig(color, s1, [type=input, context='answer_color', options=['rood', 'geel', 'blauw'], defaultAnswer="rood"]).
text(color, s1, "Wat is jouw lievelingskleur?").
next(color, s1, 'success', s2).
next(color, s1, 'fail', s2f).

state(color, s2, say).
text(color, s2, "Ik vind %answer_color% ook heel mooi!").

state(color, s2f, say).
text(color, s2f, "Mijn levelingskleur is %answer_color%.").

%%% Party - branch %%%
state(party, s1, question).
stateConfig(party, s1, [type = branch, context = "answer_koelkast_branch_1", options = ['dansen', 'zingen', 'muziek maken'], defaultAnswer='zingen',
branchIntents=['dansen' = 'answer_koelkast_dansen', 'zingen' = 'answer_koelkast_zingen', 'muziek maken' = 'answer_koelkast_muziek'], branchingPoints=[[party, s3], [party2, s2]]]).
text(party, s1, "Dansen, zingen, of muziek maken?").
next(party, s1, "success", s2).
next(party, s1, "fail", s2f).

state(party, s2, say).
text(party, s2, "Ik hou je nog even in spanning.").
next(party, s2, 'true', s3).

state(party, s2f, say).
text(party, s2f, "Ik kies zelf voor zingen.").
next(party, s2f, 'true', s3).

state(party, s3, branchingPoint).
next(party, s3, "dansen", s3a).
next(party, s3, "zingen", s3b).
next(party, s3, "muziek maken", s3c).
next(party, s3, "fail", s3f).

state(party, s3a, say).
text(party, s3a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").

state(party, s3b, say).
text(party, s3b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").

state(party, s3c, say).
text(party, s3c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakten muziek de hele dag en de hele nacht, en altijd in het donker.").

state(party, s3f, say).
text(party, s3f, "In de koelkast dansen, zongen, en maakten we muziek de hele dag en de hele nacht, en altijd in het donker.").

%%% Party II - branchingPoint %%%

state(party2, s1, say).
text(party2, s1, "Ik ben een nieuw topic").
next(party2, s1, "true", s2).

state(party2, s2, branchingPoint).
next(party2, s2, "dansen", s2a).
next(party2, s2, "zingen", s2b).
next(party2, s2, "muziek maken", s2c).
next(party2, s2, "fail", s2f).

state(party2, s2a, say).
text(party2, s2a, "Er is gekozen voor dansen.").

state(party2, s2b, say).
text(party2, s2b, "Er is gekozen voor zingen.").

state(party2, s2c, say).
text(party2, s2c, "Er is gekozen voor muziek maken.").

state(party2, s2f, say).
text(party2, s2f, "Je hebt geen geldig antwoord gegeven.").


%%% The end %%%
state(theend, s1, say).
text(theend, s1, "Dat was het.").
next(theend, s1, 'true', s2).

state(theend, s2, say). 
text(theend, s2, "Tot snel weer. Doei!").
anim(theend, s2, "rest/behavior_1").