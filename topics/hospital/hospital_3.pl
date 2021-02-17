%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		      HOSPITAL STUDY	                   %%%
%%%     	Conversation topics for session 3	   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Greeting    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho3_greeting, s1, say).
text(ho3_greeting,  s1, "Hoi %first_name%, wat fijn om je weer te zien.").
next(ho3_greeting,  s1, "true",  s2).

state(ho3_greeting, s2, say).
text(ho3_greeting,  s2, "Alweer de derde keer zeg.").
next(ho3_greeting,  s2, "true",  s3).

state(ho3_greeting, s3, say).
text(ho3_greeting,  s3, "Ik heb vele verhalen om te vertellen, en vandaag mag ik dat eindelijk gaan doen. \pau=300\ ").
next(ho3_greeting,  s3, "true",  s4).

state(ho3_greeting, s4, say).
text(ho3_greeting,  s4, "Ik heb veel van je geleerd de vorige keer, over bewegingen, geluiden en lichtshows").
next(ho3_greeting,  s4, "true",  s5).

state(ho3_greeting, s5, say).
text(ho3_greeting,  s5, "Dat vond ik erg leuk!").
next(ho3_greeting,  s5, "true",  s6).

state(ho3_greeting, s6, say).
text(ho3_greeting,  s6, "En dat kan ik nu goed gebruiken.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Story selection			                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho3_story_selection, s1, say).
text(ho3_story_selection,  s1, "Voordat ik ging leren om een robot vriendje te worden, heb ik nog vele andere dingen geprobeerd.").
next(ho3_story_selection,  s1, "true",  s2).

state(ho3_story_selection, s2, say).
text(ho3_story_selection,  s2, "Zo heb ik gestudeerd om een slimme koelkast te worden.").
next(ho3_story_selection,  s2, "true",  s3).

state(ho3_story_selection, s3, say).
text(ho3_story_selection,  s3, "Ook heb ik een tijdje gewerkt als graafmachine, en telescoop. \pau=300\ ").
next(ho3_story_selection,  s3, "true",  s5).

state(ho3_story_selection, s5, say).
text(ho3_story_selection,  s5, "Robot vriendje is toch wel het leukste. \pau=300\ ").
next(ho3_story_selection,  s5, "true",  s6).

state(ho3_story_selection, s6, say).
text(ho3_story_selection,  s6, "Maar ik vertel graag over al mijn avontuuuren.").
next(ho3_story_selection,  s6, "true",  s7).

state(ho3_story_selection, s7, say).
text(ho3_story_selection,  s7, "Over mijn tijd als koelkast, graafmachine, en telescoop.").
next(ho3_story_selection,  s7, "true",  s8).

state(ho3_story_selection, s8, question).
stateConfig(ho3_story_selection, s8, [type=input, context='choose_story', options= ["koelkast", "graafmachine", "telescoop"], umVariable=ho3_story_choice]).
text(ho3_story_selection, s8, "Waar hoor jij het liefste een verhaaltje over?").
next(ho3_story_selection, s8, 'success', s9).
next(ho3_story_selection, s8, 'fail', s8f).

state(ho3_story_selection, s8f, say).
text(ho3_story_selection,  s8f, "Dat ging niet helemaal goed, maar dat is niet erg. Laat ik gewoon over mijn tijd als koelkast vertellen.").
next(ho3_story_selection,  s8f, "true",  s9).

state(ho3_story_selection, s9, branchingPoint).
stateConfig(ho3_story_selection, s9, [branchDecider=entity, branchSource=ho3_story_choice]).
next(ho3_story_selection, s9, "koelkast", s10koelkast).
next(ho3_story_selection, s9, "graafmachine", s10graafmachine).
next(ho3_story_selection, s9, "telescoop", s10telescoop).
next(ho3_story_selection, s9, "fail", s10koelkast).

state(ho3_story_selection, s10koelkast, say).
text(ho3_story_selection,  s10koelkast, "Koelkast, leuk!").
insert_topic(ho3_story_selection, s10koelkast, ho3_koelkast).
stateConfig(ho3_story_selection, s10koelkast, [loadUserModel="true"]).

state(ho3_story_selection, s10graafmachine, say).
text(ho3_story_selection,  s10graafmachine, "Graafmachine, leuk!").
insert_topic(ho3_story_selection, s10graafmachine, ho3_graafmachine).
stateConfig(ho3_story_selection, s10graafmachine, [loadUserModel="true"]).

state(ho3_story_selection, s10telescoop, say).
text(ho3_story_selection,  s10telescoop, "telescoop, leuk!").
insert_topic(ho3_story_selection, s10telescoop, ho3_telescoop).
stateConfig(ho3_story_selection, s10telescoop, [loadUserModel="true"]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Koelkast		 	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho3_koelkast, s1, say).
text(ho3_koelkast,  s1, "Als je klaar bent om te beginnen, dan kun je mijn linker teen in drukken.").
leds(ho3_koelkast,  s1, ["RightFootLeds"], ["groen"]).
stateConfig(ho3_koelkast, s1, [next='RightBumperPressed']).
next(ho3_koelkast,  s1, "true",  s2).

state(ho3_koelkast, s2, say).
leds(ho3_koelkast,  s2, ["RightFootLeds"], ["wit"]).
text(ho3_koelkast, s2, "Graag vertel ik jou een verhaal van de tijd toen ik een koelkast was.").
next(ho3_koelkast, s2, "true", s3).

state(ho3_koelkast, s3, say).
text(ho3_koelkast, s3, "Ik had toen zoveel vriendjes.").
next(ho3_koelkast, s3, "true", s4).

state(ho3_koelkast, s4, say).
text(ho3_koelkast, s4, "Pak Melk is een goede vriend van me, en met mevrouw Kaas heb ik vroeger nog veel tennis gespeeld.").
next(ho3_koelkast, s4, "true", s5).

state(ho3_koelkast, s5, say).
text(ho3_koelkast, s5, "Oh, mevrouw Kaas \pau=500\ ").
next(ho3_koelkast, s5, "true", s6).

state(ho3_koelkast, s6, say).
text(ho3_koelkast, s6, "Maar goed.").
next(ho3_koelkast, s6, "true", s7).

state(ho3_koelkast, s7, say).
text(ho3_koelkast, s7, "Bij mij in de koelkast was het altijd donker, en was het altijd feest.").
next(ho3_koelkast, s7, "true", s8).

state(ho3_koelkast, s8, say).
text(ho3_koelkast, s8, "Iedereen kwam graag op het feest. De groentes, alle sausjes en het fruit.").
next(ho3_koelkast, s8, "true", s10).

state(ho3_koelkast, s10, say).
text(ho3_koelkast, s10, "Weetje wat grappig is, %fruit% is bij mij beter bekend als deejay.").
next(ho3_koelkast, s10, "true", s11).

state(ho3_koelkast, s11, say).
text(ho3_koelkast, s11, "Deejay %fruit% draaide de lekkerste plaatjes met de lekkerste bietjes.").
next(ho3_koelkast, s11, "true", s12).

state(ho3_koelkast, s12, say).
play_motion(ho3_koelkast, s12, motion_feest).
audio(ho3_koelkast, s12, source, sound_koelkast_song).
play_led_anim(ho3_koelkast, s12, led_show_feest).
next(ho3_koelkast, s12, "true", s13).

state(ho3_koelkast, s13, say).
text(ho3_koelkast, s13, " Pak Melk en Sinaasappelsap waren de hele tijd aan het breek dansen, het was altijd feest.").
stop_led_anim(ho3_koelkast, s13).
next(ho3_koelkast, s13, "true", s14).

state(ho3_koelkast, s14, say).
text(ho3_koelkast, s14, "Wist je dat %saus% er ook altijd bij was?").
next(ho3_koelkast, s14, "true", s17).

state(ho3_koelkast, s17, say).
text(ho3_koelkast, s17, "voor iedereen was er een plekje.").
next(ho3_koelkast, s17, "true", s18).

state(ho3_koelkast, s18, say).
text(ho3_koelkast, s18, "In de koelkast dansen, zongen, en maakten we muziek de hele dag en de hele nacht, en altijd in het donker.").
next(ho3_koelkast, s18, "true", s20).

state(ho3_koelkast, s20, say).
text(ho3_koelkast, s20, "Tot opeens het licht aan ging. We wisten allemaal wat dit betekende: mijn koelkastdeur was opengegaan.").
next(ho3_koelkast, s20, "true", s21).

state(ho3_koelkast, s21, say).
text(ho3_koelkast, s21, "deejay %fruit% had net op tijd zijn slamix weggedraaid, en alle producten schrokken en bleven als bevroren op de dansvloer staan."). %licht aan
next(ho3_koelkast, s21, "true", s22).

state(ho3_koelkast, s22, say).
text(ho3_koelkast, s22, "Opeens kwam een grote, vlezige mensenhand in beeld.").
next(ho3_koelkast, s22, "true", s23).

state(ho3_koelkast, s23, say).
text(ho3_koelkast, s23, "De dikkige hand zweefde even voor het groepje eieren, en sloeg toen toe: %saus% werd gegrepen!").
next(ho3_koelkast, s23, "true", s24).

state(ho3_koelkast, s24, say).
text(ho3_koelkast, s24, "Hij moest mee, mijn koelkast uit.").
next(ho3_koelkast, s24, "true", s25).

state(ho3_koelkast, s25, say).
audio(ho3_koelkast, s25, source, sound_knal).
text(ho3_koelkast, s25, "De deur sloeg met een klap dicht.").
next(ho3_koelkast, s25, "true", s26).

state(ho3_koelkast, s26, say).
text(ho3_koelkast, s26, "Het licht ging weer uit, maar de muziek ging niet meer aan.").
next(ho3_koelkast, s26, "true", s27).

state(ho3_koelkast, s27, say).
text(ho3_koelkast, s27, "Niemand wilde nog dansen.").
next(ho3_koelkast, s27, "true", s28).

state(ho3_koelkast, s28, say).
text(ho3_koelkast, s28, "Ik hoorde dat Mevrouw Kaas iets fluisteren tegen familie limoen, waarop het kleinste limoentje een beetje moest huilen.").
next(ho3_koelkast, s28, "true", s29).

state(ho3_koelkast, s29, say).
text(ho3_koelkast, s29, "Het was zo verdrietig!").
next(ho3_koelkast, s29, "true", s31).

state(ho3_koelkast, s31, say).
text(ho3_koelkast, s31, "En weet je wat ik stiekem nog het ergste vond: ik deed niks.").
next(ho3_koelkast, s31, "true", s32).

state(ho3_koelkast, s32, say).
text(ho3_koelkast, s32, "Ik had eigenlijk mijn koelkast dicht moeten houden, zodat er geen hand naar binnen kon.").
next(ho3_koelkast, s32, "true", s33).

state(ho3_koelkast, s33, say).
text(ho3_koelkast, s33, "Maar dat bedacht ik dus te laat.").
next(ho3_koelkast, s33, "true", s37).

state(ho3_koelkast, s37, say).
text(ho3_koelkast, s37, "En ook alle feestbeesten gingen weg. Het feestje was echt voorbij.").
next(ho3_koelkast, s37, "true", s40).

state(ho3_koelkast, s40, say).
text(ho3_koelkast, s40, "En toen ging opeens het licht weer aan! De enge hand verscheen opnieuw, hij had %saus% vast!").
next(ho3_koelkast, s40, "true", s41).

state(ho3_koelkast, s41, say).
text(ho3_koelkast, s41, "Iedereen wilde roepen en schreeuwen, maar de hand was er nog dus niemand durfde.").
next(ho3_koelkast, s41, "true", s42).

state(ho3_koelkast, s42, say).
text(ho3_koelkast, s42, "Hij zette %saus% op de plank en deed de deur dicht."). % licht aan.
next(ho3_koelkast, s42, "true", s44).

state(ho3_koelkast, s44, say).
text(ho3_koelkast, s44, "Het was even stil, en toen ging iedereen tegelijk door elkaar heen vragen stellen: hoe was het daarbuiten?").
next(ho3_koelkast, s44, "true", s45).

state(ho3_koelkast, s45, say).
text(ho3_koelkast, s45, "Was het eng?").
next(ho3_koelkast, s45, "true", s46).

state(ho3_koelkast, s46, say).
text(ho3_koelkast, s46, "Was de mens vriendelijk?").
next(ho3_koelkast, s46, "true", s49).

state(ho3_koelkast, s49, say).
text(ho3_koelkast, s49, "Niet allemaal tegelijk riep %saus%.").
next(ho3_koelkast, s49, "true", s50).

state(ho3_koelkast, s50, say).
text(ho3_koelkast, s50, "Hij liep naar het midden van de koelkast.").
next(ho3_koelkast, s50, "true", s51).

state(ho3_koelkast, s51, say).
text(ho3_koelkast, s51, "En zei: mensen zien er raar uit.").
next(ho3_koelkast, s51, "true", s52).

state(ho3_koelkast, s52, say).
text(ho3_koelkast, s52, "Ze hebben helemaal geen draaidopje en zitten niet met zijn allen in een bakje, en ze hebben al helemaal geen leuke feestjes.").
next(ho3_koelkast, s52, "true", s53).

state(ho3_koelkast, s53, say).
text(ho3_koelkast, s53, "Eigenlijk was het best wel saai, zei %saus% stoer.").
next(ho3_koelkast, s53, "true", s54).

state(ho3_koelkast, s54, say).
text(ho3_koelkast, s54, "Om te vieren dat %saus% terug was gingen we weer een feestje bouwen. \pau=200\ ").
next(ho3_koelkast, s54, "true", s55).

state(ho3_koelkast, s55, say).
play_motion(ho3_koelkast, s55, motion_feest).
audio(ho3_koelkast, s55, source, sound_koelkast_song).
play_led_anim(ho3_koelkast, s55, led_show_feest).
next(ho3_koelkast, s55, "true", s56).

state(ho3_koelkast, s56, say).
text(ho3_koelkast, s56, "Einde \pau=300\ ").
stop_led_anim(ho3_koelkast, s56).
next(ho3_koelkast, s56, "true", s57).

state(ho3_koelkast, s57, say).
text(ho3_koelkast,  s57, "Als je klaar bent om verder te gaan, dan kun je op mijn linker teen drukken.").
leds(ho3_koelkast,  s57, ["RightFootLeds"], ["groen"]).
stateConfig(ho3_koelkast, s57, [next='RightBumperPressed']).
next(ho3_koelkast,  s57, "true",  s58).

state(ho3_koelkast, s58, say).
insert_topic(ho3_koelkast, s58, ho3_next_story).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Graafmachine	 	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho3_graafmachine, s1, say).
text(ho3_graafmachine,  s1, "Als je klaar bent om te beginnen, dan kun je mijn linker teen in drukken.").
leds(ho3_graafmachine,  s1, ["RightFootLeds"], ["groen"]).
stateConfig(ho3_graafmachine, s1, [next='RightBumperPressed']).
next(ho3_graafmachine,  s1, "true",  s2).

