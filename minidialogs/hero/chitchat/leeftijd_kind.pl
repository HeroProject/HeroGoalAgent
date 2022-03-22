%%%% HEADER %%%%
%% leeftijd_kind %%
minidialog(leeftijd_kind, [type=chitchat, theme=personalia, topic=leeftijd]).

move(leeftijd_kind, s1, say).
text(leeftijd_kind, s1, "Ik ken nog niet zo veel mensen.").
next(leeftijd_kind, s1, "true", s2).

move(leeftijd_kind, s2, question).
moveConfig(leeftijd_kind, s2, [type=input, context="integer", options=[6, 7, 8, 9, 10, 11, 12], fast=yes, umVariable=leeftijd]).
text(leeftijd_kind, s2, "Hoe oud ben jij?").
next(leeftijd_kind, s2, "success", s3).
next(leeftijd_kind, s2, "fail", s3).

move(leeftijd_kind, s3, say).
text(leeftijd_kind, s3, "%leeftijd%!").
next(leeftijd_kind, s3, "true", s4).

move(leeftijd_kind, s4, say).
text(leeftijd_kind, s4, "Dat is oud").
next(leeftijd_kind, s4, "true", s5).

move(leeftijd_kind, s5, say).
text(leeftijd_kind, s5, "Ik ben voor een robot nog heel jong.").
next(leeftijd_kind, s5, "true", s6).

move(leeftijd_kind, s6, say).
text(leeftijd_kind, s6, "Omgerekend naar mensenjaren ben ik denk ik.").
next(leeftijd_kind, s6, "true", s7).

move(leeftijd_kind, s7, branchingPoint, leeftijd).
next(leeftijd_kind, s7, "4", s831).
next(leeftijd_kind, s7, "5", s841).
next(leeftijd_kind, s7, "6", s851).
next(leeftijd_kind, s7, "7", s861).
next(leeftijd_kind, s7, "8", s871).
next(leeftijd_kind, s7, "9", s87_51).
next(leeftijd_kind, s7, "fail", s87_51).
next(leeftijd_kind, s7, "_others", s87_51).
next(leeftijd_kind, s7, "10", s88_51).
next(leeftijd_kind, s7, "11", s89_51).
next(leeftijd_kind, s7, "12", s8111).
next(leeftijd_kind, s7, "13", s8121).
next(leeftijd_kind, s7, "14", s8131).

move(leeftijd_kind, s831, say).
text(leeftijd_kind, s831, "Drie.").

move(leeftijd_kind, s841, say).
text(leeftijd_kind, s841, "Vier.").

move(leeftijd_kind, s851, say).
text(leeftijd_kind, s851, "Vijf.").

move(leeftijd_kind, s861, say).
text(leeftijd_kind, s861, "Zes.").

move(leeftijd_kind, s871, say).
text(leeftijd_kind, s871, "Zeven.").

move(leeftijd_kind, s87_51, say).
text(leeftijd_kind, s87_51, "Zeven en een half.").

move(leeftijd_kind, s88_51, say).
text(leeftijd_kind, s88_51, "Acht en een half.").

move(leeftijd_kind, s89_51, say).
text(leeftijd_kind, s89_51, "Negen en een half.").

move(leeftijd_kind, s8111, say).
text(leeftijd_kind, s8111, "Elf.").

move(leeftijd_kind, s8121, say).
text(leeftijd_kind, s8121, "Twaalf.").

move(leeftijd_kind, s8131, say).
text(leeftijd_kind, s8131, "Dertien.").

