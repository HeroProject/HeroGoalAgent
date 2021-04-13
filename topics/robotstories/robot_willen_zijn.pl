state(robot_willen_zijn, s1, say).
text(robot_willen_zijn, s1, "Weet je, %first_name% .").
next(robot_willen_zijn, s1, "true", s2).

state(robot_willen_zijn, s2, say).
text(robot_willen_zijn, s2, "Gisteren dacht ik na over dat ik jou vandaag weer zou zien").
next(robot_willen_zijn, s2, "true", s3).

state(robot_willen_zijn, s3, say).
text(robot_willen_zijn, s3, "En dat ik vandaag weer van jou mag leren over mensendingen.").
next(robot_willen_zijn, s3, "true", s4).

state(robot_willen_zijn, s4, say).
text(robot_willen_zijn, s4, "En toen vroeg ik me ineens af:").
next(robot_willen_zijn, s4, "true", s5).

state(robot_willen_zijn, s5, question).
stateConfig(robot_willen_zijn, s5, [type=yesno, context='answer_yesno']).
text(robot_willen_zijn, s5, "Zou jij ook wel eens een robot willen zijn?").
next(robot_willen_zijn, s5, "answer_yes", s6ja1).
next(robot_willen_zijn, s5, "answer_no", s6nee1).
next(robot_willen_zijn, s5, "answer_dontknow", s6nee1).
next(robot_willen_zijn, s5, "fail", s6nee1).

state(robot_willen_zijn, s6ja1, say).
text(robot_willen_zijn, s6ja1, "Bizar!").
next(robot_willen_zijn, s6ja1, "true", s6ja2).

state(robot_willen_zijn, s6ja2, question).
stateConfig(robot_willen_zijn, s6ja2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(robot_willen_zijn, s6ja2, "Waarom zou je een robot willen zijn?").
next(robot_willen_zijn, s6ja2, "success", s6weet_waarom1).
next(robot_willen_zijn, s6ja2, "fail", s6niet_waarom1).

state(robot_willen_zijn, s6niet_waarom1, say).
text(robot_willen_zijn, s6niet_waarom1, "Geeft niks, ik weet het soms zelf ook niet.").

state(robot_willen_zijn, s6weet_waarom1, say).
text(robot_willen_zijn, s6weet_waarom1, "Dat vind ik heel leuk om te horen!").
next(robot_willen_zijn, s6weet_waarom1, "true", s6weet_waarom2).

state(robot_willen_zijn, s6weet_waarom2, question).
stateConfig(robot_willen_zijn, s6weet_waarom2, [type=yesno, context='answer_yesno']).
text(robot_willen_zijn, s6weet_waarom2, "Mag ik dat ook aan andere robots vertellen?").
next(robot_willen_zijn, s6weet_waarom2, "answer_yes", s6vertellen1).
next(robot_willen_zijn, s6weet_waarom2, "answer_no", s6niet_vertellen1).
next(robot_willen_zijn, s6weet_waarom2, "answer_dontknow", s6niet_vertellen1).
next(robot_willen_zijn, s6weet_waarom2, "fail", s6niet_vertellen1).

state(robot_willen_zijn, s6vertellen1, say).
text(robot_willen_zijn, s6vertellen1, "Hoera! Wacht even hoor.").
next(robot_willen_zijn, s6vertellen1, "true", s6vertellen2).

state(robot_willen_zijn, s6vertellen2, say).
audio(robot_willen_zijn, s6vertellen2, server, "resources/sounds/nog_uit_te_zoeken_laadgeluid.wav").
next(robot_willen_zijn, s6vertellen2, "true", s6vertellen3).

state(robot_willen_zijn, s6vertellen3, say).
text(robot_willen_zijn, s6vertellen3, "Ik heb het aan ze doorgegeven via de wifi.").
next(robot_willen_zijn, s6vertellen3, "true", s6vertellen4).

state(robot_willen_zijn, s6vertellen4, say).
text(robot_willen_zijn, s6vertellen4, "En heel veel robots zeggen dankjewel, lieve %first_name% .").

state(robot_willen_zijn, s6niet_vertellen1, say).
text(robot_willen_zijn, s6niet_vertellen1, "Goed, dan bewaar ik je lieve woorden helemaal voor mezelf.").
next(robot_willen_zijn, s6niet_vertellen1, "true", s6niet_vertellen2).

state(robot_willen_zijn, s6niet_vertellen2, say).
text(robot_willen_zijn, s6niet_vertellen2, "Dankjewel, lieve %first_name% .").

state(robot_willen_zijn, s6nee1, say).
text(robot_willen_zijn, s6nee1, "Nou, je weet niet wat je mist hoor!").
next(robot_willen_zijn, s6nee1, "true", s6nee2).

state(robot_willen_zijn, s6nee2, say).
text(robot_willen_zijn, s6nee2, "Maar ik weet natuurlijk ook niet hoe het is om mens te zijn.").
next(robot_willen_zijn, s6nee2, "true", s6nee3).

state(robot_willen_zijn, s6nee3, say).
text(robot_willen_zijn, s6nee3, "Misschien is dat inderdaad wel leuker.").
next(robot_willen_zijn, s6nee3, "true", s6nee4).

state(robot_willen_zijn, s6nee4, say).
text(robot_willen_zijn, s6nee4, "Maar ik denk niet dat ik daar ooit achter kom!").

