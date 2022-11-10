header('<nav class="navbar mb-5"><div class="navbar-brand listening_icon"></div><div class="navbar-nav ml-auto vu_logo"></div></nav>').
main('<main class="container text-center">~a</main>').
footer('<footer class="fixed-bottom"><p class="lead bg-light text-center speech_text"></p></footer>').

html(Main,Html) :- header(H), main(MT), format(atom(M),MT,[Main]), footer(F),
	atom_concat(H,M,HM), atom_concat(HM,F,Html).

text('<h1 style="font-size:4rem">~a</h1>').
text(Content,Html) :- text(T), format(atom(Html),T,[Content]).

show_math('<h1 style="font-size:4rem">~a x ~a = </h1>').
show_math(Content, Html) :- show_math(Main), format(atom(Html), Main, Content).
show_math_with_answer('<h1 style="font-size:4rem">~a x ~a = ~a</h1>').
show_math_with_answer(Content, Html) :- show_math_with_answer(Main), format(atom(Html), Main, Content).

show_hint('<h2 style="font-size:2rem; font-style:italic; color:grey">~a x ~a = </h2>').
show_hints_right([FirstHint | RestOfHints], Left, [HintHtml | RestOfHtml]) :- show_hint(Hint),  format(atom(HintHtml), Hint, [Left, FirstHint]),
								   show_hints_right(RestOfHints, Left, RestOfHtml).
show_hints_right([], _, []).								  
show_hints_left([FirstHint | RestOfHints], Right, [HintHtml | RestOfHtml]) :- show_hint(Hint),  format(atom(HintHtml), Hint, [FirstHint, Right]),
								   show_hints_left(RestOfHints, Right, RestOfHtml).
show_hints_left([], _, []).
show_math_with_hints([Left, Right], right, Hints, Html) :- show_math(Main), format(atom(MainHtml), Main, [Left, Right]),
					       show_hints_right(Hints, Left, HintsHtmlList), atomic_list_concat(HintsHtmlList, HintsHtml),
					       atom_concat(MainHtml, HintsHtml, Html).
					       
show_math_with_hints([Left, Right], left, Hints, Html) :- show_math(Main), format(atom(MainHtml), Main, [Left, Right]),
					       show_hints_left(Hints, Right, HintsHtmlList), atomic_list_concat(HintsHtmlList, HintsHtml),
					       atom_concat(MainHtml, HintsHtml, Html).					       

%show_hint_with_message('<h2 style="font-size:2rem; font-style:italic; color:grey">~a x ~a = (~a)</h2>').
%show_math_with_hint_with_message([Left, Right], Hint, Message, Html) :- show_math(Main), format(atom(MainHtml), Main, [Left, Right]),
%					show_hint_with_message(HintWM), format(atom(HintHtml), HintWM, [Left, Hint, Message]),
%					atom_concat(MainHtml, HintHtml, Html).

show_hint_with_answer('<h2 style="font-size:2rem; font-style:italic; color:grey">~a x ~a = ~a</h2>').
show_hints_with_answer_right([FirstHint | RestOfHints], Left, [FirstAnswer | RestOfAnswers], [HintHtml | RestOfHtml]) :- show_hint_with_answer(Hint),
	format(atom(HintHtml), Hint, [Left, FirstHint, FirstAnswer]), show_hints_with_answer_right(RestOfHints,  Left, RestOfAnswers, RestOfHtml).
show_hints_with_answer_right([], _, _, []).

show_hints_with_answer_left([FirstHint | RestOfHints], Right, [FirstAnswer | RestOfAnswers], [HintHtml | RestOfHtml]) :- show_hint_with_answer(Hint),
	format(atom(HintHtml), Hint, [FirstHint, Right, FirstAnswer]), show_hints_with_answer_left(RestOfHints,  Right, RestOfAnswers, RestOfHtml).
show_hints_with_answer_left([], _, _, []).


show_math_with_hints_with_answers([Left, Right, Answer], right, Hints, HintAnswers, Html) :- show_math_with_answer(Main), format(atom(MainHtml), Main, [Left, Right, Answer]),
					       show_hints_with_answer_right(Hints, Left, HintAnswers, HintsHtmlList), atomic_list_concat(HintsHtmlList, HintsHtml),
					       atom_concat(MainHtml, HintsHtml, Html).
show_math_with_hints_with_answers([Left, Right, Answer], left, Hints, HintAnswers, Html) :- show_math_with_answer(Main), format(atom(MainHtml), Main, [Left, Right, Answer]),
					       show_hints_with_answer_left(Hints, Right, HintAnswers, HintsHtmlList), atomic_list_concat(HintsHtmlList, HintsHtml),
					       atom_concat(MainHtml, HintsHtml, Html).

img('<img src="~a"/>').
img(Src,Html) :- img(I), format(atom(Html),I,[Src]).

button('<button class="btn btn-primary btn-lg mt-5 ml-3" style="font-size:3rem">~a</button>').
button(Content,Html) :- button(B), format(atom(Html),B,[Content]).

buttons([],Html,Html).
buttons([Curr|Rest],Tmp,Html) :- button(Curr,B), atom_concat(Tmp,B,New), buttons(Rest,New,Html).
buttons(ContentList,Html) :- buttons(ContentList,'',Html).

numberField('<form><input type="number" class="form-control w-25"><input type="submit" class="btn btn-primary" value="Antwoorden"></form>').