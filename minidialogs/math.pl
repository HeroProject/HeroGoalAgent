%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		     MATH TUTOR CONTENT                    %%%
%%%     Generic math tutor minidialog and text snipits	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generic math tutor minidialog                          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(math_dialog, s1, say).
text(math_dialog, s1, "Dus hoeveel is %math_left% keer %math_right%").
display_math(math_dialog, s1).
math_start_timer(math_dialog, s1).
next(math_dialog, s1, "true", s2).

move(math_dialog, s2, say).
text(math_dialog, s2, "Druk op mijn teen onder het groene lampje als je het antwoord weet.").
moveConfig(math_dialog, s2, [eventListener=['true'='RightBumperPressed', 'noanswer'='LeftBumperPressed'], goTimer=120000]).
display_math(math_dialog, s2).
leds(math_dialog, s2, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(math_dialog, s2, "true", s3).
next(math_dialog, s2, "noanswer", s3noanswer).
next(math_dialog, s2, "timer", s3timer).

move(math_dialog, s3noanswer, say).
leds(math_dialog, s3noanswer, reset).
text_generator(math_dialog, s3noanswer, math_no_answer).
math_evaluate(math_dialog, s3noanswer, noanswer, 0).
next(math_dialog, s3noanswer, "true", s4noanswer).

move(math_dialog, s4noanswer, say).
math_support(math_dialog, s4noanswer).

move(math_dialog, s3timer, say).
text(math_dialog, s3timer, "Ik check even in om te kijken of je meer tijd nodig hebt of verder wilt.").
leds(math_dialog, s3timer, reset).
next(math_dialog, s3timer, "true", s4timer).

move(math_dialog, s4timer, question).
moveConfig(math_dialog, s4timer, [type=yesno, context='answer_yesno']).
text(math_dialog, s4timer, "Heb je meer tijd nodig?").
next(math_dialog, s4timer, 'answer_yes', s5timery).
next(math_dialog, s4timer, 'answer_no', s5timern).
next(math_dialog, s4timer, 'answer_dontknow', s5timern).
next(math_dialog, s4timer, 'fail', s5timern).

move(math_dialog, s5timery, say).
text(math_dialog, s5timery, "Prima.").
next(math_dialog, s5timery, "true", s2).

move(math_dialog, s5timern, say).
text(math_dialog, s5timern, "Prima.").
next(math_dialog, s5timern, "true", s3noanswer).

move(math_dialog, s3, question).
moveConfig(math_dialog, s3, [type=math, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField, 
	   umVariable=math_given_answer, umResult=math_result]).
text(math_dialog, s3, "Wat is %math_left% keer %math_right%?").
display_math(math_dialog, s3).
leds(math_dialog, s3, reset).
next(math_dialog, s3, 'correct', s4).
next(math_dialog, s3, 'incorrect', s4).

move(math_dialog, s4, say).
text(math_dialog, s4, "%math_given_answer%").
moveConfig(math_dialog, s4, [eventListener=['misheard'='LeftBumperPressed'], goTimer=3000]).
display(math_dialog, s4, "%math_given_answer%", always).
leds(math_dialog, s4, direct, ["LeftFootLeds"], ["rood"]).
next(math_dialog, s4, "misheard", s3).
next(math_dialog, s4, "timer", s5).

move(math_dialog, s5, say).
math_evaluate(math_dialog, s5, math_result, 0).
leds(math_dialog, s5, reset).
next(math_dialog, s5, "true", s6).

move(math_dialog, s6, branchingPoint, math_result).
next(math_dialog, s6, 'correct', s6cor).
next(math_dialog, s6, 'incorrect', s6incor).

move(math_dialog, s6cor, say).
text_generator(math_dialog, s6cor, math_praise).

move(math_dialog, s6incor, say).
text_generator(math_dialog, s6incor, math_incorrect).
next(math_dialog, s6incor, "true", s7incor).

move(math_dialog, s7incor, say).
math_support(math_dialog, s7incor).

%%% Math Next
move(math_next, s1, say).
math_generate(math_next, s1).
next(math_next, s1, "true", s2).

move(math_next, s2, say).
insert_minidialog_when_active(math_next, s2, [theme=math]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Progressief Schematiseren - Hints	                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Geen hulp
move(math_no_help, s1, say).
text(math_no_help, s1, "Het antwoord is %math_answer%.").
next(math_no_help, s1, "true", s2).

move(math_no_help, s2, say).
text_generator(math_no_help, s2, math_move_on).

%%% Splitsen
move(math_help_splitsen, s1, say).
text(math_help_splitsen, s1, "Laten we het probleem splitsen.").
next(math_help_splitsen, s1, "true", s2).

move(math_help_splitsen, s2, say).
text(math_help_splitsen, s2, "Misschien helpt het als we %math_left% keer %math_splitsen_big% en %math_left% keer %math_splitsen_small% uitrekenen.").
display_math_hints(math_help_splitsen, s2).
next(math_help_splitsen, s2, "true", s3).

move(math_help_splitsen, s3, say).
text(math_help_splitsen, s3, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_splitsen, s3).
insert_minidialog(math_help_splitsen, s3, math_hint_dialog).

%%% Kleine som 10
move(math_help_kleine_som_10, s1, say).
text(math_help_kleine_som_10, s1, "Laten we er eerst een kleine som van maken.").
next(math_help_kleine_som_10, s1, "true", s2).

move(math_help_kleine_som_10, s2, say).
text(math_help_kleine_som_10, s2, "Misschien helpt het als we eerst %math_left% keer %math_kleine_som_1% uitrekenen.").
display_math_hints(math_help_kleine_som_10, s2).
next(math_help_kleine_som_10, s2, "true", s3).

move(math_help_kleine_som_10, s3, say).
text(math_help_kleine_som_10, s3, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_kleine_som_10, s3).
insert_minidialog(math_help_kleine_som_10, s3, math_hint_dialog).

%%% Kleine som 100
move(math_help_kleine_som_100, s1, say).
text(math_help_kleine_som_100, s1, "Laten we er eerst een kleine som van maken.").
next(math_help_kleine_som_100, s1, "true", s2).

move(math_help_kleine_som_100, s2, say).
text(math_help_kleine_som_100, s2, "Misschien helpt het als we eerst %math_left% keer %math_kleine_som_1% en %math_left% keer %math_kleine_som_10% uitrekenen.").
display_math_hints(math_help_kleine_som_100, s2).
next(math_help_kleine_som_100, s2, "true", s3).

move(math_help_kleine_som_100, s3, say).
text(math_help_kleine_som_100, s3, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_kleine_som_100, s3).
insert_minidialog(math_help_kleine_som_100, s3, math_hint_dialog).

%%% Kleine som 1000
move(math_help_kleine_som_1000, s1, say).
text(math_help_kleine_som_1000, s1, "Laten we er eerst een kleine som van maken.").
next(math_help_kleine_som_1000, s1, "true", s2).

move(math_help_kleine_som_1000, s2, say).
text(math_help_kleine_som_1000, s2, "Misschien helpt het als we eerst %math_left% keer %math_kleine_som_1%, %math_kleine_som_10%, en %math_kleine_som_100% uitrekenen.").
display_math_hints(math_help_kleine_som_1000, s2).
next(math_help_kleine_som_1000, s2, "true", s3).

move(math_help_kleine_som_1000, s3, say).
text(math_help_kleine_som_1000, s3, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_kleine_som_1000, s3).
insert_minidialog(math_help_kleine_som_1000, s3, math_hint_dialog).


%%% Geen hints beschikbaar
move(math_help_none, s1, say).
text(math_help_none, s1, "Laten we samen stapje voor stapje naar het antwoord toe werken.").
next(math_help_none, s1, "true", s2).

move(math_help_none, s2, say).
text(math_help_none, s2, "We doen dat door te splitsen.").

%%% Algemene afhandeling hint

move(math_hint_dialog, s1, say).
text(math_hint_dialog, s1, "Druk op mijn teen onder het groene lampje als je het antwoord weet.").
moveConfig(math_hint_dialog, s1, [eventListener=['true'='RightBumperPressed', 'noanswer'='LeftBumperPressed'], goTimer=120000]).
display_math_hints(math_hint_dialog, s1).
leds(math_hint_dialog, s1, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(math_hint_dialog, s1, "true", s3).
next(math_hint_dialog, s1, "noanswer", s3noanswer).
next(math_hint_dialog, s1, "timer", s3timer).

move(math_hint_dialog, s3noanswer, say).
leds(math_hint_dialog, s3noanswer, reset).
text_generator(math_hint_dialog, s3noanswer, math_no_answer).
math_evaluate(math_hint_dialog, s3noanswer, noanswer, 1).
next(math_hint_dialog, s3noanswer, "true", s4noanswer).

move(math_hint_dialog, s4noanswer, say).
text_generator(math_no_help, s2, math_move_on).

move(math_hint_dialog, s3timer, say).
text(math_hint_dialog, s3timer, "Ik check even in om te kijken of je meer tijd nodig hebt of verder wilt.").
leds(math_hint_dialog, s3timer, reset).
next(math_hint_dialog, s3timer, "true", s4timer).

move(math_hint_dialog, s4timer, question).
moveConfig(math_hint_dialog, s4timer, [type=yesno, context='answer_yesno']).
text(math_hint_dialog, s4timer, "Heb je meer tijd nodig?").
next(math_hint_dialog, s4timer, 'answer_yes', s5timery).
next(math_hint_dialog, s4timer, 'answer_no', s5timern).
next(math_hint_dialog, s4timer, 'answer_dontknow', s5timern).
next(math_hint_dialog, s4timer, 'fail', s5timern).

move(math_hint_dialog, s5timery, say).
text(math_hint_dialog, s5timery, "Prima.").
next(math_hint_dialog, s5timery, "true", s1).

move(math_hint_dialog, s5timern, say).
text(math_hint_dialog, s5timern, "Prima.").
next(math_hint_dialog, s5timern, "true", s3noanswer).

move(math_hint_dialog, s3, question).
moveConfig(math_hint_dialog, s3, [type=math, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField, 
	   umVariable=math_given_answer, umResult=math_result]).
text(math_hint_dialog, s3, "Wat is %math_left% keer %math_right%?").
display_math_hints(math_hint_dialog, s3).
leds(math_hint_dialog, s3, reset).
next(math_hint_dialog, s3, 'correct', s4).
next(math_hint_dialog, s3, 'incorrect', s4).

move(math_hint_dialog, s4, say).
text(math_hint_dialog, s4, "%math_given_answer%").
moveConfig(math_hint_dialog, s4, [eventListener=['misheard'='LeftBumperPressed'], goTimer=3000]).
display(math_hint_dialog, s4, "%math_given_answer%", always).
leds(math_hint_dialog, s4, direct, ["LeftFootLeds"], ["rood"]).
next(math_hint_dialog, s4, "misheard", s3).
next(math_hint_dialog, s4, "timer", s5).

move(math_hint_dialog, s5, say).
math_evaluate(math_hint_dialog, s5, math_result, 1).
leds(math_hint_dialog, s5, reset).
next(math_hint_dialog, s5, "true", s6).

move(math_hint_dialog, s6, branchingPoint, math_result).
next(math_hint_dialog, s6, 'correct', s6cor).
next(math_hint_dialog, s6, 'incorrect', s6incor).

move(math_hint_dialog, s6cor, say).
text_generator(math_hint_dialog, s6cor, math_praise).

move(math_hint_dialog, s6incor, say).
text_generator(math_hint_dialog, s6incor, math_incorrect_after_hint).
next(math_hint_dialog, s6incor, "true", s7incor).

move(math_hint_dialog, s7incor, say).
text_generator(math_hint_dialog, s7incor, math_move_on).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generic math tutor utterances                          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

math_praise("Ja, dat klopt!").
math_praise("Goed zo.").
math_praise("Correct. Super gedaan").
math_praise("Helemaal goed. Top").

math_incorrect("Hee, ik zelf kwam tot een ander antwoord.").
math_incorrect("Ik heb even meegerekend en ik kwam op iets anders uit.").
math_incorrect("Volgens mij moet het wat anders zijn.").

math_no_answer("Soms kom ik er ook niet uit.").
math_no_answer("Ik weet het ook niet altijd.").
math_no_answer("Deze is ook lastig.").

math_move_on("Dat is niet erg. Ik heb nog zat andere vragen. Laten we gewoon verder gaan.").
math_move_on("Geeft niets. Laten we naar een ander probleem van me kijken.").
math_move_on("Geen probleem. Overkomt mij ook vaak genoeg. We gaan gewoon verder.").

math_incorrect_after_hint("Ik kom nog steeds tot een ander antwoord.").

