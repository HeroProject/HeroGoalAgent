%%%% HEADER %%%%
%% luister_naar_blaf %%
minidialog(luister_naar_blaf, [type=chitchat, theme=help, topic=verblaffen]).

move(luister_naar_blaf, s1, say).
text(luister_naar_blaf, s1, "Ja, goed!").
next(luister_naar_blaf, s1, "true", s2).

move(luister_naar_blaf, s2, say).
text(luister_naar_blaf, s2, "Bizar!").
next(luister_naar_blaf, s2, "true", s3).

move(luister_naar_blaf, s3, say).
text(luister_naar_blaf, s3, "Toch?").
next(luister_naar_blaf, s3, "true", s4).

move(luister_naar_blaf, s4, say).
text(luister_naar_blaf, s4, "Even luisteren.").
next(luister_naar_blaf, s4, "true", s5).

move(luister_naar_blaf, s5, say).
audio(luister_naar_blaf, s5, id, hondenblaf).
next(luister_naar_blaf, s5, "true", s6).

move(luister_naar_blaf, s6, say).
text(luister_naar_blaf, s6, "Ja!").
next(luister_naar_blaf, s6, "true", s7).

move(luister_naar_blaf, s7, say).
text(luister_naar_blaf, s7, "Wauw, klinkt precies als een hond!").
next(luister_naar_blaf, s7, "true", s8).

move(luister_naar_blaf, s8, say).
text(luister_naar_blaf, s8, "Als ik dit geluid op de robo spelen afspeel").
next(luister_naar_blaf, s8, "true", s9).

move(luister_naar_blaf, s9, say).
text(luister_naar_blaf, s9, "heeeeel hard").
next(luister_naar_blaf, s9, "true", s10).

move(luister_naar_blaf, s10, say).
text(luister_naar_blaf, s10, "dan komt het geluid misschien het verst van alle ver blaffers!").
next(luister_naar_blaf, s10, "true", s11).

move(luister_naar_blaf, s11, say).
text(luister_naar_blaf, s11, "Dankjewel %first_name% !").

