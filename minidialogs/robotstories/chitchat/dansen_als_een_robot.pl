%%%% HEADER %%%%
%% dansen_als_een_robot %%
minidialog(dansen_als_een_robot, [type=chitchat, theme=robospelen_ronde, topic=dansen]).
dependencies(dansen_als_een_robot, [[[robospelen_6_info, user_model, 0], umVariable=leukste_onderdeel, filter=green, values=["dansen"]]]).

move(dansen_als_een_robot, s1, say).
text(dansen_als_een_robot, s1, "Als je wil dansen als een Robot").
next(dansen_als_een_robot, s1, "true", s2).

move(dansen_als_een_robot, s2, say).
text(dansen_als_een_robot, s2, "Dans dan maar met mij mee.").
next(dansen_als_een_robot, s2, "true", s3).

move(dansen_als_een_robot, s3, say).
text(dansen_als_een_robot, s3, "Bovendien: dansen helpt tegen de zenuwen en de kou").
next(dansen_als_een_robot, s3, "true", s4).

move(dansen_als_een_robot, s4, say).
text(dansen_als_een_robot, s4, "Dans je mee?").
next(dansen_als_een_robot, s4, "true", s5).

move(dansen_als_een_robot, s5, say).
next(dansen_als_een_robot, s5, "true", s6).

move(dansen_als_een_robot, s6, say).
text(dansen_als_een_robot, s6, "Goed gedaan!").

