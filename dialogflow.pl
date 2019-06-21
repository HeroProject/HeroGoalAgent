:-dynamic question/2, answer/2, event/1, waitingForEvent/1, timeout/1,
	completed/1, nextCondition/1, currentState/1, waitingForAnswer/0, start/0,
	currentAttempt/1.

%%%%%%%%%%%%%%%%%%%%%%
%%% global (default) config parameters
% give a user two tries to provide an answer to a question (of whatever type). [IDEA: Override by adding try=X option to question type states] 
maxAnswerAttempts(2).

% Time to answer question
maxAnswerTime(4000).
%%%%%%%%%%%%%%%%%%%%%%%%%%

state(s1, say, []).
text(s1, "Hallo, ik ben Hero.", _).

state(s2, question, [type=yesno, response=speech, context='answer_yesno']).
text(s2, "Hou je van chocola?", _).

% In second instance try touch (feet bumpers)
state(s2f, question, [type=yesno, response=touch]).
text(s2f, "Sorry ik verstond je niet goed. Kun je daarom via de bumpers antwoord geven. Hou je van chocola?", _).

state(s3a, say, []).
text(s3a, "Ik houd ook van chocola!", _).

state(s3b, say, []).
text(s3b, "Ik vind chocola ook vies!", _).

state(s4, say, []).
text(s4, "Dat was het. Doei!", _).

next(s1, _, s2).
next(s2, 'answer_yes', s3a).
next(s2, 'answer_no', s3b).
next(s2, 'fail', s2f).
next(s2f, 'answer_yes', s3a).
next(s2f, 'answer_no', s3b).
next(s2f, 'fail', s4).
next(s3a, _, s4).
next(s3b, _, s4).

%state(s4, question, [type=mc, response=speech, context='answer_pets']).
%state(s4a, question, [type=mc, response=touch, options=['hond', 'kat', 'konijn', 'cavia']]).