%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		  MINIDIALOGS FOR PHOTOSHOOT	           %%%
%%%  		MiniDialogs for photoshoot with Zoe        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Kennismaking			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(bieb_begroeting, s1, say).
text(bieb_begroeting, s1, "Hallo, mijn naam is Hero!").
anim(bieb_begroeting, s1, file, "resources/gestures/wave1.json").
next(bieb_begroeting, s1, "true", s2).

move(bieb_begroeting, s2, say).
text(bieb_begroeting, s2, "En ik ben een robot.").
next(bieb_begroeting, s2, "true", s3).

move(bieb_begroeting, s3, say).
moveConfig(bieb_begroeting, s3, [waitTimer=4000]).
text(bieb_begroeting, s3, "Hoe heet jij?").
next(bieb_begroeting, s3, "true", s4).

move(bieb_begroeting, s4, say).
text(bieb_begroeting, s4, "%first_name%, wat een mooie naam!").
next(bieb_begroeting, s4, "true", s6).

move(bieb_begroeting, s6, say).
text(bieb_begroeting, s6, "En ik vind het erg leuk dat ik vandaag met jou mag kletsen.").
next(bieb_begroeting, s6, "true", s7).

move(bieb_begroeting, s7, say).
text(bieb_begroeting, s7, "Maar ik vind het ook een beetje spannend.").
next(bieb_begroeting, s7, "true", s8).

move(bieb_begroeting, s8, question).
moveConfig(bieb_begroeting, s8, [type=yesno, context='answer_yesno']).
text(bieb_begroeting, s8, "Vind jij het ook spannend?").
next(bieb_begroeting, s8, "answer_yes", s9ja).
next(bieb_begroeting, s8, "answer_no", s9nee).
next(bieb_begroeting, s8, "answer_dontknow", s9weetniet).
next(bieb_begroeting, s8, "fail", s9weetniet).

move(bieb_begroeting, s9ja, say).
text(bieb_begroeting, s9ja, "Wat goed, dan ben ik niet de enige").
next(bieb_begroeting, s9ja, "true", s10).

move(bieb_begroeting, s9nee, say).
text(bieb_begroeting, s9nee, "Wat goed, dan ben ik blij dat jij er bij bent.").
next(bieb_begroeting, s9nee, "true", s10).

move(bieb_begroeting, s9weetniet, say).
text(bieb_begroeting, s9weetniet, "Ik ben blij dat jij er bij bent.").
next(bieb_begroeting, s9weetniet, "true", s10).

move(bieb_begroeting, s10, say).
text(bieb_begroeting, s10, "").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Secret handshake			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Maken %%%
move(bieb_handshake_maken, s1, say).
text(bieb_handshake_maken, s1, "Zeg %first_name%. \pau=300\ ").
next(bieb_handshake_maken, s1, "true", s2).

move(bieb_handshake_maken, s2, say).
text(bieb_handshake_maken, s2, "Ik heb gezien dat volwassenen elkaar een hand geven als ze elkaar ontmoeten en gedag zeggen.").
next(bieb_handshake_maken, s2, "true", s3).

move(bieb_handshake_maken, s3, say).
text(bieb_handshake_maken, s3, "Maar dat lijkt me eigenlijk een beetje saai.").
next(bieb_handshake_maken, s3, "true", s4).

move(bieb_handshake_maken, s4, say).
text(bieb_handshake_maken, s4, "Iedereen geeft elkaar al een hand.").
next(bieb_handshake_maken, s4, "true", s5).

move(bieb_handshake_maken, s5, say).
text(bieb_handshake_maken, s5, "Laten wij onze eigen geheime begroeting bedenken!").
next(bieb_handshake_maken, s5, "true", s6).

move(bieb_handshake_maken, s6, say).
text(bieb_handshake_maken, s6, "De begroeting bestaat uit een liedje en een beweging").
next(bieb_handshake_maken, s6, "true", s7).

move(bieb_handshake_maken, s7, say).
text(bieb_handshake_maken, s7, "Ik heb alleen nog geen leuk liedje.").
next(bieb_handshake_maken, s7, "true", s8).

move(bieb_handshake_maken, s8, say).
text(bieb_handshake_maken, s8, "Wacht, ik download er wel eventjes twee").
leds(bieb_handshake_maken, s8, direct, "eyes", "rotate", ['blue'], 500).
next(bieb_handshake_maken, s8, "true", s9).

move(bieb_handshake_maken, s9, say).
text(bieb_handshake_maken, s9, "Mag jij zo kiezen welke je de leukste vind").
next(bieb_handshake_maken, s9, "true", s10).

move(bieb_handshake_maken, s10, say).
text(bieb_handshake_maken, s10, "klaar").
leds(bieb_handshake_maken, s10, reset).
next(bieb_handshake_maken, s10, "true", s11).

move(bieb_handshake_maken, s11, say).
text(bieb_handshake_maken, s11, "Dit is de eerste").
next(bieb_handshake_maken, s11, "true", s12).

move(bieb_handshake_maken, s12, say).
audio(bieb_handshake_maken, s12, file, "resources/sounds/tiktok1.wav").
next(bieb_handshake_maken, s12, "true", s13).

move(bieb_handshake_maken, s13, say).
text(bieb_handshake_maken, s13, "Dit is de tweede").
next(bieb_handshake_maken, s13, "true", s14).

move(bieb_handshake_maken, s14, say).
audio(bieb_handshake_maken, s14, file, "resources/sounds/tiktok2.wav").
next(bieb_handshake_maken, s14, "true", s15).

move(bieb_handshake_maken, s15, question).
moveConfig(bieb_handshake_maken, s15, [type=input, context="involvement_which_option_or_robot", options=['eerste', 'tweede', 'hero'], fast=yes, umVariable=keuze_liedje_handshake]).
text(bieb_handshake_maken, s15, "Vind je het eerste of tweede liedje leuker, of zal ik kiezen?").
next(bieb_handshake_maken, s15, "eerste", s16eerste1).
next(bieb_handshake_maken, s15, "tweede", s16tweede1).
next(bieb_handshake_maken, s15, "hero", s16hero1).
next(bieb_handshake_maken, s15, "fail", s16fail1).

move(bieb_handshake_maken, s16eerste1, say).
text(bieb_handshake_maken, s16eerste1, "Het eerste liedje, die was leuk hè").
save_sound(bieb_handshake_maken, s16eerste1, handshake_sound, "resources/sounds/tiktok1.wav").
next(bieb_handshake_maken, s16eerste1, "true", s17).

move(bieb_handshake_maken, s16tweede1, say).
text(bieb_handshake_maken, s16tweede1, "Het tweede liedje, die was leuk hè").
save_sound(bieb_handshake_maken, s16tweede1, handshake_sound, "resources/sounds/tiktok2.wav").
next(bieb_handshake_maken, s16tweede1, "true", s17).

