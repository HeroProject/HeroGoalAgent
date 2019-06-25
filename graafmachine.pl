:-dynamic leds/3. % TEMP (unused)

state(intro, s1, question).
stateConfig(intro, s1, [type = mc, response = speech, context = "answer_color", key = "favorite_color"]).
text(intro, s1, "Wat is jouw favoriete kleur?").

state(intro, s1f, question).
stateConfig(intro, s1f, [type = mc, response = touch, options = ["rood","blauw","groen","geel","roze","paars","zwart"], key = "favorite_color"]).
text(intro, s1f, "Sorry ik verstond je niet. Ik ga nu wat kleuren opnoemen. Druk op de ja knop om je favorite kleur te kiezen?").

state(intro, s2, say).
text(intro, s2, "Dat is leuk! Ik hou van %favorite_color%.").

state(intro, s3, say).
text(intro, s3, "En een paar weken terug was ik zelfs een %favorite_color% graafmachine.").

state(intro, s4, say).
text(intro, s4, "Ik moest op mijn knieen gaan zitten en toen maakten ze rupsbanden aan me vast.").

state(intro, s5, say).
text(intro, s5, "En mijn arm werd aan mijn hoofd geplakt met plakband.").

state(intro, s6, say).
text(intro, s6, "Ik zag eruit als een olifant van %favorite_color% ijzer.").

state(intro, s7, say).
text(intro, s7, "En ze hadden me ook nog eens een toeter gegeven.").
anim(intro, s7, "elephant-bf57b3/behavior_1").

state(intro, s8, say).
text(intro, s8, "Waardoor ik piepte als een muis als ik achteruit reed.").
audio(intro, s8, "truck.wav").

state(intro, s9, audioInput).
stateConfig(intro, s9, [recordTime = 3000]).

next(intro, s1, "answer_color", s2).
next(intro, s1, "fail", s1f).
next(intro, s1f, "answer_color", s2).
next(intro, s2, "true", s3).
next(intro, s3, "true", s4).
next(intro, s4, "true", s5).
next(intro, s5, "true", s6).
next(intro, s6, "true", s7).
next(intro, s7, "true", s8).
next(intro, s8, "true", s9).