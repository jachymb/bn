:- not transition(_, Y), depth(Y, K), K > 0. 

% Check that the maxdepth/1 assumption is not violated.
:- transition(X, Y), depth(X, K), maxdepth(K), not is_attractor(X), not known_attractors.
:- transition(X, Y), depth(X, K), maxdepth(K), attractor_label(X, E), attractor_label(Y, F), not reachable(E, F), not known_attractors.
:- reachable(E, F), attractor_period(E, A), attractor_period(F, B), A != B, not known_attractors.
