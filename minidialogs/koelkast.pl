move(koelkast, s1, say).
text(koelkast, s1, "Graag vertel ik jou een verhaal van de tijd toen ik een koelkast was.").
next(koelkast, s1, "true", s3).

move(koelkast, s3, say).
text(koelkast, s3, "Ik had toen zoveel vriendjes.").
next(koelkast, s3, "true", s4).

move(koelkast, s4, say).
text(koelkast, s4, "Pak Melk is een goede vriend van me, en met mevrouw Kaas heb ik vroeger nog veel tennis gespeeld.").
next(koelkast, s4, "true", s5).

move(koelkast, s5, say).
text(koelkast, s5, "Oh, mevrouw Kaas \pau=500\ ").
next(koelkast, s5, "true", s6).

move(koelkast, s6, say).
text(koelkast, s6, "Maar goed.").
next(koelkast, s6, "true", s7).

move(koelkast, s7, say).
text(koelkast, s7, "Bij mij in de koelkast was het altijd donker, en was het altijd feest.").
next(koelkast, s7, "true", s8).

move(koelkast, s8, say).
text(koelkast, s8, "Iedereen kwam graag op het feest. De groentes, alle sausjes en het fruit.").
next(koelkast, s8, "true", s9).

move(koelkast, s9, question).
moveConfig(koelkast, s9, [type=input, context="answer_fruit", fast=yes, options = ["appel", "aardbei", "banaan","kers","kiwi"], umVariable="fruit", defaultAnswer="appel"]).
text(koelkast, s9, "Wat is jouw favoriete fruit?").
next(koelkast, s9, "success", s10).
next(koelkast, s9, "fail", s10f).

move(koelkast, s10f, say).
text(koelkast, s10f, "Oke. Mijn favorite fruit is %fruit%.").
next(koelkast, s10f, "true", s10).

move(koelkast, s10, say).
text(koelkast, s10, "Dat is grappig, %fruit% is bij mij beter bekend als deejay.").
next(koelkast, s10, "true", s11).

move(koelkast, s11, say).
text(koelkast, s11, "Deejay %fruit% draaide de lekkerste plaatjes met de lekkerste bietjes.").
next(koelkast, s11, "true", s11a).

move(koelkast, s11a, say).
text(koelkast, s11a, "Zullen we samen dansen op de muziek van Deejay %fruit%? Doe mij maar na.").
next(koelkast, s11a, "true", s11b).

move(koelkast, s11b, say).
anim(koelkast, s11b, onRobot, "disco/behavior_1").
leds(koelkast, s11b, direct, "all", "blink", ["rood", "oranje", "geel", "groen", "blauw", "paars"], 500).
next(koelkast, s11b, "true", s12).

move(koelkast, s12, say).
text(koelkast, s12, "Leuk! Pak Melk en Sinaasappelsap waren de hele tijd aan het breek dansen - het was altijd feest.").
leds(koelkast, s12, reset).
next(koelkast, s12, "true", s13).

move(koelkast, s13, question).
moveConfig(koelkast, s13, [type=input, context="answer_saus", options = ["ketchup", "mayonaise", "curry", "joppie", "pindasaus"], fast=yes, umVariable="saus", defaultAnswer="ketchup"]).
text(koelkast, s13, "Welke saus was er ook bij denk je?").
next(koelkast, s13, "success", s14).
next(koelkast, s13, "fail", s14f).

move(koelkast, s14f, say).
text(koelkast, s14f, "Wist je dat %saus% er ook altijd bij was?").
next(koelkast, s14f, "true", s17).

move(koelkast, s14, say).
text(koelkast, s14, "Ja, %saus% was er ook altijd!").
next(koelkast, s14, "true", s17).

move(koelkast, s17, say).
text(koelkast, s17, "voor iedereen was er een plekje.").
next(koelkast, s17, "true", s18).

move(koelkast, s18, question).
moveConfig(koelkast, s18, [type=input, context = "answer_koelkast_branch_1", options = ["dansen","zingen","muziek maken"], fast=yes, umVariable="koelkast_keuze_1", defaultAnswer="dansen"]).
text(koelkast, s18, "Wat zouden wij op dat feestje hebben gedaan denk je? Dansen, zingen, of muziek maken?").
next(koelkast, s18, "dansen", s19a).
next(koelkast, s18, "zingen", s19b).
next(koelkast, s18, "muziek maken", s19c).
next(koelkast, s18, "fail", s19f).

move(koelkast, s19a, say).
text(koelkast, s19a, "In de koelkast dansen wij inderdaad het liefst. Ook op die ene avond. We dansten de hele dag en de hele nacht, en altijd in het donker.").
next(koelkast, s19a, "true", s20).

