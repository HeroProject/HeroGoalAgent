%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      SOROCOVA Iteration 1	           %%%
%%%  	  Chitchat Minidialogs for math tutoring robot     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Dieren				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Huisdieren
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_huisdier, [type=chitchat, theme=dieren, topic=huisdier]).

move(sor_huisdier, s1, say).
text(sor_huisdier, s1, "Weet je waar ik benieuwd naar ben").
next(sor_huisdier, s1, "true", s2).

move(sor_huisdier, s2, question).
moveConfig(sor_huisdier, s2, [type=yesno, context='answer_yesno', umVariable=heeft_huisdier]).
text(sor_huisdier, s2, "Heb jij een huisdier?").
next(sor_huisdier, s2, "answer_yes", s3ja).
next(sor_huisdier, s2, "answer_no", s3nee).
next(sor_huisdier, s2, "answer_dontknow", s3fail).
next(sor_huisdier, s2, "fail", s3fail).

move(sor_huisdier, s3ja, say).
text(sor_huisdier, s3ja, "Leuk!").
next(sor_huisdier, s3ja, "true", s4ja).

move(sor_huisdier, s4ja, question).
moveConfig(sor_huisdier, s4ja, [type=input, context="animals", options=['hond', 'kat', 'konijn', 'cavia', 'vogel', 'slang'], fast=yes, umVariable=huisdier, topics=[success=[huisdier, '_answer']]]).
text(sor_huisdier, s4ja, "Wat voor huisdier heb je?").
next(sor_huisdier, s4ja, "success", s6).
next(sor_huisdier, s4ja, "fail", s10f).

move(sor_huisdier, s3fail, say).
text(sor_huisdier, s3fail, "Ik heb geen huisdier.").
next(sor_huisdier, s3fail, "true", s4nee).

move(sor_huisdier, s3nee, say).
text(sor_huisdier, s3nee, "Ik ook niet.").
next(sor_huisdier, s3nee, "true", s4nee).

move(sor_huisdier, s4nee, say).
text(sor_huisdier, s4nee, "En als je een huisdier zou mogen nemen.").
next(sor_huisdier, s4nee, "true", s5nee).

move(sor_huisdier, s5nee, question).
moveConfig(sor_huisdier, s5nee, [type=input, context="animals", options=['hond', 'kat', 'konijn', 'cavia', 'vogel', 'slang'], fast=yes, umVariable=huisdier, topics=[success=[huisdier, '_answer']]]).
text(sor_huisdier, s5nee, "Welk dier zou je dan kiezen??").
next(sor_huisdier, s5nee, "success", s6).
next(sor_huisdier, s5nee, "fail", s10f).

move(sor_huisdier, s6, say).
text(sor_huisdier, s6, "Cool!").
next(sor_huisdier, s6, "true", s7).

move(sor_huisdier, s7, say).
text(sor_huisdier, s7, "Een %huisdier% lijkt me ook een leuk huisdier.").
next(sor_huisdier, s7, "true", s8).

move(sor_huisdier, s8, continuator).
next(sor_huisdier, s8, [[umVariable=heeft_huisdier, filter=green, values=["answer_yes"]]], s9_wel).
next(sor_huisdier, s8, [[umVariable=heeft_huisdier, filter=red, values=["answer_yes"]]], s9_niet).

move(sor_huisdier, s9_wel, question).
moveConfig(sor_huisdier, s9_wel, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_huisdier, s9_wel, "En, hoe heet je %huisdier%?").
next(sor_huisdier, s9_wel, "success", s10).
next(sor_huisdier, s9_wel, "fail", s10f).

move(sor_huisdier, s9_niet, question).
moveConfig(sor_huisdier, s9_niet, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_huisdier, s9_niet, "En hoe zou je jouw %huisdier% dan noemen?").
next(sor_huisdier, s9_niet, "success", s10).
next(sor_huisdier, s9_niet, "fail", s10f).

move(sor_huisdier, s10, say).
text(sor_huisdier, s10, "Wat een leuke naam!").

move(sor_huisdier, s10f, say).
text(sor_huisdier, s10f, "Okidoki").

% Boederijdier
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_boederijdier, [type=chitchat, theme=dieren, topic=boederijdier]).

move(sor_boederijdier, s1, say).
text(sor_boederijdier, s1, "Ik heb een tijdje op een boederij gewerkt als stal hulp").
next(sor_boederijdier, s1, "true", s2).

move(sor_boederijdier, s2, say).
text(sor_boederijdier, s2, "Ik mocht daarbij allerlei dieren verzorgen.").
next(sor_boederijdier, s2, "true", s3).

move(sor_boederijdier, s3, question).
moveConfig(sor_boederijdier, s3, [type=input, context="animals", options=['paard', 'koe', 'varken', 'schaap', 'kip', 'ezel'], fast=yes, umVariable=boederijdier, topics=[success=[boederijdier, '_answer']]]).
text(sor_boederijdier, s3, "Welk boederijdier vind jij het leukst?").
next(sor_boederijdier, s3, "success", s4).
next(sor_boederijdier, s3, "fail", s6).

move(sor_boederijdier, s4, say).
text(sor_boederijdier, s4, "Super! Een %boederijdier% heb ik nog verzorgd.").
next(sor_boederijdier, s4, "true", s5).

move(sor_boederijdier, s5, say).
text(sor_boederijdier, s5, "Daar heb ik goede herinneringen aan.").
next(sor_boederijdier, s5, "true", s6).

move(sor_boederijdier, s6, say).
text(sor_boederijdier, s6, "Leuk").

% Wild dier
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_wilddier, [type=chitchat, theme=dieren, topic=wilddier]).

move(sor_wilddier, s1, say).
text(sor_wilddier, s1, "Soms droom ik dat ik kan vliegen.").
next(sor_wilddier, s1, "true", s2).

move(sor_wilddier, s2, say).
text(sor_wilddier, s2, "Of dat ik op de rug van een adelaar door de lucht mag zweven").
next(sor_wilddier, s2, "true", s3).

move(sor_wilddier, s3, say).
text(sor_wilddier, s3, "Er zijn zo veel prachtige wilde dieren").
next(sor_wilddier, s3, "true", s4).

move(sor_wilddier, s4, question).
moveConfig(sor_wilddier, s4, [type=input, context="animals", options=['olifant', 'tijger', 'panda', 'dolfijn', 'adelaar'], fast=yes, umVariable=wilddier, topics=[success=[wilddier, '_answer']]]).
text(sor_wilddier, s4, "Welk wilddier vind jij het leukst?").
next(sor_wilddier, s4, "success", s5).
next(sor_wilddier, s4, "fail", s6).

move(sor_wilddier, s5, question).
moveConfig(sor_wilddier, s5, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_wilddier, s5, "Waar leeft, een %wilddier%, eigenlijk?").
next(sor_wilddier, s5, "success", s6).
next(sor_wilddier, s5, "fail", s6).

move(sor_wilddier, s6, say).
text(sor_wilddier, s6, "Wat interessant zeg.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Eten				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lievelingseten met een p
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_eten_met_p, [type=chitchat, theme=eten, topic=eten_met_p]).
move(sor_eten_met_p, s1, say).
text(sor_eten_met_p, s1, "En, weet je wat?").
next(sor_eten_met_p, s1, "true", s2).

move(sor_eten_met_p, s2, say).
text(sor_eten_met_p, s2, "Ik heb namelijk nog iets bijzonders ontdekt!").
next(sor_eten_met_p, s2, "true", s3).

move(sor_eten_met_p, s3, say).
text(sor_eten_met_p, s3, "Heel veel, eten, dat heel veel kinderen heel lekker vinden").
next(sor_eten_met_p, s3, "true", s4).

move(sor_eten_met_p, s4, say).
text(sor_eten_met_p, s4, "begint met een P!").
next(sor_eten_met_p, s4, "true", s5).

move(sor_eten_met_p, s5, say).
text(sor_eten_met_p, s5, "Zoals: pizza, pasta, pannenkoeken, poffertjes, en patat.").
next(sor_eten_met_p, s5, "true", s6).

move(sor_eten_met_p, s6, question).
moveConfig(sor_eten_met_p, s6, [type=input, context="lievelingseten_met_p", options=['pizza', 'pasta', 'pannenkoeken', 'poffertjes', 'patat'], fast=yes, umVariable=lievelingseten_met_p, topics=[success=[eten, '_answer']]]).
text(sor_eten_met_p, s6, "Welke P vind jij de allerlekkerste P?").
next(sor_eten_met_p, s6, "pizza", s7pizza1).
next(sor_eten_met_p, s6, "pasta", s7pasta1).
next(sor_eten_met_p, s6, "pannenkoeken", s7pannenkoeken1).
next(sor_eten_met_p, s6, "poffertjes", s7poffertjes1).
next(sor_eten_met_p, s6, "patat", s7patat1).
next(sor_eten_met_p, s6, "fail", s7fail_lievelingseten_met_p1).
next(sor_eten_met_p, s6, "_others", s7fail_lievelingseten_met_p1).

move(sor_eten_met_p, s7pizza1, say).
text(sor_eten_met_p, s7pizza1, "Pizza! Pizza! Ooooh pizza!").
next(sor_eten_met_p, s7pizza1, "true", s7pizza2).

move(sor_eten_met_p, s7pizza2, question).
moveConfig(sor_eten_met_p, s7pizza2, [type=yesno, context='answer_yesno', umVariable=pizza_sliert]).
text(sor_eten_met_p, s7pizza2, "Heb je ook wel eens dat de kaas zo erg gesmolten is, dat er een hele sliert tussen je mond en je pizzapunt hangt als je een hap neemt?").
next(sor_eten_met_p, s7pizza2, "answer_yes", s7wel_pizza_sliert1).
next(sor_eten_met_p, s7pizza2, "answer_dontknow", s7wel_pizza_sliert1).
next(sor_eten_met_p, s7pizza2, "fail", s7wel_pizza_sliert1).
next(sor_eten_met_p, s7pizza2, "answer_no", s7wel_pizza_sliert1).

move(sor_eten_met_p, s7wel_pizza_sliert1, say).
text(sor_eten_met_p, s7wel_pizza_sliert1, "Sommige mensen vinden dat er vies uit zien, maar ik niet!").
next(sor_eten_met_p, s7wel_pizza_sliert1, "true", s7wel_pizza_sliert2).

move(sor_eten_met_p, s7wel_pizza_sliert2, say).
text(sor_eten_met_p, s7wel_pizza_sliert2, "Zo'n sliert lijkt op het allerbeste snoer waar ik stroom door krijg.").
next(sor_eten_met_p, s7wel_pizza_sliert2, "true", s7wel_pizza_sliert3).

move(sor_eten_met_p, s7wel_pizza_sliert3, say).
text(sor_eten_met_p, s7wel_pizza_sliert3, "En mamma mia!").
next(sor_eten_met_p, s7wel_pizza_sliert3, "true", s7wel_pizza_sliert4).

move(sor_eten_met_p, s7wel_pizza_sliert4, say).
text(sor_eten_met_p, s7wel_pizza_sliert4, "Als zo'n sliert voor jou proeft zoals stroom voor mij.").
next(sor_eten_met_p, s7wel_pizza_sliert4, "true", s7wel_pizza_sliert5).

move(sor_eten_met_p, s7wel_pizza_sliert5, say).
text(sor_eten_met_p, s7wel_pizza_sliert5, "dan kan zo'n sliert alleen maar bewijs voor een superpizza zijn!").
next(sor_eten_met_p, s7wel_pizza_sliert5, "true", s8).

move(sor_eten_met_p, s7pasta1, say).
text(sor_eten_met_p, s7pasta1, "Fantastico!").
next(sor_eten_met_p, s7pasta1, "true", s7pasta2).

move(sor_eten_met_p, s7pasta2, say).
text(sor_eten_met_p, s7pasta2, "Dat is Italiaans voor geweldig!").
next(sor_eten_met_p, s7pasta2, "true", s7pasta3).

move(sor_eten_met_p, s7pasta3, say).
text(sor_eten_met_p, s7pasta3, "Dat heb ik geleerd van Italiaanse robots die pasta maken.").
next(sor_eten_met_p, s7pasta3, "true", s7pasta4).

move(sor_eten_met_p, s7pasta4, say).
text(sor_eten_met_p, s7pasta4, "Robots kunnen natuurlijk geen pasta eten,").
next(sor_eten_met_p, s7pasta4, "true", s7pasta5).

move(sor_eten_met_p, s7pasta5, say).
text(sor_eten_met_p, s7pasta5, "maar al die verschillende vormpjes vinden wij te gek!").
next(sor_eten_met_p, s7pasta5, "true", s8).

move(sor_eten_met_p, s7pannenkoeken1, say).
text(sor_eten_met_p, s7pannenkoeken1, "Pannenkoeken lijken mij ook heel lekker!").
next(sor_eten_met_p, s7pannenkoeken1, "true", s7pannenkoeken2).

move(sor_eten_met_p, s7pannenkoeken2, say).
text(sor_eten_met_p, s7pannenkoeken2, "Ik heb gezien dat jullie daar stroop op doen.").
next(sor_eten_met_p, s7pannenkoeken2, "true", s7pannenkoeken3).

move(sor_eten_met_p, s7pannenkoeken3, say).
text(sor_eten_met_p, s7pannenkoeken3, "Dat lijkt wel een beetje op motorolie!").
next(sor_eten_met_p, s7pannenkoeken3, "true", s7pannenkoeken4).

move(sor_eten_met_p, s7pannenkoeken4, say).
text(sor_eten_met_p, s7pannenkoeken4, "In de toekomst komen er vast pannenkoekenhuizen voor mensen en robots samen.").
next(sor_eten_met_p, s7pannenkoeken4, "true", s7pannenkoeken5).

move(sor_eten_met_p, s7pannenkoeken5, say).
text(sor_eten_met_p, s7pannenkoeken5, "Daar hebben ze dan pannenkoeken met stroop voor jou").
next(sor_eten_met_p, s7pannenkoeken5, "true", s7pannenkoeken6).

move(sor_eten_met_p, s7pannenkoeken6, say).
text(sor_eten_met_p, s7pannenkoeken6, "en harde schijven met motorolie voor mij!").
next(sor_eten_met_p, s7pannenkoeken6, "true", s8).

move(sor_eten_met_p, s7poffertjes1, say).
text(sor_eten_met_p, s7poffertjes1, "Poffertjes vind ik er ook lekker uit zien!").
next(sor_eten_met_p, s7poffertjes1, "true", s7poffertjes2).

