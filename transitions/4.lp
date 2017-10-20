depth(X, 0)   :- state(X).
depth(X, K+1) :- interpret(Y, 0, A_0), get_var(X, 0, A_0), bool(A_0),
                 interpret(Y, 1, A_1), get_var(X, 1, A_1), bool(A_1),
                 interpret(Y, 2, A_2), get_var(X, 2, A_2), bool(A_2),
                 interpret(Y, 3, A_3), get_var(X, 3, A_3), bool(A_3),
                 state(X), depth(Y, K), depth(K+1).

reachable(E, F) :- interpret(Y, 0, A_0), get_var(X, 0, A_0), bool(A_0),
                   interpret(Y, 1, A_1), get_var(X, 1, A_1), bool(A_1),
                   interpret(Y, 2, A_2), get_var(X, 2, A_2), bool(A_2),
                   interpret(Y, 3, A_3), get_var(X, 3, A_3), bool(A_3),
                   attractor_label(X, E), attractor_label(Y, F).
