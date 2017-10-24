% Learn logical rules to do bounded factorization
#include "optimize.lp".

nvars(5).
maxdepth(2*N) :- nvars(N).
maxterms(2*N) :- nvars(N).

#script (python)
def smallest_divisor(n):
  n = n.number
  
  for i in range(2, n):
    d, m = divmod(n, i)
    if m == 0:
      return d
  else:
    return 1
#end.

transition(X, @smallest_divisor(X+1)-1) :- state(X).
nattractor_points(1).
nterms(N-1, 0) :- nvars(N). % Hint
