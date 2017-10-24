% Domains:
bool(0;1).
variable(0..N-1) :- nvars(N).
state(0..(2**N)-1) :- nvars(N).
depth(0..K) :- maxdepth(K).
period(1..K+1) :- maxdepth(K). % Perhaps a bit faster unified? TODO
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



% transition/2 is a functional relation.
#count{J : transition(I, J) : state(J)} = 1 :- state(I).
:- transition(I, J), interpret(I, X, B), get_var(J, X, 1-B).

depth(X, 0)   :- state(X).
depth(X, K+1) :- transition(Y, X), depth(Y, K), depth(K+1).
:- not transition(_, Y), depth(Y, K), K > 0. % Should fire iff attractor assumptions are violated

% Check that the maxdepth/1 assumption is not violated.
:- transition(X, Y), depth(X, K), maxdepth(K), not is_attractor(X).
:- transition(X, Y), depth(X, K), maxdepth(K), attractor_label(X, E), attractor_label(Y, F), not reachable(E, F).
:- reachable(E, F), attractor_period(E, A), attractor_period(F, B), A != B.


% DNF redundancy restrictions for speedup:
% 1) Empty clause possible only if nothing else present
:- #count{Y : pos(X, Y, T) ; Y : neg(X, Y, T) } = 0, variable(X), term(X, T), nterms(X, K), K > 1.

% 2) Remove rendundancy by requiring that no term in a DNF subsumes another:
literal_subsumes(X, T2, T1, Y) :- pos(X, Y, T1), pos(X, Y, T2), term(X, T1), term(X, T2).
literal_subsumes(X, T2, T1, Y) :- neg(X, Y, T1), neg(X, Y, T2), term(X, T1), term(X, T2).
literal_subsumes(X, T2, T1, Y) :- pos(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2).
literal_subsumes(X, T2, T1, Y) :- neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2).
literal_subsumes(X, T2, T1, Y) :- not pos(X,Y,T1), not neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2), variable(Y).
term_subsumes(X, T2, T1) :- #count{Y : literal_subsumes(X, T2, T1, Y)} = N, nvars(N), term(X, T1), term(X, T2).
:- term_subsumes(X, T2, T1), T2 != T1, variable(X).

% 3) Remove redundancy by lexicographically ordering terms in each DNF:
term_gte(X, T1, T2, K) :- nvars(K), term(X, T1), term(X, T2).
term_gte(X, T1, T2, Y) :- pos(X, Y, T1), pos(X, Y, T2), term(X, T1), term(X, T2), term_gte(X, T1, T2, Y+1).
term_gte(X, T2, T1, Y) :- neg(X, Y, T1), pos(X, Y, T2), term(X, T1), term(X, T2), term_gte(X, T1, T2, Y+1).
term_gte(X, T1, T2, Y) :- neg(X, Y, T1), neg(X, Y, T2), term(X, T1), term(X, T2), term_gte(X, T1, T2, Y+1).
term_gte(X, T2, T1, Y) :- pos(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2), term_gte(X, T1, T2, Y+1).
term_gte(X, T2, T1, Y) :- neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2), term_gte(X, T1, T2, Y+1).
term_gte(X, T1, T2, Y) :- not pos(X,Y,T1), not neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), term(X, T1), term(X, T2), variable(Y), term_gte(X, T1, T2, Y+1).
:- term_gte(X, T1, T2, 0), T1 < T2, variable(X).

% 4) Disallow terms that are the same except for a complementary literal
%resolvable(X, T1, T2, Y) :- pos(X, Y, T1), pos(X, Y, T2), term(X, T1), term(X, T2), resolvable(X, T1, T2, Y+1), variable(Y).
%resolvable(X, T1, T2, Y) :- neg(X, Y, T1), neg(X, Y, T2), term(X, T1), term(X, T2), resolvable(X, T1, T2, Y+1), variable(Y).
%resolvable(X, T1, T2, Y) :- not pos(X,Y,T1), not neg(X, Y, T1), not neg(X, Y, T2), not pos(X, Y, T2), resolvable(X, T1, T2, Y+1), variable(Y).
%resolvable(X, T1, T2, Y) :- neg(X, Y, T1), pos(X, Y, T2), term_gte(X, T1, T2, Y+1), term_gte(X, T2, T1, Y+1), variable(Y).
%resolvable(X, T1, T2, Y) :- pos(X, Y, T1), neg(X, Y, T2), term_gte(X, T1, T2, Y+1), term_gte(X, T2, T1, Y+1), variable(Y).
%:- resolvable(X, T1, T2, 0).


% Attractor points sums
attractor_label(0..A-1) :- nattractor_points(A).

% attractor_period/2 is a functional relation.
#count{K : attractor_period(E, K) : period(K)} = 1 :- attractor_label(E).

% There is a given number of attractor points
#count{I : is_attractor(I) : state(I)} = A :- nattractor_points(A).

% attractor_label is a functional relation
#count{N : attractor_label(X, N) : attractor_label(N)} = 1 :- is_attractor(X).
% To avoid symmetrical models, force labeling to be canonically ordered:
:- attractor_label(X, N), attractor_label(Y, M), X > Y, N <= M. 
%:- attractor_label(X, _), not is_attractor(X).

% Attractor is a state that is reachable in any given number of steps from some state.
% FIXME - which one is needed?
is_attractor(X) :- state(X), #count{K : depth(X, K)} = D+1, maxdepth(D).
#count{K : depth(X, K) : depth(K)} = D+1 :- is_attractor(X), state(X), maxdepth(D).

%attractor_period(X, K) :- attractor_label(X, E), #count{F : reachable(E, F)} = K.
% FIXME - which one is needed?
attractor_period(E, K) :- #count{F : reachable(E, F)} = K, attractor_label(E), period(K).
#count{F : reachable(E, F) : attractor_label(F)} = K :- attractor_period(E, K).

% There is always an attractor.
% This condition may make the instance unsatisfiable if t is set too low.
#count{X : is_attractor(X) : state(X)} > 0.

% Attractor state inter-reachability is an equivalence relation.
reachable(E, F) :- transition(X, Y), attractor_label(X, E), attractor_label(Y, F).
%reachable(E, F) :- reachable(F, E), attractor_label(E), attractor_label(F).
reachable(E, F) :- reachable(E, G), reachable(G, F), attractor_label(E), attractor_label(F), attractor_label(G).
%reachable(E, E) :- attractor_label(E).
%:- not reachable(E, E), attractor_label(E).

#show pos/3.
#show neg/3.
#show nterms/2.
#show attractor_period/2.
#show nvars/1.
#show maxterms/1.
%#show depth/2.
%#show attractor_label/2.
%#show is_attractor/1.
%#show reachable/2.
%#show interpret/3.
%#show interpret_term/4.
