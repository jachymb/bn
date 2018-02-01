#include "get_var.lp".
% Domains:

% Each literal is positive, negative or missing.
% We don't consider the situation of both occuring.
0 {pos(X, Y) ; neg(X, Y) } 1 :- variable(Y), variable(X).

% interpret/3 is a functional relation.
#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 

% Conjunction semantics:
interpret(I, X, 0) :- pos(X, Y), get_var(I, Y, 0).
interpret(I, X, 0) :- neg(X, Y), get_var(I, Y, 1).
interpret(I, X, 1) :- #count{Y : pos(X, Y), get_var(I, Y, 0)} = 0,
                      #count{Y : neg(X, Y), get_var(I, Y, 1)} = 0,
                      state(I), variable(X).

1 {pos(X, Y) : variable(Y); neg(X, Y) : variable(Y) } 2 :- variable(X).
#show pos/2.
#show neg/2.
#show nvars/1.
%#show maxterms/1.
