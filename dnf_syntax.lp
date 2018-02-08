#include "get_var.lp".
% Domains:
term(1..T) :- maxterms(T).

% Just consistency checks - unnecessary
%:- depends(X, _), not variable(X).
%:- depends(_, Y), not variable(Y).

nterms(0).
nterms(K) :- term(K).

{nterms(X, K) : nterms(K)} = 1 :- variable(X).
%term(X, T) :- nterms(X, K), T <= K, term(T).

term(X, T) :- nterms(X, K), T = 1..K.

% Each literal is positive, negative or missing.
% We don't consider the situation of both occuring.
0 {pos(X, Y, T) ; neg(X, Y, T) } 1 :- term(X, T), depends(X, Y).

% interpret/3 and interpret_term/4 are functional relations.
#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 
:- interpret(I, X, 0), interpret(I, X, 1).
%#count{B : interpret(I, X, B) : bool(B) } = 1 :- state(I), variable(X). 
#count{B : interpret_term(I, X, T, B) : bool(B) } = 1 :- state(I), term(X, T).

%interpret(I, X, B) :- observation(I, X, B).

% t-DNF semantics
interpret(I, X, 1) :- interpret_term(I, X, T, 1), term(X, T), state(I).
interpret(I, X, 0) :- #count{K : interpret_term(I, X, K, 0)} = T, nterms(X, T), state(I).
%:- interpret(I, X, 0), interpret_term(I, X, T, 1), term(X, T), state(I).
%:- interpret(I, X, 1), #count{K : interpret_term(I, X, K, 0)} = T, nterms(X, T), state(I).

interpret_term(I, X, T, 0) :- interpret(I, X, 0), term(X, T). % Speedup

% Conjunction semantics:
interpret_term(I, X, T, 0) :- pos(X, Y, T), get_var(I, Y, 0).
interpret_term(I, X, T, 0) :- neg(X, Y, T), get_var(I, Y, 1).
interpret_term(I, X, T, 1) :- #count{Y : pos(X, Y, T), get_var(I, Y, 0)} = 0,
                              #count{Y : neg(X, Y, T), get_var(I, Y, 1)} = 0,
                              state(I), term(X, T), variable(X).
%:- interpret_term(I, X, T, 1), pos(X, Y, T), get_var(I, Y, 0), term(X, T), state(I), variable(X).
%:- interpret_term(I, X, T, 1), neg(X, Y, T), get_var(I, Y, 1), term(X, T), state(I), variable(X).
%:- interpret_term(I, X, T, 0), #count{Y : pos(X, Y, T), get_var(I, Y, 0)} = 0,
%                               #count{Y : neg(X, Y, T), get_var(I, Y, 1)} = 0,
%                               state(I), term(X, T), variable(X).

%:- -dependent(X, Y), pos(X, Y, _).
%:- -dependent(X, Y), neg(X, Y, _).
%:- dependent(X, Y), {pos(X, Y, _); neg(X, Y, _)} = 0.

#show interpret/3.
%#show interpret_term/4.
%#show pos/3.
%#show neg/3.
%#show nterms/2.
%#show maxterms/1.
%#show depends/2.
