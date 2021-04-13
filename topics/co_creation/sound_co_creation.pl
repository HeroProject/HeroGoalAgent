%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 			SOUND CO-CREATION	           %%%
%%%            Select or create robot sound effects	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Coordination of involvement				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_sound, s1, question).
stateConfig(co_sound, s1, [type = input, context = "involvement_selection", options = ['maken', 'downloaden']]).
text(co_sound, s1, "Wil jij het geluid zelf maken of zal ik wat geluiden downloaden?").
next(co_sound, s1, "success", s3).
next(co_sound, s1, "fail", s3f).

state(co_sound, s3f, say).
text(co_sound, s3f, "Weet je wat? Ik download gewoon wat geluiden.").
next(co_sound, s3f, 'true', sdownload1).

state(co_sound, s3, say).
text(co_sound,  s3, "Oke we gaan het %co_sound_s1%.").
next(co_sound,  s3, "true",  s4).

state(co_sound, s4, branchingPoint, co_sound_s1).
next(co_sound, s4, "maken", smaken1).
next(co_sound, s4, "downloaden", sdownload1).
next(co_sound, s4, "fail", sdownload1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Download						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_sound, sdownload1, say).
text(co_sound,  sdownload1, "Ik ben nu twee geluiden aan het downloaden.").
leds(co_sound, sdownload1, direct, "eyes", "rotate", ["purple"], 500).
stateConfig(co_sound, sdownload1, [waitTimer=1500]).
next(co_sound,  sdownload1, "true",  sdownload2).

state(co_sound, sdownload2, say).
text(co_sound,  sdownload2, "Klaar. Dit is optie 1").
leds(co_sound, sdownload2, reset).
next(co_sound,  sdownload2, "true",  sdownload3).

state(co_sound, sdownload3, say).
play_sound_option(co_sound, sdownload3, 1).
next(co_sound, sdownload3, "true", sdownload4).

state(co_sound, sdownload4, say).
text(co_sound,  sdownload4, "En dit is optie 2").
next(co_sound,  sdownload4, "true",  sdownload5).

state(co_sound, sdownload5, say).
play_sound_option(co_sound, sdownload5, 2).
next(co_sound, sdownload5, "true", sdownload6).

state(co_sound, sdownload6, question).
stateConfig(co_sound, sdownload6, [type = input, context = "involvement_which_option_or_robot", options = ['eerste', 'tweede', 'hero'], defaultAnswer='eerste']).
text(co_sound, sdownload6, "Wil jij het eerste of tweede geluid, of zal ik kiezen?").
next(co_sound, sdownload6, "success", sdownload7).
next(co_sound, sdownload6, "fail", sdownload7f).

state(co_sound, sdownload7f, say).
text(co_sound,  sdownload7f, "Sorry, ik verstond je niet zo goed. Laten we voor de eerste keuze gaan.").
next(co_sound,  sdownload7f, "true",  sdownload8robot).

state(co_sound, sdownload7, branchingPoint, co_sound_sdownload6).
next(co_sound, sdownload7, "eerste", sdownload8eerste).
next(co_sound, sdownload7, "tweede", sdownload8tweede).
next(co_sound, sdownload7, "hero", sdownload8robot).

state(co_sound, sdownload8eerste, say).
text(co_sound,  sdownload8eerste, "Het eerste, goede keuze.").
save_sound_option(co_sound, sdownload8eerste, 1).

state(co_sound, sdownload8tweede, say).
text(co_sound,  sdownload8tweede, "Het tweede, goede keuze.").
save_sound_option(co_sound, sdownload8tweede, 2).

state(co_sound, sdownload8robot, say).
text(co_sound,  sdownload8robot, "Prima! De eerste vond ik het leukst. Dus die heb ik gekozen.").
save_sound_option(co_sound, sdownload8robot, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Maken						   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_sound, smaken1, say).
text(co_sound,  smaken1, "Als je klaar bent om te beginnen, kun je mijn linker teen indrukken.").
leds(co_sound,  smaken1, direct, ["RightFootLeds"], ["groen"]).
stateConfig(co_sound, smaken1, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_sound,  smaken1, "true",  smaken2).

state(co_sound, smaken2, say).
leds(co_sound,  smaken2, direct, ["RightFootLeds"], ["wit"]).
text(co_sound,  smaken2, "Maak je geluid in 3, 2, 1.").
next(co_sound,  smaken2, "true",  smaken3).

state(co_sound, smaken3, audioInput).
next(co_zoo_lion, smaken3, "true", smaken4).

state(co_sound, smaken4, say).
text(co_sound,  smaken4, "Gaaf zeg! Dat kan ik zo goed gebruiken.").