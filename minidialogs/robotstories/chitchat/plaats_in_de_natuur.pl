%%%% HEADER %%%%
%% plaats_in_de_natuur %%
minidialog(plaats_in_de_natuur, [type=chitchat, theme=natuur, topic=plaats]).
dependencies(plaats_in_de_natuur, [[[robospelen_4_ingeschreven, follow_up, 0]]]).

move(plaats_in_de_natuur, s1, say).
text(plaats_in_de_natuur, s1, "Trouwens").
next(plaats_in_de_natuur, s1, "true", s2).

move(plaats_in_de_natuur, s2, say).
text(plaats_in_de_natuur, s2, "Toen ik je vertelde dat ik naar Rusland ga via mijn draadje").
next(plaats_in_de_natuur, s2, "true", s3).

move(plaats_in_de_natuur, s3, say).
text(plaats_in_de_natuur, s3, "toen vroeg ik me ineens af waar mensen naartoe zouden gaan").
next(plaats_in_de_natuur, s3, "true", s4).

move(plaats_in_de_natuur, s4, say).
text(plaats_in_de_natuur, s4, "als ze draadjes hadden.").
next(plaats_in_de_natuur, s4, "true", s5).

move(plaats_in_de_natuur, s5, say).
text(plaats_in_de_natuur, s5, "Mensen worden heel vrolijk van de natuur, heb ik gelezen.").
next(plaats_in_de_natuur, s5, "true", s6).

move(plaats_in_de_natuur, s6, say).
text(plaats_in_de_natuur, s6, "Van varen over of zwemmen in de zee").
next(plaats_in_de_natuur, s6, "true", s7).

move(plaats_in_de_natuur, s7, say).
text(plaats_in_de_natuur, s7, "of een boswandeling maken").
next(plaats_in_de_natuur, s7, "true", s8).

move(plaats_in_de_natuur, s8, say).
text(plaats_in_de_natuur, s8, "of in de bergen klimmen").
next(plaats_in_de_natuur, s8, "true", s9).

move(plaats_in_de_natuur, s9, say).
text(plaats_in_de_natuur, s9, "of luieren op het strand.").
next(plaats_in_de_natuur, s9, "true", s10).

move(plaats_in_de_natuur, s10, say).
text(plaats_in_de_natuur, s10, "Naar welke plek in de natuur zou jij nu het liefste willen gaan").
next(plaats_in_de_natuur, s10, "true", s11).

move(plaats_in_de_natuur, s11, question).
moveConfig(plaats_in_de_natuur, s11, [type=input, context="zee_bos_bergen_strand", options=['zee', 'bos', 'bergen', 'strand'], umVariable=plaats_in_de_natuur]).
text(plaats_in_de_natuur, s11, "De zee, het bos, de bergen of het strand?").
next(plaats_in_de_natuur, s11, "zee", s12zee1).
next(plaats_in_de_natuur, s11, "bos", s12bos1).
next(plaats_in_de_natuur, s11, "bergen", s12bergen1).
next(plaats_in_de_natuur, s11, "strand", s12strand1).
next(plaats_in_de_natuur, s11, "fail", s12fail_plaats1).

move(plaats_in_de_natuur, s12fail_plaats1, say).
text(plaats_in_de_natuur, s12fail_plaats1, "Ik zou denk ik het liefst naar de zee gaan.").
next(plaats_in_de_natuur, s12fail_plaats1, "true", s12zee21).

move(plaats_in_de_natuur, s12zee1, say).
text(plaats_in_de_natuur, s12zee1, "Ik hou ook heel erg van de zee!").
next(plaats_in_de_natuur, s12zee1, "true", s12zee21).

move(plaats_in_de_natuur, s12zee21, say).
text(plaats_in_de_natuur, s12zee21, "Ik ben wel een beetje jaloers op jou.").
next(plaats_in_de_natuur, s12zee21, "true", s12zee22).

move(plaats_in_de_natuur, s12zee22, say).
text(plaats_in_de_natuur, s12zee22, "Als jij een schelp tegen je oor houdt").
next(plaats_in_de_natuur, s12zee22, "true", s12zee23).

