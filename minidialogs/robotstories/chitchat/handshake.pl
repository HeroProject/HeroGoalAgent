%%%% HEADER %%%%
%% handshaken %%
minidialog(handshaken, [type=chitchat, theme=robospelen_ronde, topic=handshake]).
dependencies(handshaken, [[[robospelen_6_info, user_model, 0], umVariable=leukste_onderdeel, filter=green, values=["handshaken"]]]).

move(handshaken, s1, say).
text(handshaken, s1, "Handshaken.").
next(handshaken, s1, "true", s2).

move(handshaken, s2, say).
text(handshaken, s2, "Dat is Engels voor handen schudden.").
next(handshaken, s2, "true", s3).

move(handshaken, s3, say).
text(handshaken, s3, "Ik heb gezien dat volwassenen elkaar soms hun hand geven.").
next(handshaken, s3, "true", s4).

move(handshaken, s4, question).
moveConfig(handshaken, s4, [type=yesno, context='answer_yesno', umVariable=geef_jij_hand]).
text(handshaken, s4, "Doe jij dat ook, als je een nieuw iemand ontmoet?").
next(handshaken, s4, "answer_yes", s5ja_hand1).
next(handshaken, s4, "answer_no", s5nee_hand1).
next(handshaken, s4, "fail", s5fail_hand1).
next(handshaken, s4, "answer_dontknow", s5fail_hand1).

move(handshaken, s5ja_hand1, say).
text(handshaken, s5ja_hand1, "Dat wil ik eigenlijk wel eens proberen.").
next(handshaken, s5ja_hand1, "true", s5ja_hand2).

move(handshaken, s5ja_hand2, say).
next(handshaken, s5ja_hand2, "true", s6).

move(handshaken, s5fail_hand1, say).
text(handshaken, s5fail_hand1, "Durf je mij een hand te geven?").
next(handshaken, s5fail_hand1, "true", s5fail_hand2).

move(handshaken, s5fail_hand2, say).
next(handshaken, s5fail_hand2, "true", s6).

move(handshaken, s5nee_hand1, question).
moveConfig(handshaken, s5nee_hand1, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(handshaken, s5nee_hand1, "Wat doe je dan?").
next(handshaken, s5nee_hand1, "success", s6).
next(handshaken, s5nee_hand1, "fail", s6).

move(handshaken, s6, say).
text(handshaken, s6, "Misschien is een hand geven een beetje te suf voor de Robospelen.").
next(handshaken, s6, "true", s7).

move(handshaken, s7, say).
text(handshaken, s7, "Misschien moeten wij het anders aanpakken.").
next(handshaken, s7, "true", s8).

move(handshaken, s8, say).
text(handshaken, s8, "Misschien moeten wij een geheime handshake uitvoeren.").
next(handshaken, s8, "true", s9).

move(handshaken, s9, say).
text(handshaken, s9, "Eentje die alleen wij uit ons hoofd kennen.").
next(handshaken, s9, "true", s10).

move(handshaken, s10, say).
next(handshaken, s10, "true", s11).

move(handshaken, s11, say).
text(handshaken, s11, "Precies.").
next(handshaken, s11, "true", s12).

move(handshaken, s12, say).
text(handshaken, s12, "Super bizar cool!").
next(handshaken, s12, "true", s13).

move(handshaken, s13, say).
text(handshaken, s13, "Weet je wat?").
next(handshaken, s13, "true", s14).

move(handshaken, s14, say).
text(handshaken, s14, "Ik heb nog nooit zo'n vette handshake gedaan.").
next(handshaken, s14, "true", s15).

move(handshaken, s15, say).
text(handshaken, s15, "Deze ga ik gebruiken tijdens de Robospelen!").
next(handshaken, s15, "true", s16).

move(handshaken, s16, say).
text(handshaken, s16, "Dan kom ik zeker naar de volgende ronde.").

