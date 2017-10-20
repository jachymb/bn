#include "transitions/3.lp".

nvars(3).
maxdepth(5).
maxterms(1).

interpret(0,0,1).
interpret(0,1,0).
interpret(0,2,0).
%interpret(1,0,1).
%interpret(1,1,0).
%interpret(1,2,0).
%interpret(2,0,1).
%interpret(2,1,0).
%interpret(2,2,1).
interpret(3,0,1).
interpret(3,1,0).
interpret(3,2,1).
%interpret(4,0,0).
%interpret(4,1,0).
%interpret(4,2,0).
%interpret(5,0,0).
%interpret(5,1,1).
%interpret(5,2,0).
interpret(6,0,0).
interpret(6,1,0).
interpret(6,2,1).
%interpret(7,0,0).
interpret(7,1,1).
interpret(7,2,1).


attractor_label(1..3). 
{attractor_period(X, 1) : is_attractor(X)} = 1.
{attractor_period(X, 2) : is_attractor(X)} = 2.
{attractor_period(X, K) : is_attractor(X), depth(K)} = 3.
