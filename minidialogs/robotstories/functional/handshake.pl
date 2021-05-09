%%%% HEADER %%%%
%% secret_handshake_maken %%
minidialog(secret_handshake_maken, [type=functional, function=greeting]).

move(secret_handshake_maken, s1, say).
text(secret_handshake_maken, s1, "Het is bijna tijd om te gaan").
next(secret_handshake_maken, s1, "true", s2).

move(secret_handshake_maken, s2, say).
text(secret_handshake_maken, s2, "Ik heb gezien dat volwassenen elkaar een hand geven als ze elkaar ontmoeten en gedag zeggen.").
next(secret_handshake_maken, s2, "true", s3).

move(secret_handshake_maken, s3, say).
text(secret_handshake_maken, s3, "Maar dat lijkt me eigenlijk een beetje saai.").
next(secret_handshake_maken, s3, "true", s4).

move(secret_handshake_maken, s4, say).
text(secret_handshake_maken, s4, "Iedereen geeft elkaar al een hand.").
next(secret_handshake_maken, s4, "true", s5).

move(secret_handshake_maken, s5, say).
text(secret_handshake_maken, s5, "Laten wij onze eigen geheime begroeting bedenken!").
next(secret_handshake_maken, s5, "true", s6).

move(secret_handshake_maken, s6, say).
text(secret_handshake_maken, s6, "De begroeting bestaat uit een liedje en een beweging").
next(secret_handshake_maken, s6, "true", s7).

move(secret_handshake_maken, s7, say).
text(secret_handshake_maken, s7, "Ik heb alleen nog geen leuk liedje.").
next(secret_handshake_maken, s7, "true", s8).

move(secret_handshake_maken, s8, say).
text(secret_handshake_maken, s8, "Wacht, ik download er wel eventjes twee").
leds(secret_handshake_maken, s8, direct, "eyes", "rotate", ['blue'], 500).
next(secret_handshake_maken, s8, "true", s9).

move(secret_handshake_maken, s9, say).
text(secret_handshake_maken, s9, "Mag jij zo kiezen welke je de leukste vind").
next(secret_handshake_maken, s9, "true", s10).

move(secret_handshake_maken, s10, say).
text(secret_handshake_maken, s10, "klaar").
leds(secret_handshake_maken, s10, reset).
next(secret_handshake_maken, s10, "true", s11).

move(secret_handshake_maken, s11, say).
text(secret_handshake_maken, s11, "Dit is de eerste").
next(secret_handshake_maken, s11, "true", s12).

move(secret_handshake_maken, s12, say).
audio(secret_handshake_maken, s12, file, "resources/sounds/tiktok1.wav").
next(secret_handshake_maken, s12, "true", s13).

move(secret_handshake_maken, s13, say).
text(secret_handshake_maken, s13, "Dit is de tweede").
next(secret_handshake_maken, s13, "true", s14).

move(secret_handshake_maken, s14, say).
audio(secret_handshake_maken, s14, file, "resources/sounds/tiktok2.wav").
next(secret_handshake_maken, s14, "true", s15).

move(secret_handshake_maken, s15, question).
moveConfig(secret_handshake_maken, s15, [type=input, context="involvement_which_option_or_robot", options=['eerste', 'tweede', 'hero'], fast=yes, umVariable=keuze_liedje_handshake]).
text(secret_handshake_maken, s15, "Vind je het eerste of tweede liedje leuker, of zal ik kiezen?").
next(secret_handshake_maken, s15, "eerste", s16eerste1).
next(secret_handshake_maken, s15, "tweede", s16tweede1).
next(secret_handshake_maken, s15, "hero", s16hero1).
next(secret_handshake_maken, s15, "fail", s16fail1).

move(secret_handshake_maken, s16eerste1, say).
text(secret_handshake_maken, s16eerste1, "Het eerste liedje, die was leuk hè").
save_sound(secret_handshake_maken, s16eerste1, handshake_sound, "resources/sounds/tiktok1.wav").
next(secret_handshake_maken, s16eerste1, "true", s17).

