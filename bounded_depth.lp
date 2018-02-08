known_attractors | -known_attractors.
period(1..K+1) :- maxdepth(K). % Perhaps a bit faster unified? TODO
depth(0..K) :- maxdepth(K).

% Attractor is a state that is reachable in any given number of steps from some state.
% FIXME - which one is needed?
is_attractor(X) :- state(X), #count{K : depth(X, K)} = D+1, maxdepth(D).
:- is_attractor(X), state(X), maxdepth(D), #count{K : depth(X, K)} <= D.

% Attractor state inter-reachability is an equivalence relation.
reachable(E, E) :- attractor_label(E).
%reachable(E, F) :- reachable(F, E), attractor_label(E), attractor_label(F).
%reachable(E, F) :- reachable(E, G), reachable(G, F), attractor_label(E), attractor_label(F), attractor_label(G).

attractor_period(E, K) :- #count{F : reachable(E, F)} = K, attractor_label(E), period(K).

% Attractor points sums
attractor_label(0..A-1) :- nattractor_points(A).

% attractor_period/2 is a functional relation.
#count{K : attractor_period(E, K) : period(K)} = 1 :- attractor_label(E).

% attractor_label is a functional relation
#count{E : attractor_label(X, E) : attractor_label(E)} = 1 :- is_attractor(X), -known_attractors.
% To avoid symmetrical models, force labeling to be canonically ordered:
%:- attractor_label(X, E), attractor_label(Y, F), X > Y, E <= F, -known_attractors.
%:- attractor_label(X, _), not is_attractor(X).

% There is a given number of attractor points
#count{I : is_attractor(I) : state(I)} = A :- nattractor_points(A).

% There is always an attractor.
% This condition may make the instance unsatisfiable if t is set too low.
#count{X : is_attractor(X) : state(X)} > 0.

%{known_attractors ; -known_attractors} = 1.

%#show depth/2.