move(koelkast, s19b, say).
text(koelkast, s19b, "In de koelkast zingen wij inderdaad het liefst. Ook op die ene avond. We zongen de hele dag en de hele nacht, en altijd in het donker.").
next(koelkast, s19b, "true", s20).

move(koelkast, s19c, say).
text(koelkast, s19c, "In de koelkast maken wij inderdaad het liefst muziek. Ook op die ene avond. We maakte muziek de hele dag en de hele nacht, en altijd in het donker.").
next(koelkast, s19c, "true", s20).

move(koelkast, s19f, say).
text(koelkast, s19f, "In de koelkast dansen, zongen, en maakten muziek de hele dag en de hele nacht, en altijd in het donker.").
next(koelkast, s19f, "true", s20).

move(koelkast, s20, say).
text(koelkast, s20, "Tot opeens het licht aan ging. We wisten allemaal wat dit betekende: mijn koelkastdeur was opengegaan.").
next(koelkast, s20, "true", s21).

%move(koelkast, s20a, say).
%text(koelkast, s20a, "Kun jij voor mij een schrik geluid maken? In 3, 2, 1, start.").
%next(koelkast, s20a, "true", s20b).

%move(koelkast, s20b, audioInput).
%moveConfig(koelkast, s20b, [recordTime=3000]).
%next(koelkast, s20b, "true", s21).

move(koelkast, s21, say).
text(koelkast, s21, "deejay %fruit% had net op tijd zijn slamix weggedraaid, en alle producten schrokken en bleven als bevroren op de dansvloer staan."). %licht aan
next(koelkast, s21, "true", s22).

%move(koelkast, s21a, say).
%audio(koelkast, s21a, recorded, s20b).
%next(koelkast, s21a, "true", s22).

move(koelkast, s22, say).
text(koelkast, s22, "Opeens kwam een grote, vlezige mensenhand in beeld.").
next(koelkast, s22, "true", s23).

move(koelkast, s23, say).
text(koelkast, s23, "De dikkige hand zweefde even voor het groepje eieren, en sloeg toen toe: %saus% werd gegrepen!").
next(koelkast, s23, "true", s24).

move(koelkast, s24, say).
text(koelkast, s24, "Hij moest mee, mijn koelkast uit.").
next(koelkast, s24, "true", s25).

move(koelkast, s25, say).
text(koelkast, s25, "De deur sloeg met een klap dicht.").
next(koelkast, s25, "true", s26).

move(koelkast, s26, say).
text(koelkast, s26, "Het licht ging weer uit, maar de muziek ging niet meer aan.").
next(koelkast, s26, "true", s27).

move(koelkast, s27, say).
text(koelkast, s27, "Niemand wilde nog dansen.").
next(koelkast, s27, "true", s28).

move(koelkast, s28, say).
text(koelkast, s28, "Ik hoorde dat Mevrouw Kaas iets fluisteren tegen familie limoen, waarop het kleinste limoentje een beetje moest huilen.").
next(koelkast, s28, "true", s29).

move(koelkast, s29, say).
text(koelkast, s29, "Het was zo verdrietig!").
next(koelkast, s29, "true", s30).

move(koelkast, s30, question).
moveConfig(koelkast, s30, [type=input, context="answer_koelkast_alt_ending", options=["chocolaatje","melk"], fast=yes, umVariable="koelkast_alt_ending", defaulAnswer="chocolaatje"]).
text(koelkast, s30, "Wie miste %saus% het meeste volgens jou? Was dat chocolaatje of mevrouw Melk?").
next(koelkast, s30, "success", s31).
next(koelkast, s30, "fail", s31).

move(koelkast, s31, say).
text(koelkast, s31, "Dankje. We gaan straks zien of jij gelijk hebt.").
next(koelkast, s31, "true", s31b).

move(koelkast, s31b, say).
text(koelkast, s31b, "En weet je wat ik stiekem nog het ergste vond: ik deed niks.").
next(koelkast, s31b, "true", s32).

move(koelkast, s32, say).
text(koelkast, s32, "Ik had eigenlijk mijn koelkast dicht moeten houden, zodat er geen hand naar binnen kon.").
next(koelkast, s32, "true", s33).

move(koelkast, s33, say).
text(koelkast, s33, "Maar dat bedacht ik dus te laat.").
next(koelkast, s33, "true", s37).

move(koelkast, s37, say).
text(koelkast, s37, "En ook alle feestbeesten gingen weg. Het feestje was echt voorbij.").
next(koelkast, s37, "true", s38).

move(koelkast, s38, say).
text(koelkast, s38, "Wat nu?").
next(koelkast, s38, "true", s39).

move(koelkast, s39, question).
moveConfig(koelkast, s39, [type=input, context = "answer_koelkast_branch_2", options = ["openen","afwachten"], fast=yes, umVariable="koelkast_keuze_2", defaultAnswer="afwachten"]).
text(koelkast, s39, "Zou jij de deur openen of wachten?").
next(koelkast, s39, "deur openen", s40a).
next(koelkast, s39, "afwachten", s40b).
next(koelkast, s39, "fail", s40f).

