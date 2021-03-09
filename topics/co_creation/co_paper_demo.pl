 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 		CO-REGULATION TROUGH CO-CREATION           %%%
%%%           	    Topics for LBR Demo		   	   %%%
%%%			 				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sound		 				   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_demo_sound, s1, say).
text(co_demo_sound,  s1, "I could really use the sound of a roaring lion").
next(co_demo_sound,  s1, "true",  s2).

state(co_demo_sound, s2, say).
text(co_demo_sound,  s2, "If you are ready to roar, press my left toe.").
leds(co_demo_sound,  s2, ["RightFootLeds"], ["groen"]).
stateConfig(co_demo_sound, s2, [next='RightBumperPressed']).
next(co_demo_sound,  s2, "true",  s3).

state(co_demo_sound, s3, say).
leds(co_demo_sound,  s3, ["RightFootLeds"], ["wit"]).
text(co_demo_sound,  s3, "Roar like a lion in 3, 2, 1").
next(co_demo_sound,  s3, "true",  s4).

state(co_demo_sound, s4, audioInput).
stateConfig(co_demo_sound, s4, [recordTime=2000, umVariable=sound_demo_lion]).
next(co_demo_sound, s4, "true", s5).

state(co_demo_sound, s5, say).
text(co_demo_sound, s5, "Awesome, that was a mighty roar! Let's test it out in a little story.").
next(co_demo_sound, s5, "true", s6).

state(co_demo_sound, s6, say).
text(co_demo_sound, s6, "During my last holiday in Namibia, I was driving my jeep through the beautiful savanna. It was then I heard this sound for the first time.").
next(co_demo_sound, s6, "true", s7).

state(co_demo_sound, s7, say).
audio(co_demo_sound, s7, source, sound_demo_lion).
next(co_demo_sound, s7, "true", s8).

state(co_demo_sound, s8, say).
text(co_demo_sound, s8, "It was a majestic lion, hidden in the tall grass \pau=250\ ").
next(co_demo_sound, s8, "true", s9).

state(co_demo_sound, s9, say).
text(co_demo_sound, s9, "It worked perfectly if I say so myself, well done my friend").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Motion	    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_demo_motion, s1, say).
text(co_demo_motion,  s1, "I would really like to pretend my arms are the trunk of an elephant.").
next(co_demo_motion,  s1, "true",  s2).

state(co_demo_motion, s2, say).
text(co_demo_motion,  s2, "If you have a cool idea on how my arms should move, press my left toe.").
leds(co_demo_motion,  s2, ["RightFootLeds"], ["groen"]).
stateConfig(co_demo_motion, s2, [next='RightBumperPressed', repeat='MiddleTactilTouched']).
next(co_demo_motion,  s2, "true",  s3).

state(co_demo_motion, s3, say).
text(co_demo_motion,  s3, "You can grab my arms now.").
leds(co_demo_motion,  s3, ["RightFootLeds"], ["wit"]).
stateConfig(co_demo_motion, s3, [noAnimation="true"]).
set_stiffness(co_demo_motion, s3, ['RArm', 'LArm'], 0).
next(co_demo_motion,  s3, "true",  s4).

state(co_demo_motion, s4, say).
text(co_demo_motion, s4, "Let's start in 3. 2. 1").
next(co_demo_motion,  s4, "true",  s5).

state(co_demo_motion, s5, say).
start_motion_recording(co_demo_motion, s5, ['RArm', 'LArm']).
stateConfig(co_demo_motion, s5, [waitTimer=3500]).
next(co_demo_motion,  s5, "true",  s6).

state(co_demo_motion, s6, say).
text(co_demo_motion,  s6, "3. 2. 1. And done.").
stateConfig(co_demo_motion, s6, [noAnimation="true"]).
next(co_demo_motion,  s6, "true",  s7).

state(co_demo_motion, s7, say).
stop_motion_recording(co_demo_motion, s7, ['RArm', 'LArm']).
stateConfig(co_demo_motion, s7, [noAnimation="true", umVariable=demo_motion_elephant]).
next(co_demo_motion,  s7, "true",  s8).

state(co_demo_motion, s8, say).
go_to_base_posture(co_demo_motion, s8).
text(co_demo_motion,  s8, "Thanks for the assist!").
next(co_demo_motion,  s8, "true",  s9).

state(co_demo_motion, s9, say).
text(co_demo_motion,  s9, "Let's give this new movement a spin shall we. \pau=250\ ").
next(co_demo_motion,  s9, "true",  s10).

state(co_demo_motion, s10, say).
text(co_demo_motion,  s10, "Once upon a time in a beautiful land, there was a herd of elephants").
next(co_demo_motion,  s10, "true",  s11).

state(co_demo_motion, s11, say).
text(co_demo_motion,  s11, "They stopped at their local watering hole to get something to drink.").
next(co_demo_motion,  s11, "true",  s12).

state(co_demo_motion, s12, say).
text(co_demo_motion,  s12, "The little ones where splashing around in the water.").
next(co_demo_motion,  s12, "true",  s13).