move(bieb_handshake_maken, s16hero1, say).
text(bieb_handshake_maken, s16hero1, "Het eerste liedje vond ik het leukst, dus die heb ik gekozen").
save_sound(bieb_handshake_maken, s16hero1, handshake_sound, "resources/sounds/tiktok1.wav").
next(bieb_handshake_maken, s16hero1, "true", s17).

move(bieb_handshake_maken, s16fail1, say).
text(bieb_handshake_maken, s16fail1, "Ik heb even gemist wat je zei, sorry. Laten we voor het eerste liedje gaan.").
save_sound(bieb_handshake_maken, s16fail1, handshake_sound, "resources/sounds/tiktok1.wav").
next(bieb_handshake_maken, s16fail1, "true", s17).

move(bieb_handshake_maken, s17, say).
text(bieb_handshake_maken, s17, "En dan nu de beweging").
next(bieb_handshake_maken, s17, "true", s18).

move(bieb_handshake_maken, s18, say).
text(bieb_handshake_maken, s18, "Je mag zo mijn armen vastpakken").
next(bieb_handshake_maken, s18, "true", s19).

move(bieb_handshake_maken, s19, say).
text(bieb_handshake_maken, s19, "En ze bewegen, om een begroeting te maken, passend bij het liedje").
next(bieb_handshake_maken, s19, "true", s20).

move(bieb_handshake_maken, s20, say).
text(bieb_handshake_maken, s20, "Dan sla ik die beweging op, zodat ik hem daarna weer kan nadoen").
next(bieb_handshake_maken, s20, "true", s21).

move(bieb_handshake_maken, s21, say).
moveConfig(bieb_handshake_maken, s21, [eventListener=['groen'='RightBumperPressed']]).
text(bieb_handshake_maken, s21, "Als je er klaar voor bent, kun je op mijn teen drukken onder het groene lampje").
set_stiffness(bieb_handshake_maken, s21, ['RArm', 'LArm'], 0).
leds(bieb_handshake_maken, s21, direct, ['RightFootLeds'], ['groen']).
next(bieb_handshake_maken, s21, "groen", s22).

move(bieb_handshake_maken, s22, say).
text(bieb_handshake_maken, s22, "Pak mijn armen maar vast. Je kunt bewegen in 3. 2. 1.").
leds(bieb_handshake_maken, s22, direct, ['RightFootLeds'], ['wit']).
next(bieb_handshake_maken, s22, "true", s23).

move(bieb_handshake_maken, s23, say).
record_motion(bieb_handshake_maken, s23, ['RArm', 'LArm'], 0).
audio(bieb_handshake_maken, s23, id, handshake_sound).
next(bieb_handshake_maken, s23, "true", s24).

move(bieb_handshake_maken, s24, say).
moveConfig(bieb_handshake_maken, s24, [noAnimation="true"]).
text(bieb_handshake_maken, s24, "3, 2, 1, klaar.").
next(bieb_handshake_maken, s24, "true", s25).

move(bieb_handshake_maken, s25, say).
moveConfig(bieb_handshake_maken, s25, [umVariable=handshake_motion]).
save_motion(bieb_handshake_maken, s25, recording, ['RArm', 'LArm']).
next(bieb_handshake_maken, s25, "true", s26).

move(bieb_handshake_maken, s26, say).
text(bieb_handshake_maken, s26, "Het is heel mooi geworden.").
next(bieb_handshake_maken, s26, "true", s27).

move(bieb_handshake_maken, s27, say).
text(bieb_handshake_maken, s27, "We gaan het zo terug kijken").

%% Doei %%
minidialog(bieb_doei, [type=functional, function=goodbye]).

move(bieb_doei, s1, say).
text(bieb_doei, s1, "Ik vond het leuk om kennis met je te maken, %first_name% ").
next(bieb_doei, s1, "true", s2).

move(bieb_doei, s2, question).
moveConfig(bieb_doei, s2, [type=yesno, context='answer_yesno']).
text(bieb_doei, s2, "Vond jij het ook leuk").
next(bieb_doei, s2, "answer_yes", s3ja1).
next(bieb_doei, s2, "answer_no", s3nee1).
next(bieb_doei, s2, "answer_dontknow", s3nee1).
next(bieb_doei, s2, "fail", s3fail1).

move(bieb_doei, s3ja1, say).
text(bieb_doei, s3ja1, "Fijn om te horen!").
next(bieb_doei, s3ja1, "true", s7).

move(bieb_doei, s3nee1, say).
text(bieb_doei, s3nee1, "Oh, dan zal ik de volgende keer wat beter mijn best doen.").
next(bieb_doei, s3nee1, "true", s7).

move(bieb_doei, s3fail1, say).
text(bieb_doei, s3fail1, "Mooi").
next(bieb_doei, s3fail1, "true", s7).

move(bieb_doei, s7, say).
text(bieb_doei, s7, "Dan is het nu echt tijd om doei te zeggen.").
next(bieb_doei, s7, "true", s8).

move(bieb_doei, s8, say).
text(bieb_doei, s8, "Doei %first_name% , tot snel!").
next(bieb_doei, s8, "true", s10).

move(bieb_doei, s10, say).
audio(bieb_doei, s10, id, handshake_sound).
anim(bieb_doei, s10, id, handshake_motion).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Kletsen				                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% lievelingsdier %%
move(lievelingsdier, s1, say).
text(lievelingsdier, s1, "he %first_name% !").
next(lievelingsdier, s1, "true", s2).

move(lievelingsdier, s2, say).
text(lievelingsdier, s2, "Even wat anders.").
next(lievelingsdier, s2, "true", s3).

move(lievelingsdier, s3, say).
text(lievelingsdier, s3, "Ik heb gisteren een heel bijzondere robot ontmoet").
next(lievelingsdier, s3, "true", s4).

move(lievelingsdier, s4, say).
text(lievelingsdier, s4, "Hij heet Ol lie").
next(lievelingsdier, s4, "true", s5).

move(lievelingsdier, s5, say).
text(lievelingsdier, s5, "Ol lie is een robot otter!").
next(lievelingsdier, s5, "true", s14).

move(lievelingsdier, s14, say).
text(lievelingsdier, s14, "Hij zwemt en praat veel met gewone otters.").
next(lievelingsdier, s14, "true", s15).

move(lievelingsdier, s15, say).
text(lievelingsdier, s15, "Daar heeft hij me gisteren superveel over verteld!").
next(lievelingsdier, s15, "true", s16).

move(lievelingsdier, s16, say).
text(lievelingsdier, s16, "Nu denk ik dat de otter mijn lievelingsdier is.").
next(lievelingsdier, s16, "true", s17).

