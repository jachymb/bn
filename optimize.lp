% Minimize total number of literals
#minimize{ 1@2, X,Y,T : pos(X,Y,T) }.
#minimize{ 1@2, X,Y,T : neg(X,Y,T) }.

% Prefer the most compact DNFs
#minimize{ T@1, X : nterms(X, T), variable(X)}.


