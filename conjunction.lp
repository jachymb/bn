% Domains:
bool(0;1).
variable(0..N-1) :- nvars(N).
state(0..(2**N)-1) :- nvars(N).

% Each literal is positive, negative or missing.
% We don't consider the situation of both occuring.
0 {pos(X, Y) ; neg(X, Y) } 1 :- variable(Y), variable(X).

% This is just for readability: Gets the Xth position in state I.
get_var(I, X, 1) :- (2**X) & I = 2**X, variable(X), state(I).
get_var(I, X, 0) :- (2**X) & I = 0,    variable(X), state(I).

% interpret/3 and interpret_term/4 are functional relations.
#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 

% Conjunction semantics:
interpret(I, X, 0) :- pos(X, Y), get_var(I, Y, 0).
interpret(I, X, 0) :- neg(X, Y), get_var(I, Y, 1).
interpret(I, X, 1) :- #count{Y : pos(X, Y), get_var(I, Y, 0)} = 0,
                      #count{Y : neg(X, Y), get_var(I, Y, 1)} = 0,
                      state(I), variable(X).
%:- interpret_term(I, X, T, 1), pos(X, Y, T), get_var(I, Y, 0), term(X, T), state(I), variable(X).
%:- interpret_term(I, X, T, 1), neg(X, Y, T), get_var(I, Y, 1), term(X, T), state(I), variable(X).

#show pos/2.
#show neg/2.
#show nvars/1.
%#show maxterms/1.
