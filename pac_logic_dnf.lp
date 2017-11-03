#include "get_var.lp".
term_length(0..K) :- max_term_length(K). % Learn k-CNF

gen_descriptor(-1, t, 0).
gen_descriptor(X, and(L, X, R), K) :- variable(X), gen_descriptor(Y, R, K-1), Y < X, bool(L), term_length(K).
descriptor(D) :- gen_descriptor(_, D, _).

apply_descriptor(I, t, 1) :- state(I).
apply_descriptor(I, and(L, X, R), 0) :- state(I), get_var(I, X, 1-L), descriptor(and(L, X, R)). 
apply_descriptor(I, and(L, X, R), 1) :- state(I), get_var(I, X, L), descriptor(and(L, X, R)), apply_descriptor(I, R, 1).

%feasible(X, D) :- descriptor(D), variable(X), observation(I, X, 0), apply_descriptor(I, D, 0).
-feasible(X, D) :- descriptor(D), variable(X), observation(I, X, 1), apply_descriptor(I, D, 0).
feasible(X, D) :- not -feasible(X, D), descriptor(D), variable(X).

{used(X, D) : feasible(X, D)}.

% interpret/3 is a functional relation.
#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 
interpret(I, X, B) :- observation(I, X, B).
interpret(I, X, 1) :- apply_descriptor(I, D, 1), used(X, D).
interpret(I, X, 0) :- #count{D : apply_descriptor(I, D, 1), used(X, D)} = 0, state(I), variable(X).

#minimize{1,D : used(X, D)}.

#show used/2.
%#show D : feasible(D, 0).