move(lievelingsdier, s17, question).
moveConfig(lievelingsdier, s17, [type=input, context="animals", options=['flamingo', 'dolfijn', 'toekan', 'otter', 'tijger', 'olifant', 'hond', 'kat'], fast=yes, umVariable=lievelingsdier]).
text(lievelingsdier, s17, "Wat is jouw lievelingsdier?").
next(lievelingsdier, s17, "fail", s18geen_lievelingsdier1).
next(lievelingsdier, s17, "otter", s18otter1).
next(lievelingsdier, s17, "aap", s18aap1).
next(lievelingsdier, s17, "adelaar", s18adelaar1).
next(lievelingsdier, s17, "dolfijn", s18dolfijn1).
next(lievelingsdier, s17, "_others", s18lievelingsdier1).

move(lievelingsdier, s18geen_lievelingsdier1, say).
text(lievelingsdier, s18geen_lievelingsdier1, "Dat is echt een moeilijke vraag hè!").
next(lievelingsdier, s18geen_lievelingsdier1, "true", s18geen_lievelingsdier2).

move(lievelingsdier, s18geen_lievelingsdier2, question).
moveConfig(lievelingsdier, s18geen_lievelingsdier2, [type=yesno, context='answer_yesno', umVariable=meer_dan_1_dier]).
text(lievelingsdier, s18geen_lievelingsdier2, "Vind je veel meer dan één dier leuk?").
next(lievelingsdier, s18geen_lievelingsdier2, "answer_yes", s18ja_meer1).
next(lievelingsdier, s18geen_lievelingsdier2, "answer_no", s18nee_meer1).
next(lievelingsdier, s18geen_lievelingsdier2, "fail", s18fail_meer1).
next(lievelingsdier, s18geen_lievelingsdier2, "answer_dontknow", s18fail_meer1).

move(lievelingsdier, s18nee_meer1, say).
text(lievelingsdier, s18nee_meer1, "Maar het is toch best moeilijk om te kiezen!").
next(lievelingsdier, s18nee_meer1, "true", s18nee_meer2).

move(lievelingsdier, s18nee_meer2, say).
text(lievelingsdier, s18nee_meer2, "Stel je voor dat je in een dierentuin binnenkomt.").
next(lievelingsdier, s18nee_meer2, "true", s18nee_meer3).

move(lievelingsdier, s18nee_meer3, say).
text(lievelingsdier, s18nee_meer3, "Je kunt meteen op bezoek bij een aap, een dolfijn, of een adelaar.").
next(lievelingsdier, s18nee_meer3, "true", s18nee_meer4).

move(lievelingsdier, s18nee_meer4, question).
moveConfig(lievelingsdier, s18nee_meer4, [type=input, context="aap_adelaar_dolfijn", options=['aap', 'dolfijn', 'adelaar'], fast=yes, umVariable=drie_dierentuindieren]).
text(lievelingsdier, s18nee_meer4, "Naar wie ga je het eerst toe? ").
next(lievelingsdier, s18nee_meer4, "aap", s18aap1).
next(lievelingsdier, s18nee_meer4, "dolfijn", s18dolfijn1).
next(lievelingsdier, s18nee_meer4, "adelaar", s18adelaar1).
next(lievelingsdier, s18nee_meer4, "fail", s18fail_dierentuin1).

move(lievelingsdier, s18fail_dierentuin1, say).
text(lievelingsdier, s18fail_dierentuin1, "Ik zou het eerste naar de dolfijn gaan.").
next(lievelingsdier, s18fail_dierentuin1, "true", s18fail_dierentuin2).

move(lievelingsdier, s18fail_dierentuin2, say).
text(lievelingsdier, s18fail_dierentuin2, "Zo snel als een dolfijn wil ik ook wel kunnen zwemmen!").
next(lievelingsdier, s18fail_dierentuin2, "true", s18dolfijn21).

move(lievelingsdier, s18aap1, say).
text(lievelingsdier, s18aap1, "Cool! Ik vind apen ook superleuk.").
next(lievelingsdier, s18aap1, "true", s18aap2).

move(lievelingsdier, s18aap2, say).
text(lievelingsdier, s18aap2, "Ik zou wel zo goed willen kunnen slingeren!").
next(lievelingsdier, s18aap2, "true", s18aap3).

move(lievelingsdier, s18aap3, say).
text(lievelingsdier, s18aap3, "Ik weet niet of er een slingeropdracht op de RoboSpelen is.").
next(lievelingsdier, s18aap3, "true", s18aap4).

move(lievelingsdier, s18aap4, say).
text(lievelingsdier, s18aap4, "Dat ga ik uitzoeken!").
next(lievelingsdier, s18aap4, "true", s18aap5).

move(lievelingsdier, s18aap5, say).
text(lievelingsdier, s18aap5, "Misschien is er ook wel een opdracht met stenen.").
next(lievelingsdier, s18aap5, "true", s18lievelingsdier1).

move(lievelingsdier, s18adelaar1, say).
text(lievelingsdier, s18adelaar1, "Adelaars zijn echt bizar groot.").
next(lievelingsdier, s18adelaar1, "true", s18adelaar2).

move(lievelingsdier, s18adelaar2, say).
text(lievelingsdier, s18adelaar2, "Ik zou ook wel als een adelaar willen kunnen vliegen!").
next(lievelingsdier, s18adelaar2, "true", s18adelaar3).

move(lievelingsdier, s18adelaar3, say).
text(lievelingsdier, s18adelaar3, "Misschien kan ik ooit een motortje op mijn rug laten monteren.").
next(lievelingsdier, s18adelaar3, "true", s18adelaar4).

move(lievelingsdier, s18adelaar4, say).
text(lievelingsdier, s18adelaar4, "Ik hoop dat er ooit een vliegronde komt bij de robospelen, of een ronde met stenen.").
next(lievelingsdier, s18adelaar4, "true", s18lievelingsdier1).

move(lievelingsdier, s18dolfijn1, say).
text(lievelingsdier, s18dolfijn1, "Cool! Dolfijnen kunnen heel snel zwemmen!").
next(lievelingsdier, s18dolfijn1, "true", s18dolfijn2).

move(lievelingsdier, s18dolfijn2, say).
text(lievelingsdier, s18dolfijn2, "Dat zou ik ook wel willen!").
next(lievelingsdier, s18dolfijn2, "true", s18dolfijn21).

move(lievelingsdier, s18dolfijn21, say).
text(lievelingsdier, s18dolfijn21, "Misschien moet ik dan een pak aan met dolfijnenvinnen.").
next(lievelingsdier, s18dolfijn21, "true", s18dolfijn22).

move(lievelingsdier, s18dolfijn22, say).
text(lievelingsdier, s18dolfijn22, "Otters kunnen ook snel zwemmen, en ook nog eens drijven").
next(lievelingsdier, s18dolfijn22, "true", s18lievelingsdier1).

move(lievelingsdier, s18ja_meer1, say).
text(lievelingsdier, s18ja_meer1, "Ik ook!").
next(lievelingsdier, s18ja_meer1, "true", s18ja_meer2).

