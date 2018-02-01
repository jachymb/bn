
% transition/2 is a functional relation.
#count{J : transition(I, J) : state(J)} = 1 :- state(I).
:- transition(I, J), interpret(I, X, B), get_var(J, X, 1-B).