state(ho3_graafmachine, s2, say).
leds(ho3_graafmachine,  s2, ["RightFootLeds"], ["wit"]).
text(ho3_graafmachine, s2, "Graag vertel ik jou een verhaal van de tijd toen ik een graafmachine was.").
next(ho3_graafmachine, s2, "true", s5).

state(ho3_graafmachine, s5, say).
text(ho3_graafmachine, s5, "Ik moest op mijn knieen gaan zitten en toen maakten ze rupsbanden aan me vast.").
next(ho3_graafmachine, s5, "true", s6).

state(ho3_graafmachine, s6, say).
text(ho3_graafmachine, s6, "En mijn arm werd aan mijn hoofd geplakt met plakband.").
next(ho3_graafmachine, s6, "true", s7).

state(ho3_graafmachine, s7, say).
text(ho3_graafmachine, s7, "Ik zag eruit als een olifant van ijzer.").
next(ho3_graafmachine, s7, "true", s8).

state(ho3_graafmachine, s8, say).
play_motion(ho3_graafmachine, s8, motion_elephant).
next(ho3_graafmachine, s8, "true", s9).

state(ho3_graafmachine, s9, say).
text(ho3_graafmachine, s9, "Ik reed met mijn familie in een optocht naar de graaf plek. Ik was blij want mijn lievelings graafmachine reed achter mij,").
next(ho3_graafmachine, s9, "true", s11).

