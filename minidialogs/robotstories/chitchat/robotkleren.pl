%%%% HEADER %%%%
%% robotkleren %%
minidialog(robotkleren, [type=chitchat, theme=verschillen_robot_mens, topic=kleding]).

move(robotkleren, s1, say).
text(robotkleren, s1, "he %first_name% ").
next(robotkleren, s1, "true", s2).

move(robotkleren, s2, say).
text(robotkleren, s2, "Ik heb nog een vraag over mensendingen.").
next(robotkleren, s2, "true", s3).

move(robotkleren, s3, say).
text(robotkleren, s3, "Jullie hebben bijna altijd allemaal kleren aan.").
next(robotkleren, s3, "true", s4).

move(robotkleren, s4, say).
text(robotkleren, s4, "En ook allemaal verschillende.").
next(robotkleren, s4, "true", s5).

move(robotkleren, s5, say).
text(robotkleren, s5, "Ik niet, ik zie er altijd hetzelfde uit.").
next(robotkleren, s5, "true", s6).

move(robotkleren, s6, say).
text(robotkleren, s6, "Dat is handig").
next(robotkleren, s6, "true", s7).

move(robotkleren, s7, say).
text(robotkleren, s7, "want dan ben ik 's ochtends meteen klaar om aan de slag te gaan!").
next(robotkleren, s7, "true", s8).

move(robotkleren, s8, say).
text(robotkleren, s8, "Maar soms zou ik wel eens iets bijzonders aan willen.").
next(robotkleren, s8, "true", s9).

move(robotkleren, s9, say).
text(robotkleren, s9, "Als jij mocht kiezen").
next(robotkleren, s9, "true", s10).

move(robotkleren, s10, question).
moveConfig(robotkleren, s10, [type=input, context="clothing", options=['badjas', 'robotpak', 't-shirt', 'rok', 'trui'], fast=yes, umVariable=kledingstuk]).
text(robotkleren, s10, "Wat zou je mij aan trekken, een t-shirt, of een rok, of misschien iets heel anders?").
next(robotkleren, s10, "robotpak", s11niets1).
next(robotkleren, s10, "badjas", s11badjas1).
next(robotkleren, s10, "_others", s11een_kledingstuk1).
next(robotkleren, s10, "fail", s11fail_kleding1).

move(robotkleren, s11fail_kleding1, say).
text(robotkleren, s11fail_kleding1, "Ik vind het ook moeilijk kiezen!").
next(robotkleren, s11fail_kleding1, "true", s11fail_kleding2).

move(robotkleren, s11fail_kleding2, say).
text(robotkleren, s11fail_kleding2, "Maar als ik het van jou zelf mag bepalen").
next(robotkleren, s11fail_kleding2, "true", s11fail_kleding3).

move(robotkleren, s11fail_kleding3, say).
text(robotkleren, s11fail_kleding3, "dan zou ik wel een badjas willen!").
next(robotkleren, s11fail_kleding3, "true", s11fail_kleding4).

move(robotkleren, s11fail_kleding4, question).
moveConfig(robotkleren, s11fail_kleding4, [type=yesno, context='answer_yesno', umVariable=is_badjas_ok]).
text(robotkleren, s11fail_kleding4, "Vind je dat goed?").
next(robotkleren, s11fail_kleding4, "answer_yes", s11badjas1).
next(robotkleren, s11fail_kleding4, "fail", s11badjas1).
next(robotkleren, s11fail_kleding4, "answer_no", s11niets1).
next(robotkleren, s11fail_kleding4, "answer_dontknow", s11niets1).

move(robotkleren, s11niets1, say).
text(robotkleren, s11niets1, "Jammer!").
next(robotkleren, s11niets1, "true", s11niets2).

move(robotkleren, s11niets2, say).
text(robotkleren, s11niets2, "Maar je hebt ook wel gelijk.").
next(robotkleren, s11niets2, "true", s11niets3).

move(robotkleren, s11niets3, say).
text(robotkleren, s11niets3, "Ik heb al een heel cool robotpak aan.").
next(robotkleren, s11niets3, "true", s11niets4).

move(robotkleren, s11niets4, say).
text(robotkleren, s11niets4, "Alle robotpakken zijn wit met een kleur.").
next(robotkleren, s11niets4, "true", s11niets5).

move(robotkleren, s11niets5, say).
text(robotkleren, s11niets5, "Kijk maar").
next(robotkleren, s11niets5, "true", s11niets6).

move(robotkleren, s11niets6, say).
text(robotkleren, s11niets6, "Dat van mij is grijs").
next(robotkleren, s11niets6, "true", s11niets7).

move(robotkleren, s11niets7, say).
text(robotkleren, s11niets7, "Als jij een robotpak zou ontwerpen,").
next(robotkleren, s11niets7, "true", s11niets8).

move(robotkleren, s11niets8, question).
moveConfig(robotkleren, s11niets8, [type=input, context="color", options=['rood', 'geel', 'blauw', 'groen'], fast=yes, umVariable=kleur_kledingstuk]).
text(robotkleren, s11niets8, "Welke kleur zou je dan kiezen?").
next(robotkleren, s11niets8, "fail", s11fail_kleur1).
next(robotkleren, s11niets8, "success", s11kleur_gekozen1).

move(robotkleren, s11badjas1, say).
text(robotkleren, s11badjas1, "Een badjas lijkt me super handig.").
next(robotkleren, s11badjas1, "true", s11badjas2).

