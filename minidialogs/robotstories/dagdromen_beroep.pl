state(dagdromen_beroep, s1, say).
text(dagdromen_beroep, s1, "Soms kijk ik uit het raam en denk ik helemaal niets.").
next(dagdromen_beroep, s1, "true", s2).

state(dagdromen_beroep, s2, say).
text(dagdromen_beroep, s2, "Soms denk ik wel iets.").
next(dagdromen_beroep, s2, "true", s3).

state(dagdromen_beroep, s3, say).
text(dagdromen_beroep, s3, "Dan denk ik na over kleine dingen.").
next(dagdromen_beroep, s3, "true", s4).

state(dagdromen_beroep, s4, say).
text(dagdromen_beroep, s4, "Soms denk ik na over grote dingen.").
next(dagdromen_beroep, s4, "true", s5).

state(dagdromen_beroep, s5, say).
text(dagdromen_beroep, s5, "Dan denk ik na over de toekomst.").
next(dagdromen_beroep, s5, "true", s6).

state(dagdromen_beroep, s6, say).
text(dagdromen_beroep, s6, "Over wat ik allemaal nog wil doen.").
next(dagdromen_beroep, s6, "true", s7).

state(dagdromen_beroep, s7, say).
text(dagdromen_beroep, s7, "Of wat ik later worden wil.").
next(dagdromen_beroep, s7, "true", s8).

state(dagdromen_beroep, s8, question).
stateConfig(dagdromen_beroep, s8, [type=input, context="answer_beroep", options=['Dokter', 'Politie', 'Influencer', 'Voetballer', 'Leraar', 'Kunstenaar'], umVariable=beroep_van_kind]).
text(dagdromen_beroep, s8, "Wat wil jij later worden?").
next(dagdromen_beroep, s8, "success", s9success1).
next(dagdromen_beroep, s8, "fail", s9fail1).

state(dagdromen_beroep, s9success1, say).
text(dagdromen_beroep, s9success1, "Facinerend!").
next(dagdromen_beroep, s9success1, "true", s9success2).

state(dagdromen_beroep, s9success2, question).
stateConfig(dagdromen_beroep, s9success2, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(dagdromen_beroep, s9success2, "Wat lijkt je zo leuk om %beroep_van_kind% te worden?").

state(dagdromen_beroep, s9fail1, question).
stateConfig(dagdromen_beroep, s9fail1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(dagdromen_beroep, s9fail1, "Dat beroep ken ik niet. Wat moet je dan doen?").
next(dagdromen_beroep, s9fail1, "success", s9fail2).
next(dagdromen_beroep, s9fail1, "fail", s9fail2).

state(dagdromen_beroep, s9fail2, say).
text(dagdromen_beroep, s9fail2, "Facinerend! Fijn dat je me dit hebt kunnen leren, ik sla het meteen op").