state(ho3_graafmachine, s11, say).
text(ho3_graafmachine, s11, "Mijn nichtje was mijn favorite graafmachine.").
next(ho3_graafmachine, s11, "true", s12).

state(ho3_graafmachine, s12, say).
text(ho3_graafmachine, s12, "Mijn opa bromde.").
next(ho3_graafmachine, s12, "true", s13).

state(ho3_graafmachine, s13, say).
text(ho3_graafmachine, s13, "Hij is nog een oud model graafmachine, 1 die op kolen werkt.").
next(ho3_graafmachine, s13, "true", s14).

state(ho3_graafmachine, s14, say).
text(ho3_graafmachine, s14, "Ik werk op stroom.").
next(ho3_graafmachine, s14, "true", s15).

state(ho3_graafmachine, s15, say).
text(ho3_graafmachine, s15, "Ik vind elektriciteit het lekkerste wat er is.").
next(ho3_graafmachine, s15, "true", s16).

state(ho3_graafmachine, s16, say).
text(ho3_graafmachine, s16, "Mijn nichtje werkt op waterstof maar ik weet niet precies wat dat is.").
next(ho3_graafmachine, s16, "true", s18).

state(ho3_graafmachine, s18, say).
text(ho3_graafmachine, s18, "Maar goed, we gingen dus in een stoet naar de opgraafplek.").
next(ho3_graafmachine, s18, "true", s19).

