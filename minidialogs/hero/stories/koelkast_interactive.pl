move(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
leds(story, s1, "white").
next(story, s1, "true", s2).

move(story, s2, say).
text(story, s2, "Graag vertel ik jou een verhaal van de tijd toen ik een koelkast was.").
next(story, s2, "true", s3).

move(story, s3, say).
text(story, s3, "Ik had toen zoveel vriendjes.").
next(story, s3, "true", s4).

move(story, s4, say).
text(story, s4, "Pak Melk is een goede vriend van me, en met mevrouw Kaas heb ik vroeger nog veel tennis gespeeld.").
next(story, s4, "true", s5).

move(story, s5, say).
text(story, s5, "Oh, mevrouw Kaas \pau=500\ ").
next(story, s5, "true", s6).

move(story, s6, say).
text(story, s6, "Maar goed.").
next(story, s6, "true", s7).

move(story, s7, say).
text(story, s7, "Bij mij in de koelkast was het altijd donker, en was het altijd feest.").
next(story, s7, "true", s8).

move(story, s8, say).
text(story, s8, "Iedereen kwam graag op het feest. De groentes, alle sausjes en het fruit.").
next(story, s8, "true", s9).

move(story, s9, question).
moveConfig(story, s9, [type = mc, response = speech, context = "answer_fruit", key = "fruit"]).
text(story, s9, "Wat is jouw favoriete fruit?").
next(story, s9, "answer_fruit", s10).
next(story, s9, "fail", s9f).

move(story, s9f, question).
moveConfig(story, s9f, [type = mc, response = touch, options = ["appel", "aardbei", "banaan","kers","kiwi"], context = "answer_fruit", key = "fruit", defaultAnswer="appel"]).
text(story, s9f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wat is jouw favoriete fruit?").
next(story, s9f, "answer_fruit", s10).
next(story, s9f, "fail", s10f).

move(story, s10f, say).
text(story, s10f, "Oke. Mijn favorite fruit is %fruit%.").
next(story, s10f, "true", s10).

move(story, s10, say).
text(story, s10, "Dat is grappig, %fruit% is bij mij beter bekend als deejay.").
next(story, s10, "true", s11).

move(story, s11, say).
text(story, s11, "Deejay %fruit% draaide de lekkerste plaatjes met de lekkerste bietjes.").
next(story, s11, "true", s11a).

move(story, s11a, say).
text(story, s11a, "Zullen we samen dansen op de muziek van Deejay %fruit%? Doe mij maar na.").
next(story, s11a, "true", s11b).

move(story, s11b, say).
anim(story, s11b, "disco/behavior_1").
leds(story, s11b, "magenta").
next(story, s11b, "true", s12).

move(story, s12, say).
text(story, s12, "Leuk! Pak Melk en Sinaasappelsap waren de hele tijd aan het breek dansen - het was altijd feest.").
leds(story, s12, "white").
next(story, s12, "true", s13).

move(story, s13, question).
moveConfig(story, s13, [type = mc, response = speech, context = "answer_saus", key = "saus"]).
text(story, s13, "Welke saus was er ook bij denk je?").
next(story, s13, "answer_saus", s14).
next(story, s13, "fail", s13f).

move(story, s13f, question).
moveConfig(story, s13f, [type = mc, response = touch, options = ["ketchup", "mayonaise", "curry", "joppie", "pindasaus"], context = "answer_saus", key = "saus", defaultAnswer="ketchup"]).
text(story, s13f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Welke saus was er ook bij denk je?").
next(story, s13f, "answer_saus", s14).
next(story, s13f, "fail", s14f).

move(story, s14f, say).
text(story, s14f, "Wist je dat %saus% er ook altijd bij was?").
next(story, s14f, "true", s17).

move(story, s14, say).
text(story, s14, "Ja, %saus% was er ook altijd!").
next(story, s14, "true", s17).

move(story, s17, say).
text(story, s17, "voor iedereen was er een plekje.").
next(story, s17, "true", s18).

move(story, s18, question).
moveConfig(story, s18, [type = mc, response = speech, context = "answer_koelkast_branch_1", key = "koelkast_keuze_1"]).
text(story, s18, "Wat zouden wij op dat feestje hebben gedaan denk je? Dansen, zingen, of muziek maken?").
next(story, s18, "answer_koelkast_dansen", s19a).
next(story, s18, "answer_koelkast_zingen", s19b).
next(story, s18, "answer_koelkast_muziek", s19c).
next(story, s18, "fail", s18f).

move(story, s18f, question).
moveConfig(story, s18f, [type = mc, response = touch, options = ["dansen","zingen","muziek maken"], branching = yes,context = "answer_koelkast_branch_1", key = "koelkast_keuze_1", defaultAnswer="dansen"]).
text(story, s18f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wat zouden wij op dat feestje hebben gedaan denk je?").
next(story, s18f, "dansen", s19a).
next(story, s18f, "zingen", s19b).
next(story, s18f, "muziek maken", s19c).
next(story, s18f, "fail", s19f).

move(story, s19a, say).
text(story, s19a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").
next(story, s19a, "true", s20).

move(story, s19b, say).
text(story, s19b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").
next(story, s19b, "true", s20).

move(story, s19c, say).
text(story, s19c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakte muziek de hele dag en de hele nacht, en altijd in het donker.").
next(story, s19c, "true", s20).

move(story, s19f, say).
text(story, s19f, "In de koelkast dansen, zongen, en maakten muziek de hele dag en de hele nacht, en altijd in het donker.").
next(story, s19f, "true", s20).

move(story, s20, say).
text(story, s20, "Tot opeens het licht aan ging. We wisten allemaal wat dit betekende: mijn koelkastdeur was opengegaan.").
next(story, s20, "true", s20a).

move(story, s20a, say).
text(story, s20a, "Kun jij voor mij een schrik geluid maken? In 3, 2, 1, start.").
next(story, s20a, "true", s20b).

move(story, s20b, audioInput).
moveConfig(story, s20b, [recordTime=3000]).
next(story, s20b, "true", s21).

move(story, s21, say).
text(story, s21, "deejay %fruit% had net op tijd zijn slamix weggedraaid, en alle producten schrokken en bleven als bevroren op de dansvloer staan."). %licht aan
next(story, s21, "true", s21a).

move(story, s21a, say).
audio(story, s21a, recorded, s20b).
next(story, s21a, "true", s22).

move(story, s22, say).
text(story, s22, "Opeens kwam een grote, vlezige mensenhand in beeld.").
next(story, s22, "true", s23).

move(story, s23, say).
text(story, s23, "De dikkige hand zweefde even voor het groepje eieren, en sloeg toen toe: %saus% werd gegrepen!").
next(story, s23, "true", s24).

move(story, s24, say).
text(story, s24, "Hij moest mee, mijn koelkast uit.").
next(story, s24, "true", s25).

move(story, s25, say).
text(story, s25, "De deur sloeg met een klap dicht.").
next(story, s25, "true", s26).

move(story, s26, say).
text(story, s26, "Het licht ging weer uit, maar de muziek ging niet meer aan.").
next(story, s26, "true", s27).

move(story, s27, say).
text(story, s27, "Niemand wilde nog dansen.").
next(story, s27, "true", s28).

move(story, s28, say).
text(story, s28, "Ik hoorde dat Mevrouw Kaas iets fluisteren tegen familie limoen, waarop het kleinste limoentje een beetje moest huilen.").
next(story, s28, "true", s29).

move(story, s29, say).
text(story, s29, "Het was zo verdrietig!").
next(story, s29, "true", s30).

move(story, s30, question).
moveConfig(story, s30, [type = mc, response = speech, altEnding=yes, context = "answer_koelkast_alt_ending", key = "koelkast_alt_ending"]).
text(story, s30, "Wie miste %saus% het meeste volgens jou? Was dat chocolaatje of mevrouw Melk?").
next(story, s30, "true", s31).
next(story, s30, "fail", s30f).

move(story, s30f, question).
moveConfig(story, s30f, [type = mc, response = touch, options = ["chocolaatje","mevrouw Melk"], altEnding = yes, context = "answer_koelkast_alt_ending", key = "koelkast_alt_ending", defaulAnswer="chocolaatje"]).
text(story, s30f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Wie miste %saus% het meeste volgens jou?").
next(story, s30f, "true", s31).
next(story, s30f, "fail", s31).

move(story, s31, say).
text(story, s31, "Dankje. We gaan straks zien of jij gelijk hebt.").
next(story, s31, "true", s31b).

move(story, s31b, say).
text(story, s31b, "En weet je wat ik stiekem nog het ergste vond: ik deed niks.").
next(story, s31b, "true", s32).

move(story, s32, say).
text(story, s32, "Ik had eigenlijk mijn koelkast dicht moeten houden, zodat er geen hand naar binnen kon.").
next(story, s32, "true", s33).

move(story, s33, say).
text(story, s33, "Maar dat bedacht ik dus te laat.").
next(story, s33, "true", s37).

move(story, s37, say).
text(story, s37, "En ook alle feestbeesten gingen weg. Het feestje was echt voorbij.").
next(story, s37, "true", s38).

move(story, s38, say).
text(story, s38, "Wat nu?").
next(story, s38, "true", s39).

move(story, s39, question).
moveConfig(story, s39, [type = mc, response = speech, context = "answer_koelkast_branch_2", key = "koelkast_keuze_2"]).
text(story, s39, "Zou jij de deur openen of wachten?").
next(story, s39, "answer_koelkast_deur_openen", s40a).
next(story, s39, "answer_koelkast_afwachten", s40b).
next(story, s39, "fail", s39f).

move(story, s39f, question).
moveConfig(story, s39f, [type = mc, response = touch, options = ["deur openen","afwachten"], branching = yes, context = "answer_koelkast_branch_2", key = "koelkast_keuze_2", defaultAnswer="afwachten"]).
text(story, s39f, "Sorry ik verstond je niet. Kun je daarom via de knop op mijn teen antwoord geven. Zou jij de deur openen of wachten?").
next(story, s39f, "deur openen", s40a).
next(story, s39f, "afwachten", s40b).
next(story, s39f, "fail", s40f).

move(story, s40a, say).
text(story, s40a, "Op jouw advies gooide ik de deur open. Daar zagen we de enge hand, hij had %saus% vast!").
next(story, s40a, "true", s41).

move(story, s40b, say).
text(story, s40b, "Op jouw advies besloten we te wachten. En toen ging opeens het licht weer aan! De enge hand verscheen opnieuw, hij had %saus% vast!").
next(story, s40b, "true", s41).

move(story, s40f, say).
text(story, s40f, "Ik besloot toch te wachten. En toen ging opeens het licht weer aan! De enge hand verscheen opnieuw, hij had %saus% vast!").
next(story, s40f, "true", s41).

move(story, s41, say).
text(story, s41, "Iedereen wilde roepen en schreeuwen, maar de hand was er nog dus niemand durfde.").
next(story, s41, "true", s41a).

move(story, s41a, say).
text(story, s41a, "Kun jij voor mij het geluid van een dichtslaande deur maken? In 3, 2, 1, start.").
next(story, s41a, "true", s41b).

move(story, s41b, audioInput).
moveConfig(story, s41b, [recordTime=3000]).
next(story, s41b, "true", s42).

move(story, s42, say).
text(story, s42, "Hij zette %saus% op de plank en deed de deur dicht."). % licht aan.
next(story, s42, "true", s42a).

move(story, s42a, say).
audio(story, s42a, recorded, s41b).
next(story, s42a, "true", s43).

move(story, s43, say).
text(story, s43, "Maar goed dat je me hebt geholpen in de goeie keuze te maken, we hebben %saus% weer terug gekregen.").
next(story, s43, "true", s44).

move(story, s44, say).
text(story, s44, "Het was even stil, en toen ging iedereen tegelijk door elkaar heen vragen stellen: hoe was het daarbuiten?").
next(story, s44, "true", s45).

move(story, s45, say).
text(story, s45, "Was het eng?").
next(story, s45, "true", s46).

move(story, s46, say).
text(story, s46, "Was de mens vriendelijk?").
next(story, s46, "true", s49).

move(story, s49, say).
text(story, s49, "Niet allemaal tegelijk riep %saus%.").
next(story, s49, "true", s50).

move(story, s50, say).
text(story, s50, "Hij liep naar het midden van de koelkast en ging in een stoere pose staan.").
next(story, s50, "true", s50a).

move(story, s50a, say).
text(story, s50a, "Kom laten wij ook in een stoere pose gaan staan.").
next(story, s50a, "true", s50b).

move(story, s50b, say).
text(story, s50b, "Doe mij maar na.").
anim(story, s50b, "bravepose/behavior_1").
next(story, s50b, "true", s51).

move(story, s51, say).
text(story, s51, "Top, laten we weer gaan zitten. %saus% zei: mensen zien er raar uit.").
next(story, s51, "true", s52).

move(story, s52, say).
text(story, s52, "Ze hebben helemaal geen draaidopje en zitten niet met zijn allen in een bakje, en ze hebben al helemaal geen leuke feestjes.").
next(story, s52, "true", s53).

move(story, s53, say).
text(story, s53, "Eigenlijk was het best wel saai, zei %saus% stoer.").
next(story, s53, "true", s54).

move(story, s54, say).
text(story, s54, "Om te vieren dat %saus% terug was gingen we weer een feestje bouwen.").
next(story, s54, "true", s57).

move(story, s57, say).
moveConfig(story, s57, [selectEnding = yes, key = "koelkast_alt_ending"]).
next(story, s57, "chocolaatje", s58a).
next(story, s57, "melk", s58b).
next(story, s57, "fail", s58f).

move(story, s58a, say).
text(story, s58a, "Je had inderdaad gelijk dat Chocolaatje %saus% het meest miste. Ze viel hem direct in de armen").

move(story, s58b, say).
text(story, s58b, "Je had inderdaad gelijk dat mevrouw Melk %saus% het meest miste. Ze viel hem direct in de armen").

move(story, s58f, say).
text(story, s58f, "Het was Chocolaatje die %saus% het meest miste. Ze viel hem direct in de armen.").

%%%% THE END %%%%%

move(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

move(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 