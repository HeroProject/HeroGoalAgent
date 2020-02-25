topicOrder([story, theend]).

speechSpeed(100).

state(story, s1, say).
anim(story, s1, "wakeup/behavior_1").
leds(story, s1, "white").
next(story, s1, "true", s2).

state(story, s2, say).
text(story, s2, "Graag vertel ik jou een verhaal van de tijd toen ik een koelkast was.").
next(story, s2, "true", s3).

state(story, s3, say).
text(story, s3, "Ik had toen zoveel vriendjes.").
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
stateConfig(story, s9, [type = input, context = "answer_fruit", options = ["appel", "aardbei", "banaan","kers","kiwi"], defaultAnswer="appel"]).
text(story, s9, "Wat is jouw favoriete fruit?").
next(story, s9, "success", s10).
next(story, s9, "fail", s10f).

state(story, s10, say).
text(story, s10, "Dat is grappig, %answer_fruit% is bij mij beter bekend als deejay.").
next(story, s10, "true", s11).

state(story, s10f, say).
text(story, s10f, "Oke. Mijn favorite fruit is %answer_fruit%.").
next(story, s10f, "true", s10).

state(story, s11, say).
text(story, s11, "Deejay %answer_fruit% draaide de lekkerste plaatjes met de lekkerste bietjes.").
next(story, s11, "true", s11a).

state(story, s11a, say).
text(story, s11a, "Zullen we samen dansen op de muziek van Deejay %answer_fruit%? Doe mij maar na.").
next(story, s11a, "true", s11b).

state(story, s11b, say).
anim(story, s11b, "disco/behavior_1").
leds(story, s11b, "magenta").
next(story, s11b, "true", s12).

state(story, s12, say).
text(story, s12, "Leuk! Pak Melk en Sinaasappelsap waren de hele tijd aan het breek dansen - het was altijd feest.").
leds(story, s12, "white").
next(story, s12, "true", s13).

state(story, s13, question).
stateConfig(story, s13, [type = input, context = "answer_saus", options = ["ketchup", "mayonaise", "curry", "joppie", "pindasaus"], defaultAnswer="mayonaise"]).
text(story, s13, "Welke saus was er ook bij denk je?").
next(story, s13, "success", s14).
next(story, s13, "fail", s14f).

state(story, s14, say).
text(story, s14, "Ja, %answer_saus% was er ook altijd!").
next(story, s14, "true", s17).

state(story, s14f, say).
text(story, s14f, "Wist je dat %answer_saus% er ook altijd bij was?").
next(story, s14f, "true", s17).

state(story, s17, say).
text(story, s17, "voor iedereen was er een plekje.").
next(story, s17, "true", s18).

state(story, s18, question).
stateConfig(story, s18, [type = branch, context = "answer_koelkast_branch_1", options = ["dansen","zingen","muziek maken"], 
branchIntents = ["dansen" = "answer_koelkast_dansen","zingen" = "answer_koelkast_zingen","muziek maken" = "answer_koelkast_muziek"], branchingPoints=[[story, s19]]]).
text(story, s18, "Wat zouden wij op dat feestje hebben gedaan denk je? Dansen, zingen, of muziek maken?").
next(story, s18, "success", s19).
next(story, s18, "fail", s19f).

state(story, s19, branchingPoint).
next(story, s19, "dansen", s19a).
next(story, s19, "zingen", s19b).
next(story, s19, "muziek maken", s19c).

