#include "get_var.lp".
term_length(0..K) :- max_term_length(K). % Learn k-CNF

gen_descriptor(-1, t, 0).
gen_descriptor(X, and(L, X, R), K) :- variable(X), gen_descriptor(Y, R, K-1), Y < X, bool(L), term_length(K).
descriptor(D) :- gen_descriptor(_, D, _).

apply_descriptor(I, t, 1) :- state(I).
apply_descriptor(I, and(L, X, R), 0) :- state(I), get_var(I, X, 1-L), descriptor(and(L, X, R)). 
apply_descriptor(I, and(L, X, R), 1) :- state(I), get_var(I, X, L), descriptor(and(L, X, R)), apply_descriptor(I, R, 1).

feasible(X, D) :- descriptor(D), variable(X), observation(I, X, 1), apply_descriptor(I, D, 1).
%-feasible(X, D) :- descriptor(D), variable(X), observation(I, X, 1), apply_descriptor(I, D, 0).
%feasible(X, D) :- not -feasible(X, D), descriptor(D), variable(X).

nliterals(t, 0).
nliterals(and(L, X, R), K+1) :- nliterals(R, K), descriptor(and(L, X, R)).
%totalliterals(Q) :- #sum{K,D,X : nliterals(D, K), used(X, D), variable(X)} = Q.

{used(X, D) : feasible(X, D)}.

% interpret/3 is a functional relation.
#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 
interpret(I, X, B) :- observation(I, X, B).
interpret(I, X, 0) :- #count{D : apply_descriptor(I, D, 1), used(X, D)} = 0, state(I), variable(X).
interpret(I, X, 1) :- apply_descriptor(I, D, 1), used(X, D).

resolvable(and(L, X, R), and(1-L, X, R)) :- descriptor(and(L, X, R)).
resolvable(and(L, X, R1), and(L, X, R2)) :- resolvable(R1, R2), descriptor(and(L, X, R2)), descriptor(and(L, X, R1)).
:- used(X, D1), used(X, D2), resolvable(D1, D2).

subsumes(D, D) :- descriptor(D).
subsumes(t, D) :- descriptor(D).
subsumes(and(L, X, R1), and(L, X, R2)) :- descriptor(and(L, X, R1)), descriptor(and(L, X, R2)), subsumes(R1, R2).
subsumes(and(L1, X1, R1), and(L2, X2, R2)) :- descriptor(and(L1, X1, R1)), descriptor(and(L2, X2, R2)), X1 < X2, subsumes(and(L1, X1, R1), R2).

:- used(X, D1), used(X, D2), subsumes(D1, D2), D1 != D2.

#minimize{K@2, K : totalliterals(K)}.
#minimize{1@1, D : used(X, D)}.


#show used/2.
#show nvars/1.
#show nliterals/2.
%#show totalliterals/1.
%#show attractor_period/2.
%#show D : feasible(D, 0).
