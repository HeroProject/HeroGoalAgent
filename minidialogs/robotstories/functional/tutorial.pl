%%%% HEADER %%%%
%% tutorial_spraak %%
minidialog(tutorial_spraak, [type=functional, function=tutorial]).

move(tutorial_spraak, s1, say).
text(tutorial_spraak, s1, "Laat ik uitleggen hoe je met mij kunt praten.").
next(tutorial_spraak, s1, "true", s2).

move(tutorial_spraak, s2, say).
text(tutorial_spraak, s2, "Als ik een vraag stel, dan probeer ik te luisteren naar je antwoord").
next(tutorial_spraak, s2, "true", s3).

move(tutorial_spraak, s3, say).
text(tutorial_spraak, s3, "Het helpt als je dat een beetje luid, en duidelijk kan doen.").
next(tutorial_spraak, s3, "true", s4).

move(tutorial_spraak, s4, say).
text(tutorial_spraak, s4, "Soms heb ik wat moeite om mensen te verstaan, dan kun je jouw antwoord gewoon herhalen").
next(tutorial_spraak, s4, "true", s5).

move(tutorial_spraak, s5, say).
text(tutorial_spraak, s5, "Laten we een keertje oefenen.").
next(tutorial_spraak, s5, "true", s6).

move(tutorial_spraak, s6, say).
text(tutorial_spraak, s6, "Hier komt de eerste vraag").
next(tutorial_spraak, s6, "true", s7).

move(tutorial_spraak, s7, question).
moveConfig(tutorial_spraak, s7, [type=input, context="color", inputModality=[speech=3], fast=yes]).
text(tutorial_spraak, s7, "Welke kleur hebben mijn ogen nu?").
leds(tutorial_spraak, s7, direct, ['FaceLeds'], ['blauw']).
next(tutorial_spraak, s7, "blauw", s8correct1).
next(tutorial_spraak, s7, "donkerblauw", s8correct1).
next(tutorial_spraak, s7, "lichtblauw", s8correct1).
next(tutorial_spraak, s7, "_others", s8incorrect1).
next(tutorial_spraak, s7, "fail", s8fail1).

move(tutorial_spraak, s8correct1, say).
text(tutorial_spraak, s8correct1, "Ze zijn inderdaad blauw, goed gedaan!").
next(tutorial_spraak, s8correct1, "true", s9).

move(tutorial_spraak, s8incorrect1, say).
text(tutorial_spraak, s8incorrect1, "Die kleur kunnen ze inderdaad worden, maar deze keer waren ze echt blauw. Je hebt wel op het juiste moment geantwoord en dat is het belangrijkste.").
next(tutorial_spraak, s8incorrect1, "true", s9).

move(tutorial_spraak, s8fail1, say).
text(tutorial_spraak, s8fail1, "Dankjewel! Denk er aan om luid, en duidelijk, antwoord te geven.").
next(tutorial_spraak, s8fail1, "true", s9).

move(tutorial_spraak, s9, say).
leds(tutorial_spraak, s9, direct, ['FaceLeds'], ['Wit']).

%% tutorial_touch %%
minidialog(tutorial_touch, [type=functional, function=tutorial]).

move(tutorial_touch, s1, say).
text(tutorial_touch, s1, "Als het me even niet lukt om je goed te verstaan").
next(tutorial_touch, s1, "true", s2).

move(tutorial_touch, s2, say).
text(tutorial_touch, s2, "dan heb ik een oplossing").
next(tutorial_touch, s2, "true", s3).

move(tutorial_touch, s3, say).
text(tutorial_touch, s3, "Je kunt dan antwoord geven via mijn grijze, tenen").
next(tutorial_touch, s3, "true", s4).

move(tutorial_touch, s4, say).
text(tutorial_touch, s4, "Dat zijn namelijk knopjes").
next(tutorial_touch, s4, "true", s5).

