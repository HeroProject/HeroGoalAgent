%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		     MATH TUTOR CONTENT                    %%%
%%%     Generic math tutor minidialog and text snipits	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generic math tutor minidialog                          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

move(math_dialog, s1, say).
text(math_dialog, s1, "Dus hoeveel is %math_left% keer %math_right%").
display(math_dialog, s1, "%math_left% x %math_right%", always).
next(math_dialog, s1, "true", s2).

move(math_dialog, s2, say).
text(math_dialog, s2, "Druk op mijn teen onder het groene lampje als je het antwoord weet.").
moveConfig(math_dialog, s2, [eventListener=['true'='RightBumperPressed', 'fail'='LeftBumperPressed'], goTimer=120000]).
display(math_dialog, s2, "%math_left% x %math_right%", always).
leds(math_dialog, s2, direct, ["RightFootLeds", "LeftFootLeds"], ["groen", "paars"]).
next(math_dialog, s2, "true", s3).
next(math_dialog, s2, "fail", s4f).
next(math_dialog, s2, "timer", s4f).

move(math_dialog, s3, question).
moveConfig(math_dialog, s3, [type=math, context='integer', correctAnswer=math_answer, maxAnswerTime=[tablet=0], form=numberField, 
	   umVariable=math_given_answer, umResult=math_result]).
text(math_dialog, s3, "Wat is %math_left% keer %math_right%?").
display(math_dialog, s3, "%math_left% x %math_right%", always).
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
math_evaluate(math_dialog, s5, math_result).
leds(math_dialog, s5, reset).
next(math_dialog, s5, "true", s6).

move(math_dialog, s6, branchingPoint, math_result).
next(math_dialog, s6, 'correct', s6cor).
next(math_dialog, s6, 'incorrect', s6incor).

move(math_dialog, s6cor, say).
text_generator(math_dialog, s6cor, math_praise).
next(math_dialog, s6cor, "true", s7).

move(math_dialog, s6incor, say).
math_support(math_dialog, s6incor).
next(math_dialog, s6incor, "true", s7).

move(math_dialog, s7, say).
math_generate(math_dialog, s7).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Hulpvragen				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Geen hulp
move(math_no_help, s1, say).
text_generator(math_no_help, s1, math_incorrect_no_help).
next(math_no_help, s1, "true", s2).

move(math_no_help, s2, say).
text_generator(math_no_help, s2, math_move_on).
next(math_no_help, s2, "true", s3).

move(math_no_help, s3, say).
math_generate(math_no_help, s3).

%%% Verdubbelen
move(math_help_double, s1, say).
text(math_help_double, s1, "Laten we stapje voor stapje naar het antwoord toe werken.").
next(math_help_double, s1, "true", s2).

move(math_help_double, s2, say).
text(math_help_double, s2, "We doen dat door te verdubbelen.").
next(math_help_double, s2, "true", s3).

move(math_help_double, s3, say).
math_generate(math_help_double, s3).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generic math tutor utterances                          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

math_praise("Ja, dat klopt!").
math_praise("Goed zo.").
math_praise("Correct. Super gedaan").
math_praise("Helemaal goed. Top").

math_incorrect_no_help("Hey, ik zelf kwam tot een ander antwoord. Namelijk %math_answer%.").
math_incorrect_no_help("Hey, ik zelf kwam tot een ander antwoord. Namelijk %math_answer%.").
math_incorrect_no_help("Hey, ik zelf kwam tot een ander antwoord. Namelijk %math_answer%.").

math_move_on("Dat is niet erg. Ik heb nog zat andere vragen. Laten we gewoon verder gaan.").
math_move_on("Geeft niets. Laten we naar een ander probleem van me kijken.").
math_move_on("Geen probleem. Overkomt mij ook vaak genoeg. We gaan gewoon verder.").