move(secret_handshake_maken, s16tweede1, say).
text(secret_handshake_maken, s16tweede1, "Het tweede liedje, die was leuk hè").
save_sound(secret_handshake_maken, s16tweede1, handshake_sound, "resources/sounds/tiktok2.wav").
next(secret_handshake_maken, s16tweede1, "true", s17).

move(secret_handshake_maken, s16hero1, say).
text(secret_handshake_maken, s16hero1, "Het eerste liedje vond ik het leukst, dus die heb ik gekozen").
save_sound(secret_handshake_maken, s16hero1, handshake_sound, "resources/sounds/tiktok1.wav").
next(secret_handshake_maken, s16hero1, "true", s17).

move(secret_handshake_maken, s16fail1, say).
text(secret_handshake_maken, s16fail1, "Ik heb even gemist wat je zei, sorry. Laten we voor het eerste liedje gaan.").
save_sound(secret_handshake_maken, s16fail1, handshake_sound, "resources/sounds/tiktok1.wav").
next(secret_handshake_maken, s16fail1, "true", s17).

move(secret_handshake_maken, s17, say).
text(secret_handshake_maken, s17, "En dan nu de beweging").
next(secret_handshake_maken, s17, "true", s18).

move(secret_handshake_maken, s18, say).
text(secret_handshake_maken, s18, "Je mag zo mijn armen vastpakken").
next(secret_handshake_maken, s18, "true", s19).

move(secret_handshake_maken, s19, say).
text(secret_handshake_maken, s19, "En ze bewegen, om een begroeting te maken, passend bij het liedje").
next(secret_handshake_maken, s19, "true", s20).

move(secret_handshake_maken, s20, say).
text(secret_handshake_maken, s20, "Dan sla ik die beweging op, zodat ik hem daarna weer kan nadoen").
next(secret_handshake_maken, s20, "true", s21).

move(secret_handshake_maken, s21, say).
moveConfig(secret_handshake_maken, s21, [next="RightBumperPressed"]).
text(secret_handshake_maken, s21, "Als je er klaar voor bent, kun je op de ja knop drukken").
set_stiffness(secret_handshake_maken, s21, ['RArm', 'LArm'], 0).
leds(secret_handshake_maken, s21, direct, ['RightFootLeds'], ['groen']).
next(secret_handshake_maken, s21, "true", s22).

move(secret_handshake_maken, s22, say).
text(secret_handshake_maken, s22, "Pak mijn armen maar vast. Je kunt bewegen in 3. 2. 1.").
leds(secret_handshake_maken, s22, direct, ['RightFootLeds'], ['wit']).
next(secret_handshake_maken, s22, "true", s23).

move(secret_handshake_maken, s23, say).
record_motion(secret_handshake_maken, s23, ['RArm', 'LArm'], 0).
audio(secret_handshake_maken, s23, id, handshake_sound).
next(secret_handshake_maken, s23, "true", s24).

move(secret_handshake_maken, s24, say).
moveConfig(secret_handshake_maken, s24, [noAnimation="true"]).
text(secret_handshake_maken, s24, "3, 2, 1, klaar.").
next(secret_handshake_maken, s24, "true", s25).

move(secret_handshake_maken, s25, say).
moveConfig(secret_handshake_maken, s25, [umVariable=handshake_motion]).
save_motion(secret_handshake_maken, s25, recording, ['RArm', 'LArm']).
next(secret_handshake_maken, s25, "true", s26).

move(secret_handshake_maken, s26, say).
text(secret_handshake_maken, s26, "Het is heel mooi geworden.").
next(secret_handshake_maken, s26, "true", s27).

move(secret_handshake_maken, s27, say).
text(secret_handshake_maken, s27, "We gaan het zo terug kijken").
next(secret_handshake_maken, s27, "true", s28).

move(secret_handshake_maken, s28, say).
text(secret_handshake_maken, s28, "Maar eerst wil ik nog wat zeggen.").

