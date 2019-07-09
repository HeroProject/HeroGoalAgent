:- dynamic audio/4, stateConfig/3.

topicOrder([story, theend]).

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
next(story, s8, "true", s10).

state(story, s10, say).
text(story, s10, "Weetje wat grappig is, appel is bij mij beter bekend als deejay.").
next(story, s10, "true", s11).

state(story, s11, say).
text(story, s11, "Deejay appel draaide de lekkerste plaatjes met de lekkerste bietjes.").
next(story, s11, "true", s12).

state(story, s12, say).
text(story, s12, " Pak Melk en Sinaasappelsap waren de hele tijd aan het breek dansen - het was altijd feest.").
leds(story, s12, "white").
next(story, s12, "true", s14).

state(story, s14, say).
text(story, s14, "Wist je dat mayonaise er ook altijd bij was?").
next(story, s14, "true", s17).

state(story, s17, say).
text(story, s17, "voor iedereen was er een plekje.").
next(story, s17, "true", s18).

state(story, s18, say).
text(story, s18, "In de koelkast dansen, zongen, en maakten we muziek de hele dag en de hele nacht, en altijd in het donker.").
next(story, s18, "true", s20).

state(story, s20, say).
text(story, s20, "Tot opeens het licht aan ging. We wisten allemaal wat dit betekende: mijn koelkastdeur was opengegaan.").
next(story, s20, "true", s21).

state(story, s21, say).
text(story, s21, "deejay appel had net op tijd zijn slamix weggedraaid, en alle producten schrokken en bleven als bevroren op de dansvloer staan."). %licht aan
next(story, s21, "true", s22).

state(story, s22, say).
text(story, s22, "Opeens kwam een grote, vlezige mensenhand in beeld.").
next(story, s22, "true", s23).

state(story, s23, say).
text(story, s23, "De dikkige hand zweefde even voor het groepje eieren, en sloeg toen toe: mayonaise werd gegrepen!").
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
next(story, s29, "true", s31).

state(story, s31, say).
text(story, s31, "En weet je wat ik stiekem nog het ergste vond: ik deed niks.").
next(story, s31, "true", s32).

state(story, s32, say).
text(story, s32, "Ik had eigenlijk mijn koelkast dicht moeten houden, zodat er geen hand naar binnen kon.").
next(story, s32, "true", s33).

state(story, s33, say).
text(story, s33, "Maar dat bedacht ik dus te laat.").
next(story, s33, "true", s37).

state(story, s37, say).
text(story, s37, "En ook alle feestbeesten gingen weg. Het feestje was echt voorbij.").
next(story, s37, "true", s40).

state(story, s40, say).
text(story, s40, "En toen ging opeens het licht weer aan! De enge hand verscheen opnieuw, hij had mayonaise vast!").
next(story, s40, "true", s41).

state(story, s41, say).
text(story, s41, "Iedereen wilde roepen en schreeuwen, maar de hand was er nog dus niemand durfde.").
next(story, s41, "true", s42).

state(story, s42, say).
text(story, s42, "Hij zette mayonaise op de plank en deed de deur dicht."). % licht aan.
next(story, s42, "true", s44).

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
text(story, s49, "Niet allemaal tegelijk riep mayonaise.").
next(story, s49, "true", s50).

state(story, s50, say).
text(story, s50, "Hij liep naar het midden van de koelkast.").
next(story, s50, "true", s51).

state(story, s51, say).
text(story, s51, "En zei: mensen zien er raar uit.").
next(story, s51, "true", s52).

state(story, s52, say).
text(story, s52, "Ze hebben helemaal geen draaidopje en zitten niet met zijn allen in een bakje, en ze hebben al helemaal geen leuke feestjes.").
next(story, s52, "true", s53).

state(story, s53, say).
text(story, s53, "Eigenlijk was het best wel saai, zei mayonaise stoer.").
next(story, s53, "true", s54).

state(story, s54, say).
text(story, s54, "Om te vieren dat mayonaise terug was gingen we weer een feestje bouwen.").

%%%% THE END %%%%%

state(theend, s1, say).
text(theend, s1, "Dat was het. Ik ga nu weer even rusten").
next(theend, s1, "true", s2).

state(theend, s2, say).
anim(theend, s2, "rest/behavior_1").  