:- dynamic audio/4.

topicOrder([story, theend]).

state(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
leds(story, s1, "white").
next(story, s1, "true", s2).

state(story, s2, say).
text(story, s2, "Graag vertel ik jou nog een verhaal. Ooit liep ik stazje als koelkast.").
next(story, s2, "true", s3).

state(story, s3, say).
text(story, s3, "Dat waren nog eens tijden, zeg. Ik had toen zoveel vriendjes.").
next(story, s3, "true", s4).

state(story, s4, say).
text(story, s4, "Pak Melk is een goede vriend van me, en met mevrouw Kaas heb ik vroeger nog veel tennis gespeeld.").
next(story, s4, "true", s5).

state(story, s5, say).
text(story, s5, "Oh, mevrouw Kaas \pau=500\ ").
next(story, s5, "true", s6).

state(story, s6, say).
text(story, s6, "Maar goed.").
next(story, s6, "true", s7).

state(story, s7, say).
text(story, s7, "Bij mij in de koelkast was het altijd donker, en was het altijd feest.").
next(story, s7, "true", s8).

state(story, s8, say).
text(story, s8, "Iedereen kwam graag op het feest. De groentes, alle sausjes en het fruit.").
next(story, s8, "true", s9).

state(story, s9, question).
stateConfig(story, s9, [type = mc, response = speech, context = "answer_fruit", key = "fruit"]).
text(story, s9, "Wat is jouw favoriete fruit?").

state(story, s9f, question).
stateConfig(story, s9f, [type = mc, response = touch, options = ["appel","banaan","aardbei","kers","kiwi","peer"], context = "answer_fruit", key = "fruit", defaultAnswer="appel"]).
text(story, s9f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Wat is jouw favoriete fruit?").
next(story, s9, "answer_fruit", s10).
next(story, s9, "fail", s9f).
next(story, s9f, "answer_fruit", s10).
next(story, s9f, "fail", s10).

state(story, s10, say).
text(story, s10, "Dat is grappig, %fruit% is bij mij beter bekend als deejay."). %deejay
next(story, s10, "true", s11).

state(story, s11, say).
text(story, s11, "deejay %fruit% draaide de lekkerste plaatjes met de lekkerste bietjes.").
next(story, s11, "true", s12).

state(story, s12, say).
text(story, s12, "Pak Melk en Sinaasappelsap waren de hele tijd aan het breek dansen - het was altijd feest.").
next(story, s12, "true", s13).

state(story, s13, question).
stateConfig(story, s13, [type = mc, response = speech, context = "answer_saus", key = "saus"]).
text(story, s13, "Wat is jouw lievelings saus?").

state(story, s13f, question).
stateConfig(story, s13f, [type = mc, response = touch, options = ["ketchup","mayonaise","curry","joppie","pindasaus"], context = "answer_saus", key = "saus", defaultAnswer="ketchup"]).
text(story, s13f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Welke saus vind jij eigenlijk lekker?").
next(story, s13, "answer_saus", s14).
next(story, s13, "fail", s13f).
next(story, s13f, "answer_saus", s14).
next(story, s13f, "fail", s14).

state(story, s14, say).
text(story, s14, "Ja, %saus% was er ook altijd!").
next(story, s14, "true", s15).

state(story, s15, say).
text(story, s15, "deejay %fruit% stond bekend om de lekkere dansmuziek die hij draaide, met allemaal groenten liedjes.").
next(story, s15, "true", s16).

state(story, s16, say).
text(story, s16, "De levensmiddelen kwamen van heinde en verre naar mijn partykoelkast: mangos,  eieren, en karnemelk, salami en geitenkaas, komkommers en courgettes.").
next(story, s16, "true", s17).

state(story, s17, say).
text(story, s17, "voor iedereen was er een plekje.").
next(story, s17, "true", s18).

state(story, s18, question).
stateConfig(story, s18, [type = mc, response = speech, context = "answer_koelkast_branch_1", key = "koelkast_keuze_1"]).
text(story, s18, "Wat zouden wij op dat feestje hebben gedaan denk je? Dansen, zingen, of muziek maken?").

state(story, s18f, question).
stateConfig(story, s18f, [type = mc, response = touch, options = ["dansen","zingen","muziek maken"], branching = yes,context = "answer_koelkast_branch_1", key = "koelkast_keuze_1",defaultAnswer="dansen"]).
text(story, s18f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Wat zouden wij op dat feestje hebben gedaan denk je? Dansen, zingen, of muziek maken?").

state(story, s19a, say).
text(story, s19a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").

state(story, s19b, say).
text(story, s19b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").

state(story, s19c, say).
text(story, s19c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakte muziek de hele dag en de hele nacht, en altijd in het donker.").

next(story, s18, "answer_koelkast_dansen", s19a).
next(story, s18f, "dansen", s19a).
next(story, s19a, "true", s20).
next(story, s18, "answer_koelkast_zingen", s19b).
next(story, s18f, "zingen", s19b).
next(story, s19b, "true", s20).
next(story, s18, "answer_koelkast_muziek", s19c).
next(story, s18f, "muziek maken", s19c).
next(story, s19c, "true", s20).
next(story, s18, "fail", s18f).
next(story, s18f, "fail", s20).

state(story, s20, say).
text(story, s20, "Tot opeens het licht aan ging. We wisten allemaal wat dit betekende: mijn koelkastdeur was opengegaan.").
next(story, s20, "true", s21).

state(story, s21, say).
text(story, s21, "deejay %fruit% had net op tijd zijn slamix weggedraaid, en alle producten stonden als bevroren op de dansvloer."). %licht aan
next(story, s21, "true", s22).

state(story, s22, say).
text(story, s22, "Opeens kwam een grote, vlezige mensenhand in beeld.").
next(story, s22, "true", s23).

state(story, s23, say).
text(story, s23, "De dikkige hand zweefde even voor het groepje eieren, en sloeg toen toe: %saus% werd gegrepen!").
next(story, s23, "true", s24).

state(story, s24, say).
text(story, s24, "Hij moest mee, mijn donkere koelkast uit.").
next(story, s24, "true", s25).

state(story, s25, say).
text(story, s25, "De deur sloeg met een klap dicht.").
next(story, s25, "true", s26).

state(story, s26, say).
text(story, s26, "Het licht ging weer uit, maar de muziek ging niet meer aan.").
next(story, s26, "true", s27).

state(story, s27, say).
text(story, s27, "Niemand wilde nog dansen.").
next(story, s27, "true", s28).

state(story, s28, say).
text(story, s28, "Ik hoorde dat Mevrouw Kaas iets fluisteren tegen de familie Aardbeitjes, waarop het kleinste aardbeitje een beetje moest huilen.").
next(story, s28, "true", s29).

state(story, s29, say).
text(story, s29, "Het was zo verdrietig!").
next(story, s29, "true", s30).

state(story, s30, question).
stateConfig(story, s30, [type = mc, response = speech, altEnding=yes, context = "answer_koelkast_alt_ending", key = "koelkast_alt_ending"]).
text(story, s30, "Wie miste %saus% het meeste volgens jou? Was dat chocolaatje of mevrouw Melk?").

state(story, s30f, question).
stateConfig(story, s30f, [type = mc, response = touch, options = ["chocolaatje","mevrouw Melk"], altEnding = yes, context = "answer_koelkast_alt_ending", key = "koelkast_alt_ending"]).
text(story, s30f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Wie miste %saus% het meeste volgens jou? Was dat chocolaatje of mevrouw Melk?").

next(story, s30, "true", s31).
next(story, s30, "fail", s30f).
next(story, s30f, "true", s31).
next(story, s30f, "fail", s31).

state(story, s31, say).
text(story, s31, "En weet je wat ik stiekem nog het ergste vond: ik deed niks.").
next(story, s31, "true", s32).

state(story, s32, say).
text(story, s32, "Ik had eigenlijk mijn koelkast deur potdicht moeten houden, zodat er geen hand naar binnen kon.").
next(story, s32, "true", s33).

state(story, s33, say).
text(story, s33, "Maar dat bedacht ik dus te laat.").
next(story, s33, "true", s37).

state(story, s37, say).
text(story, s37, "En ook alle feestbeesten gingen weg. Het feestje was echt voorbij.").
next(story, s37, "true", s38).

state(story, s38, say).
text(story, s38, "Wat nu?").
next(story, s38, "true", s39).

state(story, s39, question).
stateConfig(story, s39, [type = mc, response = speech, context = "answer_koelkast_branch_2", key = "koelkast_keuze_2"]).
text(story, s39, "Zou jij de deur openen of wachten?").

state(story, s39f, question).
stateConfig(story, s39f, [type = mc, response = touch, options = ["deur openen","afwachten"], branching = yes,context = "answer_koelkast_branch_2", key = "koelkast_keuze_2",defaultAnswer="afwachten"]).
text(story, s39f, "Sorry ik verstond je niet. Kun je daarom via de knoppen op mijn tenen antwoord geven. Zou jij de deur openen of wachten?").

state(story, s40a, say).
text(story, s40a, "Op jouw advies gooide ik de deur open. Daar zagen we de enge hand, hij had %saus% vast!").

state(story, s40b, say).
text(story, s40b, "Op jouw advies besloten we te wachten. En toen ging opeens ging het licht weer aan! De enge hand verscheen opnieuw, hij had %saus% vast!").

next(story, s39, "answer_koelkast_deur_openen", s40a).
next(story, s39f, "deur openen", s40a).
next(story, s40a, "true", s41).
next(story, s39, "answer_koelkast_afwachten", s40b).
next(story, s39f, "afwachten", s40b).
next(story, s40b, "true", s41).
next(story, s39, "fail", s39f).
next(story, s39f, "fail", s41).

state(story, s41, say).
text(story, s41, "Iedereen wilde roepen en schreeuwen, maar de hand was er nog dus niemand durfde.").
next(story, s41, "true", s42).

state(story, s42, say).
text(story, s42, "Hij zette %saus% op de plank en deed de deur dicht."). % licht aan.
next(story, s42, "true", s43).

state(story, s43, say).
text(story, s43, "Maar goed dat je me hebt geholpen in de goeie keuze maken, we hebben %saus% weer terug gekregen.").
next(story, s43, "true", s44).

state(story, s44, say).
text(story, s44, "Het was even stil, en toen ging iedereen tegelijk door elkaar heen vragen stellen: hoe was het daarbuiten?").
next(story, s44, "true", s45).

state(story, s45, say).
text(story, s45, "Was het eng?").
next(story, s45, "true", s46).

state(story, s46, say).
text(story, s46, "Was de mens vriendelijk?").
next(story, s46, "true", s49).

state(story, s49, say).
text(story, s49, "Niet allemaal tegelijk riep %saus%.").
next(story, s49, "true", s50).

state(story, s50, say).
text(story, s50, "Hij liep naar het midden van de koelkast en zei.").
next(story, s50, "true", s51).

state(story, s51, say).
text(story, s51, "Mensen zien er raar uit.").
next(story, s51, "true", s52).

state(story, s52, say).
text(story, s52, "Ze hebben helemaal geen draaidopje en zitten niet met zijn allen in een bakje, en ze hebben al helemaal geen leuke feestjes.").
next(story, s52, "true", s53).

state(story, s53, say).
text(story, s53, "Eigenlijk was het best wel saai. zei %saus% stoer.").
next(story, s53, "true", s54).

state(story, s54, say).
text(story, s54, "Om te vieren dat %saus% terug was gingen we weer een feestje bouwen.").
next(story, s54, "true", s57).

state(story, s57, say).
stateConfig(story, s57, [selectEnding = yes, key = "koelkast_alt_ending"]).
%text(story, s57, "Blaat").

state(story, s58a, say).
text(story, s58a, "Je had inderdaad gelijk dat Chocolaatje %saus% het meest miste. Ze viel hem direct in de armen").

state(story, s58b, say).
text(story, s58b, "Je had inderdaad gelijk dat mevrouw Melk %saus% het meest miste. Ze viel hem direct in de armen").

state(story, s58f, say).
text(story, s58f, "Het was Chocolaatje die %saus% het meest miste. Ze viel hem direct in de armen.").

next(story, s57, "chocolaatje", s58a).
next(story, s57, "melk", s58b).
next(story, s57, "fail", s58f).

state(theend, s1, say).
text(theend, s1, "Maar goed, toen was ik dus een koelkast.").
next(theend, s1, "true", s2).

state(theend, s2, say).
text(theend, s2, "Dat was het. Ik ga nu weer even rusten").
next(theend, s2, "true", s3).

state(theend, s3, say).
anim(theend, s3, "rest/behavior_1"). 