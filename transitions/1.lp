depth(X, 0)   :- state(X).
depth(X, K+1) :- interpret(Y, 0, A_0), get_var(X, 0, A_0), bool(A_0),
                 state(X), depth(Y, K), depth(K+1).

reachable(E, F) :- interpret(Y, 0, A_0), get_var(X, 0, A_0), bool(A_0),
                   attractor_label(X, E), attractor_label(Y, F).