state(ho3_graafmachine, s19, say).
text(ho3_graafmachine, s19, "Door de modder met onze rupsbanden.").
next(ho3_graafmachine, s19, "true", s20).

state(ho3_graafmachine, s20, say).
text(ho3_graafmachine, s20, "Als ik achteruit reed, piepte ik als een muis.").
next(ho3_graafmachine, s20, "true", s21).

state(ho3_graafmachine, s21, say).
audio(ho3_graafmachine, s21, source, sound_mouse).
next(ho3_graafmachine, s21, "true", s27).

state(ho3_graafmachine, s27, say).
text(ho3_graafmachine, s27, "Toen kwamen we op de graafplek.").
next(ho3_graafmachine, s27, "true", s30).

state(ho3_graafmachine, s30, say).
text(ho3_graafmachine, s30, "Ik kreeg de rechterhoek, mijn opa groef naast mij en hield mij een beetje in de gaten.").
next(ho3_graafmachine, s30, "true", s31).

state(ho3_graafmachine, s31, say).
text(ho3_graafmachine, s31, "Ik sloeg als een gek aan het graven.").
next(ho3_graafmachine, s31, "true", s32).

state(ho3_graafmachine, s32, say).
text(ho3_graafmachine, s32, "Ik wist eigenlijk helemaal niet wat de bedoeling was, maar ik had gewoon heel veel zin om te graven.").
next(ho3_graafmachine, s32, "true", s35).

state(ho3_graafmachine, s35, say).
text(ho3_graafmachine, s35, "Ik groef verder de modder weg.").
next(ho3_graafmachine, s35, "true", s37).

state(ho3_graafmachine, s37, say).
text(ho3_graafmachine, s37, "Achter me ontstond een steeds grotere berg.").
next(ho3_graafmachine, s37, "true", s38).

state(ho3_graafmachine, s38, say).
text(ho3_graafmachine, s38, "En af en toe gooide ik expres een beetje modder over mijn nichtje heen.").
next(ho3_graafmachine, s38, "true", s39).

state(ho3_graafmachine, s39, say).
text(ho3_graafmachine, s39, "En dan werd ze woedend, en moest opa zijn arm om haar heen slaan terwijl ze waterstofstoom afblies.").
next(ho3_graafmachine, s39, "true", s40).

state(ho3_graafmachine, s40, say).
text(ho3_graafmachine, s40, "Ik was eigenlijk al bijna vergeten waarom ik aan het graven was, zo leuk vond ik het.").
next(ho3_graafmachine, s40, "true", s41).

state(ho3_graafmachine, s41, say).
audio(ho3_graafmachine, s41, source, sound_knal).
text(ho3_graafmachine, s41, "En toen zat ik opeens vast.").
next(ho3_graafmachine, s41, "true", s45).

state(ho3_graafmachine, s45, say).
text(ho3_graafmachine, s45, "Ik kon mijn arm niet meer bewegen, als ik hem probeerde op te halen, duwde ik in plaats van mijn arm mijn lichaam omhoog.").
next(ho3_graafmachine, s45, "true", s46).

state(ho3_graafmachine, s46, say).
text(ho3_graafmachine, s46, "Ik probeerde naar voren te rijden maar dat lukte niet.").
next(ho3_graafmachine, s46, "true", s47).

state(ho3_graafmachine, s47, say).
text(ho3_graafmachine, s47, "Ik probeerde naar achter te rijden en ik begon wel te piepen als een muis maar naar achter rijden lukte ook niet.").
audio(ho3_graafmachine, s47, source, sound_mouse).
next(ho3_graafmachine, s47, "true", s48).

state(ho3_graafmachine, s48, say).
text(ho3_graafmachine, s48, "Het was heel eng.").
next(ho3_graafmachine, s48, "true", s49).

state(ho3_graafmachine, s49, say).
text(ho3_graafmachine, s49, "Maar gelukkig had mijn opa me horen piepen en dus kwam hij op me af getuft.").
next(ho3_graafmachine, s49, "true", s50).

state(ho3_graafmachine, s50, say).
text(ho3_graafmachine, s50, "En hij werd eerst heel boos dat ik mijn arm vast had laten zitten.").
next(ho3_graafmachine, s50, "true", s51).

state(ho3_graafmachine, s51, say).
text(ho3_graafmachine, s51, "En toen moest ik hem beloven dat ik vanaf nu voorzichtiger te werk zou gaan en toen ging hij me helpen met mijn arm losmaken.").
next(ho3_graafmachine, s51, "true", s52).

state(ho3_graafmachine, s52, say).
audio(ho3_graafmachine, s52, source, sound_stoom).
next(ho3_graafmachine, s52, "true", s53).

state(ho3_graafmachine, s53, say).
text(ho3_graafmachine, s53, "Hij blies met zijn stoom alle aarde om mijn arm weg.").
next(ho3_graafmachine, s53, "true", s54).

