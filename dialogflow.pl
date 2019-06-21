:-dynamic flow/1, mood/1, lang/1, step/1, question/2, answer/2, event/1, waitingForEvent/1, 
	timeout/1, askAgain/1, repeated/1, personDetected/1.

% State handling
:- dynamic completed/1, nextCondition/1, currentState/1, waitingForAnswer/1, start/0.

%%%%%%%%%%%%%%%%%%%%%%
%%% global (default) config parameters
% give a user two tries to provide an answer to a question (of whatever type). [IDEA: Override by adding try=X option to question type states] 
tryQuestion(2).

%%%%%%%%%%%%%%%%%%%%%%%%%%
state(s1, say, []).
text(s1, "Hallo, ik ben Hero.", _).

state(s2, question, [type=yesno, response=speech, context='answer_yesno']).
text(s2, "Hou je van chocola?", _).

% In second instance try touch (feet bumpers)
state(s2a, question, [type=yesno, response=touch]).
text(s2a, "Hou je van chocola?", _).

state(s3a, say, []).
text(s3a, "Ik houd ook van chocola!", _).

state(s3b, say, []).
text(s3b, "Ik vind chocola ook vies!", _).

state(s4, question, [type=mc, response=speech, context='answer_pets']).

state(s4a, question, [type=mc, response=touch, options=['hond', 'kat', 'konijn', 'cavia']]).

next(s1, _, s2).
next(s2, 'answer_yes', s3a).
next(s2, 'answer_no', s3b).



% HIERONDER DE OUDE CODE VAN JUDITH
	
text(sorry,'nl-NL',"Sorry, ik kon je niet goed verstaan. Tot ziens!").
text(sorry,'en-US',"Sorry, I could not hear you properly. Goodbye!").

eyes(_,n,'white').
readback(_,n,'nl-NL','Ik verstond ~a.').
readback(_,n,'en-US','I heard ~a.').
readback(_,n,_,'nl-NL','Ik verstond ~a.').
readback(_,n,_,'en-US','I heard ~a.').

% MAIN FLOW
img('M1','nl-NL','hallo.png').
img('M1','en-US','hello.png').
anim('M1',h,'animations/Stand/Gestures/Hey_1').
eyes('M1',h,'rainbow').
text('M1',h,'nl-NL',"Hallo daar! Wat leuk dat je er bent. ").
text('M1',h,'en-US',"Hi there! I am glad to see you. ").
anim('M1',n,'animations/Stand/Gestures/Hey_4').
text('M1',n,'nl-NL',"Hallo daar!").
text('M1',n,'en-US',"Hi there!").
next('M1',1,'M2').
next('M1',2,'F1').

anim('M2',h,'animations/Stand/Gestures/Explain_11').
eyes('M2',h,'yellow').
text('M2',_,'nl-NL',"Mag ik je drie vragen stellen?").
text('M2',_,'en-US',"Can I ask you three questions?").
anim('M2',n,'animations/Stand/Gestures/Explain_8').
next('M2',_,'answer_yes','Q1'). next('M2',_,'YES','Q1').
next('M2',1,'answer_no','F1'). next('M2',1,'NO','F1').
next('M2',2,'answer_no','E1'). next('M2',2,'NO','E1').

% QUESTIONS TO VISITOR
anim('Q1',h,'animations/Stand/Gestures/Enthusiastic_5').
anim('Q1',n,'').
eyes('Q1',h,'rainbow').
text('Q1',h,'nl-NL',"Oke, daar gaan we! Hoe oud ben je?").
text('Q1',h,'en-US',"Ok, lets begin! How old are you?").
text('Q1',n,'nl-NL',"Oke. Hoe oud ben je?").
text('Q1',n,'en-US',"Ok. How old are you?").
question('Q1','nl-NL',"Hoe oud ben je?").
question('Q1','en-US',"How old are you?").
readback('Q1',h,'nl-NL','~a. Dat vind ik een mooie leeftijd.').
readback('Q1',h,'en-US','~a. I think that is a beautiful age.').
next('Q1','>=18','Q3').
next('Q1','<18','Q2').

anim('Q2',_,'').
eyes('Q2',h,'yellow').
text('Q2',_,'nl-NL',"Je bent jonger dan 18. Vraag je ouders om toestemming om door te gaan. Heb je toestemming?").
text('Q2',_,'en-US',"You are under 18. Ask you parents for permission to continue. Do you have permission?").
question('Q2','nl-NL',"Heb je toestemming?").
question('Q2','en-US',"Do you have permission?").
readback('Q2','nl-NL',"Dan is het goed.").
readback('Q2','en-US',"Ok then.").
next('Q2',_,'answer_yes','Q3'). next('Q2',_,'YES','Q3').
next('Q2',1,'answer_no','F1'). next('Q2',1,'NO','F1').
next('Q2',2,'answer_no','E1'). next('Q2',2,'NO','E1').

anim('Q3',h,'animations/Stand/Gestures/Excited_1').
eyes('Q3',h,'yellow').
text('Q3',_,'nl-NL',"Wat is jouw woonplaats?").
text('Q3',_,'en-US',"Where do you live?").
readback('Q3',h,'nl-NL','Wat leuk dat je uit ~a komt.').
readback('Q3',h,'en-US','~a, What a lovely place.').
anim('Q3',n,'').
next('Q3','Q4').