move(lievelingsdier, s18ja_meer2, question).
moveConfig(lievelingsdier, s18ja_meer2, [type=input, context="animals", options=['aap', 'dolfijn', 'adelaar', 'otter', 'tijger', 'olifant', 'hond', 'kat'], fast=yes, umVariable=lievelingsdier]).
text(lievelingsdier, s18ja_meer2, "Noem er eens een paar?").
next(lievelingsdier, s18ja_meer2, "fail", s18fail_meer1).
next(lievelingsdier, s18ja_meer2, "aap", s18aap1).
next(lievelingsdier, s18ja_meer2, "adelaar", s18adelaar1).
next(lievelingsdier, s18ja_meer2, "dolfijn", s18dolfijn1).
next(lievelingsdier, s18ja_meer2, "otter", s18otter1).
next(lievelingsdier, s18ja_meer2, "_others", s18lievelingsdier1).

move(lievelingsdier, s18fail_meer1, say).
text(lievelingsdier, s18fail_meer1, "Ik vind eigenlijk alle dieren leuk.").
next(lievelingsdier, s18fail_meer1, "true", s18fail_meer2).

move(lievelingsdier, s18fail_meer2, say).
text(lievelingsdier, s18fail_meer2, "Maar otters vind ik op dit moment het leukste!").
next(lievelingsdier, s18fail_meer2, "true", s18back2ollie1).

move(lievelingsdier, s18otter1, say).
text(lievelingsdier, s18otter1, "Een otter!").
next(lievelingsdier, s18otter1, "true", s18otter2).

move(lievelingsdier, s18otter2, say).
text(lievelingsdier, s18otter2, "Dat zal Ol lie leuk vinden").
next(lievelingsdier, s18otter2, "true", s18otter3).

move(lievelingsdier, s18otter3, say).
text(lievelingsdier, s18otter3, "En wat cool dat wij hetzelfde lievelingsdier hebben!").
next(lievelingsdier, s18otter3, "true", s18otter4).

move(lievelingsdier, s18otter4, say).
text(lievelingsdier, s18otter4, "Dat ga ik voor altijd onthouden.").
next(lievelingsdier, s18otter4, "true", s18lievelingsdier1).

move(lievelingsdier, s18lievelingsdier1, say).
text(lievelingsdier, s18lievelingsdier1, "Een %lievelingsdier% vind ik ook een heel cool dier!").
next(lievelingsdier, s18lievelingsdier1, "true", s18lievelingsdier2).

move(lievelingsdier, s18lievelingsdier2, question).
moveConfig(lievelingsdier, s18lievelingsdier2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_lievelingsdier]).
text(lievelingsdier, s18lievelingsdier2, "Wat vind je zo leuk aan een %lievelingsdier%?").
next(lievelingsdier, s18lievelingsdier2, "success", s18got_waarom1).
next(lievelingsdier, s18lievelingsdier2, "fail", s18got_no_waarom1).

move(lievelingsdier, s18got_no_waarom1, say).
text(lievelingsdier, s18got_no_waarom1, "%lievelingsdier% is onbeschrijfelijk leuk!").
next(lievelingsdier, s18got_no_waarom1, "true", s18got_no_waarom2).

move(lievelingsdier, s18got_no_waarom2, say).
text(lievelingsdier, s18got_no_waarom2, "Dat vind ik ook wel!").
next(lievelingsdier, s18got_no_waarom2, "true", s18back2ollie1).

move(lievelingsdier, s18got_waarom1, say).
text(lievelingsdier, s18got_waarom1, "Wauw, dat wist ik allemaal niet!").
next(lievelingsdier, s18got_waarom1, "true", s18got_waarom2).

move(lievelingsdier, s18got_waarom2, say).
text(lievelingsdier, s18got_waarom2, "Een %lievelingsdier% klinkt ook als een super cool dier!").
next(lievelingsdier, s18got_waarom2, "true", s18back2ollie1).

move(lievelingsdier, s18back2ollie1, say).
text(lievelingsdier, s18back2ollie1, "Ol lie vertelde dat otters allemaal een eigen, steen, hebben.").
next(lievelingsdier, s18back2ollie1, "true", s18back2ollie2).

move(lievelingsdier, s18back2ollie2, say).
text(lievelingsdier, s18back2ollie2, "Die bewaren ze in hun oksel tijdens het zwemmen!").
next(lievelingsdier, s18back2ollie2, "true", s18back2ollie3).

move(lievelingsdier, s18back2ollie3, say).
text(lievelingsdier, s18back2ollie3, "Dat vind ik bizar cool.").
next(lievelingsdier, s18back2ollie3, "true", s19).

move(lievelingsdier, s19, say).
text(lievelingsdier, s19, "Maar ik klets je oren van je hoofd af over otters!").
next(lievelingsdier, s19, "true", s20).

move(lievelingsdier, s20, say).
text(lievelingsdier, s20, "Laten we over iets anders praten!").


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Lievelingseten			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
move(lievelingseten, s1, say).
text(lievelingseten, s1, "Laten we elkaar nog een beetje beter leren kennen, voordat we gaan trainen.").
next(lievelingseten, s1, "true", s2).

move(lievelingseten, s2, say).
text(lievelingseten, s2, "Graag vertel ik je over iets bijzonders dat ik heb ontdekt!").
next(lievelingseten, s2, "true", s3).

move(lievelingseten, s3, say).
text(lievelingseten, s3, "Heel veel, eten, dat heel veel kinderen heel lekker vinden").
next(lievelingseten, s3, "true", s4).

move(lievelingseten, s4, say).
text(lievelingseten, s4, "begint met een P!").
next(lievelingseten, s4, "true", s5).

move(lievelingseten, s5, say).
text(lievelingseten, s5, "Zoals: pizza, pasta, pannenkoeken, poffertjes, en patat.").
next(lievelingseten, s5, "true", s6).

move(lievelingseten, s6, question).
moveConfig(lievelingseten, s6, [type=input, context="lievelingseten_met_p", options=['pizza', 'pasta', 'pannenkoeken', 'poffertjes', 'patat'], fast=yes, umVariable=lievelingseten_met_p]).
text(lievelingseten, s6, "Welke P vind jij de allerlekkerste P?").
next(lievelingseten, s6, "pizza", s7pizza1).
next(lievelingseten, s6, "pasta", s7pasta1).
next(lievelingseten, s6, "pannenkoeken", s7pannenkoeken1).
next(lievelingseten, s6, "poffertjes", s7poffertjes1).
next(lievelingseten, s6, "patat", s7patat1).
next(lievelingseten, s6, "fail", s7fail_lievelingseten_met_p1).
next(lievelingseten, s6, "_others", s7fail_lievelingseten_met_p1).

move(lievelingseten, s7pizza1, say).
text(lievelingseten, s7pizza1, "Pizza! Pizza! Ooooh pizza!").
next(lievelingseten, s7pizza1, "true", s7pizza2).

