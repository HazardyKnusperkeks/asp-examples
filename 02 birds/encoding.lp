%Vögel können fliegen oder auch nicht, klingt komisch, ist aber so.
    fly(X) :- bird(X), not neg_fly(X).
neg_fly(X) :- bird(X), not     fly(X).
%Ausser Pinguine, die sind zu doof dafür.
neg_fly(X) :- penguin(X).
