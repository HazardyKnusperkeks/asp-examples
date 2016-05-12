% Generate
%Pro Zeitpunkt gibt es exakt einen Zug.
{ move(D,P,T) : disk(D), peg(P) } = 1 :- moves(M), T = 1..M.

% Define
%Kurz dafür, dass eine Disk D zu einem Zeitpunkt T auf irgendeinen Stift gestellt wird.
move(D,T)	:- move(D,_,T).

%Besagt wo sich welche Disk zu welchem Zeitpunkt befindet.
%Intialer Zustand.
on(D,P,0)	:- init_on(D,P).
%Die Disk wurde gerade hier hin bewegt.
on(D,P,T)	:- move(D,P,T).
%Die Disk ist hier, wird nicht bewegt und es ist nicht der letzte Zug, dann wird die Disk auch im nächsten Zug hier sein.
on(D,P,T+1)	:- on(D,P,T), not move(D,T+1), not moves(T).

%Markiert Disks als blockiert.
%Für den nächsten Zug blockiert, wenn die nächst kleinere Disk auf dem selben Stift ist. (Und wir nicht im letzten Zug sind.)
blocked(D-1,P,T+1)	:- on(D,P,T), not moves(T).
%Rekursiv nach unten, so lange es noch Disks gibt (und eine darüber hinaus).
blocked(D-1,P,T)	:- blocked(D,P,T), disk(D).

% Test
%Diese Ausdrücke müssen falsch sein. (Sonst könnte man daraus false ableiten.)
:- move(D,P,T), blocked(D-1,P,T).
:- move(D,T), on(D,P,T-1), blocked(D,P,T).
%Alle Disks müssen am Ende auf P sein. goal_on und moves ist klar. Das not vor on bewirkt, dass auch on wahr sein muss damit der gesamte Constraint nicht wahr ist.
:- goal_on(D,P), not on(D,P,M), moves(M).
%Analog zu oben. Um den Constraint zu false aus zu werten muss es nur ein on(D,P,T) geben. Besagt dass eine Disk zu einem Zeitpunkt nur auf einem Stab sein kann.
:- { on(D,P,T) } != 1, disk(D), moves(M), T = 1..M.

% Display
#show move/3.
