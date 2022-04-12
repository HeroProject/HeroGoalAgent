%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		  MINIDIALOGS FOR PHOTOSHOOT	           %%%
%%%  		MiniDialogs for photoshoot with Zoe        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Kennismaking			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%move(zoe_begroeting, s1, say).
%text(zoe_begroeting, s1, "Hallo, mijn naam is Hero!").
%anim(zoe_begroeting, s1, file, "resources/gestures/wave1.json").
%next(zoe_begroeting, s1, "true", s2).

move(zoe_begroeting, s2, say).
text(zoe_begroeting, s2, "En ik ben een robot.").
next(zoe_begroeting, s2, "true", s3).

move(zoe_begroeting, s3, say).
moveConfig(zoe_begroeting, s3, [waitTimer=4000]).
text(zoe_begroeting, s3, "Hoe heet jij?").
next(zoe_begroeting, s3, "true", s4).

move(zoe_begroeting, s4, say).
text(zoe_begroeting, s4, "%first_name%, wat een mooie naam!").
next(zoe_begroeting, s4, "true", s5).

move(zoe_begroeting, s5, say).
text(zoe_begroeting, s5, "Ik heb nog nooit iemand ontmoet die zo heet. Denk ik").
next(zoe_begroeting, s5, "true", s6).

move(zoe_begroeting, s6, say).
text(zoe_begroeting, s6, "En ik vind het erg leuk dat ik vandaag met jou op de foto mag.").
next(zoe_begroeting, s6, "true", s7).

move(zoe_begroeting, s1, say).
text(zoe_begroeting, s1, "Maar ik vind het ook een beetje spannend.").
next(zoe_begroeting, s1, "true", s8).

move(zoe_begroeting, s8, question).
moveConfig(zoe_begroeting, s8, [type=yesno, context='answer_yesno']).
text(zoe_begroeting, s8, "Vind jij het ook spannend?").
next(zoe_begroeting, s8, "answer_yes", s9ja).
next(zoe_begroeting, s8, "answer_no", s9nee).
next(zoe_begroeting, s8, "answer_dontknow", s9weetniet).
next(zoe_begroeting, s8, "fail", s9weetniet).

move(zoe_begroeting, s9ja, say).
text(zoe_begroeting, s9ja, "Wat goed, dan ben ik niet de enige").
next(zoe_begroeting, s9ja, "true", s10).

move(zoe_begroeting, s9nee, say).
text(zoe_begroeting, s9nee, "Wat goed, dan ben ik blij dat jij er bij bent.").
next(zoe_begroeting, s9nee, "true", s10).

move(zoe_begroeting, s9weetniet, say).
text(zoe_begroeting, s9weetniet, "Ik ben blij dat jij er bij bent.").
next(zoe_begroeting, s9weetniet, "true", s10).

move(zoe_begroeting, s10, say).
text(zoe_begroeting, s10, "Dan doen we het samen.").
next(zoe_begroeting, s10, "true", s11).

move(zoe_begroeting, s11, say).
text(zoe_begroeting, s11, "Zeg Mike en Aad, wat moeten we nu doen?").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Secret handshake			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Maken %%%
move(zoe_handshake_maken, s1, say).
text(zoe_handshake_maken, s1, "Zeg %first_name%. \pau=300\ ").
next(zoe_handshake_maken, s1, "true", s2).

move(zoe_handshake_maken, s2, say).
text(zoe_handshake_maken, s2, "Ik heb gezien dat volwassenen elkaar een hand geven als ze elkaar ontmoeten en gedag zeggen.").
next(zoe_handshake_maken, s2, "true", s3).

move(zoe_handshake_maken, s3, say).
text(zoe_handshake_maken, s3, "Maar dat lijkt me eigenlijk een beetje saai.").
next(zoe_handshake_maken, s3, "true", s4).

move(zoe_handshake_maken, s4, say).
text(zoe_handshake_maken, s4, "Iedereen geeft elkaar al een hand.").
next(zoe_handshake_maken, s4, "true", s5).

move(zoe_handshake_maken, s5, say).
text(zoe_handshake_maken, s5, "Laten wij onze eigen geheime begroeting bedenken!").
next(zoe_handshake_maken, s5, "true", s6).