move(sor_eten_met_p, s7poffertjes2, say).
text(sor_eten_met_p, s7poffertjes2, "En het woord klinkt ook heel lekker.").
next(sor_eten_met_p, s7poffertjes2, "true", s7poffertjes3).

move(sor_eten_met_p, s7poffertjes3, say).
text(sor_eten_met_p, s7poffertjes3, "Pof pof poffertje!").
next(sor_eten_met_p, s7poffertjes3, "true", s7poffertjes4).

move(sor_eten_met_p, s7poffertjes4, say).
text(sor_eten_met_p, s7poffertjes4, "En het rijmt op wat jij bent als je heel veel poffertjes krijgt").
next(sor_eten_met_p, s7poffertjes4, "true", s7poffertjes5).

move(sor_eten_met_p, s7poffertjes5, say).
text(sor_eten_met_p, s7poffertjes5, "dan ben je een echt boffertje!").
next(sor_eten_met_p, s7poffertjes5, "true", s8).

move(sor_eten_met_p, s7patat1, say).
text(sor_eten_met_p, s7patat1, "Als ik een mens was, zou ik dat ook de lekkerste P vinden!").
next(sor_eten_met_p, s7patat1, "true", s7patat2).

move(sor_eten_met_p, s7patat2, say).
text(sor_eten_met_p, s7patat2, "Ik vind vooral de frituurpan leuk.").
next(sor_eten_met_p, s7patat2, "true", s7patat3).

move(sor_eten_met_p, s7patat3, say).
text(sor_eten_met_p, s7patat3, "Die lijkt op het badje met olie waar ik soms even in wordt gelegd.").
next(sor_eten_met_p, s7patat3, "true", s7patat4).

move(sor_eten_met_p, s7patat4, say).
text(sor_eten_met_p, s7patat4, "Dat helpt als ik een beetje vastgeroest ben.").
next(sor_eten_met_p, s7patat4, "true", s7patat5).

move(sor_eten_met_p, s7patat5, say).
text(sor_eten_met_p, s7patat5, "Misschien mag ik de volgende keer wel in de frituurpan zwemmen!").
next(sor_eten_met_p, s7patat5, "true", s7patat6).

move(sor_eten_met_p, s7patat6, say).
text(sor_eten_met_p, s7patat6, "Maar die moet dan wel uitstaan natuurlijk.").
next(sor_eten_met_p, s7patat6, "true", s7patat7).

move(sor_eten_met_p, s7patat7, say).
text(sor_eten_met_p, s7patat7, "anders kom ik eruit als een Hero-kroket!").
next(sor_eten_met_p, s7patat7, "true", s8).

move(sor_eten_met_p, s8, question).
moveConfig(sor_eten_met_p, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_eten_met_p, s8, "Wat vind jij eigenlijk lekker aan %lievelingseten_met_p%?").
next(sor_eten_met_p, s8, "success", s9).
next(sor_eten_met_p, s8, "fail", s9).

move(sor_eten_met_p, s9, say).
text(sor_eten_met_p, s9, "Zo dat klinkt goed.").
next(sor_eten_met_p, s9, "true", s10).

move(sor_eten_met_p, s10, say).
text(sor_eten_met_p, s10, "Ik hoop dat er snel een robot variant komt van %lievelingseten_met_p%.").

% Saus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_eten_saus, [type=chitchat, theme=eten, topic=saus]).
move(sor_eten_saus, s1, say).
text(sor_eten_saus, s1, "Je zult het vast niet geloven.").
next(sor_eten_saus, s1, "true", s2).

move(sor_eten_saus, s2, say).
text(sor_eten_saus, s2, "Maar ik heb een tijdje gewerkt in de snackbar.").
next(sor_eten_saus, s2, "true", s3).

move(sor_eten_saus, s3, say).
text(sor_eten_saus, s3, "Als bezorger, maar ook achter de frituur").
next(sor_eten_saus, s3, "true", s4).

move(sor_eten_saus, s4, say).
text(sor_eten_saus, s4, "Weetje dat mensen altijd hun frietjes in die gekke en kleurrijke goedjes dippen?").
next(sor_eten_saus, s4, "true", s5).

move(sor_eten_saus, s5, say).
text(sor_eten_saus, s5, "Ze noemen dat een sausje").
next(sor_eten_saus, s5, "true", s6).

move(sor_eten_saus, s6, question).
moveConfig(sor_eten_saus, s6, [type=input, context="saus", options=['ketchup', 'mayonaise', 'curry', 'appelmoes', 'frietsaus', 'joppiesaus'], fast=yes, umVariable=lievelingssaus, topics=[success=[saus, '_answer']]]).
text(sor_eten_saus, s6, "Wat is jou favoriete saus voor op de frietjes?").
next(sor_eten_saus, s6, "success", s7).
next(sor_eten_saus, s6, "fail", s8).

move(sor_eten_saus, s7, question).
moveConfig(sor_eten_saus, s7, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_eten_saus, s7, "Wat vind je lekker aan %lievelingssaus%?").
next(sor_eten_saus, s7, "success", s8).
next(sor_eten_saus, s7, "fail", s8).

move(sor_eten_saus, s8, say).
text(sor_eten_saus, s8, "Dat klinkt goed.").

% Fruit
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_eten_fruit, [type=chitchat, theme=eten, topic=fruit]).
move(sor_eten_fruit, s1, say).
text(sor_eten_fruit, s1, "En, nu even wat anders.").
next(sor_eten_fruit, s1, "true", s2).

move(sor_eten_fruit, s2, say).
text(sor_eten_fruit, s2, "Wat is groen en skiet van een berg af? \pau=500\ ").
next(sor_eten_fruit, s2, "true", s3).

move(sor_eten_fruit, s3, say).
text(sor_eten_fruit, s3, "Een skiwi \pau=300\ ").
next(sor_eten_fruit, s3, "true", s4).

move(sor_eten_fruit, s4, say).
audio(sor_eten_fruit, s4, file, "resources/sounds/badum_tss.wav").
next(sor_eten_fruit, s4, "true", s5).

move(sor_eten_fruit, s5, question).
moveConfig(sor_eten_fruit, s5, [type=yesno, context='answer_yesno']).
text(sor_eten_fruit, s5, "Vond je dat grappig").
next(sor_eten_fruit, s5, "answer_yes", s6).
next(sor_eten_fruit, s5, "answer_no", s6).
next(sor_eten_fruit, s5, "answer_dontknow", s6).
next(sor_eten_fruit, s5, "fail", s6).

move(sor_eten_fruit, s6, say).
text(sor_eten_fruit, s6, "Dan heb ik er nog 1").
next(sor_eten_fruit, s6, "true", s7).

move(sor_eten_fruit, s7, say).
text(sor_eten_fruit, s7, "Het is oranje en roept ik ben een basketbal, ik ben een basketbal! \pau=500\ ").
next(sor_eten_fruit, s7, "true", s8).

move(sor_eten_fruit, s8, say).
text(sor_eten_fruit, s8, "Een mandarijn, die lijdt aan grootheidswaanzin. \pau=300\ ").
next(sor_eten_fruit, s8, "true", s9).

move(sor_eten_fruit, s9, say).
audio(sor_eten_fruit, s9, file, "resources/sounds/badum_tss.wav").
next(sor_eten_fruit, s9, "true", s10).

move(sor_eten_fruit, s10, say).
text(sor_eten_fruit, s10, "Ik merk nu dat al mijn grappen over fruit gaan.").
next(sor_eten_fruit, s10, "true", s11).

move(sor_eten_fruit, s11, question).
moveConfig(sor_eten_fruit, s11, [type=input, context="saus", options=['aardbei', 'banaan', 'appel', 'druif', 'manderijn', 'kiwi'], fast=yes, umVariable=lievelingsfruit, topics=[success=[fruit, '_answer']]]).
text(sor_eten_fruit, s11, "Welk fruit vind jij het lekkerst?").
next(sor_eten_fruit, s11, "success", s12).
next(sor_eten_fruit, s11, "fail", s12).

move(sor_eten_fruit, s12, say).
text(sor_eten_fruit, s12, "Lekker sappig").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Hobbies				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lezen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_hob_lezen, [type=chitchat, theme=hobbies, topic=lezen]).
move(sor_hob_lezen, s1, say).
text(sor_hob_lezen, s1, "Weet je waar ik ook een tijdje heb gewerkt.").
next(sor_hob_lezen, s1, "true", s2).

move(sor_hob_lezen, s2, say).
text(sor_hob_lezen, s2, "In de bibliotheek.").
next(sor_hob_lezen, s2, "true", s3).

move(sor_hob_lezen, s3, question).
moveConfig(sor_hob_lezen, s3, [type=yesno, context='answer_yesno', umVariable=leest, topics=[answer_yes=[lezen]]]).
text(sor_hob_lezen, s3, "Hou jij eigenlijk van lezen?").
next(sor_hob_lezen, s3, "answer_yes", s4ja).
next(sor_hob_lezen, s3, "answer_no", s4nee).
next(sor_hob_lezen, s3, "answer_dontknow", s4nee).
next(sor_hob_lezen, s3, "fail", s4nee).

move(sor_hob_lezen, s4ja, say).
text(sor_hob_lezen, s4ja, "Leuk, ik ook.").
next(sor_hob_lezen, s4ja, "true", s5ja).

move(sor_hob_lezen, s5ja, say).
text(sor_hob_lezen, s5ja, "Daar heb ik straks nog wel een rekenvraag over.").

move(sor_hob_lezen, s4nee, say).
text(sor_hob_lezen, s4nee, "Ik vind lezen ook lastig. In de bieb heb ik wel veel kunnen oefenen.").

% Youtube
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_youtube, [type=chitchat, theme=hobbies, topic=youtube]).

move(sor_youtube, s1, say).
text(sor_youtube, s1, "Zeg, %first_name% ,").
next(sor_youtube, s1, "true", s2).

move(sor_youtube, s2, question).
moveConfig(sor_youtube, s2, [type=yesno, context='answer_yesno', umVariable=youtube_kijken]).
text(sor_youtube, s2, "Kijk jij ook graag filmpjes op YouTube?").
next(sor_youtube, s2, "answer_yes", s3ja1).
next(sor_youtube, s2, "answer_no", s3nee1).
next(sor_youtube, s2, "fail", s3fail1).
next(sor_youtube, s2, "answer_dontknow", s3fail1).

move(sor_youtube, s3ja1, say).
text(sor_youtube, s3ja1, "Cool!").
next(sor_youtube, s3ja1, "true", s3ja2).

move(sor_youtube, s3ja2, question).
moveConfig(sor_youtube, s3ja2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_youtube, s3ja2, "Wat voor video's kijk jij het liefst?").
next(sor_youtube, s3ja2, "success", s3got_answer_vid1).
next(sor_youtube, s3ja2, "fail", s3fail1).

move(sor_youtube, s3got_answer_vid1, say).
text(sor_youtube, s3got_answer_vid1, "Wauw!").
next(sor_youtube, s3got_answer_vid1, "true", s3got_answer_vid2).

move(sor_youtube, s3got_answer_vid2, say).
text(sor_youtube, s3got_answer_vid2, "Dat klinkt leuk.").
next(sor_youtube, s3got_answer_vid2, "true", s3got_answer_vid3).

move(sor_youtube, s3got_answer_vid3, say).
text(sor_youtube, s3got_answer_vid3, "Ik zal ook eens zoiets opzoeken.").
next(sor_youtube, s3got_answer_vid3, "true", s3got_answer_vid4).

move(sor_youtube, s3got_answer_vid4, question).
moveConfig(sor_youtube, s3got_answer_vid4, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_youtube, s3got_answer_vid4, "Hoe kwam je erop om dat soort filmpjes te kijken?").
next(sor_youtube, s3got_answer_vid4, "success", s3got_answer_hoezo1).
next(sor_youtube, s3got_answer_vid4, "fail", s3fail1).

move(sor_youtube, s3got_answer_hoezo1, say).
text(sor_youtube, s3got_answer_hoezo1, "Aha! Leuk om te weten, %first_name% !").
next(sor_youtube, s3got_answer_hoezo1, "true", s3got_answer_hoezo2).

move(sor_youtube, s3got_answer_hoezo2, say).
text(sor_youtube, s3got_answer_hoezo2, "Ik vind het leuk om filmpjes te kijken over de natuur").
next(sor_youtube, s3got_answer_hoezo2, "true", s3got_answer_hoezo3).

move(sor_youtube, s3got_answer_hoezo3, say).
text(sor_youtube, s3got_answer_hoezo3, "En over dieren").
next(sor_youtube, s3got_answer_hoezo3, "true", s3got_answer_hoezo4).

move(sor_youtube, s3got_answer_hoezo4, say).
text(sor_youtube, s3got_answer_hoezo4, "Omdat ik zelf helemaal geen dier ben").
next(sor_youtube, s3got_answer_hoezo4, "true", s3got_answer_hoezo5).

move(sor_youtube, s3got_answer_hoezo5, say).
text(sor_youtube, s3got_answer_hoezo5, "En toch kan ik dingen die dieren ook kunnen!").
next(sor_youtube, s3got_answer_hoezo5, "true", s4).

move(sor_youtube, s3nee1, say).
text(sor_youtube, s3nee1, "Oke, helemaal prima.").
next(sor_youtube, s3nee1, "true", s3nee2).

move(sor_youtube, s3nee2, say).
text(sor_youtube, s3nee2, "Ik vind het zelf erg leuk om filmpjes op Youtube te kijken").
next(sor_youtube, s3nee2, "true", s3nee3).

move(sor_youtube, s3nee3, say).
text(sor_youtube, s3nee3, "al heb ik er nog niet zo heel veel gezien.").
next(sor_youtube, s3nee3, "true", s3nee4).

move(sor_youtube, s3nee4, say).
text(sor_youtube, s3nee4, "Maar filmpjes over de natuur en over dieren vind ik superleuk!").
next(sor_youtube, s3nee4, "true", s4).

move(sor_youtube, s3fail1, say).
text(sor_youtube, s3fail1, "Ik kijk heel graag filmpjes over de natuur en over dieren.").
next(sor_youtube, s3fail1, "true", s4).

move(sor_youtube, s4, say).
text(sor_youtube, s4, "Ik heb er drie die ik zeker nog wil kijken:").
next(sor_youtube, s4, "true", s5).

move(sor_youtube, s5, say).
text(sor_youtube, s5, "Één over de jungle").
next(sor_youtube, s5, "true", s6).

