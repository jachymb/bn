% Learn long string with single 1-period attractor at it's end.
#include "optimize.lp".
nvars(5).
maxterms(N-1) :- nvars(N).
maxdepth((2**N)) :- nvars(N).

nattractor_points(1).

transition(0, 0).
transition(I, I-1) :- state(I), state(I-1).