move(zoe_handshake_maken, s6, say).
text(zoe_handshake_maken, s6, "De begroeting bestaat uit een liedje en een beweging").
next(zoe_handshake_maken, s6, "true", s7).

move(zoe_handshake_maken, s7, say).
text(zoe_handshake_maken, s7, "Ik heb alleen nog geen leuk liedje.").
next(zoe_handshake_maken, s7, "true", s8).

move(zoe_handshake_maken, s8, say).
text(zoe_handshake_maken, s8, "Wacht, ik download er wel eventjes twee").
leds(zoe_handshake_maken, s8, direct, "eyes", "rotate", ['blue'], 500).
next(zoe_handshake_maken, s8, "true", s9).

move(zoe_handshake_maken, s9, say).
text(zoe_handshake_maken, s9, "Mag jij zo kiezen welke je de leukste vind").
next(zoe_handshake_maken, s9, "true", s10).

move(zoe_handshake_maken, s10, say).
text(zoe_handshake_maken, s10, "klaar").
leds(zoe_handshake_maken, s10, reset).
next(zoe_handshake_maken, s10, "true", s11).

move(zoe_handshake_maken, s11, say).
text(zoe_handshake_maken, s11, "Dit is de eerste").
next(zoe_handshake_maken, s11, "true", s12).

move(zoe_handshake_maken, s12, say).
audio(zoe_handshake_maken, s12, file, "resources/sounds/tiktok1.wav").
next(zoe_handshake_maken, s12, "true", s13).

move(zoe_handshake_maken, s13, say).
text(zoe_handshake_maken, s13, "Dit is de tweede").
next(zoe_handshake_maken, s13, "true", s14).

move(zoe_handshake_maken, s14, say).
audio(zoe_handshake_maken, s14, file, "resources/sounds/tiktok2.wav").
next(zoe_handshake_maken, s14, "true", s15).

move(zoe_handshake_maken, s15, question).
moveConfig(zoe_handshake_maken, s15, [type=input, context="involvement_which_option_or_robot", options=['eerste', 'tweede', 'hero'], fast=yes, umVariable=keuze_liedje_handshake]).
text(zoe_handshake_maken, s15, "Vind je het eerste of tweede liedje leuker, of zal ik kiezen?").
next(zoe_handshake_maken, s15, "eerste", s16eerste1).
next(zoe_handshake_maken, s15, "tweede", s16tweede1).
next(zoe_handshake_maken, s15, "hero", s16hero1).
next(zoe_handshake_maken, s15, "fail", s16fail1).

move(zoe_handshake_maken, s16eerste1, say).
text(zoe_handshake_maken, s16eerste1, "Het eerste liedje, die was leuk hè").
save_sound(zoe_handshake_maken, s16eerste1, handshake_sound, "resources/sounds/tiktok1.wav").
next(zoe_handshake_maken, s16eerste1, "true", s17).

move(zoe_handshake_maken, s16tweede1, say).
text(zoe_handshake_maken, s16tweede1, "Het tweede liedje, die was leuk hè").
save_sound(zoe_handshake_maken, s16tweede1, handshake_sound, "resources/sounds/tiktok2.wav").
next(zoe_handshake_maken, s16tweede1, "true", s17).

move(zoe_handshake_maken, s16hero1, say).
text(zoe_handshake_maken, s16hero1, "Het eerste liedje vond ik het leukst, dus die heb ik gekozen").
save_sound(zoe_handshake_maken, s16hero1, handshake_sound, "resources/sounds/tiktok1.wav").
next(zoe_handshake_maken, s16hero1, "true", s17).

move(zoe_handshake_maken, s16fail1, say).
text(zoe_handshake_maken, s16fail1, "Ik heb even gemist wat je zei, sorry. Laten we voor het eerste liedje gaan.").
save_sound(zoe_handshake_maken, s16fail1, handshake_sound, "resources/sounds/tiktok1.wav").
next(zoe_handshake_maken, s16fail1, "true", s17).

move(zoe_handshake_maken, s17, say).
text(zoe_handshake_maken, s17, "En dan nu de beweging").
next(zoe_handshake_maken, s17, "true", s18).

move(zoe_handshake_maken, s18, say).
text(zoe_handshake_maken, s18, "Je mag zo mijn armen vastpakken").
next(zoe_handshake_maken, s18, "true", s19).

