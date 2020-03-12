:- dynamic audio/4.

topicOrder([wakeup, sports, theend]).

%%%%%%%%%%%%%%%
%%% WAKE UP %%%
%%%%%%%%%%%%%%%

state(wakeup, s1, say).
anim(wakeup, s1, "wakeup/behavior_1").
leds(wakeup, s1, "white").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% GENERAL INTRODUCTION %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(intro, s1, say).
text(intro,  s1, "Hoi, ik ben Hero.").
next(intro,  s1, "true",  s2).

state(intro, s2, say).
text(intro,  s2, "Ik ben aan het leren om een zorg robot te worden.").
next(intro,  s2, "true",  s3).

state(intro, s3, say).
text(intro,  s3, "Daarom ben ik hier nu. \pau=300\ ").
next(intro,  s3, "true",  s4).

state(intro, s4, say).
text(intro,  s4, "Wat fijn dat jij mij wilt helpen.").
next(intro,  s4, "true",  s5).

state(intro, s5, say).
text(intro,  s5, "Ik vind het leuk om te kletsen en om verhaaltjes te vertellen. \pau=300\ ").

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% BRRIDGE TO CONVERSATION %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(bridge, s1, say).
text(bridge,  s1, "Nu is het tijd om elkaar een beetje te leren kennen.").

%%%%%%%%%%%%%%%
%%% SPORTS %%%
%%%%%%%%%%%%%%%

state(sports, s1, say).
text(sports,  s1, "Het lijkt mij leuk om over sport te praten. De sporten die ik zelf graag doe zijn dansen of voetballen met andere robots").
next(sports, s1, "true", s2).

state(sports, s2, question).
stateConfig(sports, s2, [type=input, context='answer_sports', options=['voetbal', 'hockey', 'dansen', 'paard rijden'], 
defaultAnswer="rood", modalitySwitchResponse=[speechtouch='Sorry, ik kon je even niet verstaan. Zou je willen kiezen uit de volgende antwoorden.']]).
text(sports, s2, "Wat is jouw lievelings sport?").
next(sports, s2, 'success', s3).
next(sports, s2, 'fail', s5f).

state(sports, s3, say).
text(sports,  s3, "Wat gaaf zeg!").
next(sports, s3, "true", s4).

state(sports, s4, question).
stateConfig(sports, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sports, s4, "Wat vind je zo leuk aan %sports_s2%?").
next(sports, s4, 'success', s5).
next(sports, s4, 'fail', s5f).

state(sports, s5, say).
text(sports,  s5, "%sports_s2% klinkt inderdaad erg leuk! ").

state(sports, s5f, say).
text(sports,  s5f, "Laten we verder gaan naar de volgende vraag.").

%%%%%%%%%%%%%%%
%%% THE END %%%
%%%%%%%%%%%%%%%

state(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 