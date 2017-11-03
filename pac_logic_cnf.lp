#include "get_var.lp".
clause_length(0..K) :- max_clause_length(K). % Learn k-CNF

gen_descriptor(-1, f, 0).
gen_descriptor(X, or(L, X, R), K) :- variable(X), gen_descriptor(Y, R, K-1), Y < X, bool(L), clause_length(K).
descriptor(D) :- gen_descriptor(_, D, _).

apply_descriptor(I, f, 0) :- state(I).
apply_descriptor(I, or(L, X, R), 1) :- state(I), get_var(I, X, L), descriptor(or(L, X, R)). 
apply_descriptor(I, or(L, X, R), 0) :- state(I), get_var(I, X, 1-L), descriptor(or(L, X, R)), apply_descriptor(I, R, 0).

-feasible(X, D) :- descriptor(D), variable(X), observation(I, X, 1), apply_descriptor(I, D, 0).
feasible(X, D) :- not -feasible(X, D), descriptor(D), variable(X).

{used(X, D) : feasible(X, D)}.

% interpret/3 is a functional relation.
#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 
interpret(I, X, B) :- observation(I, X, B).
interpret(I, X, 0) :- apply_descriptor(I, D, 0), used(X, D).
interpret(I, X, 1) :- #count{D : apply_descriptor(I, D, 0), used(X, D)} = 0, state(I), variable(X).

%#include "reachable.lp".

%transformed_observation(I, f, 0) :- state(I).
%transformed_observation(I, or(L, X, R), 1) :- state(I), observation(I, X, L), descriptor(or(L, X, R)).
%transformed_observation(I, or(L, X, R), 0) :- state(I), observation(I, X, 1-L), transformed_observation(I, R, 0), descriptor(or(L, X, R))

{attractor_period(I, 1) : is_attractor(I)} = 1.
{attractor_period(I, 2) : is_attractor(I)} = 2.
:- attractor_period(I, K), K > 2.

%satisfiable(t, X) :- variable(X).
#show used/2.
%#show D : feasible(D, 0).
