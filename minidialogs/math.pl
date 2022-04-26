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
moveConfig(math_dialog, s4, [eventListener=['misheard'='LeftBumperPressed'], goTimer=5000]).
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
text_generator(math_dialog, s6cor, math_correct_acknowledge).
next(math_dialog, s6cor, "true", s7cor).

move(math_dialog, s7cor, say).
text_generator(math_dialog, s7cor, math_correct_praise).

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
%%% Geen Hints - (support (0))		                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Geen hulp
move(math_no_help, s1, say).
text(math_no_help, s1, "De oplossing waar ik op kwam voor %math_left% keer %math_right% is %math_answer%.").
display_math_with_answer(math_no_help, s1).
next(math_no_help, s1, "true", s2).

move(math_no_help, s2, say).
text_generator(math_no_help, s2, math_move_on).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Progressief Schematiseren - Hints (support (1))        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%
%%% Tafelrij %%%
%%%%%%%%%%%%%%%%
%%% Geven van hint
move(math_help_tafel_rij, s1, say).
text(math_help_tafel_rij, s1, "Als je er niet uitkomt kun je ook de tafel van %math_left% onder elkaar zetten.").
next(math_help_tafel_rij, s1, "true", s2).

move(math_help_tafel_rij, s2, say).
text(math_help_tafel_rij, s2, "Misschien helpt dat om %math_left% keer %math_right% uit te rekenen.").
display_math(math_help_tafel_rij, s2).
insert_minidialog(math_help_tafel_rij, s2, math_hint_dialog).

%%% Uitleggen van hint
move(math_help_tafel_rij_uitleg, s1, say).
text(math_help_tafel_rij_uitleg, s1, "Als ik de tafel van %math_left% onder elkaar zet.").
next(math_help_tafel_rij_uitleg, s1, "true", s2).

move(math_help_tafel_rij_uitleg, s2, say).
text(math_help_tafel_rij_uitleg, s2, "Dan is %math_left% keer %math_right% %math_answer%. \pau=500\ ").
display_math_with_answer(math_help_tafel_rij_uitleg, s1).

%%%%%%%%%%%%%%%%
%%% Steunsom %%%
%%%%%%%%%%%%%%%%
%%% Geven van hint
move(math_help_steunsom, s1, say).
text(math_help_steunsom, s1, "Laten we terugvallen op de steunsom %math_steunsom% keer %math_right%.").
display_math_hints(math_help_steunsom, s1).
next(math_help_steunsom, s1, "true", s2).

move(math_help_steunsom, s2, say).
text(math_help_steunsom, s2, "Dat is %math_steunsom_richting% dan %math_left% keer %math_right%").
display_math_hints(math_help_steunsom, s2).
next(math_help_steunsom, s2, "true", s3).

