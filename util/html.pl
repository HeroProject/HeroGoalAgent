:-dynamic display/3, display_raw/3, image/3.

bg('<div class="vh-100 vw-100">~a</div>').
header('<nav class="navbar mb-1"><div class="navbar-brand listening_icon"></div></nav>').
main('<main class="container-fluid text-center">~a</main>').

html(Main,Html) :- header(H), main(MT), format(atom(M),MT,[Main]), atom_concat(H,M,HM), 
			bg(BG), format(atom(Html),BG,[HM]).

text('<h1>~a</h1>').
text(Content,Html) :- text(T), format(atom(Html),T,[Content]).

img('<img class="img-fluid" style="max-height:80vh" src="~a">').
%img(Src,Html) :-  number(Src), character(C), character_images(C,L), nth1(Src,L,Img), img(I), format(atom(Html),I,[Img]).
img(Src,Html) :- img(I), format(atom(Html),I,[Src]).

img64('<img style="width:18rem" data-value="o~d" src="data:image/jpeg;base64,~a">').
img64(Src,Index,Html) :- img64(I), format(atom(Html),I,[Index,Src]).

button('<button class="btn btn-light btn-lg m-3" style="font-size:2rem">~a</button>').
%button(Content,Html) :- number(Content), character(C), character_images(C,L), nth1(Content,L,Img), img64(Img,Content,ImgHtml), 
%				button(B), format(atom(Html),B,[ImgHtml]).
button(Content,Html) :- button(B), format(atom(Html),B,[Content]).

buttons([],Html,Html).
buttons([Curr|Rest],Tmp,Html) :- button(Curr,B), atom_concat(Tmp,B,New), buttons(Rest,New,Html).
buttons(ContentList,Html) :- buttons(ContentList,'',Html).

%sortItem('<div class="col mb-4"><div id="~a" class="card h-100 sortitem"><div class="card-img-caption"><h1 class="card-text bg-secondary"></h1><img class="card-img-top" src="~a"></div></div></div>').
%sortItem(Id=Src,Html) :- number(Src), character(C), character_images(C,L), nth1(Src,L,Img), 
%				sortItem(T), format(atom(Html),T,[Id,Img]).
%sortItem(Id=Src,Html) :- sortItem(T), format(atom(Html),T,[Id,Src]).

%sortItems([],Final,Html) :- format(atom(Html),'<div class="row row-cols-1 row-cols-md-4" style="max-height:70vh">~a</div>',[Final]).
%sortItems([Curr|Rest],Tmp,Html) :- sortItem(Curr,B), atom_concat(Tmp,B,New), sortItems(Rest,New,Html).
%sortItems(ContentList,Html) :- sortItems(ContentList,'',Html).