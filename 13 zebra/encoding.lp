%Generate
{ color(H, C)       : house(H) } = 1 :- colors(C).
{ nationality(H, N) : house(H) } = 1 :- nationalities(N).
{ pet(H, P)         : house(H) } = 1 :- pets(P).
{ drink(H, D)       : house(H) } = 1 :- drinks(D).
{ cigarette(H, Z)   : house(H) } = 1 :- cigarettes(Z).

%Define
result(H, C, N, P, D, Z) :- color(H, C), nationality(H, N), pet(H, P), drink(H, D), cigarette(H, Z).
neighbour(H, I) :- house(H), house(I), H = I+1.
neighbour(H, I) :- house(H), house(I), H = I-1.

%Test
:- house(H), { color(H, C)       : colors(C) }        != 1.
:- house(H), { nationality(H, N) : nationalities(N) } != 1.
:- house(H), { pet(H, P)         : pets(P) }          != 1.
:- house(H), { drink(H, N)       : drinks(N) }        != 1.
:- house(H), { cigarette(H, N)   : cigarettes(N) }    != 1.

#show result/6.
