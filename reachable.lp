#include "transition.lp".
depth(I) :- state(I).
period(K+1) :- state(K).

reachable(I, J) :- transition(I, J), state(I), state(J).
reachable(I, J) :- transition(I, A), reachable(A, J), state(I), state(J), state(A).
is_attractor(X) :- reachable(X, X).

attractor_period(I, K) :- #count{J : reachable(I, J), is_attractor(J)} = K, depth(K-1), is_attractor(I).

% attractor_period/2 is a functional relation.
#count{K : attractor_period(E, K) : period(K)} = 1 :- is_attractor(E).

#count{K : excentricity(I, K) : depth(K)} = 1 :- state(I).
excentricity(I, K) :- attractor_period(I, K+1), is_attractor(I), depth(K), state(I).
excentricity(I, K+1) :- transition(I, J), excentricity(J, K), depth(K+1), state(I), state(J), not is_attractor(I).

max_excentricity(K) :- #max{Q : excentricity(I, Q), state(I)} = K, depth(K).
#count{K : max_excentricity(K) : depth(K)} = 1.

