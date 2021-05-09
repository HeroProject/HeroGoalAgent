%%%% HEADER %%%%
%% verblaffen %%
minidialog(verblaffen, [type=chitchat, theme=robospelen_ronde, topic=verblaffen]).
dependencies(verblaffen, [[[robospelen_5_info, user_model, 0], umVariable=leukste_onderdeel, filter=green, values=["verblaffen"]]]).

move(verblaffen, s1, say).
text(verblaffen, s1, "Oké!").
next(verblaffen, s1, "true", s2).

move(verblaffen, s2, say).
text(verblaffen, s2, "Ik tel tot drie en op drie, wil jij dan blaffen?").
next(verblaffen, s2, "true", s3).

move(verblaffen, s3, say).
text(verblaffen, s3, "1, 2, 3").
next(verblaffen, s3, "true", s4).

move(verblaffen, s4, say).
next(verblaffen, s4, "true", s5).

move(verblaffen, s5, say).
text(verblaffen, s5, "Ja, goed!").
next(verblaffen, s5, "true", s6).

move(verblaffen, s6, say).
text(verblaffen, s6, "Zo klonk de robothond:").
next(verblaffen, s6, "true", s7).

move(verblaffen, s7, say).
next(verblaffen, s7, "true", s8).

move(verblaffen, s8, say).
text(verblaffen, s8, "Bizar!").
next(verblaffen, s8, "true", s9).

move(verblaffen, s9, say).
text(verblaffen, s9, "Toch?").
next(verblaffen, s9, "true", s10).

move(verblaffen, s10, question).
moveConfig(verblaffen, s10, [type=yesno, context='answer_yesno', umVariable=opnieuw_blaffen]).
text(verblaffen, s10, "Of wil je het opnieuw proberen?").
next(verblaffen, s10, "answer_yes", s11opnieuw1).
next(verblaffen, s10, "fail", s11opnieuw1).
next(verblaffen, s10, "answer_no", s11niet_opnieuw1).
next(verblaffen, s10, "answer_dontknow", s11niet_opnieuw1).

move(verblaffen, s11opnieuw1, say).
text(verblaffen, s11opnieuw1, "Oké, nog één keer.").
next(verblaffen, s11opnieuw1, "true", s11opnieuw2).

move(verblaffen, s11opnieuw2, say).
text(verblaffen, s11opnieuw2, "Ik tel tot drie").
next(verblaffen, s11opnieuw2, "true", s11opnieuw3).

move(verblaffen, s11opnieuw3, say).
text(verblaffen, s11opnieuw3, "en dan maak jij het geluid van een robothondje.").
next(verblaffen, s11opnieuw3, "true", s11opnieuw4).

move(verblaffen, s11opnieuw4, say).
text(verblaffen, s11opnieuw4, "1, 2, 3!").
next(verblaffen, s11opnieuw4, "true", s11opnieuw5).

move(verblaffen, s11opnieuw5, say).
next(verblaffen, s11opnieuw5, "true", s11opnieuw6).

move(verblaffen, s11opnieuw6, say).
text(verblaffen, s11opnieuw6, "Ik denk dat het nu helemaal goed is.").
next(verblaffen, s11opnieuw6, "true", s12).

move(verblaffen, s11niet_opnieuw1, say).
text(verblaffen, s11niet_opnieuw1, "Nee, je hebt gelijk!").
next(verblaffen, s11niet_opnieuw1, "true", s11niet_opnieuw2).

move(verblaffen, s11niet_opnieuw2, say).
text(verblaffen, s11niet_opnieuw2, "Het klonk meteen de eerste keer al heel goed.").
next(verblaffen, s11niet_opnieuw2, "true", s12).

move(verblaffen, s12, say).
text(verblaffen, s12, "Even luisteren.").
next(verblaffen, s12, "true", s13).

move(verblaffen, s13, say).
next(verblaffen, s13, "true", s14).

move(verblaffen, s14, say).
text(verblaffen, s14, "Ja!").
next(verblaffen, s14, "true", s15).

move(verblaffen, s15, say).
text(verblaffen, s15, "Wauw, je klinkt precies als een hond!").
next(verblaffen, s15, "true", s16).

move(verblaffen, s16, say).
text(verblaffen, s16, "Als ik dit geluid op de Robospelen afspeel").
next(verblaffen, s16, "true", s17).

move(verblaffen, s17, say).
text(verblaffen, s17, "heeeeel hard").
next(verblaffen, s17, "true", s18).

move(verblaffen, s18, say).
text(verblaffen, s18, "dan komt het geluid misschien het verst van alle verblaffers!").
next(verblaffen, s18, "true", s19).

move(verblaffen, s19, say).
text(verblaffen, s19, "Dankjewel %first_name% !").

