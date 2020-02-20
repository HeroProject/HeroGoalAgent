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

topicOrder([test, theend]).

speechSpeed(100).

state(test, s1, say).
anim(test, s1, "wakeup/behavior_1").
leds(test, s1, "white").
next(test, s1, "true", s2).

state(test, s2, say).
text(test, s2, "Hallo, ik ben Hero").
next(test, s2, "true", s3).

state(test, s3, question).
stateConfig(test, s3, [type=input, context='answer_color', options=['rood', 'geel', 'blauw'], numParams=1, defaultAnswer="rood"]).
text(test, s3, "Wat is jouw lievelingskleur?").
next(test, s3, 'answer_color', s4).
next(test, s3, 'fail', s4f).

state(test, s4, say).
text(test, s4, "Ik vind %answer_color% ook heel mooi!").

state(test, s4f, say).
text(test, s4f, "Mijn levelingskleur is %answer_color%.").

% Topic: theend
state(theend, s1, say).
text(theend, s1, "Dat was het.").
next(theend, s1, 'true', s2).

state(theend, s2, say). 
text(theend, s2, "Tot snel weer. Doei!").
anim(theend, s2, "rest/behavior_1").