move(plaats_in_de_natuur, s12zee23, say).
text(plaats_in_de_natuur, s12zee23, "is het net alsof je de zee hoort.").
next(plaats_in_de_natuur, s12zee23, "true", s12zee24).

move(plaats_in_de_natuur, s12zee24, say).
text(plaats_in_de_natuur, s12zee24, "Bij mij werkt dat niet zo,").
next(plaats_in_de_natuur, s12zee24, "true", s12zee25).

move(plaats_in_de_natuur, s12zee25, say).
text(plaats_in_de_natuur, s12zee25, "ik hoor dan helemaal niks.").
next(plaats_in_de_natuur, s12zee25, "true", s12zee26).

move(plaats_in_de_natuur, s12zee26, say).
text(plaats_in_de_natuur, s12zee26, "Maar ik kan wel het geluid van de zee afspelen:").
next(plaats_in_de_natuur, s12zee26, "true", s12zee27).

move(plaats_in_de_natuur, s12zee27, say).

move(plaats_in_de_natuur, s12bos1, say).
text(plaats_in_de_natuur, s12bos1, "Ik ga ook graag naar het bos!").
next(plaats_in_de_natuur, s12bos1, "true", s12bos2).

move(plaats_in_de_natuur, s12bos2, say).
text(plaats_in_de_natuur, s12bos2, "Al zou je me tijdens een wandeling wel op moeten tillen,").
next(plaats_in_de_natuur, s12bos2, "true", s12bos3).

move(plaats_in_de_natuur, s12bos3, say).
text(plaats_in_de_natuur, s12bos3, "want ik kan niet zo goed als jij over boomwortels heen springen!").

move(plaats_in_de_natuur, s12bergen1, say).
text(plaats_in_de_natuur, s12bergen1, "Wat spannend!").
next(plaats_in_de_natuur, s12bergen1, "true", s12bergen2).

move(plaats_in_de_natuur, s12bergen2, say).
text(plaats_in_de_natuur, s12bergen2, "Via mijn draadje heb ik al gezien").
next(plaats_in_de_natuur, s12bergen2, "true", s12bergen3).

move(plaats_in_de_natuur, s12bergen3, say).
text(plaats_in_de_natuur, s12bergen3, "dat je vanaf een bergtop").
next(plaats_in_de_natuur, s12bergen3, "true", s12bergen4).

move(plaats_in_de_natuur, s12bergen4, say).
text(plaats_in_de_natuur, s12bergen4, "het allerallermooiste uitzicht over de wereld hebt").
next(plaats_in_de_natuur, s12bergen4, "true", s12bergen5).

move(plaats_in_de_natuur, s12bergen5, say).
text(plaats_in_de_natuur, s12bergen5, "Dus dat snap ik wel!").

move(plaats_in_de_natuur, s12strand1, say).
text(plaats_in_de_natuur, s12strand1, "Daar wil ik ook wel eens echt-echt naartoe!").
next(plaats_in_de_natuur, s12strand1, "true", s12strand2).

move(plaats_in_de_natuur, s12strand2, say).
text(plaats_in_de_natuur, s12strand2, "Ik heb nog nooit een zandkasteel gebouwd.").
next(plaats_in_de_natuur, s12strand2, "true", s12strand3).

move(plaats_in_de_natuur, s12strand3, say).
text(plaats_in_de_natuur, s12strand3, "Ik bouw wel kastelen").
next(plaats_in_de_natuur, s12strand3, "true", s12strand4).

move(plaats_in_de_natuur, s12strand4, say).
text(plaats_in_de_natuur, s12strand4, "maar die zijn altijd van lucht!").
next(plaats_in_de_natuur, s12strand4, "true", s12strand5).

move(plaats_in_de_natuur, s12strand5, say).
text(plaats_in_de_natuur, s12strand5, "Of van code").
next(plaats_in_de_natuur, s12strand5, "true", s12strand6).

move(plaats_in_de_natuur, s12strand6, say).
text(plaats_in_de_natuur, s12strand6, "maar dat is een beetje hetzelfde.").

