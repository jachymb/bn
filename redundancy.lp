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