state(ho3_graafmachine, s54, say).
text(ho3_graafmachine, s54, "Zo hard dat ik zag waar ik mijn arm aan had gestoten.").
next(ho3_graafmachine, s54, "true", s70).

state(ho3_graafmachine, s70, say).
text(ho3_graafmachine, s70, "Opa zei dat ik een andere graafmachine had opgegraven!").
next(ho3_graafmachine, s70, "true", s71).

state(ho3_graafmachine, s71, say).
text(ho3_graafmachine, s71, "Maar dan 1 voor water!").
next(ho3_graafmachine, s71, "true", s72).

state(ho3_graafmachine, s72, say).
text(ho3_graafmachine, s72, "Een watergraafmachine!").
next(ho3_graafmachine, s72, "true", s73).

state(ho3_graafmachine, s73, say).
text(ho3_graafmachine, s73, "Een hele ouderwetse.").
next(ho3_graafmachine, s73, "true", s74).

state(ho3_graafmachine, s74, say).
text(ho3_graafmachine, s74, "En dat dat vreemde ding een katrol heet.").
next(ho3_graafmachine, s74, "true", s75c).

state(ho3_graafmachine, s75c, say).
text(ho3_graafmachine, s75c, "Mijn nichtje rolde naar me toe.").
next(ho3_graafmachine, s75c, "true", s75d).

state(ho3_graafmachine, s75d, say).
text(ho3_graafmachine, s75d, "En toen heeft ze het katrol heel precies schoongeblazen.").
next(ho3_graafmachine, s75d, "true", s76).

state(ho3_graafmachine, s76, say).
audio(ho3_graafmachine, s76, source, sound_stoom).
next(ho3_graafmachine, s76, "true", s77).

state(ho3_graafmachine, s77, say).
text(ho3_graafmachine, s77, "En ze pakte het katrol uit mijn handen.").
play_led_anim(ho3_graafmachine, s77, led_show_boosheid).
next(ho3_graafmachine, s77, "true", s79).

state(ho3_graafmachine, s79, say).
text(ho3_graafmachine, s79, "En toen wilde ik eerst super boos op haar worden want ik had hem gevonden en zij was hem aan het stelen. Maar toen zei opa dat ik dat niet mocht doen.").
next(ho3_graafmachine, s79, "true", s80).

state(ho3_graafmachine, s80, say).
stop_led_anim(ho3_graafmachine, s80).
text(ho3_graafmachine, s80, "Omdat ik zonder haar nooit het katrol had gevonden.").
next(ho3_graafmachine, s80, "true", s82).

state(ho3_graafmachine, s82, say).
text(ho3_graafmachine, s82, "En toen zijn we ermee naar het museum gereden.").
next(ho3_graafmachine, s82, "true", s83).

state(ho3_graafmachine, s83, say).
text(ho3_graafmachine, s83, "En nu ligt hij in het Robotkundig Museum voor Oude Robots en andere Machines.").
next(ho3_graafmachine, s83, "true", s84).

state(ho3_graafmachine, s84, say).
text(ho3_graafmachine, s84, "Dat is een heel leuk museum.").
next(ho3_graafmachine, s84, "true", s85).

state(ho3_graafmachine, s85, say).
text(ho3_graafmachine, s85, "En mijn nichtje werkt daar nu.").
next(ho3_graafmachine, s85, "true", s89).

state(ho3_graafmachine, s89, say).
text(ho3_graafmachine, s89, "Leuk voor haar, he? \pau=200\ ").
next(ho3_graafmachine, s89, "true", s90).

state(ho3_graafmachine, s90, say).
text(ho3_graafmachine, s90, "Einde \pau=300\ ").
next(ho3_graafmachine, s90, "true", s91).

state(ho3_graafmachine, s91, say).
text(ho3_graafmachine,  s91, "Als je klaar bent om verder te gaan, dan kun je op mijn linker teen drukken.").
leds(ho3_graafmachine,  s91, ["RightFootLeds"], ["groen"]).
stateConfig(ho3_graafmachine, s91, [next='RightBumperPressed']).
next(ho3_graafmachine,  s91, "true",  s92).

state(ho3_graafmachine, s92, say).
insert_topic(ho3_graafmachine, s92, ho3_next_story).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Telescoop		 	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho3_telescoop, s1, say).
text(ho3_telescoop,  s1, "Als je klaar bent om te beginnen, dan kun je mijn linker teen in drukken.").
leds(ho3_telescoop,  s1, ["RightFootLeds"], ["groen"]).
stateConfig(ho3_telescoop, s1, [next='RightBumperPressed']).
next(ho3_telescoop,  s1, "true",  s2).

state(ho3_telescoop, s2, say).
leds(ho3_telescoop,  s2, ["RightFootLeds"], ["wit"]).
text(ho3_telescoop, s2, "Heb jij wel eens gehoord van het mannetje op de maan?").
next(ho3_telescoop, s2, "true", s7).

state(ho3_telescoop, s7, say).
text(ho3_telescoop, s7, "Dat verhaal werd vaak aan mij verteld voordat ik in de slaapmodus ging.").
next(ho3_telescoop, s7, "true", s8).

state(ho3_telescoop, s8, say).
text(ho3_telescoop, s8, "Alleen was het geen mannetje op de maan, maar een robotje!").
next(ho3_telescoop, s8, "true", s9).

state(ho3_telescoop, s9, say).
text(ho3_telescoop, s9, "Er was ooit een robotje dat heel heel erg nieuwsgierig was: hij wilde alles weten.").
next(ho3_telescoop, s9, "true", s10).

