#include "reachable.lp".
%#include "dnf_syntax.lp".
#include "conjunction.lp".
%#include "conjunction_ternary.lp".
%#include "conjunction2.lp".
%#include "redundancy.lp".

maxterms(n).
nvars(v).

%1 <= #count{ X : pos(X, Y) : variable(X); X : neg(X, Y) : variable(X)} <= 2 :- variable(Y).
#maximize{ K : max_excentricity(K)}.

%:- attractor_period(I, K), max_excentricity(Q), K != Q, state(I).

#show max_excentricity/1.
#show maxterms/1.
#show nvars/1.
