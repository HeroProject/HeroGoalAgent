%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		        TOPIC BASE                         %%%
%%% Collection of conversational topics for the Hero agent %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
%%% GENERAL %%%
%%%%%%%%%%%%%%%

%%% Start up %%%
state(general_wakeup, s1, say).
wakeup(general_wakeup, s1).
leds(general_wakeup, s1, "white").
next(general_wakeup, s1, "true", s2).

state(general_wakeup, s2, say).
enableBreathing(general_wakeup, s2).

%%% Rest %%%
state(general_rest, s1, say).
text(general_rest, s1, "Ik ga nu weer rusten.").
disableBreathing(general_rest, s1).
next(general_rest, s1, 'true', s2).

state(general_rest, s2, say). 
rest(general_rest, s2).

%%%%%%%%%%%%%%%%%%%%%%
%%% TESTING TOPICS %%%
%%%%%%%%%%%%%%%%%%%%%%

%%% Chocolate - yesno %%%
state(test_chocolate, s1, question).
stateConfig(test_chocolate, s1, [type=yesno, context='answer_yesno']).
text(test_chocolate, s1, "Hou je van chocola?").
next(test_chocolate, s1, 'answer_yes', s2y).
next(test_chocolate, s1, 'answer_no', s2n).
next(test_chocolate, s1, 'fail', s2f).

state(test_chocolate, s2y, say).
text(test_chocolate, s2y, "Ik houd ook van chocola!").

state(test_chocolate, s2n, say).
text(test_chocolate, s2n, "Ik vind chocola ook vies!").

state(test_chocolate, s2f, say).
text(test_chocolate, s2f, "Ik vind het ook een lastige keuze").

%%% Color - input %%%
state(test_color, s1, question).
stateConfig(test_color, s1, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], 
defaultAnswer="rood", modalitySwitchResponse=[speechtouch='Sorry, ik kon je even niet verstaan. Ik zal nu wat opties opnoemen']]).
text(test_color, s1, "Wat is jouw lievelingskleur?").
next(test_color, s1, 'success', s2).
next(test_color, s1, 'fail', s2f).

state(test_color, s2, say).
text(test_color, s2, "Ik vind %test_color_s1% ook heel mooi!").

state(test_color, s2f, say).
text(test_color, s2f, "Mijn levelingskleur is %test_color_s1%.").

%%% Party - branch %%%
state(test_party, s1, question).
stateConfig(test_party, s1, [type = branch, context = "answer_koelkast_branch_1", options = ['dansen', 'zingen', 'muziek maken'], defaultAnswer='zingen',
branchIntents=['dansen' = 'answer_koelkast_dansen', 'zingen' = 'answer_koelkast_zingen', 'muziek maken' = 'answer_koelkast_muziek'], branchingPoints=[[party, s3], [party2, s2]]]).
text(test_party, s1, "Dansen, zingen, of muziek maken?").
next(test_party, s1, "success", s2).
next(test_party, s1, "fail", s2f).

state(test_party, s2, say).
text(test_party, s2, "Ik hou je nog even in spanning.").
next(test_party, s2, 'true', s3).

state(test_party, s2f, say).
text(test_party, s2f, "Ik kies zelf voor zingen.").
next(test_party, s2f, 'true', s3).

state(test_party, s3, branchingPoint).
next(test_party, s3, "dansen", s3a).
next(test_party, s3, "zingen", s3b).
next(test_party, s3, "muziek maken", s3c).
next(test_party, s3, "fail", s3f).

