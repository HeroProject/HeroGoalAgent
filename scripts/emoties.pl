:- dynamic stateConfig/3, audio/4.

topicOrder([story, theend]).

state(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
leds(story, s1, "white").
next(story, s1, "true", s2).

state(story, s2, say).
text(story, s2, "Laat mij je gezicht eens goed bekijken.").
next(story, s2, "true", s4).

state(story, s4, emotion).
next(story, s4, happy, s5h).
next(story, s4, sad, s5s).
next(story, s4, neutral, s5n).
next(story, s4, "fail", s5f).

state(story, s5h, say).
leds(story, s5h, "green").
text(story, s5h, "Wauw, wat een blij gezicht!").
next(story, s5h, "true", s6).

state(story, s5s, say).
leds(story, s5s, "red").
text(story, s5s, "Wauw, wat een zielig gezicht!").
next(story, s5s, "true", s6).

state(story, s5n, say).
leds(story, s5n, "cyan").
text(story, s5n, "Wauw, wat kijk jij nietszeggend.").
next(story, s5n, "true", s6).

state(story, s5f, say).
leds(story, s5f, "white").
text(story, s5f, "Ik kon helaas niks zien.").
next(story, s5f, "true", s6).

state(story, s6, say).
leds(story, s6, "white").
text(story, s6, "Reset").



%%%% THE END %%%%%

state(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 