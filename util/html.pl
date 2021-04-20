:-dynamic display/3, display_raw/3, image/3.

bg('<div class="bg-info vh-100 vw-100">~a</div>').
header('<nav class="navbar mb-3"><div class="navbar-brand listening_icon"></div></nav>').
main('<main class="container text-white text-center">~a</main>').
footer('<footer class="fixed-bottom"><p class="lead bg-light mb-0 text-center speech_text" style="min-height:2rem"></p></footer>').

html(Main,Html) :- header(H), main(MT), format(atom(M),MT,[Main]), footer(F),
	atom_concat(H,M,HM), atom_concat(HM,F,SubHtml), bg(BG), format(atom(Html),BG,[SubHtml]).

text('<h1>~a</h1>').
text(Content,Html) :- text(T), format(atom(Html),T,[Content]).

img('<img class="img-fluid" src="~a"/>').
img(Src,Html) :- img(I), format(atom(Html),I,[Src]).

button('<button class="btn btn-outline-light btn-block" style="font-size:2rem">~a</button>').
button(Content,Html) :- button(B), format(atom(Html),B,[Content]).

buttons([],Html,Html).
buttons([Curr|Rest],Tmp,Html) :- button(Curr,B), atom_concat(Tmp,B,New), buttons(Rest,New,Html).
buttons(ContentList,Html) :- buttons(ContentList,'',Html).
