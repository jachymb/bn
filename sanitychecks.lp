%#include "transition.lp".
%:- not transition(_, Y), depth(Y, K), K > 0. 

% Check that the maxdepth/1 assumption is not violated.
:- transition(X, Y), depth(X, K), maxdepth(K), not is_attractor(X).
:- transition(X, Y), depth(X, K), maxdepth(K), attractor_label(X, E), attractor_label(Y, F), not reachable(E, F).
:- reachable(E, F), attractor_period(E, A), attractor_period(F, B), A != B.
#show depth/2.
