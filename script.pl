%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State parameter handling.                              %%%
%%% Define default configuration parameters here.          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Returns values for all keys in list of condition Pairs in state.
keyListValues(State, [Key | Keys], [Value | Values]) :- keyValue(State, Key, Value), keyListValues(State, Keys, Values).
keyListValues(_, [], []).
% Returns value for (one) key in list of condition Pairs in state.
% (use of cut ! to prevent returning default values for keys).
keyValue(State, Key, Value) :- currentTopic(Topic), stateConfig(Topic, State, Pairs), member((Key=Value), Pairs), !.

%% Global (default) configuration parameters
% (override config param for specific state by using key-label in key-value list associated with that state).
% Number of tries a user gets to provide an answer to a question (of whatever type).
keyValue(_, maxAnswerAttempts, 1).

% Time (in milliseconds) a user gets to answer a question.
keyValue(_, maxAnswerTime, 5000).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% State completion logic               		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A say state is completed if after starting it, all events that were started have been completed.
% That is, a say state transitions from (1) start to (2) waiting for event completion ('TextDone', 'GestureDone', etc.) to (3) completion.
completed(State) :- currentState(State), state(_, State, say), eventsCompleted.
% A question state is completed if after starting it, all events that were started have been completed,
% and an answer has been received, or a timeout occurred.
% That is, a question state transitions from (1) start to (2) posing the question (waitingForEvent) to (3) waiting for answer to (4) complete.
completed(State) :- currentState(State), state(_, State, question), eventsCompleted, answerReceived.



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Script		                                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% State/3 first specifies a topic. A topic is an abstraction representing a set of states. A topic always starts in state s1.
% Which topics the agent should perform is specified as a goal in the init module.

state(intro, s1, say). text(intro, s1, "Hallo, ik ben Hero"). next(intro, s1, 'true', s12).
state(intro, s2, say). text(intro, s2, "We gaan zo een gesprekje houden, maar eerst zal ik je uitleggen hoe je met me kunt praten"). next(intro, s2, 'true', s3).
state(intro, s3, say). text(intro, s3, "Als ik je een vraag stel, hoor je daarna een piepje"). next(intro, s3, 'true', s4).

state(intro, s4, question). text(intro, s4, "Na het piepje ben ik aandachtig naar je aan het luisteren. Zeg maar ja als je het piepje hoorde.").
stateConfig(intro, s4, [type=yesno, response=speech, context='answer_yesno']).
next(intro, s4, _, s5). % don't care what the response was here... 

state(intro, s5, say). text(intro, s5, "Soms heb ik moeite met mensen te verstaan. Dan kun je me antwoord geven door op mijn tenen te drukken"). next(intro, s5, 'true', s6).
state(intro, s6, say). text(intro, s6, "Aan de voorkant van mijn voeten zie je een oranje knopje, daar kun je dan op drukken"). next(intro, s6, 'true', s7).
state(intro, s7, say). text(intro, s7, "Wel moet je eerst wachten tot er een blauw lichtje op mijn voeten gaat branden"). next(intro, s7, 'true', s8).
state(intro, s8, say). text(intro, s8, "Zullen we dat een keer oefenen?"). next(intro, s8, 'true', s9).

state(intro, s9, question). text(intro, s9, "Druk eens op het knopje bij de ja, sticker").
stateConfig(intro, s9, [type=yesno, response=touch]).
next(intro, s9, 'answer_yes', s9yes). next(intro, s9, 'answer_no', s9no). next(intro, s9, 'fail', s10).

state(intro, s9yes, say). text(intro, s9yes, "Heel goed gedaan"). next(intro, s9yes, 'true', s10).
state(intro, s9no, say). text(intro, s9no, "Oeps dat was mijn andere voet. Dat is niet erg"). next(intro, s9no, 'true', s10).

state(intro, s10, question). text(intro, s10, "Druk eens op het knopje bij de nee, sticker").
stateConfig(intro, s10, [type=yesno, response=touch]).
next(intro, s10, 'answer_yes', s11yes). next(intro, s10, 'answer_no', s11no). next(intro, s10, 'fail', s12).

state(intro, s11yes, say). text(intro, s11yes, "Oeps dat was mijn andere voet. Dat is niet erg"). next(intro, s11yes, 'true', s12).
state(intro, s11no, say). text(intro, s11no, "Heel goed gedaan"). next(intro, s11no, 'true', s12).
state(intro, s12, say). text(intro, s12, "Zullen we nu eens oefenen met antwoord geven op een vraag? Probeer luid en duidelijk te spreken na het piepje."). next(intro, s12, 'true', s13).

