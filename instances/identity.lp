% Learn identity function over varying number of variables from constraints only (no data).

{nvars(N) : N = 0..4} = 1.
maxdepth(1).
maxterms(1).

nattractor_points(2**N) :- nvars(N).
attractor_period(X, 1) :- state(X).
attractor_label(X, X) :- state(X).