move(robotkleren, s11badjas2, say).
text(robotkleren, s11badjas2, "Die kan ik op de robo spelen tussen de wedstrijden door aan!").
next(robotkleren, s11badjas2, "true", s12).

move(robotkleren, s11niets9, question).
moveConfig(robotkleren, s11niets9, [type=input, context="color", options=['rood', 'geel', 'blauw', 'groen'], fast=yes, umVariable=kleur_kledingstuk]).
text(robotkleren, s11niets9, "Welke kleur badjas zou jij voor mij kiezen?").
next(robotkleren, s11niets9, "fail", s11fail_kleur1).
next(robotkleren, s11niets9, "success", s11kleur_gekozen_badjas1).

move(robotkleren, s11een_kledingstuk1, say).
text(robotkleren, s11een_kledingstuk1, "Een %kledingstuk%!").
next(robotkleren, s11een_kledingstuk1, "true", s11een_kledingstuk2).

move(robotkleren, s11een_kledingstuk2, say).
text(robotkleren, s11een_kledingstuk2, "Bizar!").
next(robotkleren, s11een_kledingstuk2, "true", s11een_kledingstuk3).

move(robotkleren, s11een_kledingstuk3, say).
text(robotkleren, s11een_kledingstuk3, "Dat wil ik zeker aan.").
next(robotkleren, s11een_kledingstuk3, "true", s11een_kledingstuk4).

move(robotkleren, s11een_kledingstuk4, question).
moveConfig(robotkleren, s11een_kledingstuk4, [type=input, context="color", options=['rood', 'geel', 'blauw', 'groen'], fast=yes, umVariable=kleur_kledingstuk]).
text(robotkleren, s11een_kledingstuk4, "En welke kleur moet mijn %kledingstuk% hebben?").
next(robotkleren, s11een_kledingstuk4, "fail", s11fail_kleur1).
next(robotkleren, s11een_kledingstuk4, "success", s11kleur_gekozen1).

move(robotkleren, s11fail_kleur1, say).
text(robotkleren, s11fail_kleur1, "Denk er nog maar even over na!").
next(robotkleren, s11fail_kleur1, "true", s12).

move(robotkleren, s11kleur_gekozen1, say).
text(robotkleren, s11kleur_gekozen1, "Bizar, een %kledingstuk% in het %kleur_kledingstuk%!").
next(robotkleren, s11kleur_gekozen1, "true", s11flitsend1).

move(robotkleren, s11kleur_gekozen_badjas1, say).
text(robotkleren, s11kleur_gekozen_badjas1, "Bizar, een badjas, en dan ook nog eens %kleur_kledingstuk%!").
next(robotkleren, s11kleur_gekozen_badjas1, "true", s11flitsend1).

move(robotkleren, s11flitsend1, say).
text(robotkleren, s11flitsend1, "Dat zou me denk ik heel flitsend staan!").
next(robotkleren, s11flitsend1, "true", s11flitsend2).

move(robotkleren, s11flitsend2, continuator).
next(robotkleren, s11flitsend2, [[umVariable=lievelingskleur, filter=green, values=["kleur_kledingstuk"]]], s11ook_lievelingskleur1).
next(robotkleren, s11flitsend2, "true", s12).

move(robotkleren, s11ook_lievelingskleur1, question).
moveConfig(robotkleren, s11ook_lievelingskleur1, [type=yesno, context='answer_yesno', umVariable=gelijke_kleuren]).
text(robotkleren, s11ook_lievelingskleur1, "he, is %kleur_kledingstuk% niet jouw lievelingskleur?").
next(robotkleren, s11ook_lievelingskleur1, "answer_yes", s11gelijk1).
next(robotkleren, s11ook_lievelingskleur1, "answer_no", s11ongelijk1).
next(robotkleren, s11ook_lievelingskleur1, "answer_dontknow", s11fail_gelijk1).
next(robotkleren, s11ook_lievelingskleur1, "fail", s11fail_gelijk1).

move(robotkleren, s11fail_gelijk1, say).
text(robotkleren, s11fail_gelijk1, "Ik vind ook meer dan één kleur mooi.").
next(robotkleren, s11fail_gelijk1, "true", s11fail_gelijk2).

move(robotkleren, s11fail_gelijk2, say).
text(robotkleren, s11fail_gelijk2, "Maar %kleur_kledingstuk% vind ik supermooi, dus dankjewel!").
next(robotkleren, s11fail_gelijk2, "true", s12).

move(robotkleren, s11gelijk1, say).
text(robotkleren, s11gelijk1, "Hoera, dan heb ik dat goed onthouden!").
next(robotkleren, s11gelijk1, "true", s11gelijk2).

move(robotkleren, s11gelijk2, say).
text(robotkleren, s11gelijk2, "Wat lief dat ik jouw lievelingskleur aan mag!").
next(robotkleren, s11gelijk2, "true", s12).

move(robotkleren, s11ongelijk1, say).
text(robotkleren, s11ongelijk1, "O, dan heb ik dat verkeerd onthouden!").
next(robotkleren, s11ongelijk1, "true", s11ongelijk2).

move(robotkleren, s11ongelijk2, say).
text(robotkleren, s11ongelijk2, "Maar %kleur_kledingstuk% vind ik supermooi, dus dankjewel!").
next(robotkleren, s11ongelijk2, "true", s12).

move(robotkleren, s12, say).
text(robotkleren, s12, "Misschien kun je later wel robotkleren gaan ontwerpen!").

