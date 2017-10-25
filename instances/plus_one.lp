% Learn big attractor over all states.
nvars(4).
maxterms(N) :- nvars(N).
maxdepth((2**N)) :- nvars(N).
nattractor_points(2**N) :- nvars(N).

transition(I, (I+1) \ (2**N)) :- nvars(N), state(I).

#show transition/2.