move(lievelingseten, s7pizza2, question).
moveConfig(lievelingseten, s7pizza2, [type=yesno, context='answer_yesno', umVariable=pizza_sliert]).
text(lievelingseten, s7pizza2, "Heb je ook wel eens dat de kaas zo erg gesmolten is, dat er een hele sliert tussen je mond en je pizzapunt hangt als je een hap neemt?").
next(lievelingseten, s7pizza2, "answer_yes", s7wel_pizza_sliert1).
next(lievelingseten, s7pizza2, "answer_dontknow", s7wel_pizza_sliert1).
next(lievelingseten, s7pizza2, "fail", s7wel_pizza_sliert1).
next(lievelingseten, s7pizza2, "answer_no", s7wel_pizza_sliert1).

move(lievelingseten, s7wel_pizza_sliert1, say).
text(lievelingseten, s7wel_pizza_sliert1, "Sommige mensen vinden dat er vies uit zien, maar ik niet!").
next(lievelingseten, s7wel_pizza_sliert1, "true", s7wel_pizza_sliert2).

move(lievelingseten, s7wel_pizza_sliert2, say).
text(lievelingseten, s7wel_pizza_sliert2, "Zo'n sliert lijkt op het allerbeste snoer waar ik stroom door krijg.").
next(lievelingseten, s7wel_pizza_sliert2, "true", s7wel_pizza_sliert3).

move(lievelingseten, s7wel_pizza_sliert3, say).
text(lievelingseten, s7wel_pizza_sliert3, "En mamma mia!").
next(lievelingseten, s7wel_pizza_sliert3, "true", s7wel_pizza_sliert4).

move(lievelingseten, s7wel_pizza_sliert4, say).
text(lievelingseten, s7wel_pizza_sliert4, "Als zo'n sliert voor jou proeft zoals stroom voor mij.").
next(lievelingseten, s7wel_pizza_sliert4, "true", s7wel_pizza_sliert5).

move(lievelingseten, s7wel_pizza_sliert5, say).
text(lievelingseten, s7wel_pizza_sliert5, "dan kan zo'n sliert alleen maar bewijs voor een superpizza zijn!").
next(lievelingseten, s7wel_pizza_sliert5, "true", s8).

move(lievelingseten, s7pasta1, say).
text(lievelingseten, s7pasta1, "Fantastico!").
next(lievelingseten, s7pasta1, "true", s7pasta2).

move(lievelingseten, s7pasta2, say).
text(lievelingseten, s7pasta2, "Dat is Italiaans voor geweldig!").
next(lievelingseten, s7pasta2, "true", s7pasta3).

move(lievelingseten, s7pasta3, say).
text(lievelingseten, s7pasta3, "Dat heb ik geleerd van Italiaanse robots die pasta maken.").
next(lievelingseten, s7pasta3, "true", s7pasta4).

move(lievelingseten, s7pasta4, say).
text(lievelingseten, s7pasta4, "Robots kunnen natuurlijk geen pasta eten,").
next(lievelingseten, s7pasta4, "true", s7pasta5).

move(lievelingseten, s7pasta5, say).
text(lievelingseten, s7pasta5, "maar al die verschillende vormpjes vinden wij te gek!").
next(lievelingseten, s7pasta5, "true", s8).

move(lievelingseten, s7pannenkoeken1, say).
text(lievelingseten, s7pannenkoeken1, "Pannenkoeken lijken mij ook heel lekker!").
next(lievelingseten, s7pannenkoeken1, "true", s7pannenkoeken2).

move(lievelingseten, s7pannenkoeken2, say).
text(lievelingseten, s7pannenkoeken2, "Ik heb gezien dat jullie daar stroop op doen.").
next(lievelingseten, s7pannenkoeken2, "true", s7pannenkoeken3).

move(lievelingseten, s7pannenkoeken3, say).
text(lievelingseten, s7pannenkoeken3, "Dat lijkt wel een beetje op motorolie!").
next(lievelingseten, s7pannenkoeken3, "true", s7pannenkoeken4).

move(lievelingseten, s7pannenkoeken4, say).
text(lievelingseten, s7pannenkoeken4, "In de toekomst komen er vast pannenkoekenhuizen voor mensen en robots samen.").
next(lievelingseten, s7pannenkoeken4, "true", s7pannenkoeken5).

move(lievelingseten, s7pannenkoeken5, say).
text(lievelingseten, s7pannenkoeken5, "Daar hebben ze dan pannenkoeken met stroop voor jou").
next(lievelingseten, s7pannenkoeken5, "true", s7pannenkoeken6).

move(lievelingseten, s7pannenkoeken6, say).
text(lievelingseten, s7pannenkoeken6, "en harde schijven met motorolie voor mij!").
next(lievelingseten, s7pannenkoeken6, "true", s8).

move(lievelingseten, s7poffertjes1, say).
text(lievelingseten, s7poffertjes1, "Poffertjes vind ik er ook lekker uit zien!").
next(lievelingseten, s7poffertjes1, "true", s7poffertjes2).

move(lievelingseten, s7poffertjes2, say).
text(lievelingseten, s7poffertjes2, "En het woord klinkt ook heel lekker.").
next(lievelingseten, s7poffertjes2, "true", s7poffertjes3).

move(lievelingseten, s7poffertjes3, say).
text(lievelingseten, s7poffertjes3, "Pof pof poffertje!").
next(lievelingseten, s7poffertjes3, "true", s7poffertjes4).

move(lievelingseten, s7poffertjes4, say).
text(lievelingseten, s7poffertjes4, "En het rijmt op wat jij bent als je heel veel poffertjes krijgt").
next(lievelingseten, s7poffertjes4, "true", s7poffertjes5).

move(lievelingseten, s7poffertjes5, say).
text(lievelingseten, s7poffertjes5, "dan ben je een echt boffertje!").
next(lievelingseten, s7poffertjes5, "true", s8).

move(lievelingseten, s7patat1, say).
text(lievelingseten, s7patat1, "Als ik een mens was, zou ik dat ook de lekkerste P vinden!").
next(lievelingseten, s7patat1, "true", s7patat2).

move(lievelingseten, s7patat2, say).
text(lievelingseten, s7patat2, "Ik vind vooral de frituurpan leuk.").
next(lievelingseten, s7patat2, "true", s7patat3).

move(lievelingseten, s7patat3, say).
text(lievelingseten, s7patat3, "Die lijkt op het badje met olie waar ik soms even in wordt gelegd.").
next(lievelingseten, s7patat3, "true", s7patat4).

move(lievelingseten, s7patat4, say).
text(lievelingseten, s7patat4, "Dat helpt als ik een beetje vastgeroest ben.").
next(lievelingseten, s7patat4, "true", s7patat5).

move(lievelingseten, s7patat5, say).
text(lievelingseten, s7patat5, "Misschien mag ik de volgende keer wel in de frituurpan zwemmen!").
next(lievelingseten, s7patat5, "true", s7patat6).

