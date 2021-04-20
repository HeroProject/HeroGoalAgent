move(doei_slaaphouding, s1, say).
text(doei_slaaphouding, s1, "Ik moet weer gaan!").
next(doei_slaaphouding, s1, "true", s2).

move(doei_slaaphouding, s2, say).
text(doei_slaaphouding, s2, "Dag lieve %first_name%  tot de volgende keer!").
next(doei_slaaphouding, s2, "true", s3).

move(doei_slaaphouding, s3, say).
text(doei_slaaphouding, s3, "Slaap lekker op je %slaaphouding_kind%").