move(koelkast, s40a, say).
text(koelkast, s40a, "Op jouw advies gooide ik de deur open. Daar zagen we de enge hand, hij had %saus% vast!").
next(koelkast, s40a, "true", s41).

move(koelkast, s40b, say).
text(koelkast, s40b, "Op jouw advies besloten we te wachten. En toen ging opeens het licht weer aan! De enge hand verscheen opnieuw, hij had %saus% vast!").
next(koelkast, s40b, "true", s41).

move(koelkast, s40f, say).
text(koelkast, s40f, "Ik besloot toch te wachten. En toen ging opeens het licht weer aan! De enge hand verscheen opnieuw, hij had %saus% vast!").
next(koelkast, s40f, "true", s41).

move(koelkast, s41, say).
text(koelkast, s41, "Iedereen wilde roepen en schreeuwen, maar de hand was er nog dus niemand durfde.").
next(koelkast, s41, "true", s42).

%move(koelkast, s41a, say).
%text(koelkast, s41a, "Kun jij voor mij het geluid van een dichtslaande deur maken? In 3, 2, 1, start.").
%next(koelkast, s41a, "true", s41b).

%move(koelkast, s41b, audioInput).
%moveConfig(koelkast, s41b, [recordTime=3000]).
%next(koelkast, s41b, "true", s42).

move(koelkast, s42, say).
text(koelkast, s42, "Hij zette %saus% op de plank en deed de deur dicht."). % licht aan.
next(koelkast, s42, "true", s43).

%move(koelkast, s42a, say).
%audio(koelkast, s42a, recorded, s41b).
%next(koelkast, s42a, "true", s43).

move(koelkast, s43, say).
text(koelkast, s43, "Maar goed dat je me hebt geholpen in de goeie keuze te maken, we hebben %saus% weer terug gekregen.").
next(koelkast, s43, "true", s44).

move(koelkast, s44, say).
text(koelkast, s44, "Het was even stil, en toen ging iedereen tegelijk door elkaar heen vragen stellen: hoe was het daarbuiten?").
next(koelkast, s44, "true", s45).

move(koelkast, s45, say).
text(koelkast, s45, "Was het eng?").
next(koelkast, s45, "true", s46).

move(koelkast, s46, say).
text(koelkast, s46, "Was de mens vriendelijk?").
next(koelkast, s46, "true", s49).

move(koelkast, s49, say).
text(koelkast, s49, "Niet allemaal tegelijk riep %saus%.").
next(koelkast, s49, "true", s52).

%move(koelkast, s50, say).
%text(koelkast, s50, "Hij liep naar het midden van de koelkast en ging in een stoere pose staan.").
%next(koelkast, s50, "true", s51).

%move(koelkast, s50a, say).
%text(koelkast, s50a, "Kom laten wij ook in een stoere pose gaan staan.").
%next(koelkast, s50a, "true", s50b).

%move(koelkast, s50b, say).
%text(koelkast, s50b, "Doe mij maar na.").
%anim(koelkast, s50b, onRobot, "bravepose/behavior_1").
%next(koelkast, s50b, "true", s51).

%move(koelkast, s51, say).
%text(koelkast, s51, "Top, laten we weer gaan zitten. %saus% zei: mensen zien er raar uit.").
%next(koelkast, s51, "true", s52).

move(koelkast, s52, say).
text(koelkast, s52, "Ze hebben helemaal geen draaidopje en zitten niet met zijn allen in een bakje, en ze hebben al helemaal geen leuke feestjes.").
next(koelkast, s52, "true", s53).

move(koelkast, s53, say).
text(koelkast, s53, "Eigenlijk was het best wel saai, zei %saus% stoer.").
next(koelkast, s53, "true", s54).

move(koelkast, s54, say).
text(koelkast, s54, "Om te vieren dat %saus% terug was gingen we weer een feestje bouwen.").
next(koelkast, s54, "true", s57).

move(koelkast, s57, branchingPoint, koelkast_alt_ending).
next(koelkast, s57, "chocolaatje", s58a).
next(koelkast, s57, "melk", s58b).
next(koelkast, s57, "fail", s58f).

move(koelkast, s58a, say).
text(koelkast, s58a, "Je had inderdaad gelijk dat Chocolaatje %saus% het meest miste. Ze viel hem direct in de armen").

move(koelkast, s58b, say).
text(koelkast, s58b, "Je had inderdaad gelijk dat mevrouw Melk %saus% het meest miste. Ze viel hem direct in de armen").

move(koelkast, s58f, say).
text(koelkast, s58f, "Het was Chocolaatje die %saus% het meest miste. Ze viel hem direct in de armen.").
