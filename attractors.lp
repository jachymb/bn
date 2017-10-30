depth(0..K) :- maxdepth(K).

depth(X, 0)   :- state(X).
depth(X, K+1) :- state(X), {depth(Y, K) : transition(Y, X) } > 0, depth(K+1).

% Attractor points sums
attractor_label(0..A-1) :- nattractor_points(A).

% attractor_period/2 is a functional relation.
#count{K : attractor_period(E, K) : period(K)} = 1 :- attractor_label(E).

% There is a given number of attractor points
#count{I : is_attractor(I) : state(I)} = A :- nattractor_points(A).

% attractor_label is a functional relation
#count{N : attractor_label(X, N) : attractor_label(N)} = 1 :- is_attractor(X).
% To avoid symmetrical models, force labeling to be canonically ordered:
:- attractor_label(X, N), attractor_label(Y, M), X > Y, N <= M, not known_attractors.
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
reachable(E, E) :- attractor_label(E).
reachable(E, F) :- reachable(F, E), attractor_label(E), attractor_label(F).
reachable(E, F) :- reachable(E, G), reachable(G, F), attractor_label(E), attractor_label(F), attractor_label(G).
reachable(E, F) :- transition(X, Y), attractor_label(X, E), attractor_label(Y, F), X < Y, not known_attractors. % Ordering constraint reduces grounding while keeping equivalent

#show attractor_period/2.
