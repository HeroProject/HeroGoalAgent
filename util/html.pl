header('<nav class="navbar mb-5"><div class="navbar-brand listening_icon"></div><div class="navbar-nav ml-auto vu_logo"></div></nav>').
main('<main class="container text-center">~a</main>').
footer('<footer class="fixed-bottom"><p class="lead bg-light text-center speech_text"></p></footer>').

html(Main,Html) :- header(H), main(MT), format(atom(M),MT,[Main]), footer(F),
	atom_concat(H,M,HM), atom_concat(HM,F,Html).

text('<h1>~a</h1>').
text(Content,Html) :- text(T), format(atom(Html),T,[Content]).

img('<img src="~a"/>').
img(Src,Html) :- img(I), format(atom(Html),I,[Src]).

button('<button class="btn btn-primary btn-lg mt-5 ml-3" style="font-size:2rem">~a</button>').
button(Content,Html) :- button(B), format(atom(Html),B,[Content]).

buttons([],Html,Html).
buttons([Curr|Rest],Tmp,Html) :- button(Curr,B), atom_concat(Tmp,B,New), buttons(Rest,New,Html).
buttons(ContentList,Html) :- buttons(ContentList,'',Html).

numberField('<form><input type="number" class="w-25"><input type="submit" value="Antwoorden"></form>').