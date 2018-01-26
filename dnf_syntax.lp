#include "get_var.lp".
% Domains:
term(1..T) :- maxterms(T).

nterms(0).
nterms(K) :- term(K).

{nterms(X, K) : nterms(K)} = 1 :- variable(X).
term(X, T) :- nterms(X, K), T <= K, term(T).

% Each literal is positive, negative or missing.
% We don't consider the situation of both occuring.
0 {pos(X, Y, T) ; neg(X, Y, T) } 1 :- term(X, T), variable(Y), variable(X).

% interpret/3 and interpret_term/4 are functional relations.
#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 
#count{B : interpret_term(I, X, T, B) : bool(B) } = 1 :- state(I), term(X, T).

interpret(I, X, B) :- observation(I, X, B).

% t-DNF semantics
interpret(I, X, 1) :- interpret_term(I, X, T, 1), term(X, T), state(I).
interpret(I, X, 0) :- #count{K : interpret_term(I, X, K, 0)} = T, nterms(X, T), state(I).
interpret_term(I, X, T, 0) :- interpret(I, X, 0), term(X, T). % Speedup

% Conjunction semantics:
interpret_term(I, X, T, 0) :- pos(X, Y, T), get_var(I, Y, 0).
interpret_term(I, X, T, 0) :- neg(X, Y, T), get_var(I, Y, 1).
interpret_term(I, X, T, 1) :- #count{Y : pos(X, Y, T), get_var(I, Y, 0)} = 0,
                              #count{Y : neg(X, Y, T), get_var(I, Y, 1)} = 0,
                              state(I), term(X, T), variable(X).
:- interpret_term(I, X, T, 1), pos(X, Y, T), get_var(I, Y, 0), term(X, T), state(I), variable(X).
:- interpret_term(I, X, T, 1), neg(X, Y, T), get_var(I, Y, 1), term(X, T), state(I), variable(X).

%:- -dependent(X, Y), pos(X, Y, _).
%:- -dependent(X, Y), neg(X, Y, _).
%:- dependent(X, Y), {pos(X, Y, _); neg(X, Y, _)} = 0.

#show pos/3.
#show neg/3.
#show nterms/2.
#show maxterms/1.
%#show dependent/2.