state(co_demo_motion, s13, say).
text(co_demo_motion,  s13, "They trumpeted with their little trunks out of sheer joy").
next(co_demo_motion,  s13, "true",  s14).

state(co_demo_motion, s14, say).
play_motion(co_demo_motion, s14, demo_motion_elephant).
audio(co_demo_motion, s14, server, "resources/sounds/elephant.wav").
next(co_demo_motion, s14, "true", s15).

state(co_demo_motion, s15, say).
go_to_base_posture(co_demo_motion, s15).
text(co_demo_motion,  s15, "Yes, this was the movement I was looking for! Mission accomplished.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Light	    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_demo_light, s1, say).
text(co_demo_light,  s1, "I have a few dolphin friends, and they asked me to create a light show for them").
next(co_demo_light,  s1, "true",  s2).

state(co_demo_light, s2, say).
text(co_demo_light,  s2, "I could really use your help with that.").
next(co_demo_light,  s2, "true",  s3).

state(co_demo_light, s3, say).
text(co_demo_light,  s3, "Should we animate our light show?").
stateConfig(co_demo_light, s3, [waitTimer=1500]).
next(co_demo_light,  s3, "true",  s4).

state(co_demo_light, s4, say).
text(co_demo_light,  s4, "Great. Shall I let the lights blink or alternate?").
stateConfig(co_demo_light, s4, [waitTimer=2500]).
next(co_demo_light,  s4, "true",  s5).

state(co_demo_light, s5, say).
text(co_demo_light,  s5, "Blinking lights, great choice").
next(co_demo_light,  s5, "true",  s6).

state(co_demo_light, s6, say).
text(co_demo_light,  s6, "Which colors should I use?").
stateConfig(co_demo_light, s6, [waitTimer=4000]).
next(co_demo_light,  s6, "true",  s7).

state(co_demo_light, s7, say).
text(co_demo_light,  s7, "That's a fitting combination of colors \pau=250\ ").
next(co_demo_light,  s7, "true",  s8).

state(co_demo_light, s8, say).
text(co_demo_light,  s8, "Let's see if it would work for my dolphin friends.").
next(co_demo_light,  s8, "true",  s9).

state(co_demo_light, s9, say).
audio(co_demo_light, s9, server, "resources/sounds/dolphin_show.wav").
start_led_anim(co_demo_light, s9, "all", "blink", ["purple", "orange", "green"], 500).
next(co_demo_light,  s9, "true",  s10).

state(co_demo_light, s10, say).
text(co_demo_light,  s10, "I think they will love it! Another job well done.").
stop_led_anim(co_demo_light, s10).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Co-regulation    		                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
state(co_demo_regulation, s1, say).
text(co_demo_regulation,  s1, "Do you know what I could use? A sound effect for a proper slam or bang").
next(co_demo_regulation,  s1, "true",  s2).

state(co_demo_regulation, s2, say).
text(co_demo_regulation,  s2, "Do you want to make one for me or shall I download some options?").
stateConfig(co_demo_regulation, s2, [waitTimer=3000]).
next(co_demo_regulation,  s2, "true",  s3).

state(co_demo_regulation, s3, say).
text(co_demo_regulation,  s3, "Downloading it is.").
next(co_demo_regulation,  s3, "true",  s4).

state(co_demo_regulation, s4, say).
text(co_demo_regulation,  s4, "I'm now downloading two sound effects.").
start_led_anim(co_demo_regulation, s4, "eyes", "rotate", ["purple"], 500).
stateConfig(co_demo_regulation, s4, [waitTimer=1500]).
next(co_demo_regulation,  s4, "true",  s5).

state(co_demo_regulation, s5, say).
stop_led_anim(co_demo_regulation, s5).
text(co_demo_regulation,  s5, "Done. This is the first option.").
next(co_demo_regulation,  s5, "true", s6).

state(co_demo_regulation, s6, say).
audio(co_demo_regulation, s6, server, "resources/sounds/door_slam1.wav").
next(co_demo_regulation,  s6, "true", s7).

state(co_demo_regulation, s7, say).
text(co_demo_regulation,  s7, "And this is the second option.").
next(co_demo_regulation,  s7, "true", s8).

state(co_demo_regulation, s8, say).
audio(co_demo_regulation, s8, server, "resources/sounds/door_slam2.wav").
next(co_demo_regulation,  s8, "true", s9).

state(co_demo_regulation, s9, say).
text(co_demo_regulation,  s9, "Do you want the first or second option, or do you want me to pick?").
stateConfig(co_demo_regulation, s9, [waitTimer=3000]).
next(co_demo_regulation,  s9, "true",  s10).

state(co_demo_regulation, s10, say).
text(co_demo_regulation,  s10, "All right, I will pick.").
next(co_demo_regulation,  s10, "true",  s11).

state(co_demo_regulation, s11, say).
text(co_demo_regulation,  s11, "I liked the second one more, so I picked that one.").