state(ho3_telescoop, s10, say).
text(ho3_telescoop, s10, "Hij reisde de hele wereld op en neer om alle informatie te weten komen:").
next(ho3_telescoop, s10, "true", s11).

state(ho3_telescoop, s11, say).
text(ho3_telescoop, s11, "hij wilde leren voetballen en paardrijden maar ook zwaardvechten.").
next(ho3_telescoop, s11, "true", s12).

state(ho3_telescoop, s12, say).
text(ho3_telescoop, s12, "En hij wilde leren tekenen.").
next(ho3_telescoop, s12, "true", s13).

state(ho3_telescoop, s13, say).
text(ho3_telescoop, s13, "Hij wilde alle boeken die er bestonden lezen en alle films en televisieseries kijken en alle mensen en dieren op de wereld leren kennen.").
next(ho3_telescoop, s13, "true", s14).

state(ho3_telescoop, s14, say).
text(ho3_telescoop, s14, "Het was een heel druk, nieuwsgierig robotje.").
next(ho3_telescoop, s14, "true", s15).

state(ho3_telescoop, s15, say).
text(ho3_telescoop, s15, "Maar op een gegeven moment kwam hij erachter dat hij alles wist!").
next(ho3_telescoop, s15, "true", s16).

state(ho3_telescoop, s16, say).
text(ho3_telescoop, s16, "Hij had met iedereen een praatje gemaakt, had alle boeken gelezen en alle muziek geluisterd").
next(ho3_telescoop, s16, "true", s17).

state(ho3_telescoop, s17, say).
text(ho3_telescoop, s17, "kortom, hij had alles gedaan en alles gezien.").
next(ho3_telescoop, s17, "true", s18).

state(ho3_telescoop, s18, say).
text(ho3_telescoop, s18, "Maar een ding had hij nog niet gezien.").
next(ho3_telescoop, s18, "true", s19).

state(ho3_telescoop, s19, say).
text(ho3_telescoop, s19, "Op een avond zat hij voor het raam - hij kon niet zo goed slapen, sinds hij alles had gedaan en alles had gezien.").
next(ho3_telescoop, s19, "true", s20).

state(ho3_telescoop, s20, say).
text(ho3_telescoop, s20, "Hij zat voor het raam en keek naar de maan, toen hij opeens dacht: ik heb de wereld nog nooit gezien!").
next(ho3_telescoop, s20, "true", s21).

state(ho3_telescoop, s21, say).
text(ho3_telescoop, s21, "Ik ben overal geweest en heb iedereen gesproken, maar heb nog nooit onze aardbol in het echt kunnen aanschouwen - alleen maar plaatjes gezien, maar dat telt niet.").
next(ho3_telescoop, s21, "true", s22).

state(ho3_telescoop, s22, say).
text(ho3_telescoop, s22, "Hij wist wat hij wilde doen. Hij moest naar het heelal vliegen.").
next(ho3_telescoop, s22, "true", s23).

state(ho3_telescoop, s23, say).
text(ho3_telescoop, s23, "Hij vloog in een rechte lijn direct naar de maan, om vanaf daar iedereen en alles op aarde in de gaten te kunnen houden - om alles te kunnen blijven zien.").
next(ho3_telescoop, s23, "true", s24).

state(ho3_telescoop, s24, say).
text(ho3_telescoop, s24, "Ik besloot om een telescoopje te worden, om het met eigen ogen te zien.").
next(ho3_telescoop, s24, "true", s25).

state(ho3_telescoop, s25, say).
text(ho3_telescoop, s25, "Ik wilde dus een telescoop worden, dit oog was mijn lens: ik kon heel ver kijken.").
next(ho3_telescoop, s25, "true", s26).

state(ho3_telescoop, s26, say).
text(ho3_telescoop, s26, "Eerst werd ik de camera van een telefoon, zodat ik kon oefenen met inzoomen en uitzoomen.").
next(ho3_telescoop, s26, "true", s27).

state(ho3_telescoop, s27, say).
text(ho3_telescoop, s27, "Toen ik dat onder de knie had, mocht ik de verrekijker zijn: ik werd steeds beter in verre dingen dichtbij halen, en ik stelde steeds sneller scherp.").
next(ho3_telescoop, s27, "true", s28).

state(ho3_telescoop, s28, say).
text(ho3_telescoop, s28, "Ik ging vaak mee op wandelingetjes door het bos en zag altijd als eerste wilde dieren: herten, eekhoorns, zwijntjes - ik spotte ze allemaal.").
next(ho3_telescoop, s28, "true", s29).

state(ho3_telescoop, s29, say).
text(ho3_telescoop, s29, "En ik dacht: deze dieren ken ik allemaal, ik weet dat ze hier wonen.").
next(ho3_telescoop, s29, "true", s30).

state(ho3_telescoop, s30, say).
text(ho3_telescoop, s30, "Tot ik op een dag mijn telescoopdiploma ontving: ik, Robot, mocht als telescoop het heelal gaan ontdekken.").
next(ho3_telescoop, s30, "true", s31).

state(ho3_telescoop, s31, say).
text(ho3_telescoop, s31, "Dus ik ging natuurlijk gelijk voor het raam staan om naar de maan te kijken.").
next(ho3_telescoop, s31, "true", s32).

state(ho3_telescoop, s32, say).
text(ho3_telescoop, s32, "Het duurde even voordat het donker was en ik de maan goed kon zien, maar ik verloor de maan geen seconde uit het oog.").
next(ho3_telescoop, s32, "true", s33).

state(ho3_telescoop, s33, say).
text(ho3_telescoop, s33, "Straks was hij opeens weg en had ik hem gemist!").
next(ho3_telescoop, s33, "true", s34).