move(tutorial_touch, s5, say).
text(tutorial_touch, s5, "Links, waar het lampje nu groen is, betekent ja \pau=400\ en rechts, waar het lampje nu rood is betekent nee").
leds(tutorial_touch, s5, direct, ['LeftFootLeds', 'RightFootLeds'], ['red', 'green']).
next(tutorial_touch, s5, "true", s6).

move(tutorial_touch, s6, say).
text(tutorial_touch, s6, "Bij een meerkeuze vraag zal ik wat opties opnoemen").
next(tutorial_touch, s6, "true", s7).

move(tutorial_touch, s7, say).
text(tutorial_touch, s7, "Dan kun je op de ja knop drukken bij het beste antwoord").
leds(tutorial_touch, s7, direct, ['LeftFootLeds', 'RightFootLeds'], ['wit', 'wit']).
next(tutorial_touch, s7, "true", s8).

move(tutorial_touch, s8, say).
text(tutorial_touch, s8, "Laten we dat even oefenen. \pau=400\ ").
next(tutorial_touch, s8, "true", s9).

move(tutorial_touch, s9, question).
moveConfig(tutorial_touch, s9, [type=input, options=['paars', 'blauw', 'groen', 'oranje'], inputModality=[touch=3], maxAnswerTime=[touch=5000], fast=yes]).
text(tutorial_touch, s9, "Welke kleur hebben mijn ogen nu?").
leds(tutorial_touch, s9, direct, ['FaceLeds'], ['groen']).
next(tutorial_touch, s9, "groen", s10correct1).
next(tutorial_touch, s9, "donkergroen", s10correct1).
next(tutorial_touch, s9, "lichtgroen", s10correct1).
next(tutorial_touch, s9, "_others", s10incorrect1).
next(tutorial_touch, s9, "fail", s11).

move(tutorial_touch, s10correct1, say).
text(tutorial_touch, s10correct1, "Jazeker! Ze zijn inderdaad groen.").
next(tutorial_touch, s10correct1, "true", s11).

move(tutorial_touch, s10incorrect1, say).
text(tutorial_touch, s10incorrect1, "Die kleur kunnen ze inderdaad worden, maar deze keer waren ze echt groen.").
next(tutorial_touch, s10incorrect1, "true", s10incorrect2).

move(tutorial_touch, s10incorrect2, say).
text(tutorial_touch, s10incorrect2, "Mocht je te laat of te vroeg hebben gedrukt, alle antwoorden komen twee keer voorbij. Je kunt dan eventjes wachten met drukken tot jouw antwoord terug komt.").
next(tutorial_touch, s10incorrect2, "true", s11).

move(tutorial_touch, s11, say).
text(tutorial_touch, s11, "Mocht jouw antwoord er niet tussen zitten, dan kun je eentje kiezen die het beste bij jou past.").
leds(tutorial_touch, s11, direct, ['FaceLeds'], ['Wit']).

%% tutorial_check %%
minidialog(tutorial_check, [type=functional, function=tutorial]).

move(tutorial_check, s1, say).
text(tutorial_check, s1, "Zo nu heb ik alles wel uitgelegd").
next(tutorial_check, s1, "true", s2).

move(tutorial_check, s2, question).
moveConfig(tutorial_check, s2, [type=yesno, context='answer_yesno']).
text(tutorial_check, s2, "Heb je hier nog vragen over?").
next(tutorial_check, s2, "answer_yes", s3vraag1).
next(tutorial_check, s2, "answer_dontknow", s3vraag1).
next(tutorial_check, s2, "fail", s3vraag1).
next(tutorial_check, s2, "answer_no", s3geen_vraag1).

move(tutorial_check, s3vraag1, say).
moveConfig(tutorial_check, s3vraag1, [next="FrontTactilTouched"]).
text(tutorial_check, s3vraag1, "Mike, kun jij %first_name%  even helpen?").
next(tutorial_check, s3vraag1, "true", s4).

move(tutorial_check, s3geen_vraag1, say).
text(tutorial_check, s3geen_vraag1, "Top!").
next(tutorial_check, s3geen_vraag1, "true", s4).

move(tutorial_check, s4, say).
text(tutorial_check, s4, "Laten we verder gaan.").