state(test_party, s3a, say).
text(test_party, s3a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").

state(test_party, s3b, say).
text(test_party, s3b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").

state(test_party, s3c, say).
text(test_party, s3c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakten muziek de hele dag en de hele nacht, en altijd in het donker.").

state(test_party, s3f, say).
text(test_party, s3f, "In de koelkast dansen, zongen, en maakten we muziek de hele dag en de hele nacht, en altijd in het donker.").

%%% Party II - branchingPoint %%%

state(test_party2, s1, say).
text(test_party2, s1, "Ik ben een nieuw topic").
next(test_party2, s1, "true", s2).

state(test_party2, s2, branchingPoint).
next(test_party2, s2, "dansen", s2a).
next(test_party2, s2, "zingen", s2b).
next(test_party2, s2, "muziek maken", s2c).
next(test_party2, s2, "fail", s2f).

state(test_party2, s2a, say).
text(test_party2, s2a, "Er is gekozen voor dansen.").

state(test_party2, s2b, say).
text(test_party2, s2b, "Er is gekozen voor zingen.").

state(test_party2, s2c, say).
text(test_party2, s2c, "Er is gekozen voor muziek maken.").

state(test_party2, s2f, say).
text(test_party2, s2f, "Je hebt geen geldig antwoord gegeven.").

%%% Color II - quiz %%%
state(test_color2, s1, question).
stateConfig(test_color2, s1, [type=quiz, context='answer_color', options=['rood', 'grijs', 'blauw', 'wit'], correctAnswer=['grijs', 'wit']]).
text(test_color2, s1, "Kun je me vertellen welke kleur ik ben?").
next(test_color2, s1, 'correct', s2cor).
next(test_color2, s1, 'incorrect', s2incor).
next(test_color2, s1, 'fail', s2f).

state(test_color2, s2cor, say).
text(test_color2, s2cor, "Ja klopt! Ik ben grijs met wit.").

state(test_color2, s2incor, say).
text(test_color2, s2incor, "Helaas. Ik wou dat ik die kleur had, maar ik ben grijs met wit.").

state(test_color2, s2f, say).
text(test_color2, s2f, "Zal ik het maar verklappen? Ik ben grijs met wit.").

%%% Sound recording%%%%
state(test_sound, s1, say).
text(test_sound, s1, "Brul als een leeuw in 3, 2, 1.").
next(test_sound, s1, "true", s2).

state(test_sound, s2, audioInput).
stateConfig(test_sound, s2, [recordTime=3000]).
next(test_sound, s2, "true", s3).

state(test_sound, s3, say).
text(test_sound, s3, "We reden met onze jeep over de savannen en toen ineens hoorden we het.").
next(test_sound, s3, "true", s4).

state(test_sound, s4, say).
text(test_sound, s4, "Het was het gebrul van de leeuw").
next(test_sound, s4, "true", s5).

state(test_sound, s5, say).
audio(test_sound, s5, recorded, [sound, s2]).
next(test_sound, s5, "true", s6).

state(test_sound, s6, say).
text(test_sound, s6, "Gaaf zeg.").

%%% Emotion %%%
state(test_emotion, s1, say).
text(test_emotion, s1, "Laat mij je gezicht eens goed bekijken.").
next(test_emotion, s1, "true", s2).

state(test_emotion, s2, emotion).
next(test_emotion, s2, happy, s3h).
next(test_emotion, s2, sad, s3s).
next(test_emotion, s2, neutral, s3n).
next(test_emotion, s2, "fail", s3f).

state(test_emotion, s3h, say).
leds(test_emotion, s3h, "green").
text(test_emotion, s3h, "Wauw, wat een blij gezicht!").
next(test_emotion, s3h, "true", s4).

state(test_emotion, s3s, say).
leds(test_emotion, s3s, "red").
text(test_emotion, s3s, "Wauw, wat een zielig gezicht!").
next(test_emotion, s3s, "true", s4).

state(test_emotion, s3n, say).
leds(test_emotion, s3n, "cyan").
text(test_emotion, s3n, "Wauw, wat kijk jij nietszeggend.").
next(test_emotion, s3n, "true", s4).

state(test_emotion, s3f, say).
leds(test_emotion, s3f, "white").
text(test_emotion, s3f, "Ik kon helaas niks zien.").
next(test_emotion, s3f, "true", s4).

state(test_emotion, s4, say).
leds(test_emotion, s4, "white").

%%% Sound - sound2 %%%
state(test_sound2, s1, say).
audio(test_sound2, s1, server, "short_test_song.wav").

%%% Animation - animation %%%
state(test_animation, s1, say).
text(test_animation, s1, "Ik doe nu een standaard animatie").
anim(test_animation, s1, "animations/Stand/Gestures/Enthusiastic_4").

%%% Second session %%%
state(test_second_session, s1, say).
text(test_second_session, s1, "Ik weet nog dat jij van %ga_sports_s2% houdt.").

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% GETTING ACQUAINTED %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
% introduction
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

% Speech tutorial
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
leds(ga_prac_speech, s4, "blue").
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
leds(ga_prac_speech, s6, "white").

% Touch tutorial
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
text(ga_prac_touch,  s6, "Zullen we dat even oefenen? \pau=400\ ").
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

% Bridge to conversation
state(ga_bridge, s1, say).
text(ga_bridge,  s1, "Nu is het tijd om elkaar een beetje te leren kennen.").

% Sports
state(ga_sports, s1, say).
text(ga_sports,  s1, "Het lijkt mij leuk om over sport te praten. De sporten die ik zelf graag doe zijn dansen of voetballen met andere robots").
next(ga_sports, s1, "true", s2).

state(ga_sports, s2, question).
stateConfig(ga_sports, s2, [type=input, context='answer_sports', options=['voetbal', 'hockey', 'dansen', 'paard rijden'], 
defaultAnswer="rood", modalitySwitchResponse=[speechtouch='Sorry, ik kon je even niet verstaan. Zou je willen kiezen uit de volgende antwoorden.']]).
text(ga_sports, s2, "Wat is jouw lievelings sport?").
next(ga_sports, s2, 'success', s3).
next(ga_sports, s2, 'fail', s5f).

state(ga_sports, s3, say).
text(ga_sports,  s3, "Wat gaaf zeg!").
next(ga_sports, s3, "true", s4).

state(ga_sports, s4, question).
stateConfig(ga_sports, s4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ga_sports, s4, "Wat vind je zo leuk aan %ga_sports_s2%?").
next(ga_sports, s4, 'success', s5).
next(ga_sports, s4, 'fail', s5f).

state(ga_sports, s5, say).
text(ga_sports,  s5, "%ga_sports_s2% klinkt inderdaad erg leuk! ").

state(ga_sports, s5f, say).
text(ga_sports,  s5f, "Laten we verder gaan naar de volgende vraag.").
