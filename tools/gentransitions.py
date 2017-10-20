#!/usr/bin/env python

import sys
n = int(sys.argv[1])
assert n > 0

print("depth(X, 0)   :- state(X).")
print("depth(X, K+1) :- ", end="")
print(",\n                 ".join(f"interpret(Y, {t}, A_{t}), get_var(X, {t}, A_{t}), bool(A_{t})" for t in range(n)), end ="")
print(",\n                 state(X), depth(Y, K), depth(K+1).")
print()
print("reachable(E, F) :- ", end="")
print(",\n                   ".join(f"interpret(Y, {t}, A_{t}), get_var(X, {t}, A_{t}), bool(A_{t})" for t in range(n)), end ="")
print(",\n                   attractor_label(X, E), attractor_label(Y, F).")