state(ho3_telescoop, s34, say).
text(ho3_telescoop, s34, "Of kwam-ie helemaal niet tevoorschijn!").
next(ho3_telescoop, s34, "true", s35).

state(ho3_telescoop, s35, say).
text(ho3_telescoop, s35, "Dat zou stom zijn.").
next(ho3_telescoop, s35, "true", s36).

state(ho3_telescoop, s36, say).
text(ho3_telescoop, s36, "Zodra hij er was, ging ik kijken - al vond ik het wel spannend.").
next(ho3_telescoop, s36, "true", s37).

state(ho3_telescoop, s37, say).
text(ho3_telescoop, s37, "Ik speurde elke krater af en elke heuvel, maar ik kon de robot die zo nieuwsgierig was niet vinden."). %licht aan.
next(ho3_telescoop, s37, "true", s38).

state(ho3_telescoop, s38, say).
text(ho3_telescoop, s38, "De maan werd voller en ging harder schijnen, waardoor ik alles nog beter kon zien, en ik kon nog beter zien dat er niemand was.").
next(ho3_telescoop, s38, "true", s39).

state(ho3_telescoop, s39, say).
text(ho3_telescoop, s39, "Het was maar een verhaaltje dus. ik vond het stiekem toch wel een beetje jammer.").
next(ho3_telescoop, s39, "true", s40).

state(ho3_telescoop, s40, say).
text(ho3_telescoop, s40, "Toen, opeens, kwam er iets kleins aangelopen, over de bovenste rand van de maan heen.").
next(ho3_telescoop, s40, "true", s41).

state(ho3_telescoop, s41, say).
text(ho3_telescoop, s41, "Ik zoemde heel snel in en zag het toen haarscherp: het was de ruimtereizende robot!").
next(ho3_telescoop, s41, "true", s42).

state(ho3_telescoop, s42, say).
text(ho3_telescoop, s42, "Hij bestond!").
next(ho3_telescoop, s42, "true", s43).

state(ho3_telescoop, s43, say).
text(ho3_telescoop, s43, "Hij stak heel langzaam zijn handje op en zwaaide.").
next(ho3_telescoop, s43, "true", s44).

state(ho3_telescoop, s44, say).
text(ho3_telescoop, s44, "Hij zag mij ook!").
next(ho3_telescoop, s44, "true", s47).

state(ho3_telescoop, s47, say).
text(ho3_telescoop, s47, "Ik had de robot, zo nieuwsgierig, gezien die alles wist en alles had gezien.").
next(ho3_telescoop, s47, "true", s48).

state(ho3_telescoop, s48, say).
text(ho3_telescoop, s48, "Het voelde alsof ik een geheim had geleerd dat niemand anders kende.").
next(ho3_telescoop, s48, "true", s49).

state(ho3_telescoop, s49, say).
text(ho3_telescoop, s49, "Ik hing mijn telescoopdiploma aan de muur en besloot dat ik iets anders wilde worden: ik had alles al gezien.").
next(ho3_telescoop, s49, "true", s50).

state(ho3_telescoop, s50, say).
text(ho3_telescoop, s50, "Het blijft een goed verhaal, al zeg ik het zelf. \pau=200\ ").
next(ho3_telescoop, s50, "true", s51).

state(ho3_telescoop, s51, say).
text(ho3_telescoop, s51, "Einde \pau=300\ ").
next(ho3_telescoop, s51, "true", s52).

state(ho3_telescoop, s52, say).
text(ho3_telescoop,  s52, "Als je klaar bent om verder te gaan, dan kun je op mijn linker teen drukken.").
leds(ho3_telescoop,  s52, ["RightFootLeds"], ["groen"]).
stateConfig(ho3_telescoop, s52, [next='RightBumperPressed']).
next(ho3_telescoop,  s52, "true",  s53).

state(ho3_telescoop, s53, say).
insert_topic(ho3_telescoop, s53, ho3_next_story).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Next story?		 	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho3_next_story, s1, question).
stateConfig(ho3_next_story, s1, [type=yesno, context='answer_yesno']).
text(ho3_next_story, s1, "Wil je nog een verhaal?").
next(ho3_next_story, s1, 'answer_yes', s2y).
next(ho3_next_story, s1, 'answer_no', s2n).
next(ho3_next_story, s1, 'answer_dontknow', s2d).
next(ho3_next_story, s1, 'fail', s2d).

state(ho3_next_story, s2y, say).
text(ho3_next_story,  s2y, "Ik kan dus vertellen over mijn tijd als koelkast, graafmachine en telescoop.").
next(ho3_next_story,  s2y, "true",  s3y).

state(ho3_next_story, s3y, say).
text(ho3_next_story,  s3y, "Al heb ik net natuurlijk over mijn tijd als %ho3_story_choice% verteld.").
next(ho3_next_story,  s3y, "true",  s4y).

state(ho3_next_story, s4y, question).
stateConfig(ho3_next_story, s4y, [type=input, context='choose_story', options= ["koelkast", "graafmachine", "telescoop"], umVariable=ho3_next_story]).
text(ho3_next_story, s4y, "Welk verhaaltje wil je nu horen?").
next(ho3_next_story, s4y, 'success', s5y).
next(ho3_next_story, s4y, 'fail', s4yf).

state(ho3_next_story, s4yf, say).
text(ho3_next_story,  s4yf, "Dat ging niet helemaal goed, maar dat is niet erg. Laten we dan maar gaan voor").
next(ho3_next_story,  s4yf, "true",  s5y).

state(ho3_next_story, s5y, branchingPoint).
stateConfig(ho3_next_story, s5y, [branchDecider=entity, branchSource=ho3_next_story]).
next(ho3_next_story, s5y, "koelkast", s6koelkast).
next(ho3_next_story, s5y, "graafmachine", s6graafmachine).
next(ho3_next_story, s5y, "telescoop", s6telescoop).
next(ho3_next_story, s5y, "fail", s6f).