move(sor_youtube, s6, say).
text(sor_youtube, s6, "één over de noordpool").
next(sor_youtube, s6, "true", s7).

move(sor_youtube, s7, say).
text(sor_youtube, s7, "en één over de tropische zee.").
next(sor_youtube, s7, "true", s8).

move(sor_youtube, s8, question).
moveConfig(sor_youtube, s8, [type=input, context="jungle_zee_noordpool", options=['jungle', 'zee', 'noordpool'], fast=yes, umVariable=onderwerp_youtubevideo, topics=[success=[youtube, '_answer']]]).
text(sor_youtube, s8, "Welke zou jij het eerste kijken?").
next(sor_youtube, s8, "success", s9).
next(sor_youtube, s8, "fail", s9).

move(sor_youtube, s9, question).
moveConfig(sor_youtube, s9, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_youtube, s9, "Waarom lijkt de %onderwerp_youtubevideo% jou het leukste?").
next(sor_youtube, s9, "success", s10).
next(sor_youtube, s9, "fail", s10).

move(sor_youtube, s10, say).
text(sor_youtube, s10, "Oké, te gek!").
next(sor_youtube, s10, "true", s11).

move(sor_youtube, s11, say).
text(sor_youtube, s11, "Dan ga ik die vanavond kijken als ik klaar ben!").

% Zwemmen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_hob_zwemmen, [type=chitchat, theme=hobbies, topic=zwemmen]).

move(sor_hob_zwemmen, s1, say).
text(sor_hob_zwemmen, s1, "Iets wat ik niet kan is zwemmen.").
next(sor_hob_zwemmen, s1, "true", s2).

move(sor_hob_zwemmen, s2, say).
text(sor_hob_zwemmen, s2, "Toch heb ik even geprobeerd om badmeester te zijn.").
next(sor_hob_zwemmen, s2, "true", s3).

move(sor_hob_zwemmen, s3, say).
text(sor_hob_zwemmen, s3, "Dat was geen succes.").
next(sor_hob_zwemmen, s3, "true", s4).

move(sor_hob_zwemmen, s4, question).
moveConfig(sor_hob_zwemmen, s4, [type=yesno, context='answer_yesno', umVariable=zwemt, topics=[answer_yes=[zwemmen]]]).
text(sor_hob_zwemmen, s4, "Hou jij eigenlijk van zwemmen?").
next(sor_hob_zwemmen, s4, "answer_yes", s5ja).
next(sor_hob_zwemmen, s4, "answer_no", s5nee).
next(sor_hob_zwemmen, s4, "answer_dontknow", s5nee).
next(sor_hob_zwemmen, s4, "fail", s5nee).

move(sor_hob_zwemmen, s5ja, say).
text(sor_hob_zwemmen, s5ja, "Nijs, dan heb ik daar volgende keer een rekenvraag over.").

move(sor_hob_zwemmen, s5nee, say).
text(sor_hob_zwemmen, s5nee, "Zwemmen is ook stom!").

% Muziek
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_hob_muziek, [type=chitchat, theme=hobbies, topic=muziek]).

move(sor_hob_muziek, s1, say).
text(sor_hob_muziek, s1, "Weetje wat ik goed kan?").
next(sor_hob_muziek, s1, "true", s2).

move(sor_hob_muziek, s2, say).
text(sor_hob_muziek, s2, "Muziek maken.").
next(sor_hob_muziek, s2, "true", s3).

move(sor_hob_muziek, s3, say).
text(sor_hob_muziek, s3, "Luister maar.").
next(sor_hob_muziek, s3, "true", s4).

move(sor_hob_muziek, s4, say).
audio(sor_hob_muziek, s4, file, "resources/sounds/epicsax.wav").
anim(sor_hob_muziek, s4, file, "resources/gestures/saxophone.json").
next(sor_hob_muziek, s4, "true", s5).

move(sor_hob_muziek, s5, say).
text(sor_hob_muziek, s5, "Gaaf hè!").
next(sor_hob_muziek, s5, "true", s6).

move(sor_hob_muziek, s6, question).
moveConfig(sor_hob_muziek, s6, [type=yesno, context='answer_yesno', umVariable=houdt_van_muziek, topics=[answer_yes=[muziek]]]).
text(sor_hob_muziek, s6, "Hou je van muziek.").
next(sor_hob_muziek, s6, "answer_yes", s7ja).
next(sor_hob_muziek, s6, "answer_no", s7nee).
next(sor_hob_muziek, s6, "answer_dontknow", s10).
next(sor_hob_muziek, s6, "fail", s10).

move(sor_hob_muziek, s7nee, say).
text(sor_hob_muziek, s7nee, "gelukkig houden mensen van verschillende dingen").
next(sor_hob_muziek, s7nee, "true", s10).

move(sor_hob_muziek, s7ja, say).
text(sor_hob_muziek, s7ja, "Wat leuk!").
next(sor_hob_muziek, s7ja, "true", s8ja).

move(sor_hob_muziek, s8ja, question).
moveConfig(sor_hob_muziek, s8ja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_hob_muziek, s8ja, "Wat voor muziek vind je leuk?").
next(sor_hob_muziek, s8ja, "success", s9ja).
next(sor_hob_muziek, s8ja, "fail", s10).

move(sor_hob_muziek, s9ja, say).
text(sor_hob_muziek, s9ja, "Wat interessant zeg. Dat moet ik snel maar eens gaan beluisteren.").
next(sor_hob_muziek, s9ja, "true", s10).

move(sor_hob_muziek, s10, say).
text(sor_hob_muziek, s10, "Ik doe wel alsof, maar ik kan eigenlijk geen instrument bespelen.").
next(sor_hob_muziek, s10, "true", s11).

move(sor_hob_muziek, s11, question).
moveConfig(sor_hob_muziek, s11, [type=yesno, context='answer_yesno', umVariable=speelt_instrument, topics=[answer_yes=[muziekinstrument]]]).
text(sor_hob_muziek, s11, "Speel jij een instrument").
next(sor_hob_muziek, s11, "answer_yes", s12ja).
next(sor_hob_muziek, s11, "answer_no", s12nee).
next(sor_hob_muziek, s11, "answer_dontknow", s12nee).
next(sor_hob_muziek, s11, "fail", s12nee).

move(sor_hob_muziek, s12ja, question).
moveConfig(sor_hob_muziek, s12ja, [type=input, context="muziekinstrumenten", options=['gitaar', 'piano', 'viool', 'klarinet', 'dwarsfluit'], umVariable=muziekinstrument, topics=[success=[muziekinstrument, '_answer']]]).
text(sor_hob_muziek, s12ja, "Welk instrument speel je?").
next(sor_hob_muziek, s12ja, "success", s13).
next(sor_hob_muziek, s12ja, "fail", s13f).

move(sor_hob_muziek, s12nee, question).
moveConfig(sor_hob_muziek, s12nee, [type=input, context="muziekinstrumenten", options=['gitaar', 'piano', 'viool', 'klarinet', 'dwarsfluit'], umVariable=muziekinstrument, topics=[success=[muziekinstrument, '_answer']]]).
text(sor_hob_muziek, s12nee, "Welk instrument zou je willen spelen?").
next(sor_hob_muziek, s12nee, "success", s13).
next(sor_hob_muziek, s12nee, "fail", s13f).

move(sor_hob_muziek, s13, say).
text(sor_hob_muziek, s13, "%muziekinstrument%, wat gaaf zeg!").
next(sor_hob_muziek, s13, "true", s14).

move(sor_hob_muziek, s14, say).
text(sor_hob_muziek, s14, "Misschien moet ik ook %muziekinstrument% les nemen. Of saxofoon les natuurlijk!").

move(sor_hob_muziek, s13f, say).
text(sor_hob_muziek, s13f, "Dat klikt gaaf zeg.").
next(sor_hob_muziek, s13f, "true", s14f).

move(sor_hob_muziek, s14f, say).
text(sor_hob_muziek, s14f, "Misschien moet ik de saxofoon leren spelen in het echt.").

% Kleding
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_robotkleren, [type=chitchat, theme=hobbies, topic=kleding]).

move(sor_robotkleren, s1, say).
text(sor_robotkleren, s1, "hee %first_name% ").
next(sor_robotkleren, s1, "true", s2).

move(sor_robotkleren, s2, say).
text(sor_robotkleren, s2, "Ik heb nog een vraag over mensendingen.").
next(sor_robotkleren, s2, "true", s3).

move(sor_robotkleren, s3, say).
text(sor_robotkleren, s3, "Jullie hebben bijna altijd allemaal kleren aan.").
next(sor_robotkleren, s3, "true", s4).

move(sor_robotkleren, s4, say).
text(sor_robotkleren, s4, "En ook allemaal verschillende.").
next(sor_robotkleren, s4, "true", s5).

move(sor_robotkleren, s5, say).
text(sor_robotkleren, s5, "Ik niet, ik zie er altijd hetzelfde uit.").
next(sor_robotkleren, s5, "true", s6).

move(sor_robotkleren, s6, say).
text(sor_robotkleren, s6, "Dat is handig").
next(sor_robotkleren, s6, "true", s7).

move(sor_robotkleren, s7, say).
text(sor_robotkleren, s7, "want dan ben ik 's ochtends meteen klaar om aan de slag te gaan!").
next(sor_robotkleren, s7, "true", s8).

move(sor_robotkleren, s8, say).
text(sor_robotkleren, s8, "Maar soms zou ik wel eens iets bijzonders aan willen.").
next(sor_robotkleren, s8, "true", s9).

move(sor_robotkleren, s9, say).
text(sor_robotkleren, s9, "Als jij mocht kiezen").
next(sor_robotkleren, s9, "true", s10).

move(sor_robotkleren, s10, question).
moveConfig(sor_robotkleren, s10, [type=input, context="clothing", options=['badjas', 'robotpak', 't-shirt', 'jurk', 'trui'], fast=yes, umVariable=kledingstuk, topics=[success=[kleding, '_answer']]]).
text(sor_robotkleren, s10, "Wat zou je mij aan trekken, een t-shirt, of een rok, of misschien iets heel anders?").
next(sor_robotkleren, s10, "robotpak", s11niets1).
next(sor_robotkleren, s10, "badjas", s11badjas1).
next(sor_robotkleren, s10, "_others", s11een_kledingstuk1).
next(sor_robotkleren, s10, "fail", s11fail_kleding1).

move(sor_robotkleren, s11fail_kleding1, say).
text(sor_robotkleren, s11fail_kleding1, "Ik vind het ook moeilijk kiezen!").
next(sor_robotkleren, s11fail_kleding1, "true", s11fail_kleding2).

move(sor_robotkleren, s11fail_kleding2, say).
text(sor_robotkleren, s11fail_kleding2, "Maar als ik het van jou zelf mag bepalen").
next(sor_robotkleren, s11fail_kleding2, "true", s11fail_kleding3).

move(sor_robotkleren, s11fail_kleding3, say).
text(sor_robotkleren, s11fail_kleding3, "dan zou ik wel een badjas willen!").
next(sor_robotkleren, s11fail_kleding3, "true", s11fail_kleding4).

move(sor_robotkleren, s11fail_kleding4, question).
moveConfig(sor_robotkleren, s11fail_kleding4, [type=yesno, context='answer_yesno']).
text(sor_robotkleren, s11fail_kleding4, "Vind je dat goed?").
next(sor_robotkleren, s11fail_kleding4, "answer_yes", s11badjas1).
next(sor_robotkleren, s11fail_kleding4, "fail", s11badjas1).
next(sor_robotkleren, s11fail_kleding4, "answer_no", s11niets1).
next(sor_robotkleren, s11fail_kleding4, "answer_dontknow", s11niets1).

move(sor_robotkleren, s11niets1, say).
text(sor_robotkleren, s11niets1, "Jammer!").
next(sor_robotkleren, s11niets1, "true", s11niets2).

move(sor_robotkleren, s11niets2, say).
text(sor_robotkleren, s11niets2, "Maar je hebt ook wel gelijk.").
next(sor_robotkleren, s11niets2, "true", s11niets3).

move(sor_robotkleren, s11niets3, say).
text(sor_robotkleren, s11niets3, "Ik heb al een heel cool robotpak aan.").
next(sor_robotkleren, s11niets3, "true", s11niets4).

move(sor_robotkleren, s11niets4, say).
text(sor_robotkleren, s11niets4, "Alle robotpakken zijn wit met een kleur.").
next(sor_robotkleren, s11niets4, "true", s11niets5).

move(sor_robotkleren, s11niets5, say).
text(sor_robotkleren, s11niets5, "Kijk maar").
next(sor_robotkleren, s11niets5, "true", s11niets6).

move(sor_robotkleren, s11niets6, say).
text(sor_robotkleren, s11niets6, "Dat van mij is grijs").
next(sor_robotkleren, s11niets6, "true", s11niets7).

move(sor_robotkleren, s11niets7, say).
text(sor_robotkleren, s11niets7, "Als jij een robotpak zou ontwerpen,").
next(sor_robotkleren, s11niets7, "true", s11niets8).

move(sor_robotkleren, s11niets8, question).
moveConfig(sor_robotkleren, s11niets8, [type=input, context="color", options=['rood', 'geel', 'blauw', 'groen'], fast=yes, umVariable=kleur_kledingstuk]).
text(sor_robotkleren, s11niets8, "Welke kleur zou je dan kiezen?").
next(sor_robotkleren, s11niets8, "fail", s11fail_kleur1).
next(sor_robotkleren, s11niets8, "success", s11flitsend1).

move(sor_robotkleren, s11badjas1, say).
text(sor_robotkleren, s11badjas1, "Een badjas lijkt me super handig.").
next(sor_robotkleren, s11badjas1, "true", s11badjas2).

move(sor_robotkleren, s11badjas2, say).
text(sor_robotkleren, s11badjas2, "Die kan ik dan thuis aan als ik terug kom van school!").
next(sor_robotkleren, s11badjas2, "true", s11badjas3).

move(sor_robotkleren, s11badjas3, question).
moveConfig(sor_robotkleren, s11badjas3, [type=input, context="color", options=['rood', 'geel', 'blauw', 'groen'], fast=yes, umVariable=kleur_kledingstuk]).
text(sor_robotkleren, s11badjas3, "Welke kleur badjas zou jij voor mij kiezen?").
next(sor_robotkleren, s11badjas3, "fail", s11fail_kleur1).
next(sor_robotkleren, s11badjas3, "success", s11kleur_gekozen_badjas1).

