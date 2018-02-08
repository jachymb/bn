bool(0;1).
variable(0..N-1) :- nvars(N).
state(0..(2**N)-1) :- nvars(N).

% This is just for readability: Gets the Xth position in state I.
get_var(I, X, 1) :- (2**X) & I = 2**X, variable(X), state(I).
get_var(I, X, 0) :- (2**X) & I = 0,    variable(X), state(I).

%#show nvars/1.
