%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      GETTING ACQUAINTED                   %%%
%%%      Topics for a getting acquainted conversation	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introduction    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ga_intro, s1, say).
text(ga_intro,  s1, "Hoi, ik ben Hero.").
next(ga_intro,  s1, "true",  s2).

state(ga_intro, s2, say).
text(ga_intro,  s2, "Ik ben aan het leren om een zorg robot te worden.").
next(ga_intro,  s2, "true",  s3).

state(ga_intro, s3, say).
text(ga_intro,  s3, "Daarom ben ik hier nu. \pau=300\ ").
next(ga_intro,  s3, "true",  s4).

state(ga_intro, s4, say).
text(ga_intro,  s4, "Wat fijn dat jij mij wilt helpen.").
next(ga_intro,  s4, "true",  s5).

state(ga_intro, s5, say).
text(ga_intro,  s5, "Ik vind het leuk om te kletsen en om verhaaltjes te vertellen. \pau=300\ ").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Speech tutorial   		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ga_prac_speech, s1, say).
text(ga_prac_speech,  s1, "Voor we beginnen met ons gesprekje, zal ik je eerst uitleggen hoe je met me kunt praten.").
next(ga_prac_speech,  s1, "true",  s2).

state(ga_prac_speech, s2, say).
text(ga_prac_speech,  s2, "Ik stel steeds een vraag en dan kun je antwoord geven door luid, en duidelijk, te praten. \pau=300\ ").
next(ga_prac_speech,  s2, "true",  s3).

state(ga_prac_speech, s3, say).
text(ga_prac_speech,  s3, "Laten we dat even oefenen. Hier komt de eerste vraag.").
next(ga_prac_speech,  s3, "true",  s4).

state(ga_prac_speech, s4, question).
stateConfig(ga_prac_speech, s4, [type=quiz, context='answer_color', correctAnswer=["blauw"], inputModality=[speech=2], additionalAttempt=true]).
leds(ga_prac_speech, s4, ["FaceLeds"], ["blue"]).
text(ga_prac_speech, s4, "Welke kleur hebben mijn ogen nu?").
next(ga_prac_speech, s4, 'correct', s5cor).
next(ga_prac_speech, s4, 'incorrect', s5incor).
next(ga_prac_speech, s4, 'fail', s5f).

state(ga_prac_speech, s5cor, say).
text(ga_prac_speech,  s5cor, "Ze zijn inderdaad blauw. Goed gedaan!").
next(ga_prac_speech,  s5cor, "true",  s6).

state(ga_prac_speech, s5incor, say).
text(ga_prac_speech,  s5incor, "Die kleur kunnen ze inderdaad worden, maar deze keer waren ze echt blauw.").
next(ga_prac_speech,  s5incor, "true",  s6).

state(ga_prac_speech, s5f, say).
text(ga_prac_speech,  s5f, "Dankjewel! Denk er aan om luid, en duidelijk, antwoord te geven.").
next(ga_prac_speech,  s5f, "true",  s6).

state(ga_prac_speech, s6, say).
leds(ga_prac_speech, s6, ["FaceLeds"], ["white"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Touch tutorial    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ga_prac_touch, s1, say).
text(ga_prac_touch,  s1, "Soms heb ik een beetje moeite om mensen te verstaan.").
next(ga_prac_touch,  s1, "true",  s2).

state(ga_prac_touch, s2, say).
text(ga_prac_touch,  s2, "Dan kun je antwoord geven door op mijn grijze tenen te drukken.").
next(ga_prac_touch,  s2, "true",  s3).

state(ga_prac_touch, s3, say).
text(ga_prac_touch,  s3, "Dat zijn namelijk knopjes.").
next(ga_prac_touch,  s3, "true",  s4).

state(ga_prac_touch, s4, say).
text(ga_prac_touch,  s4, "Er is een ja knop en een nee knop. \pau=400\ ").
next(ga_prac_touch,  s4, "true",  s5).

state(ga_prac_touch, s5, say).
text(ga_prac_touch,  s5, "Bij sommige vragen zal ik je wat opties geven. Je kunt dan op de ja knop drukken als je jouw antwoord hoort.").
next(ga_prac_touch,  s5, "true",  s6).

state(ga_prac_touch, s6, say).
text(ga_prac_touch,  s6, "Laten we dat oefenen. \pau=400\ ").
next(ga_prac_touch,  s6, "true",  s7).

state(ga_prac_touch, s7, question).
stateConfig(ga_prac_touch, s7, [type=quiz, context='answer_color', options=['rood', 'licht blauw', 'donker grijs', 'groen'], 
	correctAnswer=['donker grijs'], inputModality=[touch=3]]).
text(ga_prac_touch, s7, "Welke kleur hebben mijn schouders? Druk op de ja knop als je het antwoord hoort.").
next(ga_prac_touch, s7, 'correct', s8cor).
next(ga_prac_touch, s7, 'incorrect', s8incor).
next(ga_prac_touch, s7, 'fail', s8f).

state(ga_prac_touch, s8cor, say).
text(ga_prac_touch, s8cor, "Jazeker! Ze zijn inderdaad donker grijs").

state(ga_prac_touch, s8incor, say).
text(ga_prac_touch, s8incor, "Helaas. Ik wou dat ik die kleur had, maar mijn schouders zijn donker grijs.").

state(ga_prac_touch, s8f, say).
text(ga_prac_touch, s8f, "Mijn schouders zijn donker grijs. Vergeet niet de knopjes goed in te drukken de volgende keer.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Bridge to conversation	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ga_bridge, s1, say).
text(ga_bridge,  s1, "Nu is het tijd om elkaar een beetje te leren kennen.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sports			                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ga_sports, s1, say).
text(ga_sports,  s1, "Het lijkt mij leuk om over sport te praten. De sporten die ik zelf graag doe zijn dansen of voetballen met andere robots").
next(ga_sports, s1, "true", s2).

state(ga_sports, s2, question).
stateConfig(ga_sports, s2, [type=input, context='answer_sports', options=['voetbal', 'hockey', 'dansen', 'paard rijden'], umVariable=favo_sport]).
text(ga_sports, s2, "Wat is jouw lievelings sport, %first_name%?").
next(ga_sports, s2, 'success', s3).
next(ga_sports, s2, 'fail', s5f).

state(ga_sports, s3, say).
text(ga_sports,  s3, "Wat gaaf zeg!").
next(ga_sports, s3, "true", s4).

state(ga_sports, s4, question).
stateConfig(ga_sports, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ga_sports, s4, "Wat vind je zo leuk aan %favo_sport%?").
next(ga_sports, s4, 'success', s5).
next(ga_sports, s4, 'fail', s5f).

state(ga_sports, s5, say).
text(ga_sports,  s5, "%favo_sport% klinkt inderdaad erg leuk! ").

state(ga_sports, s5f, say).
text(ga_sports,  s5f, "Laten we verder gaan naar de volgende vraag."). 