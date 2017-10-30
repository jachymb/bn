#include "reachable.lp".
#include "dnf_syntax.lp".
#include "redundancy.lp".

maxterms(n).
nvars(v).

#maximize{ K : max_excentricity(K)}.

#show max_excentricity/1.