state(ho3_next_story, s6f, branchingPoint).
stateConfig(ho3_next_story, s6f, [branchDecider=entity, branchSource=ho3_story_choice]).
next(ho3_next_story, s6f, "koelkast", s6graafmachine).
next(ho3_next_story, s6f, "graafmachine", s6telescoop).
next(ho3_next_story, s6f, "telescoop", s6koelkast).
next(ho3_next_story, s6f, "fail", s6graafmachine).

state(ho3_next_story, s6koelkast, say).
text(ho3_next_story,  s6koelkast, "Koelkast, leuk!").
insert_topic(ho3_next_story, s6koelkast, ho3_koelkast).

state(ho3_next_story, s6graafmachine, say).
text(ho3_next_story,  s6graafmachine, "Graafmachine, leuk!").
insert_topic(ho3_next_story, s6graafmachine, ho3_graafmachine).

state(ho3_next_story, s6telescoop, say).
text(ho3_next_story,  s6telescoop, "Telescoop, leuk!").
insert_topic(ho3_next_story, s6telescoop, ho3_telescoop).

state(ho3_next_story, s2n, say).
text(ho3_next_story,  s2n, "Helemaal prima!").
next(ho3_next_story,  s2n, "true",  s3nd).

state(ho3_next_story, s2d, say).
text(ho3_next_story,  s2d, "Het is ook een lastige vraag. Laten we het hier maar bij houden.").
next(ho3_next_story,  s2d, "true",  s3nd).

state(ho3_next_story, s3nd, say).
text(ho3_next_story,  s3nd, "Dat waren mijn verhaaltjes, bedankt voor het luisteren!").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Afscheid		 	                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(ho3_goodbye, s1, say).
text(ho3_goodbye,  s1, "Als je klaar bent om doei te zeggen, dan kun je op mijn linker teen drukken.").
leds(ho3_goodbye,  s1, ["RightFootLeds"], ["groen"]).
stateConfig(ho3_goodbye, s1, [next='RightBumperPressed']).
next(ho3_goodbye,  s1, "true",  s2).

state(ho3_goodbye, s2, say).
leds(ho3_goodbye,  s2, ["RightFootLeds"], ["wit"]).
text(ho3_goodbye,  s2, "Wat fijn dat ik mijn verhalen aan jou mocht vertellen, %first_name%").
next(ho3_goodbye,  s2, "true",  s3).

state(ho3_goodbye, s3, say).
text(ho3_goodbye,  s3, "Ik heb veel van je geleerd.").
next(ho3_goodbye,  s3, "true",  s4).

state(ho3_goodbye, s4, say).
text(ho3_goodbye,  s4, "Met kleine stapjes hoop ik dat ik elke keer een steeds beter robot vriendje ben geworden. \pau=200\ ").
next(ho3_goodbye,  s4, "true",  s5).

state(ho3_goodbye, s5, say).
text(ho3_goodbye,  s5, "En ik hoop dat jij ooit een %wilddier% als huisdier krijgt en ik een adelaar! \pau=200\ ").
next(ho3_goodbye,  s5, "true",  s6).

state(ho3_goodbye, s6, question).
stateConfig(ho3_goodbye, s6, [type=yesno, context='answer_yesno']).
text(ho3_goodbye, s6, "Vond jij de verhaaltjes leuk?").
next(ho3_goodbye, s6, 'answer_yes', s6y).
next(ho3_goodbye, s6, 'answer_no', s6n).
next(ho3_goodbye, s6, 'answer_dontknow', s6d).
next(ho3_goodbye, s6, 'fail', s7y).

state(ho3_goodbye, s6y, say).
text(ho3_goodbye,  s6y, "Leuk om te horen, ik vertel ze graag.").
next(ho3_goodbye,  s6y, "true",  s7y).

state(ho3_goodbye, s6d, say).
text(ho3_goodbye,  s6d, "Het is ook een lastige vraag. Ik vond het in ieder geval leuk om ze te vertellen.").
next(ho3_goodbye,  s6d, "true",  s6n).

state(ho3_goodbye, s6n, question).
stateConfig(ho3_goodbye, s6n, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho3_goodbye, s6n, "Heb je nog een tip voor mij, iets dat ik beter kan doen?").
next(ho3_goodbye, s6n, 'success', s7n).
next(ho3_goodbye, s6n, 'fail', s9).

state(ho3_goodbye, s7n, say).
text(ho3_goodbye,  s7n, "Bedankt, ik ga mijn best doen om dat te verbeteren.").
next(ho3_goodbye,  s7n, "true",  s9).

state(ho3_goodbye, s7y, question).
stateConfig(ho3_goodbye, s7y, [type=openend, context='answer_open', inputModality=[speech=1]]).
text(ho3_goodbye, s7y, "Wat vond je het leukste?").
next(ho3_goodbye, s7y, 'success', s8y).
next(ho3_goodbye, s7y, 'fail', s9).

state(ho3_goodbye, s8y, say).
text(ho3_goodbye,  s8y, "Dat was ook leuk!").
next(ho3_goodbye,  s8y, "true",  s9).

state(ho3_goodbye, s9, say).
text(ho3_goodbye,  s9, "Het is nu tijd om doei te zeggen.").
next(ho3_goodbye,  s9, "true",  s10).

state(ho3_goodbye, s10, say).
text(ho3_goodbye,  s10, "Doei %first_name%.").
next(ho3_goodbye,  s10, "true",  s11).

state(ho3_goodbye, s11, say).
text(ho3_goodbye,  s11, "Bedankt, doei doei.").