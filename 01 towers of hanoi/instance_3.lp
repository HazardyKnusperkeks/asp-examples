%Legt fest welche Stifte es gibt.
%Kurz für
%peg(a).
%peg(b).
%peg(c).
peg(a;b;c).

%Legt fest was für Scheiben es gibt.
%Wieder eine Kurzform.
disk(1..4).

%Initial-Zustand.
init_on(1..4, a).

%Ziel-Zustand.
goal_on(1..4, c).

%Wie viele Züge wir erlauben.
moves(15).