state(intro, s13, question). text(intro, s13, "Kun je me vertellen welke kleur ik ben?").
stateConfig(intro, s13, [type=mc, response=speech, context='answer_color', key='naoColor']).
% opties: ["wit", "oranje", "rood", "roze", "blauw", "geel", "groen", "paars", "zwart", "bruin"]).
% reactie:
% state(intro, 15, say, "Ja goed gedaan, ik ben inderdaad wit", "wit"). state(intro, 15, say, "Ja goed gedaan, ik ben inderdaad oranje", "oranje"). state(intro, 15, say, "Ja goed gedaan, ik ben inderaad rood", "rood").
% state(intro, 15, say, "Oeps ik ben niet die kleur, maar je hebt wel op het juiste moment je antwoord gegeven", "roze").
next(intro, s13, _, s13answer).

state(intro, s13answer, say). text(intro, s13answer, "Je zegt dat ik de kleur %naoColor% heb."). next(intro, s13answer, 'true', s14).

state(intro, s14, question). text(intro, s14, "Ik wil graag weten hoe je heet. Wat is jouw naam?").
stateConfig(intro, s14, [type=mc, response=speech, context='answer_name', key='userName']).
next(intro, s14, _, s15).

state(intro, s15, say). text(intro, s15, "Oh, %userName%, dat vind ik een mooie naam"). next(intro, s15, 'true', s16).
state(intro, s16, say). text(intro, s16, "Voor we verder gaan met ons gesprekje, weet ik wat leuks om te doen").

state(theend, s1, say).
text(theend, s1, "Dat was het. Doei!").




state(test, s1, say). % state s1 is of type 'say'.
stateConfig(test, s1, []). % no configuration parameters for state s1 (empty list); if empty, no need to include stateConfig/2 for s1.
text(test, s1, "Hallo, ik ben Hero.").
anim(test, s1, 'animations/Stand/Gestures/Hey_1').
leds(test, s1, 'white').

state(test, s2, question).
stateConfig(test, s2, [type=yesno, response=speech, context='answer_yesno']).
text(test, s2, "Hou je van chocola?").

% In second instance try touch (feet bumpers)
state(test, s2f, question).
stateConfig(test, s2f, [type=yesno, response=touch]).
text(test, s2f, "Sorry ik versta je niet. Wil je daarom antwoord geven door de knopjes bij mijn tenen aan te raken? Hou je van chocola?").

state(test, s3a, say).
text(test, s3a, "Ik houd ook van chocola!").

state(test, s3b, say).
text(test, s3b, "Ik vind chocola ook vies!").

state(test, s4, question).
stateConfig(test, s4, [type=mc, response=speech, context='answer_color', key='favoriteColor']).
text(test, s4, "Wat is jouw lievelingskleur?").

state(test, s4f, question).
stateConfig(test, s4f, [type=mc, response=touch, options = ["blauw", "geel", "groen", "rood"], context='answer_color', key='favoriteColor']). % "wit", "oranje", "rood", "roze", "blauw", "geel", "groen", "paars", "zwart", "bruin"
text(test, s4f, "Sorry ik versta je niet. Wil je daarom antwoord geven door de knopjes bij mijn tenen aan te raken? Ik vertel je alle mogelijke antwoorden. Druk op het knopje bij de ja sticker als je je antwoord hoort.").

state(test, s5, say).
text(test, s5, "Ik vind %favoriteColor% ook heel mooi!"). % favoriteColor is a variable that is replaced with an answer given by user for key 'favoriteColor' (see s4).

next(test, s1, 'true', s2).
next(test, s2, 'answer_yes', s3a).
next(test, s2, 'answer_no', s3b).
next(test, s2, 'fail', s2f).
next(test, s2f, 'answer_yes', s3a).
next(test, s2f, 'answer_no', s3b).
next(test, s2f, 'fail', s4).
next(test, s3a, 'true', s4).
next(test, s3b, 'true', s4).
next(test, s4, 'answer_color', s5).
next(test, s4, 'fail', s4f).
next(test, s4f, 'answer_color', s5).




%state(s5, question, [type=mc, response=speech, context='answer_pets']).
%state(s5a, question, [type=mc, response=touch, options=['hond', 'kat', 'konijn', 'cavia']]).

