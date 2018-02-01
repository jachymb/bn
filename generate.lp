nvars(n).
maxdepth(d).
maxterms(1).
nterms(X, K) :- maxterms(K), variable(X).
nattractor_points(1).

-known_attractors.

observation(I,X,B) :- interpret(I,X,B).
