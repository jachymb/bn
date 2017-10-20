% Domains:
bool(0;1).
variable(0..N-1) :- nvars(N).
state(0..(2**N)-1) :- nvars(N).
depth(0..K) :- maxdepth(K).
term(1..T) :- maxterms(T).

nterms(0).
nterms(K) :- term(K).

{nterms(X, K) : nterms(K)} = 1 :- variable(X).
term(X, T) :- nterms(X, K), T <= K, term(T).

% Each literal is positive, negative or missing.
% We don't consider the situation of both occuring.
0 {pos(X, Y, T) ; neg(X, Y, T) } 1 :- term(X, T), variable(Y), variable(X).

% This is just for readability: Gets the Xth position in state I.
get_var(I, X, 1) :- (2**X) & I = 2**X, variable(X), state(I).
get_var(I, X, 0) :- (2**X) & I = 0,    variable(X), state(I).

% interpret/3 and interpret_term/4 are functional relations.
#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 
#count{B : interpret_term(I, X, T, B) : bool(B) } = 1 :- state(I), term(X, T).

% Conjunction semantics:
interpret_term(I, X, T, 0) :- pos(X, Y, T), get_var(I, Y, 0).
interpret_term(I, X, T, 0) :- neg(X, Y, T), get_var(I, Y, 1).
interpret_term(I, X, T, 1) :- #count{Y : pos(X, Y, T), get_var(I, Y, 0)} = 0,
                              #count{Y : neg(X, Y, T), get_var(I, Y, 1)} = 0,
                              state(I), term(X, T), variable(X).

% t-DNF semantics
interpret(I, X, 1) :- interpret_term(I, X, T, 1), term(X, T), state(I).
interpret(I, X, 0) :- #count{K : interpret_term(I, X, K, 0)} = T, nterms(X, T), state(I).
% DNF redundancy restrictions:
% Empty clause possible only if nothing else present
:- #count{Y : pos(X, Y, T) ; Y : neg(X, Y, T) } = 0, variable(X), term(X, T), nterms(X, K), K > 1.

%literal_gte(X, T1, T2, Y) :- pos(X, Y, T1), pos(X, Y, T2), term(X, T1), term(X, T2).
%literal_gte(X, T1, T2, Y) :- neg(X, Y, T1), neg(X, Y, T2), term(X, T1), term(X, T2).
%literal_gte(X, T1, T2, Y) :- neg(X, Y, T1), pos(X, Y, T2), term(X, T1), term(X, T2).
%literal_gte(X, T1, T2, Y) :- pos(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2).
%literal_gte(X, T1, T2, Y) :- neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2).
%literal_gte(X, T1, T2, Y) :- not pos(X,Y,T1), not neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2), variable(Y).
%term_gte(X, T1, T2) :- #count{Y : literal_gte(X, T1, T2, Y)} = N, nvars(N), term(X, T1), term(X, T2).
%:- term_gte(X, T1, T2), T1 > T2, variable(X).

literal_subsumes(X, T2, T1, Y) :- pos(X, Y, T1), pos(X, Y, T2), term(X, T1), term(X, T2).
literal_subsumes(X, T2, T1, Y) :- neg(X, Y, T1), neg(X, Y, T2), term(X, T1), term(X, T2).
literal_subsumes(X, T2, T1, Y) :- pos(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2).
literal_subsumes(X, T2, T1, Y) :- neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2).
literal_subsumes(X, T2, T1, Y) :- not pos(X,Y,T1), not neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2), variable(Y).
term_subsumes(X, T2, T1) :- #count{Y : literal_subsumes(X, T2, T1, Y)} = N, nvars(N), term(X, T1), term(X, T2).
:- term_subsumes(X, T2, T1), T2 != T1, variable(X).

% Attractor points sums
attractor_label(1..A) :- nattractor_points(A).
{attractor_period(X, K) : is_attractor(X), depth(K)} = A :- nattractor_points(A).

% attractor_label is a functional relation
#count{N : attractor_label(X, N) : attractor_label(N)} = 1 :- is_attractor(X).
% To avoid symmetrical models, force labeling to be canonically ordered:
:- attractor_label(X, N), attractor_label(Y, M), X > Y, N <= M. 

% Attractor is a state that is reachable in any given number of steps from some state.
is_attractor(X) :- state(X), #count{K : depth(X, K)} = D+1, maxdepth(D).

attractor_period(X, K) :- attractor_label(X, E), #count{F : reachable(E, F)} = K.

% There is always an attractor.
% This condition may make the instance unsatisfiable if t is set too low.
{is_attractor(X) : state(X)} > 0.

% Attractor state inter-reachability is an equivalence relation.
% It is not necessary, but somewhat speeds up grounding.
reachable(E, E) :- attractor_label(E).
%reachable(E, F) :- reachable(F, E), attractor_label(E), attractor_label(F).
reachable(E, F) :- reachable(E, G), reachable(G, F), attractor_label(E), attractor_label(F), attractor_label(G).

% Minimize total number of literals
#minimize{ 1@2, X,Y,T : pos(X,Y,T) }.
#minimize{ 1@2, X,Y,T : neg(X,Y,T) }.

% Prefer the most compact DNFs
#minimize{ T@1, X : nterms(X, T), variable(X)}.

#show pos/3.
#show neg/3.
#show nterms/2.
#show attractor_period/2.
#show nvars/1.
#show maxterms/1.