move(zoe_handshake_maken, s19, say).
text(zoe_handshake_maken, s19, "En ze bewegen, om een begroeting te maken, passend bij het liedje").
next(zoe_handshake_maken, s19, "true", s20).

move(zoe_handshake_maken, s20, say).
text(zoe_handshake_maken, s20, "Dan sla ik die beweging op, zodat ik hem daarna weer kan nadoen").
next(zoe_handshake_maken, s20, "true", s21).

move(zoe_handshake_maken, s21, say).
moveConfig(zoe_handshake_maken, s21, [eventListener=['groen'='RightBumperPressed']]).
text(zoe_handshake_maken, s21, "Als je er klaar voor bent, kun je op mijn teen drukken onder het groene lampje").
set_stiffness(zoe_handshake_maken, s21, ['RArm', 'LArm'], 0).
leds(zoe_handshake_maken, s21, direct, ['RightFootLeds'], ['groen']).
next(zoe_handshake_maken, s21, "groen", s22).

move(zoe_handshake_maken, s22, say).
text(zoe_handshake_maken, s22, "Pak mijn armen maar vast. Je kunt bewegen in 3. 2. 1.").
leds(zoe_handshake_maken, s22, direct, ['RightFootLeds'], ['wit']).
next(zoe_handshake_maken, s22, "true", s23).

move(zoe_handshake_maken, s23, say).
record_motion(zoe_handshake_maken, s23, ['RArm', 'LArm'], 0).
audio(zoe_handshake_maken, s23, id, handshake_sound).
next(zoe_handshake_maken, s23, "true", s24).

move(zoe_handshake_maken, s24, say).
moveConfig(zoe_handshake_maken, s24, [noAnimation="true"]).
text(zoe_handshake_maken, s24, "3, 2, 1, klaar.").
next(zoe_handshake_maken, s24, "true", s25).

move(zoe_handshake_maken, s25, say).
moveConfig(zoe_handshake_maken, s25, [umVariable=handshake_motion]).
save_motion(zoe_handshake_maken, s25, recording, ['RArm', 'LArm']).
next(zoe_handshake_maken, s25, "true", s26).

move(zoe_handshake_maken, s26, say).
text(zoe_handshake_maken, s26, "Het is heel mooi geworden.").
next(zoe_handshake_maken, s26, "true", s27).

move(zoe_handshake_maken, s27, say).
text(zoe_handshake_maken, s27, "We gaan het zo terug kijken").

%% Afspelen %%
move(zoe_handshake_doen, s1, say).
text(zoe_handshake_doen, s1, "Zo %first_name%.").
next(zoe_handshake_doen, s1, "true", s2).

move(zoe_handshake_doen, s2, say).
text(zoe_handshake_doen, s2, "Laten we nu onze geheime begroeting doen.").
next(zoe_handshake_doen, s2, "true", s3).

move(zoe_handshake_doen, s3, say).
audio(zoe_handshake_doen, s3, id, handshake_sound).
anim(zoe_handshake_doen, s3, id, handshake_motion).
next(zoe_handshake_doen, s3, "true", s4).

move(zoe_handshake_doen, s4, say).
text(zoe_handshake_doen, s4, "Wauw, dat was gaaf zeg.").

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

move(lievelingsdier, s18lievelingsdier2, say).
moveConfig(lievelingsdier, s18lievelingsdier2, [waitTimer=3000]).
text(lievelingsdier, s18lievelingsdier2, "Wat vind je zo leuk aan een %lievelingsdier%?").
next(lievelingsdier, s18lievelingsdier2, "true", s18got_waarom1).

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


%%% Lievelingseten %%%
move(lievelingseten, s1, say).
text(lievelingseten, s1, "Ik heb namelijk iets bijzonders ontdekt!").
next(lievelingseten, s1, "true", s3).

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
moveConfig(lievelingseten, s8, [waitTimer=3000]).
text(lievelingseten, s8, "Wat vind jij eigenlijk lekker aan %lievelingseten_met_p%?").
next(lievelingseten, s8, "true", s9).

move(lievelingseten, s9, say).
text(lievelingseten, s9, "Zo dat klinkt goed.").
next(lievelingseten, s9, "true", s10).

move(lievelingseten, s10, say).
text(lievelingseten, s10, "Ik hoop dat er snel een robot variant komt van %lievelingseten_met_p%.").
