%Default
#const n = 3.

%Define
%<empty>

%Generate
{ color(N, 1..n) } = 1 :- node(N).

%Test
:- node(A), node(B), edge(A, B), color(A, C), color(B, C).

#show color/2.
