nvars(3).
maxdepth(5).
maxterms(1).
max_clause_length(1).
max_term_length(2).

observation(0,0,1).
observation(0,1,0).
observation(0,2,0).
%observation(1,0,1).
%observation(1,1,0).
%observation(1,2,0).
%observation(2,0,1).
%observation(2,1,0).
%observation(2,2,1).
observation(3,0,1).
observation(3,1,0).
observation(3,2,1).
%observation(4,0,0).
%observation(4,1,0).
%observation(4,2,0).
%observation(5,0,0).
%observation(5,1,1).
%observation(5,2,0).
observation(6,0,0).
observation(6,1,0).
observation(6,2,1).
%observation(7,0,0).
observation(7,1,1).
observation(7,2,1).


{attractor_period(X, 1) : is_attractor(X)} = 1.
{attractor_period(X, 2) : is_attractor(X)} = 2.
:- attractor_period(I, K), K > 2.