move(lievelingseten, s7patat6, say).
text(lievelingseten, s7patat6, "Maar die moet dan wel uitstaan natuurlijk.").
next(lievelingseten, s7patat6, "true", s7patat7).

move(lievelingseten, s7patat7, say).
text(lievelingseten, s7patat7, "anders kom ik eruit als een Hero-kroket!").
next(lievelingseten, s7patat7, "true", s8).

move(lievelingseten, s8, question).
moveConfig(lievelingseten, s8, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(lievelingseten, s8, "Wat vind jij eigenlijk lekker aan %lievelingseten_met_p%?").
next(lievelingseten, s8, "success", s9).
next(lievelingseten, s8, "fail", s9).

move(lievelingseten, s9, say).
text(lievelingseten, s9, "Zo dat klinkt goed.").
next(lievelingseten, s9, "true", s10).

move(lievelingseten, s10, say).
text(lievelingseten, s10, "Ik hoop dat er snel een robot variant komt van %lievelingseten_met_p%.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Robospelen Intro			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(robospelen_1_intro, [type=narrative, thread=robospelen, position=1]).

move(robospelen_1_intro, s1, say).
text(robospelen_1_intro, s1, "Jij doet vast echte mensendingen.").
next(robospelen_1_intro, s1, "true", s5).

move(robospelen_1_intro, s5, question).
moveConfig(robospelen_1_intro, s5, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=vandaag_gedaan]).
text(robospelen_1_intro, s5, "Wat heb je vandaag gedaan voordat je mij ontmoette?").
next(robospelen_1_intro, s5, "success", s6).
next(robospelen_1_intro, s5, "fail", s6).

move(robospelen_1_intro, s6, say).
text(robospelen_1_intro, s6, "Wauw, wat menselijk!").
next(robospelen_1_intro, s6, "true", s7).

move(robospelen_1_intro, s7, say).
text(robospelen_1_intro, s7, "Ik ben vandaag hierheen gekomen met %supervisor_name%.").
next(robospelen_1_intro, s7, "true", s8).

move(robospelen_1_intro, s8, say).
text(robospelen_1_intro, s8, "En daarvoor heb ik getraind.").
next(robospelen_1_intro, s8, "true", s9).

move(robospelen_1_intro, s9, say).
text(robospelen_1_intro, s9, "Want ik mag dit jaar voor het eerst meedoen met de Robo Spelen.").
next(robospelen_1_intro, s9, "true", s10).

move(robospelen_1_intro, s10, say).
text(robospelen_1_intro, s10, "Dat is een grote wereldwijde competitie, alleen voor robots.").
next(robospelen_1_intro, s10, "true", s11).

move(robospelen_1_intro, s11, say).
text(robospelen_1_intro, s11, "De beste robot wint!").
next(robospelen_1_intro, s11, "true", s12).

move(robospelen_1_intro, s12, say).
text(robospelen_1_intro, s12, "Maar daarvoor moet je eerst tegen allerlei andere robots strijden.").
next(robospelen_1_intro, s12, "true", s13).

move(robospelen_1_intro, s13, say).
text(robospelen_1_intro, s13, "In allemaal verschillende opdrachten en wedstrijden.").
next(robospelen_1_intro, s13, "true", s14).

move(robospelen_1_intro, s14, say).
text(robospelen_1_intro, s14, "Zoals wie het hoogst kan springen.").
next(robospelen_1_intro, s14, "true", s15).

move(robospelen_1_intro, s15, say).
anim(robospelen_1_intro, s15, onRobot, "jump_attempt/behavior_1").
next(robospelen_1_intro, s15, "true", s16).

move(robospelen_1_intro, s16, say).
text(robospelen_1_intro, s16, "En wie het best origami kan vouwen").
anim(robospelen_1_intro, s16, onRobot, "wiggle_fingers/behavior_1").
next(robospelen_1_intro, s16, "true", s17).

move(robospelen_1_intro, s17, say).
text(robospelen_1_intro, s17, "Wie het beleefdst is en wie de meeste mensen kan helpen oversteken.").
next(robospelen_1_intro, s17, "true", s18).

move(robospelen_1_intro, s18, say).
text(robospelen_1_intro, s18, "En wie er kan voetballen.").
next(robospelen_1_intro, s18, "true", s19).

move(robospelen_1_intro, s19, say).
text(robospelen_1_intro, s19, "Ik kan helemaal niet zo goed schoppen.").
next(robospelen_1_intro, s19, "true", s20).

move(robospelen_1_intro, s20, say).
text(robospelen_1_intro, s20, "De vorige keer dat ik het deed viel ik zo hard op mijn kont").
leds(robospelen_1_intro, s20, direct, "all", "alternate", ['green', 'blue'], 500).
next(robospelen_1_intro, s20, "true", s21).

move(robospelen_1_intro, s21, say).
text(robospelen_1_intro, s21, "dat al mijn lichtjes kapot sprongen.").
next(robospelen_1_intro, s21, "true", s22).

move(robospelen_1_intro, s22, say).
text(robospelen_1_intro, s22, "Dus ik moet nog veel oefenen voor de Robo Spelen er zijn!").
leds(robospelen_1_intro, s22, reset).
next(robospelen_1_intro, s22, "true", s23).

move(robospelen_1_intro, s22, say).
text(robospelen_1_intro, s22, "Dus ik moet nog veel oefenen voor de Robo Spelen er zijn!").
leds(robospelen_1_intro, s22, reset).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Robospelen Coach			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(robospelen_3_coach, [type=narrative, thread=robospelen, position=3]).

move(robospelen_3_coach, s1, say).
text(robospelen_3_coach, s1, "Ik heb een idee!").
next(robospelen_3_coach, s1, "true", s1b).

move(robospelen_3_coach, s1b, say).
text(robospelen_3_coach, s1b, "Misschien kun je me dingen leren die jij veel beter kunt.").
next(robospelen_3_coach, s1b, "true", s2).

move(robospelen_3_coach, s2, say).
text(robospelen_3_coach, s2, "Zoals springen, of verstoppertje, of mensendingen begrijpen.").
next(robospelen_3_coach, s2, "true", s3).

move(robospelen_3_coach, s3, say).
text(robospelen_3_coach, s3, "Dan ben jij mijn coach!").
next(robospelen_3_coach, s3, "true", s4).

move(robospelen_3_coach, s4, say).
text(robospelen_3_coach, s4, "Als ik win, zal ik je noemen in mijn dankwoord.").
next(robospelen_3_coach, s4, "true", s5).

move(robospelen_3_coach, s5, say).
text(robospelen_3_coach, s5, "Dan weten alle andere robots wat een leuk mens jij bent.").
next(robospelen_3_coach, s5, "true", s6).

move(robospelen_3_coach, s6, question).
moveConfig(robospelen_3_coach, s6, [type=yesno, context='answer_yesno', umVariable=coach_goed_idee]).
text(robospelen_3_coach, s6, "Lijkt dat je een goed idee?").
next(robospelen_3_coach, s6, "answer_yes", s7ja1).
next(robospelen_3_coach, s6, "fail", s7ja1).
next(robospelen_3_coach, s6, "answer_no", s7nee1).
next(robospelen_3_coach, s6, "answer_dontknow", s7nee1).

move(robospelen_3_coach, s7ja1, say).
text(robospelen_3_coach, s7ja1, "Hoera! Dan ben jij vanaf nu coach %first_name% .").
next(robospelen_3_coach, s7ja1, "true", s7ja2).

move(robospelen_3_coach, s7ja2, question).
moveConfig(robospelen_3_coach, s7ja2, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_coach_leuk_idee]).
text(robospelen_3_coach, s7ja2, "Waarom lijkt je dat een leuk idee?").
next(robospelen_3_coach, s7ja2, "success", s7ja3).
next(robospelen_3_coach, s7ja2, "fail", s7ja3).