anim('Q4',_,'').
eyes('Q4',h,'yellow').
text('Q4',_,'nl-NL',"De laatste vraag. Is dit de eerste keer dat je aai bezoekt?").
text('Q4',_,'en-US',"The final question. Is this the first time that you visit eye?").
question('Q4','nl-NL',"Is dit de eerste keer dat je EYE bezoekt?").
question('Q4','en-US',"Is this the first time that you visit EYE?").
readback('Q4',h,'answer_yes','nl-NL',"OK. Voor de toiletten ga je rechtdoor en dan naar links.").
readback('Q4',h,'YES','nl-NL',"OK. Voor de toiletten ga je rechtdoor en dan naar links.").
readback('Q4',h,'answer_yes','en-US',"OK. The bathroom is straight ahead and then to the left."). 
readback('Q4',h,'YES','en-US',"OK. The bathroom is straight ahead and then to the left.").
readback('Q4',h,'answer_no','nl-NL',"OK. Dan hoef ik niet te vertellen waar de toiletten zijn."). 
readback('Q4',h,'NO','nl-NL',"OK. Dan hoef ik niet te vertellen waar de toiletten zijn.").
readback('Q4',h,'answer_no','en-US',"OK. Then I do not need to tell you the way to the bathroom."). 
readback('Q4',h,'NO','en-US',"OK. Then I do not need to tell you the way to the bathroom.").
next('Q4','Q5').

img('Q5','nl-NL','bedankt.png').
img('Q5','en-US','thankyou.png').
anim('Q5',h,'animations/Stand/Gestures/Everything_1').
eyes('Q5',h,'rainbow').
text('Q5',h,'nl-NL',"Heel erg bedankt voor je antwoorden!").
text('Q5',h,'en-US',"Thanks a lot for your response!").
anim('Q5',n,'animations/Stand/Gestures/Everything_4').
text('Q5',n,'nl-NL',"Bedankt voor je antwoorden.").
text('Q5',n,'en-US',"Thank you for your response.").
next('Q5',1,'F1').
next('Q5',2,'E1').

% FILM FRAGMENT
img('F1','trailer_eye_1minuut.mp4').
anim('F1',h,'animations/Stand/Gestures/Enthusiastic_4').
eyes('F1',h,'yellow').
text('F1',h,'nl-NL',"Zuid Afrikaanse studenten hebben een hele mooie film gemaakt in de geest van Kent ridj. Wil je de tree ler zien?").
text('F1',h,'en-US',"South African students have made a beautiful film in Kentridge's spirit. Would you like to see the trailer?").
question('F1','nl-NL',"Wil je de trailer zien?").
question('F1','en-US',"Would you like to see the trailer?").
anim('F1',n,'').
text('F1',n,'nl-NL',"Zuid Afrikaanse studenten hebben een film gemaakt in de geest van Kent ridj. Wil je de tree ler zien?").
text('F1',n,'en-US',"South African students have made a film in Kentridge's spirit. Would you like to see the trailer?").
next('F1',_,'answer_yes','F2'). next('F1',_,'YES','F2').
next('F1',1,'answer_no','E1'). next('F1',1,'NO','E1').
next('F1',2,'answer_no','M2'). next('F1',2,'NO','M2').

anim('F2',h,'animations/Stand/Gestures/Give_4').
eyes('F2',h,'yellow').
text('F2',_,'nl-NL',"De hele film is beneden te zien tegenover de winkel.").
text('F2',_,'en-US',"You can watch the full movie downstairs across from the shop.").
question('F2','nl-NL',"De hele film is beneden te zien tegenover de winkel.").
question('F2','en-US',"You can watch the full movie downstairs across from the shop.").
anim('F2',n,'animations/Stand/Gestures/Give_6').
next('F2',1,'E1').
next('F2',2,'M2').

% END OF INTERACTION
img('E1','heart.png').
anim('E1',h,'animations/Stand/Gestures/Hysterical_1').
eyes('E1',h,'yellow').
text('E1',_,'nl-NL',"Leuk je te ontmoeten!").
text('E1',_,'en-US',"It was a pleasure to meet you!").
anim('E1',n,'').
next('E1','E2').

anim('E2',h,'animations/Stand/Gestures/Me_1').
eyes('E2',h,'yellow').
text('E2',_,'nl-NL',"Hoe vond je dat ik het deed? Kies een gezichtje op het scherm.").
text('E2',_,'en-US',"How did I do? Select a smiley on the screen.").
anim('E2',n,'').
next('E2','E3').

img('E3','eye_logo.jpg',"I think this is the beginning of a beautiful friendship!").
anim('E3',_,'animations/Stand/Gestures/ShowSky_5').
eyes('E3',h,'yellow').
text('E3',_,'nl-NL',"Oke. Ik doe mijn best! Zullen we samen op de foto gaan? Wil jij er 1 maken?").
text('E3',_,'en-US',"Ok. I am trying my best! Do you want to take a picture of us together?").
next('E3','E4').

anim('E4',h,'animations/Stand/Gestures/Hey_3').
eyes('E4',h,'yellow').
text('E4',_,'nl-NL',"Veel plezier in het museum!").
text('E4',_,'en-US',"Enjoy the museum!").
anim('E4',n,'animations/Stand/Gestures/Hey_4').
