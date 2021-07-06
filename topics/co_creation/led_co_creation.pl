%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 			LED CO-CREATION		           %%%
%%%           LED color and animation selection		   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LED Animation Check					   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_selection, s1, question).
stateConfig(co_led_selection, s1, [type = input, context = "involvement_selection", options = ['maken', 'downloaden'], fast=yes]).
text(co_led_selection, s1, "Wil jij de lichtshow maken of zal ik wat opties downloaden?").
next(co_led_selection, s1, "success", s3).
next(co_led_selection, s1, "fail", s3f).

state(co_led_selection, s3f, say).
text(co_led_selection, s3f, "Weet je wat? Ik download gewoon wat licht animaties.").
next(co_led_selection, s3f, 'true', sdownload1).

state(co_led_selection, s3, say).
text(co_led_selection,  s3, "Oke we gaan het %co_led_selection_s1%.").
next(co_led_selection,  s3, "true",  s4).

state(co_led_selection, s4, branchingPoint, co_led_selection_s1).
next(co_led_selection, s4, "maken", s5maken).
next(co_led_selection, s4, "downloaden", s5download).
next(co_led_selection, s4, "fail", s5download).

state(co_led_selection, s5maken, say).
insert_topic(co_led_selection, s5maken, co_led_creation).

state(co_led_selection, s5download, say).
insert_topic(co_led_selection, s5download, co_led_download).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Download						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state(co_led_download, s1, say).
text(co_led_download,  s1, "Ik ben nu twee licht animaties aan het downloaden.").
leds(co_led_download, s1, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_led_download, s1, [waitTimer=1500]).
next(co_led_download,  s1, "true",  sdownload2).

state(co_led_download, sdownload2, say).
text(co_led_download,  sdownload2, "Klaar. Dit is optie 1").
leds(co_led_download, sdownload2, reset).
next(co_led_download,  sdownload2, "true",  sdownload3).

state(co_led_download, sdownload3, say).
leds(co_led_download, sdownload3, option, 1).
stateConfig(co_led_download, sdownload3, [waitTimer=3000]).
next(co_led_download, sdownload3, "true", sdownload4).

state(co_led_download, sdownload4, say).
text(co_led_download,  sdownload4, "En dit is optie 2").
leds(co_led_download, sdownload4, reset).
next(co_led_download,  sdownload4, "true",  sdownload5).

state(co_led_download, sdownload5, say).
leds(co_led_download, sdownload5, option, 2).
stateConfig(co_led_download, sdownload5, [waitTimer=3000]).
next(co_led_download, sdownload5, "true", sdownload6).

state(co_led_download, sdownload6, question).
stateConfig(co_led_download, sdownload6, [type = input, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'hero'], defaultAnswer='tweede', fast=yes]).
text(co_led_download, sdownload6, "Wil jij de eerste of tweede licht show, of zal ik kiezen?").
leds(co_led_download, sdownload6, reset).
next(co_led_download, sdownload6, "success", sdownload7).
next(co_led_download, sdownload6, "fail", sdownload7f).

state(co_led_download, sdownload7f, say).
text(co_led_download,  sdownload7f, "Sorry, ik verstond je niet zo goed. Laten we voor de tweede keuze gaan.").
next(co_led_download,  sdownload7f, "true",  sdownload8robot).

state(co_led_download, sdownload7, branchingPoint, co_led_download_sdownload6).
next(co_led_download, sdownload7, "eerste", sdownload8eerste).
next(co_led_download, sdownload7, "tweede", sdownload8tweede).
next(co_led_download, sdownload7, "hero", sdownload8robot).

state(co_led_download, sdownload8eerste, say).
text(co_led_download,  sdownload8eerste, "De eerste, goede keuze.").
save_led_anim(co_led_download, sdownload8eerste, 1).

state(co_led_download, sdownload8tweede, say).
text(co_led_download,  sdownload8tweede, "De tweede, goede keuze.").
save_led_anim(co_led_download, sdownload8tweede, 2).

state(co_led_download, sdownload8robot, say).
text(co_led_download,  sdownload8robot, "Prima! De tweede vond ik het leukst. Dus die heb ik gekozen.").
save_led_anim(co_led_download, sdownload8robot, 2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Create						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_creation, s1, question).
stateConfig(co_led_creation, s1, [type=input, context='answer_light_animation', options=['knipperen', 'heen en weer', 'inkleuren'], defaultAnswer='knipperen', fast=yes]).
text(co_led_creation, s1, "Wil je de lichtjes laten knipperen, heen en weer laten gaan, of wil je ze gewoon in kleuren?").
next(co_led_creation, s1, 'success', s2).
next(co_led_creation, s1, 'fail', s2f).

state(co_led_creation, s2f, say).
text(co_led_creation, s2f, "Sorry, ik heb je niet helemaal begrepen. Kom, we laten ze lekker knipperen ").
next(co_led_creation, s2f, "true", s5animknip).

state(co_led_creation, s2, say).
text(co_led_creation, s2, "%co_led_creation_s1%, helemaal prima.").
next(co_led_creation, s2, "true", s3).

state(co_led_creation, s3, branchingPoint, co_led_creation_s1).
next(co_led_creation, s3, "knipperen", s5animknip).
next(co_led_creation, s3, "heen en weer", s5animheen).
next(co_led_creation, s3, "inkleuren", s4no).
next(co_led_creation, s3, "fail", s5animknip).

%%% Create - No Animation				   %%%
state(co_led_creation, s4no, question).
stateConfig(co_led_creation, s4no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='groen']).
text(co_led_creation, s4no, "Welke kleur moeten mijn ogen krijgen?").
next(co_led_creation, s4no, 'success', s4nos).
next(co_led_creation, s4no, 'fail', s4nof).