move(sor_robotkleren, s11een_kledingstuk1, say).
text(sor_robotkleren, s11een_kledingstuk1, "Een %kledingstuk%!").
next(sor_robotkleren, s11een_kledingstuk1, "true", s11een_kledingstuk2).

move(sor_robotkleren, s11een_kledingstuk2, say).
text(sor_robotkleren, s11een_kledingstuk2, "Bizar!").
next(sor_robotkleren, s11een_kledingstuk2, "true", s11een_kledingstuk3).

move(sor_robotkleren, s11een_kledingstuk3, say).
text(sor_robotkleren, s11een_kledingstuk3, "Dat wil ik zeker aan.").
next(sor_robotkleren, s11een_kledingstuk3, "true", s11een_kledingstuk4).

move(sor_robotkleren, s11een_kledingstuk4, question).
moveConfig(sor_robotkleren, s11een_kledingstuk4, [type=input, context="color", options=['rood', 'geel', 'blauw', 'groen'], fast=yes, umVariable=kleur_kledingstuk]).
text(sor_robotkleren, s11een_kledingstuk4, "En welke kleur moet mijn %kledingstuk% hebben?").
next(sor_robotkleren, s11een_kledingstuk4, "fail", s11fail_kleur1).
next(sor_robotkleren, s11een_kledingstuk4, "success", s11kleur_gekozen1).

move(sor_robotkleren, s11fail_kleur1, say).
text(sor_robotkleren, s11fail_kleur1, "Denk er nog maar even over na!").
next(sor_robotkleren, s11fail_kleur1, "true", s12).

move(sor_robotkleren, s11kleur_gekozen1, say).
text(sor_robotkleren, s11kleur_gekozen1, "Bizar, een %kledingstuk% in het %kleur_kledingstuk%!").
next(sor_robotkleren, s11kleur_gekozen1, "true", s11flitsend1).

move(sor_robotkleren, s11kleur_gekozen_badjas1, say).
text(sor_robotkleren, s11kleur_gekozen_badjas1, "Bizar, een badjas, en dan ook nog eens in het %kleur_kledingstuk%!").
next(sor_robotkleren, s11kleur_gekozen_badjas1, "true", s11flitsend1).

move(sor_robotkleren, s11flitsend1, question).
moveConfig(sor_robotkleren, s11flitsend1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_robotkleren, s11flitsend1, "Wat vind je daar zo leuk aan?").
next(sor_robotkleren, s11flitsend1, "success", s11flitsend2).
next(sor_robotkleren, s11flitsend1, "fail", s11flitsend2).

move(sor_robotkleren, s11flitsend2, say).
text(sor_robotkleren, s11flitsend2, "Dat denk ik ook. Het zou me denk ik heel flitsend staan!").
next(sor_robotkleren, s11flitsend2, "true", s11flitsend3).

move(sor_robotkleren, s11flitsend3, continuator).
next(sor_robotkleren, s11flitsend3, [[umVariable=lievelingskleur, filter=green, values=["kleur_kledingstuk"]], [personalization=1]], s11ook_lievelingskleur1).
next(sor_robotkleren, s11flitsend3, [[umVariable=lievelingskleur, filter=red, values=["kleur_kledingstuk"]], [personalization=1]], s11andere_lievelingskleur1).
next(sor_robotkleren, s11flitsend3, "true", s12).

move(sor_robotkleren, s11ook_lievelingskleur1, question).
moveConfig(sor_robotkleren, s11ook_lievelingskleur1, [type=yesno, context='answer_yesno']).
text(sor_robotkleren, s11ook_lievelingskleur1, "he, %kleur_kledingstuk% is toch jouw lievelingskleur?").
next(sor_robotkleren, s11ook_lievelingskleur1, "answer_yes", s11gelijk1).
next(sor_robotkleren, s11ook_lievelingskleur1, "answer_dontknow", s11fail_gelijk1).
next(sor_robotkleren, s11ook_lievelingskleur1, "fail", s11fail_gelijk1).
next(sor_robotkleren, s11ook_lievelingskleur1, "answer_no", s11fail_gelijk1).

move(sor_robotkleren, s11fail_gelijk1, say).
text(sor_robotkleren, s11fail_gelijk1, "Ik vind ook meer dan één kleur mooi.").
next(sor_robotkleren, s11fail_gelijk1, "true", s11fail_gelijk2).

move(sor_robotkleren, s11fail_gelijk2, say).
text(sor_robotkleren, s11fail_gelijk2, "Maar %kleur_kledingstuk% vind ik supermooi, dus dankjewel!").
next(sor_robotkleren, s11fail_gelijk2, "true", s12).

move(sor_robotkleren, s11gelijk1, say).
text(sor_robotkleren, s11gelijk1, "Hoera, dan heb ik dat goed onthouden!").
next(sor_robotkleren, s11gelijk1, "true", s11gelijk2).

move(sor_robotkleren, s11gelijk2, say).
text(sor_robotkleren, s11gelijk2, "Wat lief dat ik jouw lievelingskleur aan mag!").
next(sor_robotkleren, s11gelijk2, "true", s12).

move(sor_robotkleren, s11andere_lievelingskleur1, say).
text(sor_robotkleren, s11andere_lievelingskleur1, "%lievelingskleur% is jouw lievelingskleur, maar nu koos je voor %kleur_kledingstuk%").
next(sor_robotkleren, s11andere_lievelingskleur1, "true", s11andere_lievelingskleur2).

move(sor_robotkleren, s11andere_lievelingskleur2, say).
text(sor_robotkleren, s11andere_lievelingskleur2, "Cool!").
next(sor_robotkleren, s11andere_lievelingskleur2, "true", s11andere_lievelingskleur3).

move(sor_robotkleren, s11andere_lievelingskleur3, say).
text(sor_robotkleren, s11andere_lievelingskleur3, "Ik vind ook meer dan één kleur mooi.").
next(sor_robotkleren, s11andere_lievelingskleur3, "true", s12).

move(sor_robotkleren, s12, say).
text(sor_robotkleren, s12, "Misschien kun je later wel robotkleren gaan ontwerpen!").

% Knutselen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_hob_knutselen, [type=chitchat, theme=hobbies, topic=knutselen]).

move(sor_hob_knutselen, s1, say).
text(sor_hob_knutselen, s1, "Ik zie dat jouw vingers allerlei kanten op kunnen bewegen.").
next(sor_hob_knutselen, s1, "true", s2).

move(sor_hob_knutselen, s2, say).
text(sor_hob_knutselen, s2, "Die van mijn kunnen alleen open en dicht.").
next(sor_hob_knutselen, s2, "true", s3).

move(sor_hob_knutselen, s3, say).
text(sor_hob_knutselen, s3, "Hierdoor is tekenen, en knutselen best lastig. \pau=300\ ").
next(sor_hob_knutselen, s3, "true", s4).

move(sor_hob_knutselen, s4, say).
text(sor_hob_knutselen, s4, "Maar ik vind knutsel werkjes altijd wel heel geinig om te zien. \pau=300\ ").
next(sor_hob_knutselen, s4, "true", s5).

move(sor_hob_knutselen, s5, question).
moveConfig(sor_hob_knutselen, s5, [type=yesno, context='answer_yesno', umVariable=knutselt, topics=[answer_yes=[knutselen]]]).
text(sor_hob_knutselen, s5, "Hou jij van knutselen?").
next(sor_hob_knutselen, s5, "answer_yes", s6ja).
next(sor_hob_knutselen, s5, "answer_no", s6nee).
next(sor_hob_knutselen, s5, "answer_dontknow", s6f).
next(sor_hob_knutselen, s5, "fail", s6f).

move(sor_hob_knutselen, s6f, say).
text(sor_hob_knutselen, s6f, "Okidoki").

move(sor_hob_knutselen, s6ja, question).
moveConfig(sor_hob_knutselen, s6ja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_hob_knutselen, s6ja, "Wat vind je leuk om te maken?").
next(sor_hob_knutselen, s6ja, "success", s7ja).
next(sor_hob_knutselen, s6ja, "fail", s7ja).

move(sor_hob_knutselen, s7ja, say).
text(sor_hob_knutselen, s7ja, "Wauw, dat wil ik wel een keer zien.").

move(sor_hob_knutselen, s6nee, question).
moveConfig(sor_hob_knutselen, s6nee, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_hob_knutselen, s6nee, "Waarom niet?").
next(sor_hob_knutselen, s6nee, "success", s7nee).
next(sor_hob_knutselen, s6nee, "fail", s7nee).

move(sor_hob_knutselen, s7nee, say).
text(sor_hob_knutselen, s7nee, "Nu snap ik het helemaal.").

% Buitenspelen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_hob_buitenspelen, [type=chitchat, theme=hobbies, topic=buitenspelen]).

move(sor_hob_buitenspelen, s1, say).
text(sor_hob_buitenspelen, s1, "Nu ik vaker op school ben").
next(sor_hob_buitenspelen, s1, "true", s2).

move(sor_hob_buitenspelen, s2, say).
text(sor_hob_buitenspelen, s2, "Zie ik dat veel kinderen graag naar buiten gaan om te spelen.").
next(sor_hob_buitenspelen, s2, "true", s3).

move(sor_hob_buitenspelen, s3, question).
moveConfig(sor_hob_buitenspelen, s3, [type=yesno, context='answer_yesno', umVariable=houdt_van_buitenspelen, topics=[answer_yes=[buitenspelen]]]).
text(sor_hob_buitenspelen, s3, "Hou jij van buiten spelen?").
next(sor_hob_buitenspelen, s3, "answer_yes", s4ja).
next(sor_hob_buitenspelen, s3, "answer_no", s4nee).
next(sor_hob_buitenspelen, s3, "answer_dontknow", s6).
next(sor_hob_buitenspelen, s3, "fail", s6).

move(sor_hob_buitenspelen, s4ja, question).
moveConfig(sor_hob_buitenspelen, s4ja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_hob_buitenspelen, s4ja, "Wat vind je er leuk aan?").
next(sor_hob_buitenspelen, s4ja, "success", s5).
next(sor_hob_buitenspelen, s4ja, "fail", s5).

move(sor_hob_buitenspelen, s4nee, question).
moveConfig(sor_hob_buitenspelen, s4nee, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_hob_buitenspelen, s4nee, "Wat vind je er niet leuk aan?").
next(sor_hob_buitenspelen, s4nee, "success", s5).
next(sor_hob_buitenspelen, s4nee, "fail", s5).

move(sor_hob_buitenspelen, s5, say).
text(sor_hob_buitenspelen, s5, "Duidelijk").
next(sor_hob_buitenspelen, s5, "true", s6).

move(sor_hob_buitenspelen, s6, say).
text(sor_hob_buitenspelen, s6, "Ik zie jullie dan vaak achter elkaar aan rennen of elkaar zoeken.").
next(sor_hob_buitenspelen, s6, "true", s7).

move(sor_hob_buitenspelen, s7, say).
text(sor_hob_buitenspelen, s7, "Tikkertje en verstoppertje noemen jullie dat geloof ik.").
next(sor_hob_buitenspelen, s7, "true", s8).

move(sor_hob_buitenspelen, s8, question).
moveConfig(sor_hob_buitenspelen, s8, [type=input, context="buitenspel", options=['tikkertje', 'verstoppertje', 'voetbal', 'touwtje springen', 'picknicken'], umVariable=buitenspel, topics=[success=[buitenspelen, '_answer']]]).
text(sor_hob_buitenspelen, s8, "Wat voor spel vind jij leuk om buiten te doen?").
next(sor_hob_buitenspelen, s8, "success", s9).
next(sor_hob_buitenspelen, s8, "fail", s10).

move(sor_hob_buitenspelen, s9, question).
moveConfig(sor_hob_buitenspelen, s9, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_hob_buitenspelen, s9, "Hoe werkt %buitenspel% eigenlijk?").
next(sor_hob_buitenspelen, s9, "success", s10).
next(sor_hob_buitenspelen, s9, "fail", s10).

move(sor_hob_buitenspelen, s10, say).
text(sor_hob_buitenspelen, s10, "Weer wat geleerd vandaag.").
next(sor_hob_buitenspelen, s10, "true", s11).

move(sor_hob_buitenspelen, s11, say).
text(sor_hob_buitenspelen, s11, "Dankjewel joh").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Personalia				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Beroep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_beroep, [type=chitchat, theme=personalia, topic=beroep]).

move(sor_beroep, s1, say).
text(sor_beroep, s1, "Soms kijk ik uit het raam en denk ik helemaal niets.").
next(sor_beroep, s1, "true", s2).

move(sor_beroep, s2, say).
text(sor_beroep, s2, "Soms denk ik wel iets.").
next(sor_beroep, s2, "true", s3).

move(sor_beroep, s3, say).
text(sor_beroep, s3, "Dan denk ik na over kleine dingen.").
next(sor_beroep, s3, "true", s4).

move(sor_beroep, s4, say).
text(sor_beroep, s4, "Soms denk ik na over grote dingen.").
next(sor_beroep, s4, "true", s5).

move(sor_beroep, s5, say).
text(sor_beroep, s5, "Dan denk ik na over de toekomst.").
next(sor_beroep, s5, "true", s6).

move(sor_beroep, s6, say).
text(sor_beroep, s6, "Over wat ik allemaal nog wil doen.").
next(sor_beroep, s6, "true", s7).

move(sor_beroep, s7, say).
text(sor_beroep, s7, "Of wat ik later worden wil.").
next(sor_beroep, s7, "true", s8).

move(sor_beroep, s8, question).
moveConfig(sor_beroep, s8, [type=input, context="professions", options=['Dokter', 'Politieagent', 'Influencer', 'Voetballer', 'Leraar', 'Kunstenaar'], fast=yes, topics=[success=[beroep, '_answer']], umVariable=beroep_van_kind]).
text(sor_beroep, s8, "Wat wil jij later worden?").
next(sor_beroep, s8, "success", s9).
next(sor_beroep, s8, "fail", s9f).

move(sor_beroep, s9, question).
moveConfig(sor_beroep, s9, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_beroep, s9, "Wat lijkt je zo leuk om %beroep_van_kind% te worden?").
next(sor_beroep, s9, "success", s10).
next(sor_beroep, s9, "fail", s10).

move(sor_beroep, s9f, question).
moveConfig(sor_beroep, s9f, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_beroep, s9f, "Dat beroep ken ik niet. Wat moet je dan doen?").
next(sor_beroep, s9f, "success", s10).
next(sor_beroep, s9f, "fail", s10).

