%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           Topics for a co-creation conversation	   %%%
%%%			    ZOO				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Introduction    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_zoo_intro, s1, say).
text(co_zoo_intro,  s1, "Ik vertel graag over dingen die ik heb meegemaakt.").
next(co_zoo_intro,  s1, "true",  s2).

state(co_zoo_intro, s2, say).
text(co_zoo_intro,  s2, "Ik vind het leuk om daar verhaaltjes over te vertellen.").
next(co_zoo_intro,  s2, "true",  s3).

state(co_zoo_intro, s3, say).
text(co_zoo_intro,  s3, "Zo was ik laatst in de dierentuin met mijn robotvriendjes. \pau=300\ ").
next(co_zoo_intro,  s3, "true",  s4).

state(co_zoo_intro, s4, say).
text(co_zoo_intro,  s4, "Het was een fijne zonnige dag.").
leds(co_zoo_intro, s4, ['FaceLeds', 'ChestLeds'], ['Yellow', 'Yellow']).
next(co_zoo_intro,  s4, "true",  s5).

state(co_zoo_intro, s5, say).
text(co_zoo_intro,  s5, "We kregen een rondleiding van de dierenverzorger.").
leds(co_zoo_intro, s5, ['FaceLeds', 'ChestLeds'], ['White', 'White']).
next(co_zoo_intro,  s5, "true",  s6).

state(co_zoo_intro, s6, say).
text(co_zoo_intro,  s6, "We zijn langs de apen en de zebra's gelopen. \pau=300\ ").
next(co_zoo_intro,  s6, "true",  s7).

state(co_zoo_intro, s7, question).
stateConfig(co_zoo_intro, s7, [type=input, context='answer_favorite_animal', options=['hond', 'kat', 'olifant', 'tijger', 'paard', 'alpaca']]).
text(co_zoo_intro, s7, "Wat is eigenlijk jouw lievelingsdier?").
next(co_zoo_intro, s7, 'success', s8).
next(co_zoo_intro, s7, 'fail', s8f).

state(co_zoo_intro, s8, question).
stateConfig(co_zoo_intro, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_intro, s8, "Leuk! Wat vind je zo leuk aan een %co_zoo_intro_s7%?").
next(co_zoo_intro, s8, 'success', s9).
next(co_zoo_intro, s8, 'fail', s9f).

state(co_zoo_intro, s8f, question).
stateConfig(co_zoo_intro, s8f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(co_zoo_intro, s8f, "Leuk! Wat vind je daar zo leuk aan?").
next(co_zoo_intro, s8f, 'success', s9f).
next(co_zoo_intro, s8f, 'fail', s9ff).

state(co_zoo_intro, s9, say).
text(co_zoo_intro,  s9, "Een %co_zoo_intro_s7% is dus een terechte favoriet.").

state(co_zoo_intro, s9f, say).
text(co_zoo_intro,  s9f, "Een terechte favoriet.").

state(co_zoo_intro, s9ff, say).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Elephants - Gesture		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_zoo_elephant, s1, say).
text(co_zoo_elephant,  s1, "Een van mijn lievelingsdieren zijn olifanten.").
next(co_zoo_elephant,  s1, "true",  s2).

state(co_zoo_elephant, s2, say).
text(co_zoo_elephant,  s2, "Ik vind het gaaf dat ze zo groot zijn.").
next(co_zoo_elephant,  s2, "true",  s3).

state(co_zoo_elephant, s3, say).
text(co_zoo_elephant,  s3, "En ik vind hun slurf zo leuk.").
next(co_zoo_elephant,  s3, "true",  s4).

state(co_zoo_elephant, s4, say).
text(co_zoo_elephant,  s4, "Vooral als ze er mee toeteren.").
next(co_zoo_elephant,  s4, "true",  s5).

state(co_zoo_elephant, s5, say).
text(co_zoo_elephant,  s5, "Daar zou ik nou een leuk gebaar voor willen hebben.").
next(co_zoo_elephant,  s5, "true",  s6).

state(co_zoo_elephant, s6, say).
text(co_zoo_elephant,  s6, "Laten we die maken.").
%next(co_co_zoo_elephant_intro,  s14, "true",  s15).

