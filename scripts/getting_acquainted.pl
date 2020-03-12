:- dynamic audio/4.

topicOrder([intro, prac_speech, prac_touch, theend]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% GENERAL INTRODUCTION %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(intro, s1, say).
anim(intro, s1, "wakeup/behavior_1").
leds(intro, s1, "white").
next(intro, s1, "true", s2).

state(intro, s2, say).
text(intro,  s2, "Hoi, ik ben Hero.").
next(intro,  s2, "true",  s3).

state(intro, s3, say).
text(intro,  s3, "Ik ben aan het leren om een zorg robot te worden.").
next(intro,  s3, "true",  s4).

state(intro, s4, say).
text(intro,  s4, "Daarom ben ik hier nu. \pau=300\ ").
next(intro,  s4, "true",  s5).

state(intro, s5, say).
text(intro,  s5, "Wat fijn dat jij mij wilt helpen.").
next(intro,  s5, "true",  s6).

state(intro, s6, say).
text(intro,  s6, "Ik vind het leuk om te kletsen en om verhaaltjes te vertellen. \pau=300\ ").

%%%%%%%%%%%%%%%%%%%%%%%
%%% SPEECH TUTORIAL %%%
%%%%%%%%%%%%%%%%%%%%%%%

state(prac_speech, s1, say).
text(prac_speech,  s1, "Voor we beginnen met ons gesprekje, zal ik je eerst uitleggen hoe je met me kunt praten.").
next(prac_speech,  s1, "true",  s2).

state(prac_speech, s2, say).
text(prac_speech,  s2, "Ik stel steeds een vraag en dan kun je antwoord geven door luid, en duidelijk, te praten. \pau=300\ ").
next(prac_speech,  s2, "true",  s3).

state(prac_speech, s3, say).
text(prac_speech,  s3, "Laten we dat even oefenen. Hier komt de eerste vraag.").
next(prac_speech,  s3, "true",  s4).

state(prac_speech, s4, question).
stateConfig(prac_speech, s4, [type=quiz, context='answer_color', correctAnswer=["blauw"], inputModality=[speech=2], additionalAttempt=true]).
leds(prac_speech, s4, "blue").
text(prac_speech, s4, "Welke kleur hebben mijn ogen nu?").
next(prac_speech, s4, 'correct', s5cor).
next(prac_speech, s4, 'incorrect', s5incor).
next(prac_speech, s4, 'fail', s5f).

state(prac_speech, s5cor, say).
text(prac_speech,  s5cor, "Ze zijn inderdaad blauw. Goed gedaan!").
next(prac_speech,  s5cor, "true",  s6).

state(prac_speech, s5incor, say).
text(prac_speech,  s5incor, "Die kleur kunnen ze inderdaad worden, maar deze keer waren ze echt blauw.").
next(prac_speech,  s5incor, "true",  s6).

state(prac_speech, s5f, say).
text(prac_speech,  s5f, "Dankjewel! Denk er aan om luid, en duidelijk, antwoord te geven.").
next(prac_speech,  s5f, "true",  s6).

state(prac_speech, s6, say).
leds(prac_speech, s6, "white").

%%%%%%%%%%%%%%%%%%%%%%%
%%% TOUCH TUTORIAL %%%
%%%%%%%%%%%%%%%%%%%%%%%

state(prac_touch, s1, say).
text(prac_touch,  s1, "Soms heb ik een beetje moeite om mensen te verstaan.").
next(prac_touch,  s1, "true",  s2).

state(prac_touch, s2, say).
text(prac_touch,  s2, "Dan kun je antwoord geven door op mijn grijze tenen te drukken.").
next(prac_touch,  s2, "true",  s3).

state(prac_touch, s3, say).
text(prac_touch,  s3, "Dat zijn namelijk knopjes.").
next(prac_touch,  s3, "true",  s4).

state(prac_touch, s4, say).
text(prac_touch,  s4, "Er is een ja knop en een nee knop. \pau=400\ ").
next(prac_touch,  s4, "true",  s5).

state(prac_touch, s5, say).
text(prac_touch,  s5, "Bij sommige vragen zal ik je wat opties geven. Je kunt dan op de ja knop drukken als je jouw antwoord hoort.").
next(prac_touch,  s5, "true",  s6).

state(prac_touch, s6, say).
text(prac_touch,  s6, "Zullen we dat even oefenen? \pau=400\ ").
next(prac_touch,  s6, "true",  s7).

state(prac_touch, s7, question).
stateConfig(prac_touch, s7, [type=quiz, context='answer_color', options=['rood', 'licht blauw', 'donker grijs', 'groen'], 
	correctAnswer=['donker grijs'], inputModality=[touch=3]]).
text(prac_touch, s7, "Welke kleur hebben mijn schouders? Druk op de ja knop als je het antwoord hoort.").
next(prac_touch, s7, 'correct', s8cor).
next(prac_touch, s7, 'incorrect', s8incor).
next(prac_touch, s7, 'fail', s8f).

state(prac_touch, s8cor, say).
text(prac_touch, s8cor, "Jazeker! Ze zijn inderdaad donker grijs").

state(prac_touch, s8incor, say).
text(prac_touch, s8incor, "Helaas. Ik wou dat ik die kleur had, maar mijn schouders zijn donker grijs.").

state(prac_touch, s8f, say).
text(prac_touch, s8f, "Mijn schouders zijn donker grijs. Vergeet niet de knopjes goed in te drukken de volgende keer.").

%%%%%%%%%%%%%%%
%%% THE END %%%
%%%%%%%%%%%%%%%

state(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 