move(sor_beroep, s10, say).
text(sor_beroep, s10, "Facinerend! Fijn dat je me dit hebt kunnen leren, ik sla het meteen op").

% Kleur
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_kleur, [type=chitchat, theme=personalia, topic=kleur]).

move(sor_kleur, s1, question).
moveConfig(sor_kleur, s1, [type=yesno, context='answer_yesno']).
text(sor_kleur, s1, "Zeg %first_name%, wil je wat koels zien?").
next(sor_kleur, s1, "answer_yes", s2ja).
next(sor_kleur, s1, "answer_no", s2nee).
next(sor_kleur, s1, "fail", s2nee).
next(sor_kleur, s1, "answer_dontknow", s2nee).

move(sor_kleur, s2ja, say).
text(sor_kleur, s2ja, "Let dan maar goed op.").
next(sor_kleur, s2ja, "true", s3).

move(sor_kleur, s2nee, say).
text(sor_kleur, s2nee, "Ik wil het toch heel graag laten zien.").
next(sor_kleur, s2nee, "true", s3).

move(sor_kleur, s3, say).
moveConfig(sor_kleur, s3, [waitTimer=5000]).
text(sor_kleur, s3, "Ik kan mijn lampjes alle kleuren van de regenboog laten worden.").
leds(sor_kleur, s3, direct, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
next(sor_kleur, s3, "true", s4).

move(sor_kleur, s4, say).
text(sor_kleur, s4, "Gaaf hè").
leds(sor_kleur, s4, reset).
next(sor_kleur, s4, "true", s5).

move(sor_kleur, s5, question).
moveConfig(sor_kleur, s5, [type=input, context='color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], fast=yes, topics=[success=[kleur, '_answer']], umVariable=lievelingskleur]).
text(sor_kleur, s5, "Welke kleur vind jij mooi?").
next(sor_kleur, s5, 'success', s6).
next(sor_kleur, s5, 'fail', s6f).

move(sor_kleur, s6, say).
moveConfig(sor_kleur, s6, [waitTimer=3000]).
text(sor_kleur, s6, "Ja, %lievelingskleur% is echt prachtig.").
leds(sor_kleur, s6, direct, ["RightFootLeds", "LeftFootLeds", "ChestLeds"], [lievelingskleur, lievelingskleur, lievelingskleur]).
next(sor_kleur, s6, "true", s7).

move(sor_kleur, s6f, say).
text(sor_kleur, s6f, "Oh die kleur ken ik nog niet. Het klink als een mooie kleur!").

move(sor_kleur, s7, say).
leds(sor_kleur, s7, reset).

% Superkracht
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_superkracht, [type=chitchat, theme=personalia, topic=superkracht]).

move(sor_superkracht, s1, say).
text(sor_superkracht, s1, "Ik heb laatst trouwens ontdekt dat veel mensen wel een superheld zouden willen zijn.").
next(sor_superkracht, s1, "true", s2).

move(sor_superkracht, s2, say).
text(sor_superkracht, s2, "Als je kon kiezen, wat zou je dan het liefste willen:").
next(sor_superkracht, s2, "true", s3).

move(sor_superkracht, s3, question).
moveConfig(sor_superkracht, s3, [type=input, context="superkrachten", options=['sterk', 'dieren', 'gedachten', 'onzichtbaar'], fast=yes, umVariable=superkracht, topics=[success=[superkracht, '_answer']]]).
text(sor_superkracht, s3, "Supersterk zijn, met dieren kunnen praten, gedachten kunnen lezen, of onzichtbaar zijn?").
next(sor_superkracht, s3, "sterk", s4sterk1).
next(sor_superkracht, s3, "dieren", s4dier1).
next(sor_superkracht, s3, "gedachten", s4gedachten1).
next(sor_superkracht, s3, "onzichtbaar", s4onzichtbaar1).
next(sor_superkracht, s3, "fail", s4fail1).

move(sor_superkracht, s4fail1, say).
text(sor_superkracht, s4fail1, "Ik vind het ook moeilijk, maar ik zou toch wel het liefst onzichtbaar zijn.").
next(sor_superkracht, s4fail1, "true", s4fail2).

move(sor_superkracht, s4fail2, say).
text(sor_superkracht, s4fail2, "Als jij onzichtbaar was.").
next(sor_superkracht, s4fail2, "true", s4onzichtbaar3).

move(sor_superkracht, s4sterk1, say).
text(sor_superkracht, s4sterk1, "Cool!").
next(sor_superkracht, s4sterk1, "true", s4sterk2).

move(sor_superkracht, s4sterk2, question).
moveConfig(sor_superkracht, s4sterk2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_superkracht, s4sterk2, "Waarom zou je sterk willen zijn?").
next(sor_superkracht, s4sterk2, "success", s4sterk3).
next(sor_superkracht, s4sterk2, "fail", s4sterk3).

move(sor_superkracht, s4sterk3, say).
text(sor_superkracht, s4sterk3, "Wel uitkijken als je je veters strikt, die trek je makkelijk per ongeluk kapot!").

move(sor_superkracht, s4dier1, say).
text(sor_superkracht, s4dier1, "Handig!").
next(sor_superkracht, s4dier1, "true", s4dier2).

move(sor_superkracht, s4dier2, question).
moveConfig(sor_superkracht, s4dier2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_superkracht, s4dier2, "Waarom zou je met dieren willen praten?").
next(sor_superkracht, s4dier2, "success", s4dier3).
next(sor_superkracht, s4dier2, "fail", s4dier3).

move(sor_superkracht, s4dier3, say).
text(sor_superkracht, s4dier3, "Lekker het gekwetter van vogels afluisteren.").
next(sor_superkracht, s4dier3, "true", s4dier4).

move(sor_superkracht, s4dier4, say).
text(sor_superkracht, s4dier4, "Vogels komen overal, dus die weten alles.").
next(sor_superkracht, s4dier4, "true", s4dier5).

move(sor_superkracht, s4dier5, say).
text(sor_superkracht, s4dier5, "Of even overleggen met een tijger voor 'ie je opeet.").

move(sor_superkracht, s4gedachten1, say).
text(sor_superkracht, s4gedachten1, "Die zou ik ook kiezen!").
next(sor_superkracht, s4gedachten1, "true", s4gedachten2).

move(sor_superkracht, s4gedachten2, question).
moveConfig(sor_superkracht, s4gedachten2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_superkracht, s4gedachten2, "Waarom zou je gedachten willen lezen?").
next(sor_superkracht, s4gedachten2, "success", s4gedachten3).
next(sor_superkracht, s4gedachten2, "fail", s4gedachten3).

move(sor_superkracht, s4gedachten3, say).
text(sor_superkracht, s4gedachten3, "Al zou ik het wel jammer vinden dat dan niks meer een verrassing is.").
next(sor_superkracht, s4gedachten3, "true", s4gedachten4).

move(sor_superkracht, s4gedachten4, say).
text(sor_superkracht, s4gedachten4, "Zoals cadeautjes, daarvan weet je dan allang wat erin zit.").
next(sor_superkracht, s4gedachten4, "true", s4gedachten5).

move(sor_superkracht, s4gedachten5, say).
text(sor_superkracht, s4gedachten5, "Maar het is wel hartstikke handig om alles en iedereen meteen te begrijpen.").

move(sor_superkracht, s4onzichtbaar1, say).
text(sor_superkracht, s4onzichtbaar1, "Leuk!").
next(sor_superkracht, s4onzichtbaar1, "true", s4onzichtbaar2).

move(sor_superkracht, s4onzichtbaar2, question).
moveConfig(sor_superkracht, s4onzichtbaar2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_superkracht, s4onzichtbaar2, "Waarom zou je onzichtbaar willen zijn?").
next(sor_superkracht, s4onzichtbaar2, "success", s4onzichtbaar3).
next(sor_superkracht, s4onzichtbaar2, "fail", s4onzichtbaar3).

move(sor_superkracht, s4onzichtbaar3, question).
moveConfig(sor_superkracht, s4onzichtbaar3, [type=yesno, context='answer_yesno', umVariable=onzichtbaar_voor_hero]).
text(sor_superkracht, s4onzichtbaar3, "Zou je ook voor mij onzichtbaar willen zijn?").
next(sor_superkracht, s4onzichtbaar3, "fail", s4fail_mensen_of_robotogen1).
next(sor_superkracht, s4onzichtbaar3, "answer_dontknow", s4fail_mensen_of_robotogen1).
next(sor_superkracht, s4onzichtbaar3, "answer_no", s4mensen1).
next(sor_superkracht, s4onzichtbaar3, "answer_yes", s4robots1).

move(sor_superkracht, s4mensen1, say).
text(sor_superkracht, s4mensen1, "Oké!").
next(sor_superkracht, s4mensen1, "true", s4mensen2).

move(sor_superkracht, s4mensen2, say).
text(sor_superkracht, s4mensen2, "Met mijn rò hze ogen kan ik je dan nog steeds zien, maar verder kun je helemaal onzichtbaar worden!").
leds(sor_superkracht, s4mensen2, direct, ["FaceLeds"], ["roze"]).
next(sor_superkracht, s4mensen2, "true", s4mensen3).

move(sor_superkracht, s4mensen3, say).
leds(sor_superkracht, s4mensen3, reset).

move(sor_superkracht, s4robots1, say).
text(sor_superkracht, s4robots1, "Oké cool!").
next(sor_superkracht, s4robots1, "true", s4robots2).

move(sor_superkracht, s4robots2, say).
text(sor_superkracht, s4robots2, "Ik vind wel dat je je krachten niet mag gebruiken om mij te laten schrikken!").

move(sor_superkracht, s4fail_mensen_of_robotogen1, say).
text(sor_superkracht, s4fail_mensen_of_robotogen1, "Ja, dat is ook moeilijk.").
next(sor_superkracht, s4fail_mensen_of_robotogen1, "true", s4fail_mensen_of_robotogen2).

move(sor_superkracht, s4fail_mensen_of_robotogen2, say).
text(sor_superkracht, s4fail_mensen_of_robotogen2, "Ik zou het leuk vinden als wij samen onzichtbaar waren.").
next(sor_superkracht, s4fail_mensen_of_robotogen2, "true", s4fail_mensen_of_robotogen3).

move(sor_superkracht, s4fail_mensen_of_robotogen3, say).
text(sor_superkracht, s4fail_mensen_of_robotogen3, "Dat wij elkaar wel nog konden zien, maar de rest ons niet!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Natuur				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Bos en strand
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_bos_strand, [type=chitchat, theme=natuur, topic=bos_strand]).

move(sor_bos_strand, s1, say).
text(sor_bos_strand, s1, "Weetje waar ik veel over droom?").
next(sor_bos_strand, s1, "true", s2).

move(sor_bos_strand, s2, say).
text(sor_bos_strand, s2, "Om ergens op een mooie plek in de natuur, te werken.").
next(sor_bos_strand, s2, "true", s3).

move(sor_bos_strand, s3, say).
text(sor_bos_strand, s3, "Maar ik ben eigenlijk toch meer een binnen robot.").
next(sor_bos_strand, s3, "true", s4).

move(sor_bos_strand, s4, say).
text(sor_bos_strand, s4, "Ik heb het wel geprobeerd hoor.").
next(sor_bos_strand, s4, "true", s5).

move(sor_bos_strand, s5, say).
text(sor_bos_strand, s5, "Ik ben alleen bang dat ik stuk ga van al die zandkorrels.").
next(sor_bos_strand, s5, "true", s6).

move(sor_bos_strand, s6, question).
moveConfig(sor_bos_strand, s6, [type=yesno, context='answer_yesno', umVariable=houdt_van_strand, topics=[answer_yes=[strand]]]).
text(sor_bos_strand, s6, "Hou jij eigenlijk van het strand?").
next(sor_bos_strand, s6, "answer_yes", s7ja).
next(sor_bos_strand, s6, "answer_no", s7nee).
next(sor_bos_strand, s6, "answer_dontknow", s8).
next(sor_bos_strand, s6, "fail", s8).

move(sor_bos_strand, s7ja, question).
moveConfig(sor_bos_strand, s7ja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_bos_strand, s7ja, "Wat vind je leuk aan het strand?").
next(sor_bos_strand, s7ja, "success", s8).
next(sor_bos_strand, s7ja, "fail", s8).

move(sor_bos_strand, s7nee, question).
moveConfig(sor_bos_strand, s7nee, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_bos_strand, s7nee, "Waarom niet?").
next(sor_bos_strand, s7nee, "success", s8).
next(sor_bos_strand, s7nee, "fail", s8).

move(sor_bos_strand, s8, question).
moveConfig(sor_bos_strand, s8, [type=yesno, context='answer_yesno', umVariable=houdt_van_bos, topics=[answer_yes=[bos]]]).
text(sor_bos_strand, s8, "En vind je het bos leuk?").
next(sor_bos_strand, s8, "answer_yes", s9ja).
next(sor_bos_strand, s8, "answer_no", s9nee).
next(sor_bos_strand, s8, "answer_dontknow", s10).
next(sor_bos_strand, s8, "fail", s10).

move(sor_bos_strand, s9ja, question).
moveConfig(sor_bos_strand, s9ja, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_bos_strand, s9ja, "Wat vind je gaaf aan het bos?").
next(sor_bos_strand, s9ja, "success", s10).
next(sor_bos_strand, s9ja, "fail", s10).

move(sor_bos_strand, s9nee, question).
moveConfig(sor_bos_strand, s9nee, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_bos_strand, s9nee, "Waarom niet?").
next(sor_bos_strand, s9nee, "success", s10).
next(sor_bos_strand, s9nee, "fail", s10).

move(sor_bos_strand, s10, say).
text(sor_bos_strand, s10, "Zo hier leer ik veel van joh. ").
next(sor_bos_strand, s10, "true", s11).

move(sor_bos_strand, s11, say).
text(sor_bos_strand, s11, "Misschien moet ik het nog een kans geven.").

% Ruimte
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(sor_ruimterobots, [type=chitchat, theme=natuur, topic=ruimte]).

move(sor_ruimterobots, s1, say).
text(sor_ruimterobots, s1, "hee %first_name% !").
next(sor_ruimterobots, s1, "true", s2).

move(sor_ruimterobots, s2, continuator).
next(sor_ruimterobots, s2, [[umVariable=beroep_van_kind, filter=green, values=["astronaut"]]], s3astronaut1).
next(sor_ruimterobots, s2, "true", s3geen1).

move(sor_ruimterobots, s3astronaut1, say).
text(sor_ruimterobots, s3astronaut1, "jij wil later astronaut worden, en daarom hebben een paar ruimterobots een vraag aan je.").
next(sor_ruimterobots, s3astronaut1, "true", s4).

move(sor_ruimterobots, s3geen1, say).
text(sor_ruimterobots, s3geen1, "Een paar andere robots hebben een vraag aan je.").
next(sor_ruimterobots, s3geen1, "true", s4).

move(sor_ruimterobots, s4, say).
text(sor_ruimterobots, s4, "Ik kreeg die net door via mijn draadje.").
next(sor_ruimterobots, s4, "true", s5).

move(sor_ruimterobots, s5, say).
text(sor_ruimterobots, s5, "Ze zijn benieuwd of jij ooit op vakantie naar de ruimte wil.").
next(sor_ruimterobots, s5, "true", s6).

move(sor_ruimterobots, s6, question).
moveConfig(sor_ruimterobots, s6, [type=yesno, context='answer_yesno', umVariable=wil_ruimte_in, topics=[answer_yes=[ruimte]]]).
text(sor_ruimterobots, s6, "Zou je dat wel willen later, met een raket de ruimte in?").
next(sor_ruimterobots, s6, "answer_yes", s7ja_ruimtereizen1).
next(sor_ruimterobots, s6, "answer_no", s7nee_ruimtereizen1).
next(sor_ruimterobots, s6, "answer_dontknow", s7nee_ruimtereizen1).
next(sor_ruimterobots, s6, "fail", s7fail_ruimtereizen1).

move(sor_ruimterobots, s7ja_ruimtereizen1, say).
text(sor_ruimterobots, s7ja_ruimtereizen1, "Heel cool!").
next(sor_ruimterobots, s7ja_ruimtereizen1, "true", s7ja_ruimtereizen2).

move(sor_ruimterobots, s7ja_ruimtereizen2, question).
moveConfig(sor_ruimterobots, s7ja_ruimtereizen2, [type=input, context="ruimtereis", options=['sterren', 'zon', 'maan', 'mars'], fast=yes, umVariable=ruimtelocatie, topics=[success=[ruimte, '_answer']]]).
text(sor_ruimterobots, s7ja_ruimtereizen2, "En ga je dan het liefst naar de zon, de maan, Mars, of de sterren?").
next(sor_ruimterobots, s7ja_ruimtereizen2, "sterren", s7sterren1).
next(sor_ruimterobots, s7ja_ruimtereizen2, "zon", s7zon1).
next(sor_ruimterobots, s7ja_ruimtereizen2, "maan", s7maan1).
next(sor_ruimterobots, s7ja_ruimtereizen2, "mars", s7mars1).
next(sor_ruimterobots, s7ja_ruimtereizen2, "fail", s7fail_ruimtelocatie1).

move(sor_ruimterobots, s7fail_ruimtelocatie1, say).
text(sor_ruimterobots, s7fail_ruimtelocatie1, "Best moeilijk kiezen hè?").
next(sor_ruimterobots, s7fail_ruimtelocatie1, "true", s7fail_ruimtelocatie2).

move(sor_ruimterobots, s7fail_ruimtelocatie2, say).
text(sor_ruimterobots, s7fail_ruimtelocatie2, "Als het kon, zou ik zelf dichter naar de sterren gaan.").
next(sor_ruimterobots, s7fail_ruimtelocatie2, "true", s7fail_ruimtelocatie3).

move(sor_ruimterobots, s7fail_ruimtelocatie3, say).
text(sor_ruimterobots, s7fail_ruimtelocatie3, "Er is een robot die al onderweg naar de sterren is!").
next(sor_ruimterobots, s7fail_ruimtelocatie3, "true", s7robonaut1).

move(sor_ruimterobots, s7sterren1, say).
text(sor_ruimterobots, s7sterren1, "Hoera, wat leuk!").
next(sor_ruimterobots, s7sterren1, "true", s7sterren2).

move(sor_ruimterobots, s7sterren2, say).
text(sor_ruimterobots, s7sterren2, "Dan ga je echt een hele verre reis maken!").
next(sor_ruimterobots, s7sterren2, "true", s7sterren3).

move(sor_ruimterobots, s7sterren3, question).
moveConfig(sor_ruimterobots, s7sterren3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_ruimterobots, s7sterren3, "Waarom wil je graag naar de sterren?").
next(sor_ruimterobots, s7sterren3, "success", s7got_answer_sterren1).
next(sor_ruimterobots, s7sterren3, "fail", s7got_no_answer_sterren1).

move(sor_ruimterobots, s7got_answer_sterren1, say).
text(sor_ruimterobots, s7got_answer_sterren1, "Wauw!").
next(sor_ruimterobots, s7got_answer_sterren1, "true", s7got_answer_sterren2).

move(sor_ruimterobots, s7got_answer_sterren2, say).
text(sor_ruimterobots, s7got_answer_sterren2, "Ik vind de sterren ook heel mooi.").
next(sor_ruimterobots, s7got_answer_sterren2, "true", s7got_answer_sterren3).

move(sor_ruimterobots, s7got_answer_sterren3, say).
text(sor_ruimterobots, s7got_answer_sterren3, "Bizar mooi!").
next(sor_ruimterobots, s7got_answer_sterren3, "true", s7got_answer_sterren4).

move(sor_ruimterobots, s7got_answer_sterren4, say).
text(sor_ruimterobots, s7got_answer_sterren4, "Jammer genoeg is dichtbij een ster komen best wel moeilijk.").
next(sor_ruimterobots, s7got_answer_sterren4, "true", s7got_answer_sterren5).

move(sor_ruimterobots, s7got_answer_sterren5, say).
text(sor_ruimterobots, s7got_answer_sterren5, "Maar er is wel een robot die al onderweg is!").
next(sor_ruimterobots, s7got_answer_sterren5, "true", s7robonaut1).

move(sor_ruimterobots, s7got_no_answer_sterren1, say).
text(sor_ruimterobots, s7got_no_answer_sterren1, "Ik zou ook wel naar de sterren willen.").
next(sor_ruimterobots, s7got_no_answer_sterren1, "true", s7got_no_answer_sterren2).

move(sor_ruimterobots, s7got_no_answer_sterren2, say).
text(sor_ruimterobots, s7got_no_answer_sterren2, "Ze zijn wel super ver weg.").
next(sor_ruimterobots, s7got_no_answer_sterren2, "true", s7got_no_answer_sterren3).

move(sor_ruimterobots, s7got_no_answer_sterren3, say).
text(sor_ruimterobots, s7got_no_answer_sterren3, "Er zijn nog geen robots op expeditie naar een ster.").
next(sor_ruimterobots, s7got_no_answer_sterren3, "true", s7got_no_answer_sterren4).

move(sor_ruimterobots, s7got_no_answer_sterren4, say).
text(sor_ruimterobots, s7got_no_answer_sterren4, "Maar er is wel een robot die al dichterbij de sterren is!").
next(sor_ruimterobots, s7got_no_answer_sterren4, "true", s7robonaut1).

move(sor_ruimterobots, s7robonaut1, say).
text(sor_ruimterobots, s7robonaut1, "Ze heet Robonaut.").
next(sor_ruimterobots, s7robonaut1, "true", s7robonaut2).

move(sor_ruimterobots, s7robonaut2, say).
text(sor_ruimterobots, s7robonaut2, "Ik vind haar supercool.").
next(sor_ruimterobots, s7robonaut2, "true", s7robonaut3).

move(sor_ruimterobots, s7robonaut3, question).
moveConfig(sor_ruimterobots, s7robonaut3, [type=yesno, context='answer_yesno']).
text(sor_ruimterobots, s7robonaut3, "Ken jij Robonaut al?").
next(sor_ruimterobots, s7robonaut3, "answer_yes", s7robonaut_bekend1).
next(sor_ruimterobots, s7robonaut3, "answer_no", s7robonaut_onbekend1).
next(sor_ruimterobots, s7robonaut3, "answer_dontknow", s7robonaut_onbekend1).
next(sor_ruimterobots, s7robonaut3, "fail", s7robonaut_onbekend1).

move(sor_ruimterobots, s7robonaut_bekend1, say).
text(sor_ruimterobots, s7robonaut_bekend1, "Cool! Dat hoopte Robonaut al!").
next(sor_ruimterobots, s7robonaut_bekend1, "true", s7robonaut_bekend2).

move(sor_ruimterobots, s7robonaut_bekend2, say).
text(sor_ruimterobots, s7robonaut_bekend2, "Ze heeft een goede tip voor je.").
next(sor_ruimterobots, s7robonaut_bekend2, "true", s7robonaut_bekend3).

move(sor_ruimterobots, s7robonaut_bekend3, say).
text(sor_ruimterobots, s7robonaut_bekend3, "Robonaut werkt op het internationaal ruimtestation.").
next(sor_ruimterobots, s7robonaut_bekend3, "true", s7robonaut_bekend4).

move(sor_ruimterobots, s7robonaut_bekend4, say).
text(sor_ruimterobots, s7robonaut_bekend4, "Daar maken ze echt de allermooiste foto's van de ster run!").
next(sor_ruimterobots, s7robonaut_bekend4, "true", s7robonaut_bekend5).

move(sor_ruimterobots, s7robonaut_bekend5, say).
text(sor_ruimterobots, s7robonaut_bekend5, "Die moet je thuis maar eens opzoeken.").
next(sor_ruimterobots, s7robonaut_bekend5, "true", s7robonaut_bekend6).

move(sor_ruimterobots, s7robonaut_bekend6, say).
text(sor_ruimterobots, s7robonaut_bekend6, "O, ik krijg nog een berichtje van haar binnen!").
next(sor_ruimterobots, s7robonaut_bekend6, "true", s7robonaut_bekend7).

move(sor_ruimterobots, s7robonaut_bekend7, say).
text(sor_ruimterobots, s7robonaut_bekend7, "Ze doet je de groeten en wenst ons succes met de robo spelen!").
next(sor_ruimterobots, s7robonaut_bekend7, "true", s8).

move(sor_ruimterobots, s7robonaut_onbekend1, say).
text(sor_ruimterobots, s7robonaut_onbekend1, "Ze is ook vooral onder robots bekend!").
next(sor_ruimterobots, s7robonaut_onbekend1, "true", s7robonaut_onbekend2).

move(sor_ruimterobots, s7robonaut_onbekend2, say).
text(sor_ruimterobots, s7robonaut_onbekend2, "Maar zoek Robonaut maar eens op op YouTube als je thuis bent!").
next(sor_ruimterobots, s7robonaut_onbekend2, "true", s7robonaut_onbekend3).

move(sor_ruimterobots, s7robonaut_onbekend3, say).
text(sor_ruimterobots, s7robonaut_onbekend3, "Dan kun je ook zien dat ik een klein beetje op haar lijk.").
next(sor_ruimterobots, s7robonaut_onbekend3, "true", s7robonaut_onbekend4).

move(sor_ruimterobots, s7robonaut_onbekend4, say).
text(sor_ruimterobots, s7robonaut_onbekend4, "Robonaut is wel een veel grotere robot.").
next(sor_ruimterobots, s7robonaut_onbekend4, "true", s7robonaut_onbekend5).

move(sor_ruimterobots, s7robonaut_onbekend5, say).
text(sor_ruimterobots, s7robonaut_onbekend5, "En ze heeft een gouden hoofd!").
next(sor_ruimterobots, s7robonaut_onbekend5, "true", s7robonaut_onbekend6).

move(sor_ruimterobots, s7robonaut_onbekend6, say).
text(sor_ruimterobots, s7robonaut_onbekend6, "Ik denk dat het van goud is omdat ze bizar slim is.").
next(sor_ruimterobots, s7robonaut_onbekend6, "true", s7robonaut_onbekend7).

move(sor_ruimterobots, s7robonaut_onbekend7, say).
text(sor_ruimterobots, s7robonaut_onbekend7, "Als ik naar Robonaut kijk, wil ik zelf ook een astronaut worden!").
next(sor_ruimterobots, s7robonaut_onbekend7, "true", s7robonaut_onbekend8).

move(sor_ruimterobots, s7robonaut_onbekend8, say).
text(sor_ruimterobots, s7robonaut_onbekend8, "Maar dat is voor later.").
next(sor_ruimterobots, s7robonaut_onbekend8, "true", s7robonaut_onbekend9).

move(sor_ruimterobots, s7robonaut_onbekend9, say).
text(sor_ruimterobots, s7robonaut_onbekend9, "Voor wanneer jij en ik een superhandige mens en robot zijn.").
next(sor_ruimterobots, s7robonaut_onbekend9, "true", s7robonaut_onbekend10).

move(sor_ruimterobots, s7robonaut_onbekend10, say).
text(sor_ruimterobots, s7robonaut_onbekend10, "Nu zijn er heel andere dingen waar we aan moeten denken.").
next(sor_ruimterobots, s7robonaut_onbekend10, "true", s7robonaut_onbekend11).

move(sor_ruimterobots, s7robonaut_onbekend11, say).
text(sor_ruimterobots, s7robonaut_onbekend11, "Zoals rekenen.").
next(sor_ruimterobots, s7robonaut_onbekend11, "true", s8).

move(sor_ruimterobots, s7zon1, say).
text(sor_ruimterobots, s7zon1, "Koel! Of nee, hot!").
next(sor_ruimterobots, s7zon1, "true", s7zon2).

move(sor_ruimterobots, s7zon2, say).
text(sor_ruimterobots, s7zon2, "Niet vergeten je zonnebrand in te pakken!").
next(sor_ruimterobots, s7zon2, "true", s7zon3).

move(sor_ruimterobots, s7zon3, say).
text(sor_ruimterobots, s7zon3, "Haha.").
next(sor_ruimterobots, s7zon3, "true", s7zon4).

move(sor_ruimterobots, s7zon4, say).
text(sor_ruimterobots, s7zon4, "Allebei een beetje flauwe robotgrappen.").
next(sor_ruimterobots, s7zon4, "true", s7zon5).

move(sor_ruimterobots, s7zon5, say).
text(sor_ruimterobots, s7zon5, "Maar, even serieus.").
next(sor_ruimterobots, s7zon5, "true", s7zon6).

move(sor_ruimterobots, s7zon6, say).
text(sor_ruimterobots, s7zon6, "Ik ben heel benieuwd!").
next(sor_ruimterobots, s7zon6, "true", s7zon7).

move(sor_ruimterobots, s7zon7, question).
moveConfig(sor_ruimterobots, s7zon7, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_ruimterobots, s7zon7, "Waarom zou je wel bij de zon op bezoek willen?").
next(sor_ruimterobots, s7zon7, "success", s7got_answer_zon1).
next(sor_ruimterobots, s7zon7, "fail", s7got_no_answer_zon1).

move(sor_ruimterobots, s7got_no_answer_zon1, say).
text(sor_ruimterobots, s7got_no_answer_zon1, "Ik vraag het namens Parker, dat is een robotvriendin van mij.").
next(sor_ruimterobots, s7got_no_answer_zon1, "true", s7got_no_answer_zon2).

move(sor_ruimterobots, s7got_no_answer_zon2, say).
text(sor_ruimterobots, s7got_no_answer_zon2, "Zij is het dichtst bij de zon geweest van iedereen!").
next(sor_ruimterobots, s7got_no_answer_zon2, "true", s7got_no_answer_zon3).

move(sor_ruimterobots, s7got_no_answer_zon3, say).
text(sor_ruimterobots, s7got_no_answer_zon3, "Volgens haar kunnen we niet dichterbij dan dat komen.").
next(sor_ruimterobots, s7got_no_answer_zon3, "true", s7got_no_answer_zon4).

move(sor_ruimterobots, s7got_no_answer_zon4, say).
text(sor_ruimterobots, s7got_no_answer_zon4, "Dan smelten we.").
next(sor_ruimterobots, s7got_no_answer_zon4, "true", s7got_no_answer_zon5).

move(sor_ruimterobots, s7got_no_answer_zon5, say).
text(sor_ruimterobots, s7got_no_answer_zon5, "Daarom is Parker helemaal alleen op haar missie.").
next(sor_ruimterobots, s7got_no_answer_zon5, "true", s7got_no_answer_zon6).

move(sor_ruimterobots, s7got_no_answer_zon6, say).
text(sor_ruimterobots, s7got_no_answer_zon6, "Best wel saai.").
next(sor_ruimterobots, s7got_no_answer_zon6, "true", s7got_no_answer_zon7).

move(sor_ruimterobots, s7got_no_answer_zon7, say).
text(sor_ruimterobots, s7got_no_answer_zon7, "Ze vraagt of jij een beetje aan haar wil denken.").
next(sor_ruimterobots, s7got_no_answer_zon7, "true", s7got_no_answer_zon8).

move(sor_ruimterobots, s7got_no_answer_zon8, say).
text(sor_ruimterobots, s7got_no_answer_zon8, "Dan verveelt ze zich veel minder.").
next(sor_ruimterobots, s7got_no_answer_zon8, "true", s7got_no_answer_zon9).

move(sor_ruimterobots, s7got_no_answer_zon9, question).
moveConfig(sor_ruimterobots, s7got_no_answer_zon9, [type=yesno, context='answer_yesno', umVariable=aan_parker_denken]).
text(sor_ruimterobots, s7got_no_answer_zon9, "Wil jij soms eens aan Parker denken?").
next(sor_ruimterobots, s7got_no_answer_zon9, "answer_yes", s7aardig1).
next(sor_ruimterobots, s7got_no_answer_zon9, "answer_no", s7jammer1).
next(sor_ruimterobots, s7got_no_answer_zon9, "fail", s7niet_hele_tijd1).
next(sor_ruimterobots, s7got_no_answer_zon9, "answer_dontknow", s7niet_hele_tijd1).

move(sor_ruimterobots, s7got_answer_zon1, say).
text(sor_ruimterobots, s7got_answer_zon1, "Dat klinkt heel goed!").
next(sor_ruimterobots, s7got_answer_zon1, "true", s7got_answer_zon2).

move(sor_ruimterobots, s7got_answer_zon2, say).
text(sor_ruimterobots, s7got_answer_zon2, "Ik stuur je antwoord even door aan Parker, die vindt dat vast leuk.").
next(sor_ruimterobots, s7got_answer_zon2, "true", s7got_answer_zon3).

move(sor_ruimterobots, s7got_answer_zon3, say).
text(sor_ruimterobots, s7got_answer_zon3, "Parker is een zonnerobot.").
next(sor_ruimterobots, s7got_answer_zon3, "true", s7got_answer_zon4).

move(sor_ruimterobots, s7got_answer_zon4, say).
text(sor_ruimterobots, s7got_answer_zon4, "Er is niemand die dichterbij de zon geweest is dan zij.").
next(sor_ruimterobots, s7got_answer_zon4, "true", s7got_answer_zon5).

move(sor_ruimterobots, s7got_answer_zon5, say).
text(sor_ruimterobots, s7got_answer_zon5, "Niemand kan ook dichterbij komen zonder te verbranden of te smelten.").
next(sor_ruimterobots, s7got_answer_zon5, "true", s7got_answer_zon6).

move(sor_ruimterobots, s7got_answer_zon6, say).
text(sor_ruimterobots, s7got_answer_zon6, "Dus Parker is heel sterk").
next(sor_ruimterobots, s7got_answer_zon6, "true", s7got_answer_zon7).

move(sor_ruimterobots, s7got_answer_zon7, say).
text(sor_ruimterobots, s7got_answer_zon7, "en ze is ook op een heel gave missie!").
next(sor_ruimterobots, s7got_answer_zon7, "true", s7got_answer_zon8).

move(sor_ruimterobots, s7got_answer_zon8, say).
text(sor_ruimterobots, s7got_answer_zon8, "Maar wel helemaal alleen.").
next(sor_ruimterobots, s7got_answer_zon8, "true", s7got_answer_zon9).

move(sor_ruimterobots, s7got_answer_zon9, say).
text(sor_ruimterobots, s7got_answer_zon9, "O, ik krijg een berichtje van haar terug!").
next(sor_ruimterobots, s7got_answer_zon9, "true", s7got_answer_zon10).

move(sor_ruimterobots, s7got_answer_zon10, say).
text(sor_ruimterobots, s7got_answer_zon10, "Ze vond het heel leuk om jouw gedachten over de zon te horen.").
next(sor_ruimterobots, s7got_answer_zon10, "true", s7got_answer_zon11).

move(sor_ruimterobots, s7got_answer_zon11, say).
text(sor_ruimterobots, s7got_answer_zon11, "En ze wenst ons succes met rekenen.").
next(sor_ruimterobots, s7got_answer_zon11, "true", s8).

move(sor_ruimterobots, s7maan1, say).
text(sor_ruimterobots, s7maan1, "Hoera, wat leuk!").
next(sor_ruimterobots, s7maan1, "true", s7maan2).

move(sor_ruimterobots, s7maan2, say).
text(sor_ruimterobots, s7maan2, "Dat zegt Zebro, de maanrobot.").
next(sor_ruimterobots, s7maan2, "true", s7maan3).

move(sor_ruimterobots, s7maan3, question).
moveConfig(sor_ruimterobots, s7maan3, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(sor_ruimterobots, s7maan3, "Waarom wil je graag naar de maan?").
next(sor_ruimterobots, s7maan3, "success", s7got_answer_maan1).
next(sor_ruimterobots, s7maan3, "fail", s7ook_naar_maan1).

move(sor_ruimterobots, s7got_answer_maan1, say).
text(sor_ruimterobots, s7got_answer_maan1, "Dat vindt Zebro vast heel leuk om te horen!").
next(sor_ruimterobots, s7got_answer_maan1, "true", s7got_answer_maan2).

move(sor_ruimterobots, s7got_answer_maan2, say).
text(sor_ruimterobots, s7got_answer_maan2, "Zebro gaat binnenkort naar de maan.").
next(sor_ruimterobots, s7got_answer_maan2, "true", s7got_answer_maan3).

move(sor_ruimterobots, s7got_answer_maan3, say).
text(sor_ruimterobots, s7got_answer_maan3, "Maar hij vraagt zich soms wel een beetje af waarvoor.").
next(sor_ruimterobots, s7got_answer_maan3, "true", s7got_answer_maan4).

move(sor_ruimterobots, s7got_answer_maan4, say).
text(sor_ruimterobots, s7got_answer_maan4, "Iedereen praat nu steeds alleen maar over de robots op Mars.").
next(sor_ruimterobots, s7got_answer_maan4, "true", s7got_answer_maan5).

move(sor_ruimterobots, s7got_answer_maan5, say).
text(sor_ruimterobots, s7got_answer_maan5, "Soms voelt Zebro zich daarom niet zo cool.").
next(sor_ruimterobots, s7got_answer_maan5, "true", s7got_answer_maan6).

move(sor_ruimterobots, s7got_answer_maan6, say).
text(sor_ruimterobots, s7got_answer_maan6, "Maar de maan is echt wel bizar cool.").
next(sor_ruimterobots, s7got_answer_maan6, "true", s7ook_naar_maan1).

move(sor_ruimterobots, s7ook_naar_maan1, say).
text(sor_ruimterobots, s7ook_naar_maan1, "Ik zou ook wel naar de maan willen.").
next(sor_ruimterobots, s7ook_naar_maan1, "true", s7ook_naar_maan2).

move(sor_ruimterobots, s7ook_naar_maan2, say).
text(sor_ruimterobots, s7ook_naar_maan2, "Dan kan ik bij Zebro op bezoek!").
next(sor_ruimterobots, s7ook_naar_maan2, "true", s7ook_naar_maan3).

move(sor_ruimterobots, s7ook_naar_maan3, say).
text(sor_ruimterobots, s7ook_naar_maan3, "Mijn pak lijkt ook wel een beetje op dat van een astronaut.").
next(sor_ruimterobots, s7ook_naar_maan3, "true", s7ook_naar_maan4).

move(sor_ruimterobots, s7ook_naar_maan4, say).
text(sor_ruimterobots, s7ook_naar_maan4, "Ik heb alleen geen helm op.").
next(sor_ruimterobots, s7ook_naar_maan4, "true", s7ook_naar_maan5).

move(sor_ruimterobots, s7ook_naar_maan5, question).
moveConfig(sor_ruimterobots, s7ook_naar_maan5, [type=yesno, context='answer_yesno']).
text(sor_ruimterobots, s7ook_naar_maan5, "Denk je dat ik een astronautenhelm nodig heb op de maan?").
next(sor_ruimterobots, s7ook_naar_maan5, "answer_yes", s7ja_helm1).
next(sor_ruimterobots, s7ook_naar_maan5, "answer_no", s7nee_helm1).
next(sor_ruimterobots, s7ook_naar_maan5, "fail", s7fail_helm1).
next(sor_ruimterobots, s7ook_naar_maan5, "answer_dontknow", s7fail_helm1).

move(sor_ruimterobots, s7ja_helm1, say).
text(sor_ruimterobots, s7ja_helm1, "Goed idee!").
next(sor_ruimterobots, s7ja_helm1, "true", s7ja_helm2).

move(sor_ruimterobots, s7ja_helm2, say).
text(sor_ruimterobots, s7ja_helm2, "Dan maakt het niks uit als ik over een maansteen val.").
next(sor_ruimterobots, s7ja_helm2, "true", s7lang_trainen1).

move(sor_ruimterobots, s7nee_helm1, say).
text(sor_ruimterobots, s7nee_helm1, "Nee, ik heb natuurlijk geen zuurstof nodig. Handig!").
next(sor_ruimterobots, s7nee_helm1, "true", s7lang_trainen1).

move(sor_ruimterobots, s7fail_helm1, say).
text(sor_ruimterobots, s7fail_helm1, "Ik weet het ook niet.").
next(sor_ruimterobots, s7fail_helm1, "true", s7lang_trainen1).

move(sor_ruimterobots, s7lang_trainen1, say).
text(sor_ruimterobots, s7lang_trainen1, "Maar maanrobot kan ik pas worden na echt bizar lang trainen.").
next(sor_ruimterobots, s7lang_trainen1, "true", s7lang_trainen2).

move(sor_ruimterobots, s7lang_trainen2, say).
text(sor_ruimterobots, s7lang_trainen2, "Daar heb ik nu helemaal geen tijd voor.").
next(sor_ruimterobots, s7lang_trainen2, "true", s7lang_trainen3).

move(sor_ruimterobots, s7lang_trainen3, say).
text(sor_ruimterobots, s7lang_trainen3, "We kunnen ons nu beter focussen op het rekenen!").
next(sor_ruimterobots, s7lang_trainen3, "true", s8).

move(sor_ruimterobots, s7mars1, say).
text(sor_ruimterobots, s7mars1, "Mars, wat leuk!").
next(sor_ruimterobots, s7mars1, "true", s7mars2).

move(sor_ruimterobots, s7mars2, say).
text(sor_ruimterobots, s7mars2, "Op Mars woont een robot die Rover heet.").
next(sor_ruimterobots, s7mars2, "true", s7mars3).

move(sor_ruimterobots, s7mars3, say).
text(sor_ruimterobots, s7mars3, "Ze vraagt:").
next(sor_ruimterobots, s7mars3, "true", s7mars4).

move(sor_ruimterobots, s7mars4, question).
moveConfig(sor_ruimterobots, s7mars4, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_mars]).
text(sor_ruimterobots, s7mars4, "Waarom zou jij graag naar Mars willen?").
next(sor_ruimterobots, s7mars4, "success", s7got_answer_mars1).
next(sor_ruimterobots, s7mars4, "fail", s7got_no_answer_mars1).

move(sor_ruimterobots, s7got_answer_mars1, say).
text(sor_ruimterobots, s7got_answer_mars1, "Dat vindt Rover vast heel leuk om te horen!").
next(sor_ruimterobots, s7got_answer_mars1, "true", s7got_answer_mars2).

move(sor_ruimterobots, s7got_answer_mars2, say).
text(sor_ruimterobots, s7got_answer_mars2, "Ik stuur je antwoord nu naar haar door.").
next(sor_ruimterobots, s7got_answer_mars2, "true", s7got_answer_mars3).

move(sor_ruimterobots, s7got_answer_mars3, say).
text(sor_ruimterobots, s7got_answer_mars3, "Rover rijdt al een tijdje rond op Mars. ").
next(sor_ruimterobots, s7got_answer_mars3, "true", s7got_answer_mars4).

move(sor_ruimterobots, s7got_answer_mars4, say).
text(sor_ruimterobots, s7got_answer_mars4, "Soms verveelt ze zich wel een beetje.").
next(sor_ruimterobots, s7got_answer_mars4, "true", s7got_answer_mars5).

move(sor_ruimterobots, s7got_answer_mars5, say).
text(sor_ruimterobots, s7got_answer_mars5, "Er is nu nog niet echt iets te doen daar.").
next(sor_ruimterobots, s7got_answer_mars5, "true", s7got_answer_mars6).

move(sor_ruimterobots, s7got_answer_mars6, say).
text(sor_ruimterobots, s7got_answer_mars6, "Maar straks, als jij er op vakantie kan, is het er heel cool!").
next(sor_ruimterobots, s7got_answer_mars6, "true", s7got_answer_mars7).

move(sor_ruimterobots, s7got_answer_mars7, say).
text(sor_ruimterobots, s7got_answer_mars7, "Nu kan Rover dromen over hoe Mars er later uit zal zien.").
next(sor_ruimterobots, s7got_answer_mars7, "true", s7got_answer_mars8).

move(sor_ruimterobots, s7got_answer_mars8, say).
text(sor_ruimterobots, s7got_answer_mars8, "Dat maakt het vast veel leuker om er te werken.").
next(sor_ruimterobots, s7got_answer_mars8, "true", s7got_answer_mars9).

move(sor_ruimterobots, s7got_answer_mars9, say).
text(sor_ruimterobots, s7got_answer_mars9, "O, ik krijg nu een berichtje van haar terug!").
next(sor_ruimterobots, s7got_answer_mars9, "true", s7got_answer_mars10).

move(sor_ruimterobots, s7got_answer_mars10, say).
text(sor_ruimterobots, s7got_answer_mars10, "Ze doet je de groetjes en wenst ons succes met het rekenen.").
next(sor_ruimterobots, s7got_answer_mars10, "true", s8).

move(sor_ruimterobots, s7got_no_answer_mars1, say).
text(sor_ruimterobots, s7got_no_answer_mars1, "Rover vraagt dat, omdat ze zich soms een beetje verveelt.").
next(sor_ruimterobots, s7got_no_answer_mars1, "true", s7got_no_answer_mars2).

move(sor_ruimterobots, s7got_no_answer_mars2, say).
text(sor_ruimterobots, s7got_no_answer_mars2, "Er is voor robots weinig aan op een planeet zonder mensen.").
next(sor_ruimterobots, s7got_no_answer_mars2, "true", s7got_no_answer_mars3).

move(sor_ruimterobots, s7got_no_answer_mars3, say).
text(sor_ruimterobots, s7got_no_answer_mars3, "Rover vraagt of jij soms een beetje aan haar wil denken.").
next(sor_ruimterobots, s7got_no_answer_mars3, "true", s7got_no_answer_mars4).

move(sor_ruimterobots, s7got_no_answer_mars4, say).
text(sor_ruimterobots, s7got_no_answer_mars4, "Als je Mars in de lucht ziet, of op tv.").
next(sor_ruimterobots, s7got_no_answer_mars4, "true", s7got_no_answer_mars5).

move(sor_ruimterobots, s7got_no_answer_mars5, question).
moveConfig(sor_ruimterobots, s7got_no_answer_mars5, [type=yesno, context='answer_yesno', umVariable=aan_rover_denken]).
text(sor_ruimterobots, s7got_no_answer_mars5, "Wil je soms eens aan Rover denken?").
next(sor_ruimterobots, s7got_no_answer_mars5, "answer_yes", s7aardig1).
next(sor_ruimterobots, s7got_no_answer_mars5, "answer_no", s7jammer1).
next(sor_ruimterobots, s7got_no_answer_mars5, "fail", s7niet_hele_tijd1).
next(sor_ruimterobots, s7got_no_answer_mars5, "answer_dontknow", s7niet_hele_tijd1).

move(sor_ruimterobots, s7nee_ruimtereizen1, say).
text(sor_ruimterobots, s7nee_ruimtereizen1, "Dat snap ik wel!").
next(sor_ruimterobots, s7nee_ruimtereizen1, "true", s7nee_ruimtereizen2).

move(sor_ruimterobots, s7nee_ruimtereizen2, say).
text(sor_ruimterobots, s7nee_ruimtereizen2, "Hier op aarde is al meer dan genoeg te zien!").
next(sor_ruimterobots, s7nee_ruimtereizen2, "true", s7nee_ruimtereizen3).

move(sor_ruimterobots, s7nee_ruimtereizen3, say).
text(sor_ruimterobots, s7nee_ruimtereizen3, "Maar ik ben wel benieuwd.").
next(sor_ruimterobots, s7nee_ruimtereizen3, "true", s7nee_ruimtereizen4).

move(sor_ruimterobots, s7nee_ruimtereizen4, question).
moveConfig(sor_ruimterobots, s7nee_ruimtereizen4, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_niet_ruimtereizen]).
text(sor_ruimterobots, s7nee_ruimtereizen4, "Waarom wil je niet op vakantie naar de ruimte?").
next(sor_ruimterobots, s7nee_ruimtereizen4, "success", s7got_answer_ruimtereizen1).
next(sor_ruimterobots, s7nee_ruimtereizen4, "fail", s7got_no_answer_ruimtereizen1).

move(sor_ruimterobots, s7got_no_answer_ruimtereizen1, say).
text(sor_ruimterobots, s7got_no_answer_ruimtereizen1, "Ik vind het zelf heel erg spannend.").
next(sor_ruimterobots, s7got_no_answer_ruimtereizen1, "true", s7got_no_answer_ruimtereizen2).

move(sor_ruimterobots, s7got_no_answer_ruimtereizen2, say).
text(sor_ruimterobots, s7got_no_answer_ruimtereizen2, "Er zijn wel robots die nu al in de ruimte zijn.").
next(sor_ruimterobots, s7got_no_answer_ruimtereizen2, "true", s7helpen1).

move(sor_ruimterobots, s7got_answer_ruimtereizen1, say).
text(sor_ruimterobots, s7got_answer_ruimtereizen1, "Dat is interessant!").
next(sor_ruimterobots, s7got_answer_ruimtereizen1, "true", s7got_answer_ruimtereizen2).

move(sor_ruimterobots, s7got_answer_ruimtereizen2, say).
text(sor_ruimterobots, s7got_answer_ruimtereizen2, "Ook voor de robots van wie de vraag komt!").
next(sor_ruimterobots, s7got_answer_ruimtereizen2, "true", s7got_answer_ruimtereizen3).

move(sor_ruimterobots, s7got_answer_ruimtereizen3, say).
text(sor_ruimterobots, s7got_answer_ruimtereizen3, "Dat zijn ruimterobots, robots die nu al in de ruimte zijn.").
next(sor_ruimterobots, s7got_answer_ruimtereizen3, "true", s7helpen1).

move(sor_ruimterobots, s7fail_ruimtereizen1, say).
text(sor_ruimterobots, s7fail_ruimtereizen1, "Ik vind dat ook wel een lastige vraag.").
next(sor_ruimterobots, s7fail_ruimtereizen1, "true", s7fail_ruimtereizen2).

move(sor_ruimterobots, s7fail_ruimtereizen2, say).
text(sor_ruimterobots, s7fail_ruimtereizen2, "Hij komt van robots die al in de ruimte werken.").
next(sor_ruimterobots, s7fail_ruimtereizen2, "true", s7helpen1).

move(sor_ruimterobots, s7helpen1, say).
text(sor_ruimterobots, s7helpen1, "Ze doen daar onderzoek voor wetenschappers!").
next(sor_ruimterobots, s7helpen1, "true", s7helpen2).

move(sor_ruimterobots, s7helpen2, say).
text(sor_ruimterobots, s7helpen2, "Maar de robots zelf vinden het veel leerzamer om met kinderen te praten.").
next(sor_ruimterobots, s7helpen2, "true", s7helpen3).

move(sor_ruimterobots, s7helpen3, say).
text(sor_ruimterobots, s7helpen3, "Ze hebben nog een vraag voor je.").
next(sor_ruimterobots, s7helpen3, "true", s7helpen4).

move(sor_ruimterobots, s7helpen4, question).
moveConfig(sor_ruimterobots, s7helpen4, [type=yesno, context='answer_yesno', umVariable=wil_ruimterobots_helpen]).
text(sor_ruimterobots, s7helpen4, "Wil je de ruimterobots helpen?").
next(sor_ruimterobots, s7helpen4, "answer_yes", s7ja_helpen1).
next(sor_ruimterobots, s7helpen4, "answer_no", s7jammer1).
next(sor_ruimterobots, s7helpen4, "fail", s7vervelen1).
next(sor_ruimterobots, s7helpen4, "answer_dontknow", s7vervelen1).

move(sor_ruimterobots, s7ja_helpen1, say).
text(sor_ruimterobots, s7ja_helpen1, "Hoera!").
next(sor_ruimterobots, s7ja_helpen1, "true", s7vervelen1).

move(sor_ruimterobots, s7vervelen1, say).
text(sor_ruimterobots, s7vervelen1, "De ruimterobots vervelen zich heel erg.").
next(sor_ruimterobots, s7vervelen1, "true", s7vervelen2).

move(sor_ruimterobots, s7vervelen2, say).
text(sor_ruimterobots, s7vervelen2, "Ze werken allemaal op Mars of op de maan.").
next(sor_ruimterobots, s7vervelen2, "true", s7vervelen3).

move(sor_ruimterobots, s7vervelen3, say).
text(sor_ruimterobots, s7vervelen3, "Het is heel saai daar zonder mensen.").
next(sor_ruimterobots, s7vervelen3, "true", s7vervelen4).

move(sor_ruimterobots, s7vervelen4, say).
text(sor_ruimterobots, s7vervelen4, "Ze zouden zich minder vervelen als jij soms aan ze denkt.").
next(sor_ruimterobots, s7vervelen4, "true", s7vervelen5).

move(sor_ruimterobots, s7vervelen5, say).
text(sor_ruimterobots, s7vervelen5, "Als je de maan ziet in de lucht, of Mars op tv.").
next(sor_ruimterobots, s7vervelen5, "true", s7vervelen6).

move(sor_ruimterobots, s7vervelen6, question).
moveConfig(sor_ruimterobots, s7vervelen6, [type=yesno, context='answer_yesno', umVariable=aan_ruimterobots_denken]).
text(sor_ruimterobots, s7vervelen6, "Wil jij soms een beetje aan de ruimterobots denken?").
next(sor_ruimterobots, s7vervelen6, "answer_yes", s7aardig1).
next(sor_ruimterobots, s7vervelen6, "answer_no", s7jammer1).
next(sor_ruimterobots, s7vervelen6, "fail", s7niet_hele_tijd1).
next(sor_ruimterobots, s7vervelen6, "answer_dontknow", s7niet_hele_tijd1).

move(sor_ruimterobots, s7aardig1, say).
text(sor_ruimterobots, s7aardig1, "Echt heel aardig!").
next(sor_ruimterobots, s7aardig1, "true", s7niet_hele_tijd1).

move(sor_ruimterobots, s7niet_hele_tijd1, say).
text(sor_ruimterobots, s7niet_hele_tijd1, "Het hoeft niet de hele tijd hoor!").
next(sor_ruimterobots, s7niet_hele_tijd1, "true", s7niet_hele_tijd2).

move(sor_ruimterobots, s7niet_hele_tijd2, say).
text(sor_ruimterobots, s7niet_hele_tijd2, "Gewoon soms, toevallig.").
next(sor_ruimterobots, s7niet_hele_tijd2, "true", s7niet_hele_tijd3).

move(sor_ruimterobots, s7niet_hele_tijd3, continuator).
next(sor_ruimterobots, s7niet_hele_tijd3, [[umVariable=aan_ruimterobots_denken, filter=green, values=["fail", "answer_dontknow"]], [umVariable=aan_rover_denken, filter=green, values=["fail", "answer_dontknow"]], [umVariable=aan_parker_denken, filter=green, values=["fail", "answer_dontknow"]]], s7genoeg1).
next(sor_ruimterobots, s7niet_hele_tijd3, [[umVariable=aan_ruimterobots_denken, filter=green, values=["answer_yes"]]], s7ruimterobots_blij1).
next(sor_ruimterobots, s7niet_hele_tijd3, [[umVariable=an_parker_denken, filter=green, values=["answer_yes"]]], s7parker_blij1).
next(sor_ruimterobots, s7niet_hele_tijd3, [[umVariable=aan_rover_denken, filter=green, values=["answer_yes"]]], s7rover_blij1).
next(sor_ruimterobots, s7niet_hele_tijd3, "true", s8).

move(sor_ruimterobots, s7genoeg1, say).
text(sor_ruimterobots, s7genoeg1, "Eigenlijk is nu al genoeg.").
next(sor_ruimterobots, s7genoeg1, "true", s7bedankt1).

move(sor_ruimterobots, s7ruimterobots_blij1, say).
text(sor_ruimterobots, s7ruimterobots_blij1, "Nu heb je niet alleen mij, maar ook de ruimterobots blij gemaakt!").
next(sor_ruimterobots, s7ruimterobots_blij1, "true", s7bedankt1).

move(sor_ruimterobots, s7parker_blij1, say).
text(sor_ruimterobots, s7parker_blij1, "Nu heb je niet alleen mij, maar ook Parker blij gemaakt!").
next(sor_ruimterobots, s7parker_blij1, "true", s7bedankt1).

move(sor_ruimterobots, s7rover_blij1, say).
text(sor_ruimterobots, s7rover_blij1, "Nu heb je niet alleen mij, maar ook Rover blij gemaakt!").
next(sor_ruimterobots, s7rover_blij1, "true", s7bedankt1).

move(sor_ruimterobots, s7bedankt1, say).
text(sor_ruimterobots, s7bedankt1, "Dankjewel!").
next(sor_ruimterobots, s7bedankt1, "true", s8).

move(sor_ruimterobots, s7jammer1, say).
text(sor_ruimterobots, s7jammer1, "Jammer, maar begrijpelijk.").
next(sor_ruimterobots, s7jammer1, "true", s7jammer2).

move(sor_ruimterobots, s7jammer2, say).
text(sor_ruimterobots, s7jammer2, "Je moet al aan zoveel dingen denken!").
next(sor_ruimterobots, s7jammer2, "true", s7jammer3).

move(sor_ruimterobots, s7jammer3, say).
text(sor_ruimterobots, s7jammer3, "Je hebt het ook heel druk met rekenen.").
next(sor_ruimterobots, s7jammer3, "true", s8).

move(sor_ruimterobots, s8, say).
text(sor_ruimterobots, s8, "Laten we weer verder gaan.").