move(robospelen_3_coach, s7ja3, say).
text(robospelen_3_coach, s7ja3, "Ik vind je heel aardig, coach %first_name% , bedankt.").

move(robospelen_3_coach, s7nee1, question).
moveConfig(robospelen_3_coach, s7nee1, [type=openend, context='answer_open', inputModality=[speech=1], umVariable=waarom_coach_slecht_idee]).
text(robospelen_3_coach, s7nee1, "Oh! Waarom niet?").
next(robospelen_3_coach, s7nee1, "success", s7nee2).
next(robospelen_3_coach, s7nee1, "fail", s7nee2).

move(robospelen_3_coach, s7nee2, say).
text(robospelen_3_coach, s7nee2, "humhum").
next(robospelen_3_coach, s7nee2, "true", s7nee3).

move(robospelen_3_coach, s7nee3, say).
text(robospelen_3_coach, s7nee3, "Misschien kunnen we er later nog een over nadenken.").
next(robospelen_3_coach, s7nee3, "true", s7nee4).

move(robospelen_3_coach, s7nee4, say).
text(robospelen_3_coach, s7nee4, "Je lijkt mij een super top coach!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Robospelen Coach			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
minidialog(robospelen_6_gedachtelezen, [type=narrative, thread=robospelen, position=6]).
dependencies(robospelen_6_gedachtelezen, [[[robospelen_5_info, user_model, 0], [umVariable=leukste_onderdeel, filter=green, values=["gedachtenlezen"]]]]).

move(robospelen_6_gedachtelezen, s1, say).
text(robospelen_6_gedachtelezen, s1, "Laten we dan nu gaan trainen.").
next(robospelen_6_gedachtelezen, s1, "true", s1a).

move(robospelen_6_gedachtelezen, s1a, say).
text(robospelen_6_gedachtelezen, s1a, "1 van de opdrachten van de Robospelen is dat ik mijn gedachten kan delen met anderen.").
next(robospelen_6_gedachtelezen, s1a, "true", s1b).

move(robospelen_6_gedachtelezen, s1b, say).
text(robospelen_6_gedachtelezen, s1b, "Dat jij mijn gedachten moet kunnen lezen.").
next(robospelen_6_gedachtelezen, s1b, "true", s1c).

move(robospelen_6_gedachtelezen, s1c, say).
text(robospelen_6_gedachtelezen, s1c, "Laten we dat oefenen.").
next(robospelen_6_gedachtelezen, s1c, "true", s2).

move(robospelen_6_gedachtelezen, s2, say).
text(robospelen_6_gedachtelezen, s2, "Eerst moeten we onze ogen sluiten.").
next(robospelen_6_gedachtelezen, s2, "true", s3).

move(robospelen_6_gedachtelezen, s3, say).
text(robospelen_6_gedachtelezen, s3, "Doe maar mee.").
next(robospelen_6_gedachtelezen, s3, "true", s4).

move(robospelen_6_gedachtelezen, s4, say).
anim(robospelen_6_gedachtelezen, s4, file, "resources/gestures/head_up.json").
next(robospelen_6_gedachtelezen, s4, "true", s5).

move(robospelen_6_gedachtelezen, s5, say).
text(robospelen_6_gedachtelezen, s5, "En dan een keer diep inademen.").
next(robospelen_6_gedachtelezen, s5, "true", s6).

move(robospelen_6_gedachtelezen, s6, say).
text(robospelen_6_gedachtelezen, s6, "Adem in.").
next(robospelen_6_gedachtelezen, s6, "true", s7).

move(robospelen_6_gedachtelezen, s7, say).
anim(robospelen_6_gedachtelezen, s7, file, "resources/gestures/head_down.json").
next(robospelen_6_gedachtelezen, s7, "true", s8).

move(robospelen_6_gedachtelezen, s8, say).
text(robospelen_6_gedachtelezen, s8, "Adem uit.").
next(robospelen_6_gedachtelezen, s8, "true", s9).

move(robospelen_6_gedachtelezen, s9, say).
anim(robospelen_6_gedachtelezen, s9, file, "resources/gestures/head_up.json").
next(robospelen_6_gedachtelezen, s9, "true", s10).

move(robospelen_6_gedachtelezen, s10, say).
text(robospelen_6_gedachtelezen, s10, "Nog eens! Adem in.").
next(robospelen_6_gedachtelezen, s10, "true", s11).

move(robospelen_6_gedachtelezen, s11, say).
anim(robospelen_6_gedachtelezen, s11, file, "resources/gestures/head_down.json").
next(robospelen_6_gedachtelezen, s11, "true", s12).

move(robospelen_6_gedachtelezen, s12, say).
text(robospelen_6_gedachtelezen, s12, "En uit.").
next(robospelen_6_gedachtelezen, s12, "true", s13).

move(robospelen_6_gedachtelezen, s13, say).
anim(robospelen_6_gedachtelezen, s13, file, "resources/gestures/head_up.json").
next(robospelen_6_gedachtelezen, s13, "true", s14).

move(robospelen_6_gedachtelezen, s14, say).
text(robospelen_6_gedachtelezen, s14, "Doe je ogen maar weer open.").
go_to_posture(robospelen_6_gedachtelezen, s14).
next(robospelen_6_gedachtelezen, s14, "true", s15).

move(robospelen_6_gedachtelezen, s15, say).
text(robospelen_6_gedachtelezen, s15, "Als het goed is lopen de micro chips in onze hoofden op dit moment gelijk!").
next(robospelen_6_gedachtelezen, s15, "true", s16).

move(robospelen_6_gedachtelezen, s16, say).
text(robospelen_6_gedachtelezen, s16, "Ik kan het bewijzen.").
next(robospelen_6_gedachtelezen, s16, "true", s17).

move(robospelen_6_gedachtelezen, s17, say).
text(robospelen_6_gedachtelezen, s17, "Jij kan nu mijn gedachten lezen.").
next(robospelen_6_gedachtelezen, s17, "true", s18).

move(robospelen_6_gedachtelezen, s18, say).
text(robospelen_6_gedachtelezen, s18, "Alles wat ik denk, dat denk jij nu ook.").
next(robospelen_6_gedachtelezen, s18, "true", s19).

move(robospelen_6_gedachtelezen, s19, say).
text(robospelen_6_gedachtelezen, s19, "Ik neem een getal in mijn hoofd en stuur dat getal naar jouw hoofd.").
next(robospelen_6_gedachtelezen, s19, "true", s20).

move(robospelen_6_gedachtelezen, s20, say).
text(robospelen_6_gedachtelezen, s20, "Via bluetooth.").
next(robospelen_6_gedachtelezen, s20, "true", s21).

move(robospelen_6_gedachtelezen, s21, say).
text(robospelen_6_gedachtelezen, s21, "Concentreer je!").
next(robospelen_6_gedachtelezen, s21, "true", s22).

move(robospelen_6_gedachtelezen, s22, question).
moveConfig(robospelen_6_gedachtelezen, s22, [type=input, context="integer", options=[1, 5, 6, 9], fast=yes, umVariable=getal_bluetooth]).
text(robospelen_6_gedachtelezen, s22, "Noem een getal tussen de 1 en de 10!").
next(robospelen_6_gedachtelezen, s22, 1, s23getal1).
next(robospelen_6_gedachtelezen, s22, 2, s23getal1).
next(robospelen_6_gedachtelezen, s22, 3, s23getal1).
next(robospelen_6_gedachtelezen, s22, 4, s23getal1).
next(robospelen_6_gedachtelezen, s22, 5, s23getal1).
next(robospelen_6_gedachtelezen, s22, 6, s23getal1).
next(robospelen_6_gedachtelezen, s22, 7, s23getal1).
next(robospelen_6_gedachtelezen, s22, 8, s23getal1).
next(robospelen_6_gedachtelezen, s22, 9, s23getal1).
next(robospelen_6_gedachtelezen, s22, 10, s23getal1).
next(robospelen_6_gedachtelezen, s22, "_others", s23boven_101).
next(robospelen_6_gedachtelezen, s22, "fail", s23fail_getal1).

move(robospelen_6_gedachtelezen, s23fail_getal1, say).
text(robospelen_6_gedachtelezen, s23fail_getal1, "Je mag het ook via bluetooth aan me doorsturen").
next(robospelen_6_gedachtelezen, s23fail_getal1, "true", s23fail_getal2).

move(robospelen_6_gedachtelezen, s23fail_getal2, say).
text(robospelen_6_gedachtelezen, s23fail_getal2, "3. 2. 1. Nu!").
next(robospelen_6_gedachtelezen, s23fail_getal2, "true", s23fail_getal3).

move(robospelen_6_gedachtelezen, s23fail_getal3, say).
text(robospelen_6_gedachtelezen, s23fail_getal3, "Laden. Laden.").
next(robospelen_6_gedachtelezen, s23fail_getal3, "true", s23fail_getal4).

move(robospelen_6_gedachtelezen, s23fail_getal4, say).
text(robospelen_6_gedachtelezen, s23fail_getal4, "Ja, ik heb een getal binnengekregen!").
next(robospelen_6_gedachtelezen, s23fail_getal4, "true", s23fail_getal5).

move(robospelen_6_gedachtelezen, s23fail_getal5, say).
text(robospelen_6_gedachtelezen, s23fail_getal5, "Dat was precies het getal waar ik ook aan dacht!").
next(robospelen_6_gedachtelezen, s23fail_getal5, "true", s24).

move(robospelen_6_gedachtelezen, s23boven_101, say).
text(robospelen_6_gedachtelezen, s23boven_101, "Dat is goed!").
next(robospelen_6_gedachtelezen, s23boven_101, "true", s23boven_102).

move(robospelen_6_gedachtelezen, s23boven_102, say).
text(robospelen_6_gedachtelezen, s23boven_102, "Jij bent er niet ingetrapt.").
next(robospelen_6_gedachtelezen, s23boven_102, "true", s23boven_103).

move(robospelen_6_gedachtelezen, s23boven_103, say).
text(robospelen_6_gedachtelezen, s23boven_103, "Ik zei wel een dat het een getal onder de tien moest zijn").
next(robospelen_6_gedachtelezen, s23boven_103, "true", s23boven_104).

move(robospelen_6_gedachtelezen, s23boven_104, say).
text(robospelen_6_gedachtelezen, s23boven_104, "Maar dat was een extra test om te zien of we goed verbonden waren").
next(robospelen_6_gedachtelezen, s23boven_104, "true", s23boven_105).

move(robospelen_6_gedachtelezen, s23boven_105, say).
text(robospelen_6_gedachtelezen, s23boven_105, "Het was inderdaad %getal_bluetooth% waar ik aan dacht!").
next(robospelen_6_gedachtelezen, s23boven_105, "true", s24).

move(robospelen_6_gedachtelezen, s23getal1, say).
text(robospelen_6_gedachtelezen, s23getal1, "Ja!").
next(robospelen_6_gedachtelezen, s23getal1, "true", s23getal2).

move(robospelen_6_gedachtelezen, s23getal2, say).
text(robospelen_6_gedachtelezen, s23getal2, "%getal_bluetooth%, dat was precies het getal waar ik aan dacht!").
next(robospelen_6_gedachtelezen, s23getal2, "true", s23getal3).

move(robospelen_6_gedachtelezen, s23getal3, say).
text(robospelen_6_gedachtelezen, s23getal3, "Dat betekent dat het werkt.").
next(robospelen_6_gedachtelezen, s23getal3, "true", s24).

move(robospelen_6_gedachtelezen, s24, say).
text(robospelen_6_gedachtelezen, s24, "Goed gedaan.").
next(robospelen_6_gedachtelezen, s24, "true", s25).

move(robospelen_6_gedachtelezen, s25, say).
text(robospelen_6_gedachtelezen, s25, "Jij kan nu net zoals ik robotgedachten lezen via bluetooth!").
next(robospelen_6_gedachtelezen, s25, "true", s26).

move(robospelen_6_gedachtelezen, s26, say).
text(robospelen_6_gedachtelezen, s26, "Misschien werkt het zelfs ook tussen mens en mens").
next(robospelen_6_gedachtelezen, s26, "true", s27).

move(robospelen_6_gedachtelezen, s27, say).
text(robospelen_6_gedachtelezen, s27, "Dat weet ik natuurlijk niet zeker").
next(robospelen_6_gedachtelezen, s27, "true", s28).

move(robospelen_6_gedachtelezen, s28, say).
text(robospelen_6_gedachtelezen, s28, "Maar jij kan het deze week wel testen!").
