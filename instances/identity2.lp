% Learn identity function over 2 variables from constraints only (no data).

nvars(2).
maxdepth(1).
maxterms(1).

nattractor_points(2**N) :- nvars(N).
is_attractor(X) :- state(X).
:- attractor_label(E), attractor_label(F), E != F, reachable(E, F).
