%Wie Example 2, aber mit Negation von fly/1 anstelle von einem zusätzlichen neg_fly/1.
 fly(X) :- bird(X), not -fly(X).
-fly(X) :- bird(X), not  fly(X).
-fly(X) :- penguin(X).