state(story, s19a, say).
text(story, s19a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").
next(story, s19a, "true", s20).

state(story, s19b, say).
text(story, s19b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").
next(story, s19b, "true", s20).

state(story, s19c, say).
text(story, s19c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakte muziek de hele dag en de hele nacht, en altijd in het donker.").
next(story, s19c, "true", s20).

state(story, s19f, say).
text(story, s19f, "In de koelkast dansen, zongen, en maakten muziek de hele dag en de hele nacht, en altijd in het donker.").
next(story, s19f, "true", s20).

state(story, s20, say).
text(story, s20, "Tot opeens het licht aan ging. We wisten allemaal wat dit betekende: mijn koelkastdeur was opengegaan.").
next(story, s20, "true", s20a).

state(story, s20a, say).
text(story, s20a, "Kun jij voor mij een schrik geluid maken? In 3, 2, 1.").
next(story, s20a, "true", s20b).

state(story, s20b, audioInput).
stateConfig(story, s20b, [recordTime=2000]).
next(story, s20b, "true", s21).

state(story, s21, say).
text(story, s21, "deejay %answer_fruit% had net op tijd zijn slamix weggedraaid, en alle producten schrokken en bleven als bevroren op de dansvloer staan."). %licht aan
next(story, s21, "true", s21a).

state(story, s21a, say).
audio(story, s21a, recorded, s20b).
next(story, s21a, "true", s22).

state(story, s22, say).
text(story, s22, "Opeens kwam een grote, vlezige mensenhand in beeld.").
next(story, s22, "true", s23).

state(story, s23, say).
text(story, s23, "De dikkige hand zweefde even voor het groepje eieren, en sloeg toen toe: %answer_saus% werd gegrepen!").
next(story, s23, "true", s24).

state(story, s24, say).
text(story, s24, "Hij moest mee, mijn koelkast uit.").
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
text(story, s28, "Ik hoorde dat Mevrouw Kaas iets fluisteren tegen familie limoen, waarop het kleinste limoentje een beetje moest huilen.").
next(story, s28, "true", s29).

state(story, s29, say).
text(story, s29, "Het was zo verdrietig!").
next(story, s29, "true", s30).

state(story, s30, question).
stateConfig(story, s30, [type = branch, context = "answer_koelkast_alt_ending", options = ["chocolaatje","mevrouw melk"], defaultAnswer="chocolaatje",
branchIntents=["chocolaatje"="answer_koelkast_chocolaatje" ,"mevrouw melk"="answer_koelkast_mevrouw_melk"], branchingPoints=[[story, s57]]]).
text(story, s30, "Wie miste %answer_saus% het meeste volgens jou? Was dat chocolaatje of mevrouw Melk?").
next(story, s30, "success", s31).
next(story, s30, "fail", s31f).

state(story, s31, say).
text(story, s31, "Dankje. We gaan straks zien of jij gelijk hebt.").
next(story, s31, "true", s31b).

state(story, s31f, say).
text(story, s31f, "Maakt niet uit. We gaan het straks toch ontdekken.").
next(story, s31f, "true", s31b).

state(story, s31b, say).
text(story, s31b, "En weet je wat ik stiekem nog het ergste vond: ik deed niks.").
next(story, s31b, "true", s32).

state(story, s32, say).
text(story, s32, "Ik had eigenlijk mijn koelkast dicht moeten houden, zodat er geen hand naar binnen kon.").
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
stateConfig(story, s39, [type = branch, context = "answer_koelkast_branch_2", options = ["deur openen","afwachten"],
branchIntents=["deur openen"="answer_koelkast_deur_openen", "afwachten"="answer_koelkast_afwachten"], branchingPoints=[[story, s40]]]).
text(story, s39, "Zou jij de deur openen of wachten?").
next(story, s39, "success", s40).
next(story, s39, "fail", s40f).

state(story, s40, branchingPoint).
next(story, s40, "deur openen", s40a).
next(story, s40, "afwachten", s40b).

state(story, s40a, say).
text(story, s40a, "Op jouw advies gooide ik de deur open. Daar zagen we de enge hand, hij had %answer_saus% vast!").
next(story, s40a, "true", s41).

state(story, s40b, say).
text(story, s40b, "Op jouw advies besloten we te wachten. En toen ging opeens het licht weer aan! De enge hand verscheen opnieuw, hij had %answer_saus% vast!").
next(story, s40b, "true", s41).

state(story, s40f, say).
text(story, s40f, "Ik besloot toch te wachten. En toen ging opeens het licht weer aan! De enge hand verscheen opnieuw, hij had %answer_saus% vast!").
next(story, s40f, "true", s41).

state(story, s41, say).
text(story, s41, "Iedereen wilde roepen en schreeuwen, maar de hand was er nog dus niemand durfde.").
next(story, s41, "true", s41a).

state(story, s41a, say).
text(story, s41a, "Kun jij voor mij het geluid van een dichtslaande deur maken? In 3, 2, 1").
next(story, s41a, "true", s41b).

state(story, s41b, audioInput).
stateConfig(story, s41b, [recordTime=2000]).
next(story, s41b, "true", s42).

state(story, s42, say).
text(story, s42, "Hij zette %answer_saus% op de plank en deed de deur dicht."). % licht aan.
next(story, s42, "true", s42a).

state(story, s42a, say).
audio(story, s42a, recorded, s41b).
next(story, s42a, "true", s43).

state(story, s43, say).
text(story, s43, "Maar goed dat je me hebt geholpen in de goeie keuze te maken, we hebben %answer_saus% weer terug gekregen.").
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
text(story, s49, "Niet allemaal tegelijk riep %answer_saus%.").
next(story, s49, "true", s50).

state(story, s50, say).
text(story, s50, "Hij liep naar het midden van de koelkast en ging in een stoere pose staan.").
next(story, s50, "true", s50a).

state(story, s50a, say).
text(story, s50a, "Kom laten wij ook in een stoere pose gaan staan.").
next(story, s50a, "true", s50b).

state(story, s50b, say).
text(story, s50b, "Doe mij maar na.").
anim(story, s50b, "bravepose/behavior_1").
next(story, s50b, "true", s51).

state(story, s51, say).
text(story, s51, "Gaaf zeg! %answer_saus% zei: mensen zien er raar uit.").
next(story, s51, "true", s52).

state(story, s52, say).
text(story, s52, "Ze hebben helemaal geen draaidopje en zitten niet met zijn allen in een bakje, en ze hebben al helemaal geen leuke feestjes.").
next(story, s52, "true", s53).

state(story, s53, say).
text(story, s53, "Eigenlijk was het best wel saai, zei %answer_saus% stoer.").
next(story, s53, "true", s54).

state(story, s54, say).
text(story, s54, "Om te vieren dat %answer_saus% terug was gingen we weer een feestje bouwen.").
next(story, s54, "true", s57).

state(story, s57, branchingPoint).
next(story, s57, "chocolaatje", s58a).
next(story, s57, "mevrouw melk", s58b).
next(story, s57, "fail", s58f).

state(story, s58a, say).
text(story, s58a, "Je had inderdaad gelijk dat Chocolaatje %answer_saus% het meest miste. Ze viel hem direct in de armen").

state(story, s58b, say).
text(story, s58b, "Je had inderdaad gelijk dat mevrouw Melk %answer_saus% het meest miste. Ze viel hem direct in de armen").

state(story, s58f, say).
text(story, s58f, "Het was Chocolaatje die %answer_saus% het meest miste. Ze viel hem direct in de armen.").

%%%% THE END %%%%%

state(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1"). 