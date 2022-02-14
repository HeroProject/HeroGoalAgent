%%%% HEADER %%%%
%% luister_naar_droom_blaf %%
minidialog(luister_naar_droom_blaf, [type=chitchat, theme=help, topic=droom_blaf]).

move(luister_naar_droom_blaf, s1, say).
text(luister_naar_droom_blaf, s1, "Even luisteren.").
next(luister_naar_droom_blaf, s1, "true", s2).

move(luister_naar_droom_blaf, s2, say).
audio(luister_naar_droom_blaf, s2, id, hondenblaf).
next(luister_naar_droom_blaf, s2, "true", s3).

move(luister_naar_droom_blaf, s3, say).
text(luister_naar_droom_blaf, s3, "Ja! Bizar.").
next(luister_naar_droom_blaf, s3, "true", s4).

move(luister_naar_droom_blaf, s4, say).
text(luister_naar_droom_blaf, s4, "Een echte hond.").
next(luister_naar_droom_blaf, s4, "true", s5).

move(luister_naar_droom_blaf, s5, say).
text(luister_naar_droom_blaf, s5, "Zo leerde je mij ook blaffen in de droom.").
next(luister_naar_droom_blaf, s5, "true", s6).

move(luister_naar_droom_blaf, s6, say).
text(luister_naar_droom_blaf, s6, "En zitten.").
next(luister_naar_droom_blaf, s6, "true", s7).

move(luister_naar_droom_blaf, s7, say).
text(luister_naar_droom_blaf, s7, "Je zei zit en toen deed ik.").
next(luister_naar_droom_blaf, s7, "true", s8).

move(luister_naar_droom_blaf, s8, say).
rest(luister_naar_droom_blaf, s8).
next(luister_naar_droom_blaf, s8, "true", s9).

move(luister_naar_droom_blaf, s9, say).
text(luister_naar_droom_blaf, s9, "En staan.").
next(luister_naar_droom_blaf, s9, "true", s10).

move(luister_naar_droom_blaf, s10, say).
text(luister_naar_droom_blaf, s10, "Doe maar mee als je wilt.").
next(luister_naar_droom_blaf, s10, "true", s11).

move(luister_naar_droom_blaf, s11, say).
wakeup(luister_naar_droom_blaf, s11).
next(luister_naar_droom_blaf, s11, "true", s12).

move(luister_naar_droom_blaf, s12, say).
text(luister_naar_droom_blaf, s12, "En zitten.").
next(luister_naar_droom_blaf, s12, "true", s13).

move(luister_naar_droom_blaf, s13, say).
rest(luister_naar_droom_blaf, s13).
next(luister_naar_droom_blaf, s13, "true", s14).

move(luister_naar_droom_blaf, s14, say).
text(luister_naar_droom_blaf, s14, "En staan.").
next(luister_naar_droom_blaf, s14, "true", s15).

move(luister_naar_droom_blaf, s15, say).
wakeup(luister_naar_droom_blaf, s15).
next(luister_naar_droom_blaf, s15, "true", s16).

move(luister_naar_droom_blaf, s16, say).
text(luister_naar_droom_blaf, s16, "Zo, ga jij nu maar weer zitten").
next(luister_naar_droom_blaf, s16, "true", s17).

move(luister_naar_droom_blaf, s17, say).
text(luister_naar_droom_blaf, s17, "dan blijf ik nog even staan.").
next(luister_naar_droom_blaf, s17, "true", s18).

move(luister_naar_droom_blaf, s18, say).
text(luister_naar_droom_blaf, s18, "Het is net een oefening voor de Robospelen op deze manier.").
next(luister_naar_droom_blaf, s18, "true", s19).

move(luister_naar_droom_blaf, s19, say).
text(luister_naar_droom_blaf, s19, "Ik droomde trouwens ook dat ik een hond was").
next(luister_naar_droom_blaf, s19, "true", s20).

move(luister_naar_droom_blaf, s20, say).
text(luister_naar_droom_blaf, s20, "Die kon %vlieg_zwem_race%").
next(luister_naar_droom_blaf, s20, "true", s21).

move(luister_naar_droom_blaf, s21, say).
text(luister_naar_droom_blaf, s21, "precies zoals we samen hebben bedacht.").
next(luister_naar_droom_blaf, s21, "true", s22).

move(luister_naar_droom_blaf, s22, say).
text(luister_naar_droom_blaf, s22, "Weet je nog?").
next(luister_naar_droom_blaf, s22, "true", s23).

move(luister_naar_droom_blaf, s23, say).
text(luister_naar_droom_blaf, s23, "Was alles maar zo gemakkelijk en leuk als in een droom.").