state(co_led_creation, s4nos, say).
text(co_led_creation, s4nos, "%co_led_creation_s4no%").
next(co_led_creation, s4nos, "true", s5no).

state(co_led_creation, s4nof, say).
text(co_led_creation, s4nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_creation_s4no% gaan.").
next(co_led_creation, s4nof, "true", s5no).

state(co_led_creation, s5no, question).
stateConfig(co_led_creation, s5no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='paars']).
text(co_led_creation, s5no, "Welke kleur moet mijn buik krijgen?").
next(co_led_creation, s5no, 'success', s5nos).
next(co_led_creation, s5no, 'fail', s5nof).

state(co_led_creation, s5nos, say).
text(co_led_creation, s5nos, "%co_led_creation_s5no%").
next(co_led_creation, s5nos, "true", s6no).

state(co_led_creation, s5nof, say).
text(co_led_creation, s5nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_creation_s5no% gaan.").
next(co_led_creation, s5nof, "true", s6no).

state(co_led_creation, s6no, question).
stateConfig(co_led_creation, s6no, [type=input, context='answer_color', options=['rood', 'geel', 'blauw', 'paars', 'oranje', 'groen'], defaultAnswer='oranje']).
text(co_led_creation, s6no, "Welke kleur moeten mijn voeten krijgen?").
next(co_led_creation, s6no, 'success', s6nos).
next(co_led_creation, s6no, 'fail', s6nof).

state(co_led_creation, s6nos, say).
text(co_led_creation, s6nos, "%co_led_creation_s6no%").
next(co_led_creation, s6nos, "true", s7no).

state(co_led_creation, s6nof, say).
text(co_led_creation, s6nof, "Ik kon je even niet verstaan, sorry. Maar weet je wat, laten we voor %co_led_creation_s6no% gaan.").
next(co_led_creation, s6nof, "true", s7no).

%% Save result %%
state(co_led_creation, s7no, say).
text(co_led_creation, s7no, "Deze mooie lichtshow heb ik opgeslagen").
save_led_anim(co_led_creation, s7no, ["FaceLeds", "ChestLeds", "FeetLeds"], colorSelect, ["co_led_creation_s4no", "co_led_creation_s5no", "co_led_creation_s6no"], 0).

%%%%%%%%%%%%%% Blinking animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_creation, s5animknip, question).
stateConfig(co_led_creation, s5animknip, [type=input, context='answer_color_list', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='["paars", "oranje"]', maxAnswerTime=[speechinputfirst=10000, speechinputnoninitial=8000]]).
text(co_led_creation, s5animknip, "Ik heb tenminste twee kleuren nodig, welke vind je leuk?").
next(co_led_creation, s5animknip, 'success', s6animknip).
next(co_led_creation, s5animknip, 'fail', s5animknipf).

state(co_led_creation, s5animknipf, say).
text(co_led_creation, s5animknipf, "Sorry ik kon je niet goed verstaan. Mij lijken paars en oranje wel geinig.").
next(co_led_creation, s5animknipf, "true", s7animknip).

state(co_led_creation, s6animknip, say).
text(co_led_creation, s6animknip, "Uit stekende keuze.").
next(co_led_creation, s6animknip, "true", s7animknip).

%% Save result %%
state(co_led_creation, s7animknip, say).
save_led_anim(co_led_creation, s7animknip, "all", "blink", "co_led_creation_s5animknip", 500).
stateConfig(co_led_creation, s7animknip, [ledColorIsList="true"]).

%%%%%%%%%%%%%% Alternate animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_led_creation, s5animheen, question). % left color
stateConfig(co_led_creation, s5animheen, [type=input, context='answer_color', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='blauw']).
text(co_led_creation, s5animheen, "Welke kleur moet de linker kant krijgen?").
next(co_led_creation, s5animheen, 'success', s5animheens).
next(co_led_creation, s5animheen, 'fail', s5animheenf).

state(co_led_creation, s5animheens, say).
text(co_led_creation, s5animheens, "%co_led_creation_s5animheen%").
next(co_led_creation, s5animheens, "true", s5animweer).

state(co_led_creation, s5animheenf, say).
text(co_led_creation, s5animheenf, "Sorry, ik heb je niet helemaal begrepen. %co_led_creation_s5animheen% is wel een leuke kleur om te doen.").
next(co_led_creation, s5animheenf, "true", s5animweer).

state(co_led_creation, s5animweer, question). % left color
stateConfig(co_led_creation, s5animweer, [type=input, context='answer_color', options=['blauw', 'groen', 'rood', 'oranje', 'paars'], defaultAnswer='oranje']).
text(co_led_creation, s5animweer, "Welke kleur moet de rechter kant krijgen?").
next(co_led_creation, s5animweer, 'success', s5animweers).
next(co_led_creation, s5animweer, 'fail', s5animweerf).

state(co_led_creation, s5animweers, say).
text(co_led_creation, s5animweers, "%co_led_creation_s5animweer%").
next(co_led_creation, s5animweers, "true", s6animheen).

state(co_led_creation, s5animheenf, say).
text(co_led_creation, s5animheenf, "Sorry, ik heb je niet helemaal begrepen. %co_led_creation_s5animweer% is wel een leuke kleur om te doen.").
next(co_led_creation, s5animheenf, "true", s6animheen).

state(co_led_creation, s6animheen, say).
text(co_led_creation, s6animheen, "Uit stekende keuzes.").
next(co_led_creation, s6animheen, "true", s7animheen).

%% Save result %%
state(co_led_creation, s7animheen, say).
text(co_led_creation, s7animheen, "Deze mooie lichtshow heb ik opgeslagen").
save_led_anim(co_led_creation, s7animheen, "all", "alternate", ["co_led_creation_s5animweer", "co_led_creation_s5animheen"], 500).
