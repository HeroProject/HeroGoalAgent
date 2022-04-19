header('<nav class="navbar mb-5"><div class="navbar-brand listening_icon"></div><div class="navbar-nav ml-auto vu_logo"></div></nav>').
main('<main class="container text-center">~a</main>').
footer('<footer class="fixed-bottom"><p class="lead bg-light text-center speech_text"></p></footer>').

html(Main,Html) :- header(H), main(MT), format(atom(M),MT,[Main]), footer(F),
	atom_concat(H,M,HM), atom_concat(HM,F,Html).

text('<h1 style="font-size:4rem">~a</h1>').
text(Content,Html) :- text(T), format(atom(Html),T,[Content]).

show_math('<h1 style="font-size:4rem">~a x ~a = </h1>').
show_hint('<h2 style="font-size:2rem; font-style:italic; color:grey">~a x ~a = </h2>').
show_math(Content, Html) :- show_math(Main), format(atom(Html), Main, Content).
show_hints([FirstHint | RestOfHints], Left, [HintHtml | RestOfHtml]) :- show_hint(Hint),  format(atom(HintHtml), Hint, [Left, FirstHint]),
								   show_hints(RestOfHints, Left, RestOfHtml).
show_hints([], _, []).
show_math_with_hints([Left, Right], Hints, Html) :- show_math(Main), format(atom(MainHtml), Main, [Left, Right]),
					       show_hints(Hints, Left, HintsHtmlList), atomic_list_concat(HintsHtmlList, HintsHtml),
					       atom_concat(MainHtml, HintsHtml, Html).

img('<img src="~a"/>').
img(Src,Html) :- img(I), format(atom(Html),I,[Src]).

button('<button class="btn btn-primary btn-lg mt-5 ml-3" style="font-size:3rem">~a</button>').
button(Content,Html) :- button(B), format(atom(Html),B,[Content]).

buttons([],Html,Html).
buttons([Curr|Rest],Tmp,Html) :- button(Curr,B), atom_concat(Tmp,B,New), buttons(Rest,New,Html).
buttons(ContentList,Html) :- buttons(ContentList,'',Html).

numberField('<form><input type="number" class="form-control w-25"><input type="submit" class="btn btn-primary" value="Antwoorden"></form>').