move(math_help_steunsom, s3, say).
text(math_help_steunsom, s3, "Gebruik de steunsom om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_steunsom, s3).
insert_minidialog(math_help_steunsom, s3, math_hint_dialog).

%%% Uitleggen van hint
move(math_help_steunsom_uitleg, s1, say).
text(math_help_steunsom_uitleg, s1, "Laten we eerst de steunsom uitrekenen.").
next(math_help_steunsom_uitleg, s1, "true", s2).

move(math_help_steunsom_uitleg, s2, say).
text(math_help_steunsom_uitleg, s2, "%math_steunsom% keer %math_right% is %math_steunsom_answer%").
display(math_help_steunsom_uitleg, s2, "%math_steunsom% x %math_right% = %math_steunsom_answer%", always).
next(math_help_steunsom_uitleg, s2, "true", s3).

move(math_help_steunsom_uitleg, s3, say).
text(math_help_steunsom_uitleg, s3, "De steunsom is %math_steunsom_richting% dan %math_left% keer %math_right%").
next(math_help_steunsom_uitleg, s3, "true", s4).

move(math_help_steunsom_uitleg, s4, say).
text(math_help_steunsom_uitleg, s4, "Als ik nu %math_left% keer %math_right% uitrekenen, dan kom ik uit op %math_answer%.").
display_math_hints_with_answers(math_help_steunsom_uitleg, s4).
next(math_help_steunsom_uitleg, s4, "true", s5).

move(math_help_steunsom_uitleg, s5, say).
text(math_help_steunsom_uitleg, s5, "Gaaf hè \pau=500\ ").

%%%%%%%%%%%%%%%%%%%%%
%%% Verdubbelen_4 %%%
%%%%%%%%%%%%%%%%%%%%%
%%% Geven van hint
move(math_help_double_4, s1, say).
text(math_help_double_4, s1, "We kunnen eerst 2 keer %math_right% uitrekenen en dat verdubbelen.").
display_math_hints(math_help_double_4, s1).
next(math_help_double_4, s1, "true", s2).

move(math_help_double_4, s2, say).
text(math_help_double_4, s2, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_double_4, s2).
insert_minidialog(math_help_double_4, s2, math_hint_dialog).

%%% Uitleggen van hint
move(math_help_double_4_uitleg, s1, say).
text(math_help_double_4_uitleg, s1, "We gingen eerst 2 keer %math_right% uitrekenen en dat verdubbelen.").
next(math_help_double_4_uitleg, s1, "true", s2).

move(math_help_double_4_uitleg, s2, say).
text(math_help_double_4_uitleg, s2, "2 keer %math_right% is %math_double_2_answer%").
display(math_help_double_4_uitleg, s2, "2 x %math_right% = %math_double_2_answer%", always).
next(math_help_double_4_uitleg, s2, "true", s3).

move(math_help_double_4_uitleg, s3, say).
text(math_help_double_4_uitleg, s3, "Als we %math_double_2_answer% verdubbelen komen we op %math_answer% uit.").
display_math_hints_with_answers(math_help_double_4_uitleg, s3).
next(math_help_double_4_uitleg, s3, "true", s4).

move(math_help_double_4_uitleg, s4, say).
text(math_help_double_4_uitleg, s4, "En dat is het antwoord op %math_left% keer %math_right%.").
display_math_hints_with_answers(math_help_double_4_uitleg, s4).
next(math_help_double_4_uitleg, s4, "true", s5).

move(math_help_double_4_uitleg, s5, say).
text(math_help_double_4_uitleg, s5, "Gaaf hè \pau=500\ ").

%%%%%%%%%%%%%%%%%%%%%
%%% Verdubbelen_8 %%%
%%%%%%%%%%%%%%%%%%%%%
%%% Geven van hint
move(math_help_double_8, s1, say).
text(math_help_double_8, s1, "We kunnen eerst 2 keer %math_right% uitrekenen en dat verdubbelen.").
display_math_hints(math_help_double_8, s1).
next(math_help_double_8, s1, "true", s2).

move(math_help_double_8, s2, say).
text(math_help_double_8, s2, "Dat is dan 4 keer %math_right%. Als we dat nog een keer verdubbelen komen we uit op 8 keer %math_right%.").
display_math_hints(math_help_double_8, s2).
next(math_help_double_8, s2, "true", s3).

move(math_help_double_4, s3, say).
text(math_help_double_4, s3, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_double_4, s3).
insert_minidialog(math_help_double_4, s3, math_hint_dialog).

%%% Uitleggen van hint
move(math_help_double_8_uitleg, s1, say).
text(math_help_double_8_uitleg, s1, "We gingen eerst 2 keer %math_right% uitrekenen.").
next(math_help_double_8_uitleg, s1, "true", s2).

move(math_help_double_8_uitleg, s2, say).
text(math_help_double_8_uitleg, s2, "2 keer %math_right% is %math_double_2_answer%").
display(math_help_double_8_uitleg, s2, "2 x %math_right% = %math_double_2_answer%", always).
next(math_help_double_8_uitleg, s2, "true", s3).

move(math_help_double_8_uitleg, s3, say).
text(math_help_double_8_uitleg, s3, "Als we dat antwoord verdubbelen rekenen we eigenlijk 4 x %math_right%").
display_math_hints_with_answers(math_help_double_8_uitleg, s3).
next(math_help_double_8_uitleg, s3, "true", s4).

move(math_help_double_8_uitleg, s4, say).
text(math_help_double_8_uitleg, s4, "4 keer %math_right% is %math_double_4_answer%").
display(math_help_double_8_uitleg, s4, "4 x %math_right% = %math_double_4_answer%", always).
next(math_help_double_8_uitleg, s4, "true", s5).

move(math_help_double_8_uitleg, s5, say).
text(math_help_double_8_uitleg, s5, "En als we dat weer verdubbelen rekenen we eindelijk 8 x %math_right% uit").
display_math_hints_with_answers(math_help_double_8_uitleg, s5).
next(math_help_double_8_uitleg, s5, "true", s6).

move(math_help_double_8_uitleg, s6, say).
text(math_help_double_8_uitleg, s6, "Dan kom ik uit op %math_answer% en dat is het antwoord op %math_left% keer %math_right%.").
display_math_hints_with_answers(math_help_double_8_uitleg, s6).
next(math_help_double_8_uitleg, s6, "true", s7).

move(math_help_double_8_uitleg, s7, say).
text(math_help_double_8_uitleg, s7, "Gaaf hè \pau=500\ ").

%%%%%%%%%%%%%%%%
%%% Split 7  %%%
%%%%%%%%%%%%%%%%
%%% Geven van hint
move(math_help_split_7, s1, say).
text(math_help_split_7, s1, "7 keer %math_right% is eigenlijk 2 keer %math_right% plus 5 keer %math_right%.").
display_math_hints(math_help_split_7, s1).
next(math_help_split_7, s1, "true", s2).

move(math_help_split_7, s2, say).
text(math_help_split_7, s2, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_split_7, s2).
insert_minidialog(math_help_split_7, s2, math_hint_dialog).

%%% Uitleggen van hint
move(math_help_split_7_uitleg, s1, say).
text(math_help_split_7_uitleg, s1, "Stap 1 is het uitrekenen van beide hulpsommen.").
next(math_help_split_7_uitleg, s1, "true", s2).

move(math_help_split_7_uitleg, s2, say).
text(math_help_split_7_uitleg, s2, "2 keer %math_right%  is %math_split7_2%").
display(math_help_split_7_uitleg, s2, "2 x %math_right% = %math_split7_2%", always).
next(math_help_split_7_uitleg, s2, "true", s3).

move(math_help_split_7_uitleg, s3, say).
text(math_help_split_7_uitleg, s3, "5 keer %math_right%  is %math_split7_5%").
display(math_help_split_7_uitleg, s3, "5 x %math_right% = %math_split7_5%", always).
next(math_help_split_7_uitleg, s3, "true", s4).

move(math_help_split_7_uitleg, s4, say).
text(math_help_split_7_uitleg, s4, "Stap 2 is %math_split7_2% en %math_split7_5% bij elkaar op te tellen").
display(math_help_split_7_uitleg, s4, "%math_split7_2% + %math_split7_5%", always).
next(math_help_split_7_uitleg, s4, "true", s5).

move(math_help_split_7_uitleg, s5, say).
text(math_help_split_7_uitleg, s5, "Dan kom je op %math_answer% uit. En dat is de oplossing van %math_left% keer %math_right%").
display_math_hints_with_answers(math_help_split_7_uitleg, s5).
next(math_help_split_7_uitleg, s5, "true", s6).

move(math_help_split_7_uitleg, s6, say).
text(math_help_split_7_uitleg, s6, "Gaaf hè \pau=500\ ").

%%%%%%%%%%%%%%%%
%%% Splitsen %%%
%%%%%%%%%%%%%%%%
%%% Geven van hint
move(math_help_splitsen, s1, say).
text(math_help_splitsen, s1, "Laten we %math_right% splitsen in %math_splitsen_big% en %math_splitsen_small%").
next(math_help_splitsen, s1, "true", s2).

move(math_help_splitsen, s2, say).
text(math_help_splitsen, s2, "Dat geeft twee hulpsommen. %math_left% keer %math_splitsen_big%. En %math_left% keer %math_splitsen_small%.").
display_math_hints(math_help_splitsen, s2).
next(math_help_splitsen, s2, "true", s3).

move(math_help_splitsen, s3, say).
text(math_help_splitsen, s3, "We kunnen %math_left% keer %math_right% uitrekenen door het resultaat van de hulpsommen bij elkaar op te tellen.").
display_math_hints(math_help_splitsen, s3).
next(math_help_splitsen, s3, "true", s4).

move(math_help_splitsen, s4, say).
text(math_help_splitsen, s4, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_splitsen, s4).
insert_minidialog(math_help_splitsen, s4, math_hint_dialog).

%%% Uitleggen van hint
move(math_help_splitsen_uitleg, s1, say).
text(math_help_splitsen_uitleg, s1, "Stap 1 is het uitrekenen van beide hulpsommen.").
next(math_help_splitsen_uitleg, s1, "true", s2).

move(math_help_splitsen_uitleg, s2, say).
text(math_help_splitsen_uitleg, s2, "%math_left% keer %math_splitsen_big% is %math_splitsen_answer_big%").
display(math_help_splitsen_uitleg, s2, "%math_left% x %math_splitsen_big% = %math_splitsen_answer_big%", always).
next(math_help_splitsen_uitleg, s2, "true", s3).

move(math_help_splitsen_uitleg, s3, say).
text(math_help_splitsen_uitleg, s3, "%math_left% keer %math_splitsen_small% is %math_splitsen_answer_small%").
display(math_help_splitsen_uitleg, s3, "%math_left% x %math_splitsen_small% = %math_splitsen_answer_small%", always).
next(math_help_splitsen_uitleg, s3, "true", s4).

move(math_help_splitsen_uitleg, s4, say).
text(math_help_splitsen_uitleg, s4, "Stap 2 is %math_splitsen_answer_big% en %math_splitsen_answer_small% bij elkaar op te tellen").
display(math_help_splitsen_uitleg, s4, "%math_splitsen_answer_big% + %math_splitsen_answer_small%", always).
next(math_help_splitsen_uitleg, s4, "true", s5).

move(math_help_splitsen_uitleg, s5, say).
text(math_help_splitsen_uitleg, s5, "Dan kom je op %math_answer% uit. En dat is de oplossing van %math_left% keer %math_right%").
display_math_hints_with_answers(math_help_splitsen_uitleg, s5).
next(math_help_splitsen_uitleg, s5, "true", s6).

move(math_help_splitsen_uitleg, s6, say).
text(math_help_splitsen_uitleg, s6, "Gaaf hè \pau=500\ ").

%%%%%%%%%%%%%%%%%%%%%%%%
%%% De Kleine som 10 %%%
%%%%%%%%%%%%%%%%%%%%%%%%
%%% Geven van hint
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

%%% Uitleggen van hint
move(math_help_kleine_som_10_uitleg, s1, say).
text(math_help_kleine_som_10_uitleg, s1, "%math_right% is 10 keer groter dan %math_kleine_som_1%").
next(math_help_kleine_som_10_uitleg, s1, "true", s2).

move(math_help_kleine_som_10_uitleg, s2, say).
text(math_help_kleine_som_10_uitleg, s2, "%math_left% keer %math_kleine_som_1% noemen we de kleine som.").
next(math_help_kleine_som_10_uitleg, s2, "true", s3).

move(math_help_kleine_som_10_uitleg, s3, say).
text(math_help_kleine_som_10_uitleg, s3, "%math_left% keer %math_kleine_som_1% is %math_klein_som_1_answer%").
display(math_help_kleine_som_10_uitleg, s3, "%math_left% x %math_kleine_som_1% = %math_klein_som_1_answer%", always).
next(math_help_kleine_som_10_uitleg, s3, "true", s4).

move(math_help_kleine_som_10_uitleg, s4, say).
text(math_help_kleine_som_10_uitleg, s4, "Het antwoord op %math_left% keer %math_right% is dan ook 10 keer groter dan %math_klein_som_1_answer%").
display_math_hints_with_answers(math_help_kleine_som_10_uitleg, s4).
next(math_help_kleine_som_10_uitleg, s4, "true", s5).

move(math_help_kleine_som_10_uitleg, s5, say).
text(math_help_kleine_som_10_uitleg, s5, "Dat is dus %math_answer%").
display_math_hints_with_answers(math_help_kleine_som_10_uitleg, s5).
next(math_help_kleine_som_10_uitleg, s4, "true", s5).

move(math_help_kleine_som_10_uitleg, s5, say).
text(math_help_kleine_som_10_uitleg, s5, "Gaaf hè \pau=500\ ").

%%%%%%%%%%%%%%%%%%%%%%%%%
%%% De Kleine som 100 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Geven van hint
move(math_help_kleine_som_100, s1, say).
text(math_help_kleine_som_100, s1, "Laten we er eerst een kleine som van maken.").
next(math_help_kleine_som_100, s1, "true", s2).

move(math_help_kleine_som_100, s2, say).
text(math_help_kleine_som_100, s2, "Misschien helpt het als we eerst %math_left% keer %math_kleine_som_1% uitrekenen.").
display_math_hints(math_help_kleine_som_100, s2).
next(math_help_kleine_som_100, s2, "true", s3).

move(math_help_kleine_som_100, s3, say).
text(math_help_kleine_som_100, s3, "Als we die hebben kunnen we ook %math_left% keer %math_kleine_som_10% uitrekenen").
display_math_hints(math_help_kleine_som_100, s3).
next(math_help_kleine_som_100, s3, "true", s4).

move(math_help_kleine_som_100, s4, say).
text(math_help_kleine_som_100, s4, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_kleine_som_100, s4).
insert_minidialog(math_help_kleine_som_100, s4, math_hint_dialog).

%%% Uitleggen van hint
move(math_help_kleine_som_100_uitleg, s1, say).
text(math_help_kleine_som_100_uitleg, s1, "%math_right% is 100 keer groter dan %math_kleine_som_1%").
next(math_help_kleine_som_100_uitleg, s1, "true", s2).

move(math_help_kleine_som_100_uitleg, s2, say).
text(math_help_kleine_som_100_uitleg, s2, "%math_left% keer %math_kleine_som_1% noemen we de kleine som.").
next(math_help_kleine_som_100_uitleg, s2, "true", s3).

move(math_help_kleine_som_100_uitleg, s3, say).
text(math_help_kleine_som_100_uitleg, s3, "%math_left% keer %math_kleine_som_1% is %math_klein_som_1_answer%").
display(math_help_kleine_som_100_uitleg, s3, "%math_left% x %math_kleine_som_1% = %math_klein_som_1_answer%", always).
next(math_help_kleine_som_100_uitleg, s3, "true", s4).

move(math_help_kleine_som_100_uitleg, s4, say).
text(math_help_kleine_som_100_uitleg, s4, "Om bij %math_left% keer %math_right% te komen kunnen we ook nog een tussenstap bij %math_left% keer %math_kleine_som_10% maken").
next(math_help_kleine_som_100_uitleg, s4, "true", s5).

move(math_help_kleine_som_100_uitleg, s5, say).
text(math_help_kleine_som_100_uitleg, s5, "%math_left% keer %math_kleine_som_10% is %math_klein_som_10_answer%").
display(math_help_kleine_som_100_uitleg, s5, "%math_left% x %math_kleine_som_10% = %math_klein_som_10_answer%", always).
next(math_help_kleine_som_100_uitleg, s5, "true", s6).

move(math_help_kleine_som_100_uitleg, s6, say).
text(math_help_kleine_som_100_uitleg, s6, "Als we die stappen volgen dan is %math_left% keer %math_right%, %math_answer%").
display_math_hints_with_answers(math_help_kleine_som_100_uitleg, s6).
next(math_help_kleine_som_100_uitleg, s6, "true", s7).

move(math_help_kleine_som_100_uitleg, s7, say).
display_math_hints_with_answers(math_help_kleine_som_100_uitleg, s7).
text(math_help_kleine_som_100_uitleg, s7, "Gaaf hè \pau=500\ ").

%%%%%%%%%%%%%%%%%%%%%%%%%
%%% De Kleine som 100 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Geven van hint
move(math_help_kleine_som_1000, s1, say).
text(math_help_kleine_som_1000, s1, "Laten we er eerst een kleine som van maken.").
next(math_help_kleine_som_1000, s1, "true", s2).

move(math_help_kleine_som_1000, s2, say).
text(math_help_kleine_som_1000, s2, "Misschien helpt het als we eerst %math_left% keer %math_kleine_som_1% uitrekenen.").
display_math_hints(math_help_kleine_som_1000, s2).
next(math_help_kleine_som_1000, s2, "true", s3).

move(math_help_kleine_som_1000, s3, say).
text(math_help_kleine_som_1000, s3, "Als we die hebben kunnen we ook %math_left% keer %math_kleine_som_10% uitrekenen").
display_math_hints(math_help_kleine_som_1000, s3).
next(math_help_kleine_som_1000, s3, "true", s4).

move(math_help_kleine_som_1000, s4, say).
text(math_help_kleine_som_1000, s4, "En dan %math_left% keer %math_kleine_som_100% uitrekenen").
display_math_hints(math_help_kleine_som_1000, s4).
next(math_help_kleine_som_1000, s4, "true", s5).

move(math_help_kleine_som_1000, s5, say).
text(math_help_kleine_som_1000, s5, "Gebruik dit om opnieuw %math_left% keer %math_right% uit te rekenen.").
display_math_hints(math_help_kleine_som_1000, s5).
insert_minidialog(math_help_kleine_som_1000, s5, math_hint_dialog).

%%% Uitleggen van hint
move(math_help_kleine_som_1000_uitleg, s1, say).
text(math_help_kleine_som_1000_uitleg, s1, "%math_right% is 1000 keer groter dan %math_kleine_som_1%").
next(math_help_kleine_som_1000_uitleg, s1, "true", s2).

move(math_help_kleine_som_1000_uitleg, s2, say).
text(math_help_kleine_som_1000_uitleg, s2, "%math_left% keer %math_kleine_som_1% noemen we de kleine som.").
display(math_help_kleine_som_1000_uitleg, s2, "%math_left% x %math_kleine_som_1%", always).
next(math_help_kleine_som_1000_uitleg, s2, "true", s3).

move(math_help_kleine_som_1000_uitleg, s3, say).
text(math_help_kleine_som_1000_uitleg, s3, "%math_left% keer %math_kleine_som_1% is %math_klein_som_1_answer%").
display(math_help_kleine_som_1000_uitleg, s3, "%math_left% x %math_kleine_som_1% = %math_klein_som_1_answer%", always).
next(math_help_kleine_som_1000_uitleg, s3, "true", s4).

move(math_help_kleine_som_1000_uitleg, s4, say).
text(math_help_kleine_som_1000_uitleg, s4, "10 keer groter is %math_left% keer %math_kleine_som_10%").
display(math_help_kleine_som_1000_uitleg, s4, "%math_left% x %math_kleine_som_10%", always).
next(math_help_kleine_som_1000_uitleg, s4, "true", s5).

move(math_help_kleine_som_1000_uitleg, s5, say).
text(math_help_kleine_som_1000_uitleg, s5, "%math_left% keer %math_kleine_som_10% is %math_klein_som_10_answer%").
display(math_help_kleine_som_1000_uitleg, s5, "%math_left% x %math_kleine_som_10% = %math_klein_som_10_answer%", always).
next(math_help_kleine_som_1000_uitleg, s5, "true", s6).

move(math_help_kleine_som_1000_uitleg, s6, say).
text(math_help_kleine_som_1000_uitleg, s6, "Nog een keer 10 keer is %math_left% keer %math_kleine_som_100%").
display(math_help_kleine_som_1000_uitleg, s6, "%math_left% x %math_kleine_som_10%", always).
next(math_help_kleine_som_1000_uitleg, s6, "true", s7).

move(math_help_kleine_som_1000_uitleg, s7, say).
text(math_help_kleine_som_1000_uitleg, s7, "%math_left% keer %math_kleine_som_100% is %math_klein_som_100_answer%").
display(math_help_kleine_som_1000_uitleg, s7, "%math_left% x %math_kleine_som_100% = %math_klein_som_100_answer%", always).
next(math_help_kleine_som_1000_uitleg, s7, "true", s8).

move(math_help_kleine_som_1000_uitleg, s8, say).
text(math_help_kleine_som_1000_uitleg, s8, "Dit doen we nog een keer om %math_left% keer %math_right% uit te rekenen. Dan komen we uit op %math_answer%").
display_math_hints_with_answers(math_help_kleine_som_1000_uitleg, s8).
next(math_help_kleine_som_1000_uitleg, s8, "true", s9).

move(math_help_kleine_som_1000_uitleg, s9, say).
display_math_hints_with_answers(math_help_kleine_som_1000_uitleg, s9).
text(math_help_kleine_som_1000_uitleg, s9, "Gaaf hè \pau=500\ ").

%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Hints afhandeling %%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Geen hints beschikbaar
move(math_help_none, s1, say).
text(math_help_none, s1, "Laten we verder gaan.").

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
next(math_hint_dialog, s3noanswer, "true", s7).

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
moveConfig(math_hint_dialog, s4, [eventListener=['misheard'='LeftBumperPressed'], goTimer=5000]).
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
text_generator(math_hint_dialog, s6cor, math_correct_acknowledge).
next(math_hint_dialog, s6cor, "true", s7cor).

move(math_hint_dialog, s7cor, say).
text_generator(math_hint_dialog, s7cor, math_correct_praise).

move(math_hint_dialog, s6incor, say).
text_generator(math_hint_dialog, s6incor, math_incorrect_after_hint).
next(math_hint_dialog, s6incor, "true", s7).

move(math_hint_dialog, s7, question).
moveConfig(math_hint_dialog, s7, [type=yesno, context='answer_yesno']).
text(math_hint_dialog, s7, "Wil je met mij de hints doorlopen?").
next(math_hint_dialog, s7, 'answer_yes', s8yes).
next(math_hint_dialog, s7, 'answer_no', s8no).
next(math_hint_dialog, s7, 'answer_dontknow', s8no).
next(math_hint_dialog, s7, 'fail', s8no).

move(math_hint_dialog, s8yes, say).
math_explain_hints(math_hint_dialog, s8yes).

move(math_hint_dialog, s8no, say).
text(math_hint_dialog, s8no, "Met behulp van de hints kwam ik ik op %math_answer%.").
display_math_hints_with_answers(math_hint_dialog, s8no).
next(math_hint_dialog, s8no, "true", s9no).

move(math_hint_dialog, s9no, say).
display_math_hints_with_answers(math_hint_dialog, s9no).
text_generator(math_hint_dialog, s9no, math_move_on).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generic math tutor utterances                          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

math_correct_acknowledge("Ja, dat had ik ook").
math_correct_acknowledge("Ja, volgens mij ook").
math_correct_acknowledge("Ja, dat lijkt mij ook.").
math_correct_acknowledge("Dit klint helemaal goed").
math_correct_acknowledge("Probleem opgelost.").
math_correct_acknowledge("Ja, we zijn er.").

math_correct_praise("Goed werk.").
math_correct_praise("Goed gedaan.").
math_correct_praise("Top.").
math_correct_praise("Cool").
math_correct_praise("Ik ben trots op je.").

math_incorrect("Hee, ik zelf kwam tot een ander antwoord.").
math_incorrect("Ik heb even meegerekend en ik kwam op iets anders uit.").
math_incorrect("Volgens mij moet het wat anders zijn.").
math_incorrect("De rekenmachine in mijn hoofd zegt wat anders.").

math_no_answer("Soms kom ik er ook niet uit.").
math_no_answer("Ik weet het ook niet altijd.").
math_no_answer("Deze is ook lastig.").

math_move_on("Dat is niet erg. Ik heb nog zat andere vragen. Laten we gewoon verder gaan.").
math_move_on("Geeft niets. Laten we naar een ander probleem van me kijken.").
math_move_on("Geen probleem. Overkomt mij ook vaak genoeg. We gaan gewoon verder.").

math_incorrect_after_hint("Ik kom nog steeds tot een ander antwoord.").
math_incorrect_after_hint("De rekenmachine in mijn hoofd zegt nog steeds wat anders.").
math_incorrect_after_hint("De kom nog steeds op een ander antwoord uit.").
math_incorrect_after_hint("Volgens mij is het toch wat anders.").

