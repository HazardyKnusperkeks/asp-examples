%Generate
{ cycle(A, B) : edge(A, B) } = 1 :- node(A).
{ cycle(A, B) : edge(A, B) } = 1 :- node(B).

%Define
reached(N) :- cycle(1, N).
reached(N) :- cycle(X, N), reached(X).

%Optimize
#minimize { C,A,B : cycle(A, B), cost(A, B, C) }.

%Test
:- node(N), not reached(N).

#show cycle/2.
