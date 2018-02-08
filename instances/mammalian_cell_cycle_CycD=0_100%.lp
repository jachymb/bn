
nvars(9).
maxterms(4).
#show maxterms/1.
maxdepth(9).
%max_clause_length(9).
max_term_length(4).

nattractor_points(1).
{attractor_period(X, 1) : is_attractor(X)} = 1.
:- attractor_period(I, K), state(I), K > 1.
-known_attractors.

dependent(0, 4). dependent(0, 8). dependent(0, 2). dependent(0, 3).
dependent(1, 0). dependent(1, 4). dependent(1, 8). dependent(1, 3).
dependent(2, 0). dependent(2, 1).
dependent(3, 0). dependent(3, 3). dependent(3, 5). dependent(3, 1). dependent(3, 7). dependent(3, 6).
dependent(4, 2). dependent(4, 3). dependent(4, 4). dependent(4, 8).
dependent(5, 8).
dependent(6, 5). dependent(6, 4). dependent(6, 3). dependent(6, 8).
dependent(7, 7). dependent(7, 8). dependent(7, 6). dependent(7, 5). dependent(7, 3).
dependent(8, 5). dependent(8, 6).
-dependent(X, Y) :- not dependent(X, Y), variable(X), variable(Y).
#show -dependent/2.
#show dependent/2.

correct_prediction(I) :- gt_transition(I, J), transition(I, J), state(I), state(J), not observation(I, _, _).
precision(K) :- #count{I : correct_prediction(I)} = K.
observed_transitions(K) :- #count{I : transition(I, _), not gt_transition(I, _)} = K.
#show precision/1.
#show observed_transitions/1.


% Hints - can be commented:
%nterms(0, 2). nterms(1, 2). nterms(2, 1). nterms(3, 4). nterms(4, 3). nterms(5, 1). nterms(6, 3). nterms(7, 4). nterms(8, 1).
%:- #count{ 0, X,Y,T : pos(X,Y,T) } = P, #count{ 0, X,Y,T : neg(X,Y,T) } = N, P + N < 53.

observation(0, 0, 1).
observation(0, 1, 1).
observation(0, 2, 0).
observation(0, 3, 0).
observation(0, 4, 1).
observation(0, 5, 0).
observation(0, 6, 1).
observation(0, 7, 1).
observation(0, 8, 1).
transition(0, 467).
observation(1, 0, 1).
observation(1, 1, 0).
observation(1, 2, 0).
observation(1, 3, 0).
observation(1, 4, 1).
observation(1, 5, 0).
observation(1, 6, 1).
observation(1, 7, 1).
observation(1, 8, 1).
transition(1, 465).
observation(2, 0, 1).
observation(2, 1, 1).
observation(2, 2, 1).
observation(2, 3, 1).
observation(2, 4, 1).
observation(2, 5, 0).
observation(2, 6, 1).
observation(2, 7, 1).
observation(2, 8, 1).
transition(2, 479).
observation(3, 0, 1).
observation(3, 1, 0).
observation(3, 2, 0).
observation(3, 3, 0).
observation(3, 4, 1).
observation(3, 5, 0).
observation(3, 6, 1).
observation(3, 7, 1).
observation(3, 8, 1).
transition(3, 465).
observation(4, 0, 0).
observation(4, 1, 1).
observation(4, 2, 0).
observation(4, 3, 0).
observation(4, 4, 0).
observation(4, 5, 0).
observation(4, 6, 1).
observation(4, 7, 1).
observation(4, 8, 1).
transition(4, 450).
observation(5, 0, 0).
observation(5, 1, 0).
observation(5, 2, 0).
observation(5, 3, 0).
observation(5, 4, 0).
observation(5, 5, 0).
observation(5, 6, 1).
observation(5, 7, 1).
observation(5, 8, 1).
transition(5, 448).
observation(6, 0, 0).
observation(6, 1, 1).
observation(6, 2, 1).
observation(6, 3, 1).
observation(6, 4, 0).
observation(6, 5, 0).
observation(6, 6, 1).
observation(6, 7, 1).
observation(6, 8, 1).
transition(6, 462).
observation(7, 0, 0).
observation(7, 1, 0).
observation(7, 2, 0).
observation(7, 3, 0).
observation(7, 4, 0).
observation(7, 5, 0).
observation(7, 6, 1).
observation(7, 7, 1).
observation(7, 8, 1).
transition(7, 448).
observation(8, 0, 0).
observation(8, 1, 0).
observation(8, 2, 0).
observation(8, 3, 1).
observation(8, 4, 0).
observation(8, 5, 0).
observation(8, 6, 0).
observation(8, 7, 1).
observation(8, 8, 1).
transition(8, 392).
observation(9, 0, 0).
observation(9, 1, 0).
observation(9, 2, 0).
observation(9, 3, 0).
observation(9, 4, 0).
observation(9, 5, 0).
observation(9, 6, 0).
observation(9, 7, 1).
observation(9, 8, 1).
transition(9, 384).
observation(10, 0, 0).
observation(10, 1, 0).
observation(10, 2, 1).
observation(10, 3, 1).
observation(10, 4, 0).
observation(10, 5, 0).
observation(10, 6, 0).
observation(10, 7, 1).
observation(10, 8, 1).
transition(10, 396).
observation(11, 0, 0).
observation(11, 1, 0).
observation(11, 2, 0).
observation(11, 3, 0).
observation(11, 4, 0).
observation(11, 5, 0).
observation(11, 6, 0).
observation(11, 7, 1).
observation(11, 8, 1).
transition(11, 384).
observation(12, 0, 0).
observation(12, 1, 0).
observation(12, 2, 0).
observation(12, 3, 1).
observation(12, 4, 0).
observation(12, 5, 0).
observation(12, 6, 0).
observation(12, 7, 1).
observation(12, 8, 1).
transition(12, 392).
observation(13, 0, 0).
observation(13, 1, 0).
observation(13, 2, 0).
observation(13, 3, 0).
observation(13, 4, 0).
observation(13, 5, 0).
observation(13, 6, 0).
observation(13, 7, 1).
observation(13, 8, 1).
transition(13, 384).
observation(14, 0, 0).
observation(14, 1, 0).
observation(14, 2, 1).
observation(14, 3, 1).
observation(14, 4, 0).
observation(14, 5, 0).
observation(14, 6, 0).
observation(14, 7, 1).
observation(14, 8, 1).
transition(14, 396).
observation(15, 0, 0).
observation(15, 1, 0).
observation(15, 2, 0).
observation(15, 3, 0).
observation(15, 4, 0).
observation(15, 5, 0).
observation(15, 6, 0).
observation(15, 7, 1).
observation(15, 8, 1).
transition(15, 384).
observation(16, 0, 1).
observation(16, 1, 1).
observation(16, 2, 0).
observation(16, 3, 0).
observation(16, 4, 1).
observation(16, 5, 0).
observation(16, 6, 1).
observation(16, 7, 1).
observation(16, 8, 1).
transition(16, 467).
observation(17, 0, 1).
observation(17, 1, 0).
observation(17, 2, 0).
observation(17, 3, 0).
observation(17, 4, 1).
observation(17, 5, 0).
observation(17, 6, 1).
observation(17, 7, 1).
observation(17, 8, 1).
transition(17, 465).
observation(18, 0, 1).
observation(18, 1, 1).
observation(18, 2, 1).
observation(18, 3, 1).
observation(18, 4, 1).
observation(18, 5, 0).
observation(18, 6, 1).
observation(18, 7, 1).
observation(18, 8, 1).
transition(18, 479).
observation(19, 0, 1).
observation(19, 1, 0).
observation(19, 2, 0).
observation(19, 3, 0).
observation(19, 4, 1).
observation(19, 5, 0).
observation(19, 6, 1).
observation(19, 7, 1).
observation(19, 8, 1).
transition(19, 465).
observation(20, 0, 1).
observation(20, 1, 1).
observation(20, 2, 0).
observation(20, 3, 0).
observation(20, 4, 1).
observation(20, 5, 0).
observation(20, 6, 1).
observation(20, 7, 1).
observation(20, 8, 1).
transition(20, 467).
observation(21, 0, 1).
observation(21, 1, 0).
observation(21, 2, 0).
observation(21, 3, 0).
observation(21, 4, 1).
observation(21, 5, 0).
observation(21, 6, 1).
observation(21, 7, 1).
observation(21, 8, 1).
transition(21, 465).
observation(22, 0, 1).
observation(22, 1, 1).
observation(22, 2, 1).
observation(22, 3, 1).
observation(22, 4, 1).
observation(22, 5, 0).
observation(22, 6, 1).
observation(22, 7, 1).
observation(22, 8, 1).
transition(22, 479).
observation(23, 0, 1).
observation(23, 1, 0).
observation(23, 2, 0).
observation(23, 3, 0).
observation(23, 4, 1).
observation(23, 5, 0).
observation(23, 6, 1).
observation(23, 7, 1).
observation(23, 8, 1).
transition(23, 465).
observation(24, 0, 1).
observation(24, 1, 1).
observation(24, 2, 0).
observation(24, 3, 1).
observation(24, 4, 1).
observation(24, 5, 0).
observation(24, 6, 1).
observation(24, 7, 1).
observation(24, 8, 1).
transition(24, 475).
observation(25, 0, 1).
observation(25, 1, 0).
observation(25, 2, 0).
observation(25, 3, 0).
observation(25, 4, 1).
observation(25, 5, 0).
observation(25, 6, 1).
observation(25, 7, 1).
observation(25, 8, 1).
transition(25, 465).
observation(26, 0, 1).
observation(26, 1, 1).
observation(26, 2, 1).
observation(26, 3, 1).
observation(26, 4, 1).
observation(26, 5, 0).
observation(26, 6, 1).
observation(26, 7, 1).
observation(26, 8, 1).
transition(26, 479).
observation(27, 0, 1).
observation(27, 1, 0).
observation(27, 2, 0).
observation(27, 3, 0).
observation(27, 4, 1).
observation(27, 5, 0).
observation(27, 6, 1).
observation(27, 7, 1).
observation(27, 8, 1).
transition(27, 465).
observation(28, 0, 1).
observation(28, 1, 1).
observation(28, 2, 0).
observation(28, 3, 1).
observation(28, 4, 0).
observation(28, 5, 0).
observation(28, 6, 1).
observation(28, 7, 1).
observation(28, 8, 1).
transition(28, 459).
observation(29, 0, 1).
observation(29, 1, 0).
observation(29, 2, 0).
observation(29, 3, 0).
observation(29, 4, 0).
observation(29, 5, 0).
observation(29, 6, 1).
observation(29, 7, 1).
observation(29, 8, 1).
transition(29, 449).
observation(30, 0, 1).
observation(30, 1, 1).
observation(30, 2, 1).
observation(30, 3, 1).
observation(30, 4, 0).
observation(30, 5, 0).
observation(30, 6, 1).
observation(30, 7, 1).
observation(30, 8, 1).
transition(30, 463).
observation(31, 0, 1).
observation(31, 1, 0).
observation(31, 2, 0).
observation(31, 3, 0).
observation(31, 4, 0).
observation(31, 5, 0).
observation(31, 6, 1).
observation(31, 7, 1).
observation(31, 8, 1).
transition(31, 449).
observation(32, 0, 1).
observation(32, 1, 1).
observation(32, 2, 0).
observation(32, 3, 0).
observation(32, 4, 1).
observation(32, 5, 0).
observation(32, 6, 1).
observation(32, 7, 1).
observation(32, 8, 0).
transition(32, 211).
observation(33, 0, 1).
observation(33, 1, 0).
observation(33, 2, 0).
observation(33, 3, 0).
observation(33, 4, 1).
observation(33, 5, 0).
observation(33, 6, 1).
observation(33, 7, 1).
observation(33, 8, 0).
transition(33, 209).
observation(34, 0, 1).
observation(34, 1, 1).
observation(34, 2, 1).
observation(34, 3, 0).
observation(34, 4, 1).
observation(34, 5, 0).
observation(34, 6, 1).
observation(34, 7, 1).
observation(34, 8, 0).
transition(34, 215).
observation(35, 0, 1).
observation(35, 1, 0).
observation(35, 2, 0).
observation(35, 3, 0).
observation(35, 4, 1).
observation(35, 5, 0).
observation(35, 6, 1).
observation(35, 7, 1).
observation(35, 8, 0).
transition(35, 209).
observation(36, 0, 0).
observation(36, 1, 1).
observation(36, 2, 0).
observation(36, 3, 0).
observation(36, 4, 0).
observation(36, 5, 0).
observation(36, 6, 1).
observation(36, 7, 1).
observation(36, 8, 0).
transition(36, 194).
observation(37, 0, 0).
observation(37, 1, 0).
observation(37, 2, 0).
observation(37, 3, 0).
observation(37, 4, 0).
observation(37, 5, 0).
observation(37, 6, 1).
observation(37, 7, 1).
observation(37, 8, 0).
transition(37, 192).
observation(38, 0, 0).
observation(38, 1, 1).
observation(38, 2, 1).
observation(38, 3, 0).
observation(38, 4, 0).
observation(38, 5, 0).
observation(38, 6, 1).
observation(38, 7, 1).
observation(38, 8, 0).
transition(38, 198).
observation(39, 0, 0).
observation(39, 1, 0).
observation(39, 2, 0).
observation(39, 3, 0).
observation(39, 4, 0).
observation(39, 5, 0).
observation(39, 6, 1).
observation(39, 7, 1).
observation(39, 8, 0).
transition(39, 192).
observation(40, 0, 0).
observation(40, 1, 0).
observation(40, 2, 0).
observation(40, 3, 0).
observation(40, 4, 0).
observation(40, 5, 0).
observation(40, 6, 1).
observation(40, 7, 1).
observation(40, 8, 0).
transition(40, 192).
observation(41, 0, 0).
observation(41, 1, 0).
observation(41, 2, 0).
observation(41, 3, 0).
observation(41, 4, 0).
observation(41, 5, 0).
observation(41, 6, 1).
observation(41, 7, 1).
observation(41, 8, 0).
transition(41, 192).
observation(42, 0, 0).
observation(42, 1, 0).
observation(42, 2, 1).
observation(42, 3, 0).
observation(42, 4, 0).
observation(42, 5, 0).
observation(42, 6, 1).
observation(42, 7, 1).
observation(42, 8, 0).
transition(42, 196).
observation(43, 0, 0).
observation(43, 1, 0).
observation(43, 2, 0).
observation(43, 3, 0).
observation(43, 4, 0).
observation(43, 5, 0).
observation(43, 6, 1).
observation(43, 7, 1).
observation(43, 8, 0).
transition(43, 192).
observation(44, 0, 0).
observation(44, 1, 0).
observation(44, 2, 0).
observation(44, 3, 0).
observation(44, 4, 0).
observation(44, 5, 0).
observation(44, 6, 1).
observation(44, 7, 1).
observation(44, 8, 0).
transition(44, 192).
observation(45, 0, 0).
observation(45, 1, 0).
observation(45, 2, 0).
observation(45, 3, 0).
observation(45, 4, 0).
observation(45, 5, 0).
observation(45, 6, 1).
observation(45, 7, 1).
observation(45, 8, 0).
transition(45, 192).
observation(46, 0, 0).
observation(46, 1, 0).
observation(46, 2, 1).
observation(46, 3, 0).
observation(46, 4, 0).
observation(46, 5, 0).
observation(46, 6, 1).
observation(46, 7, 1).
observation(46, 8, 0).
transition(46, 196).
observation(47, 0, 0).
observation(47, 1, 0).
observation(47, 2, 0).
observation(47, 3, 0).
observation(47, 4, 0).
observation(47, 5, 0).
observation(47, 6, 1).
observation(47, 7, 1).
observation(47, 8, 0).
transition(47, 192).
observation(48, 0, 1).
observation(48, 1, 1).
observation(48, 2, 0).
observation(48, 3, 0).
observation(48, 4, 1).
observation(48, 5, 0).
observation(48, 6, 1).
observation(48, 7, 1).
observation(48, 8, 0).
transition(48, 211).
observation(49, 0, 1).
observation(49, 1, 0).
observation(49, 2, 0).
observation(49, 3, 0).
observation(49, 4, 1).
observation(49, 5, 0).
observation(49, 6, 1).
observation(49, 7, 1).
observation(49, 8, 0).
transition(49, 209).
observation(50, 0, 1).
observation(50, 1, 1).
observation(50, 2, 1).
observation(50, 3, 0).
observation(50, 4, 1).
observation(50, 5, 0).
observation(50, 6, 1).
observation(50, 7, 1).
observation(50, 8, 0).
transition(50, 215).
observation(51, 0, 1).
observation(51, 1, 0).
observation(51, 2, 0).
observation(51, 3, 0).
observation(51, 4, 1).
observation(51, 5, 0).
observation(51, 6, 1).
observation(51, 7, 1).
observation(51, 8, 0).
transition(51, 209).
observation(52, 0, 1).
observation(52, 1, 1).
observation(52, 2, 0).
observation(52, 3, 0).
observation(52, 4, 1).
observation(52, 5, 0).
observation(52, 6, 1).
observation(52, 7, 1).
observation(52, 8, 0).
transition(52, 211).
observation(53, 0, 1).
observation(53, 1, 0).
observation(53, 2, 0).
observation(53, 3, 0).
observation(53, 4, 1).
observation(53, 5, 0).
observation(53, 6, 1).
observation(53, 7, 1).
observation(53, 8, 0).
transition(53, 209).
observation(54, 0, 1).
observation(54, 1, 1).
observation(54, 2, 1).
observation(54, 3, 0).
observation(54, 4, 1).
observation(54, 5, 0).
observation(54, 6, 1).
observation(54, 7, 1).
observation(54, 8, 0).
transition(54, 215).
observation(55, 0, 1).
observation(55, 1, 0).
observation(55, 2, 0).
observation(55, 3, 0).
observation(55, 4, 1).
observation(55, 5, 0).
observation(55, 6, 1).
observation(55, 7, 1).
observation(55, 8, 0).
transition(55, 209).
observation(56, 0, 1).
observation(56, 1, 1).
observation(56, 2, 0).
observation(56, 3, 0).
observation(56, 4, 1).
observation(56, 5, 0).
observation(56, 6, 1).
observation(56, 7, 1).
observation(56, 8, 0).
transition(56, 211).
observation(57, 0, 1).
observation(57, 1, 0).
observation(57, 2, 0).
observation(57, 3, 0).
observation(57, 4, 1).
observation(57, 5, 0).
observation(57, 6, 1).
observation(57, 7, 1).
observation(57, 8, 0).
transition(57, 209).
observation(58, 0, 1).
observation(58, 1, 1).
observation(58, 2, 1).
observation(58, 3, 0).
observation(58, 4, 1).
observation(58, 5, 0).
observation(58, 6, 1).
observation(58, 7, 1).
observation(58, 8, 0).
transition(58, 215).
observation(59, 0, 1).
observation(59, 1, 0).
observation(59, 2, 0).
observation(59, 3, 0).
observation(59, 4, 1).
observation(59, 5, 0).
observation(59, 6, 1).
observation(59, 7, 1).
observation(59, 8, 0).
transition(59, 209).
observation(60, 0, 1).
observation(60, 1, 1).
observation(60, 2, 0).
observation(60, 3, 0).
observation(60, 4, 0).
observation(60, 5, 0).
observation(60, 6, 1).
observation(60, 7, 1).
observation(60, 8, 0).
transition(60, 195).
observation(61, 0, 1).
observation(61, 1, 0).
observation(61, 2, 0).
observation(61, 3, 0).
observation(61, 4, 0).
observation(61, 5, 0).
observation(61, 6, 1).
observation(61, 7, 1).
observation(61, 8, 0).
transition(61, 193).
observation(62, 0, 1).
observation(62, 1, 1).
observation(62, 2, 1).
observation(62, 3, 0).
observation(62, 4, 0).
observation(62, 5, 0).
observation(62, 6, 1).
observation(62, 7, 1).
observation(62, 8, 0).
transition(62, 199).
observation(63, 0, 1).
observation(63, 1, 0).
observation(63, 2, 0).
observation(63, 3, 0).
observation(63, 4, 0).
observation(63, 5, 0).
observation(63, 6, 1).
observation(63, 7, 1).
observation(63, 8, 0).
transition(63, 193).
observation(64, 0, 1).
observation(64, 1, 1).
observation(64, 2, 0).
observation(64, 3, 0).
observation(64, 4, 1).
observation(64, 5, 0).
observation(64, 6, 1).
observation(64, 7, 0).
observation(64, 8, 0).
transition(64, 83).
observation(65, 0, 1).
observation(65, 1, 0).
observation(65, 2, 0).
observation(65, 3, 0).
observation(65, 4, 1).
observation(65, 5, 0).
observation(65, 6, 1).
observation(65, 7, 0).
observation(65, 8, 0).
transition(65, 81).
observation(66, 0, 1).
observation(66, 1, 1).
observation(66, 2, 1).
observation(66, 3, 1).
observation(66, 4, 1).
observation(66, 5, 0).
observation(66, 6, 1).
observation(66, 7, 0).
observation(66, 8, 0).
transition(66, 95).
observation(67, 0, 1).
observation(67, 1, 0).
observation(67, 2, 0).
observation(67, 3, 0).
observation(67, 4, 1).
observation(67, 5, 0).
observation(67, 6, 1).
observation(67, 7, 0).
observation(67, 8, 0).
transition(67, 81).
observation(68, 0, 0).
observation(68, 1, 1).
observation(68, 2, 0).
observation(68, 3, 0).
observation(68, 4, 0).
observation(68, 5, 0).
observation(68, 6, 1).
observation(68, 7, 0).
observation(68, 8, 0).
transition(68, 66).
observation(69, 0, 0).
observation(69, 1, 0).
observation(69, 2, 0).
observation(69, 3, 0).
observation(69, 4, 0).
observation(69, 5, 0).
observation(69, 6, 1).
observation(69, 7, 0).
observation(69, 8, 0).
transition(69, 64).
observation(70, 0, 0).
observation(70, 1, 1).
observation(70, 2, 1).
observation(70, 3, 1).
observation(70, 4, 0).
observation(70, 5, 0).
observation(70, 6, 1).
observation(70, 7, 0).
observation(70, 8, 0).
transition(70, 78).
observation(71, 0, 0).
observation(71, 1, 0).
observation(71, 2, 0).
observation(71, 3, 0).
observation(71, 4, 0).
observation(71, 5, 0).
observation(71, 6, 1).
observation(71, 7, 0).
observation(71, 8, 0).
transition(71, 64).
observation(72, 0, 0).
observation(72, 1, 0).
observation(72, 2, 0).
observation(72, 3, 1).
observation(72, 4, 0).
observation(72, 5, 0).
observation(72, 6, 0).
observation(72, 7, 0).
observation(72, 8, 0).
transition(72, 8).
observation(73, 0, 0).
observation(73, 1, 0).
observation(73, 2, 0).
observation(73, 3, 0).
observation(73, 4, 0).
observation(73, 5, 0).
observation(73, 6, 0).
observation(73, 7, 0).
observation(73, 8, 0).
transition(73, 0).
observation(74, 0, 0).
observation(74, 1, 0).
observation(74, 2, 1).
observation(74, 3, 1).
observation(74, 4, 0).
observation(74, 5, 0).
observation(74, 6, 0).
observation(74, 7, 0).
observation(74, 8, 0).
transition(74, 12).
observation(75, 0, 0).
observation(75, 1, 0).
observation(75, 2, 0).
observation(75, 3, 0).
observation(75, 4, 0).
observation(75, 5, 0).
observation(75, 6, 0).
observation(75, 7, 0).
observation(75, 8, 0).
transition(75, 0).
observation(76, 0, 0).
observation(76, 1, 0).
observation(76, 2, 0).
observation(76, 3, 1).
observation(76, 4, 0).
observation(76, 5, 0).
observation(76, 6, 0).
observation(76, 7, 0).
observation(76, 8, 0).
transition(76, 8).
observation(77, 0, 0).
observation(77, 1, 0).
observation(77, 2, 0).
observation(77, 3, 0).
observation(77, 4, 0).
observation(77, 5, 0).
observation(77, 6, 0).
observation(77, 7, 0).
observation(77, 8, 0).
transition(77, 0).
observation(78, 0, 0).
observation(78, 1, 0).
observation(78, 2, 1).
observation(78, 3, 1).
observation(78, 4, 0).
observation(78, 5, 0).
observation(78, 6, 0).
observation(78, 7, 0).
observation(78, 8, 0).
transition(78, 12).
observation(79, 0, 0).
observation(79, 1, 0).
observation(79, 2, 0).
observation(79, 3, 0).
observation(79, 4, 0).
observation(79, 5, 0).
observation(79, 6, 0).
observation(79, 7, 0).
observation(79, 8, 0).
transition(79, 0).
observation(80, 0, 1).
observation(80, 1, 1).
observation(80, 2, 0).
observation(80, 3, 0).
observation(80, 4, 1).
observation(80, 5, 0).
observation(80, 6, 1).
observation(80, 7, 0).
observation(80, 8, 0).
transition(80, 83).
observation(81, 0, 1).
observation(81, 1, 0).
observation(81, 2, 0).
observation(81, 3, 0).
observation(81, 4, 1).
observation(81, 5, 0).
observation(81, 6, 1).
observation(81, 7, 0).
observation(81, 8, 0).
transition(81, 81).
observation(82, 0, 1).
observation(82, 1, 1).
observation(82, 2, 1).
observation(82, 3, 1).
observation(82, 4, 1).
observation(82, 5, 0).
observation(82, 6, 1).
observation(82, 7, 0).
observation(82, 8, 0).
transition(82, 95).
observation(83, 0, 1).
observation(83, 1, 0).
observation(83, 2, 0).
observation(83, 3, 0).
observation(83, 4, 1).
observation(83, 5, 0).
observation(83, 6, 1).
observation(83, 7, 0).
observation(83, 8, 0).
transition(83, 81).
observation(84, 0, 1).
observation(84, 1, 1).
observation(84, 2, 0).
observation(84, 3, 0).
observation(84, 4, 1).
observation(84, 5, 0).
observation(84, 6, 1).
observation(84, 7, 0).
observation(84, 8, 0).
transition(84, 83).
observation(85, 0, 1).
observation(85, 1, 0).
observation(85, 2, 0).
observation(85, 3, 0).
observation(85, 4, 1).
observation(85, 5, 0).
observation(85, 6, 1).
observation(85, 7, 0).
observation(85, 8, 0).
transition(85, 81).
observation(86, 0, 1).
observation(86, 1, 1).
observation(86, 2, 1).
observation(86, 3, 1).
observation(86, 4, 1).
observation(86, 5, 0).
observation(86, 6, 1).
observation(86, 7, 0).
observation(86, 8, 0).
transition(86, 95).
observation(87, 0, 1).
observation(87, 1, 0).
observation(87, 2, 0).
observation(87, 3, 0).
observation(87, 4, 1).
observation(87, 5, 0).
observation(87, 6, 1).
observation(87, 7, 0).
observation(87, 8, 0).
transition(87, 81).
observation(88, 0, 1).
observation(88, 1, 1).
observation(88, 2, 0).
observation(88, 3, 1).
observation(88, 4, 1).
observation(88, 5, 0).
observation(88, 6, 1).
observation(88, 7, 0).
observation(88, 8, 0).
transition(88, 91).
observation(89, 0, 1).
observation(89, 1, 0).
observation(89, 2, 0).
observation(89, 3, 0).
observation(89, 4, 1).
observation(89, 5, 0).
observation(89, 6, 1).
observation(89, 7, 0).
observation(89, 8, 0).
transition(89, 81).
observation(90, 0, 1).
observation(90, 1, 1).
observation(90, 2, 1).
observation(90, 3, 1).
observation(90, 4, 1).
observation(90, 5, 0).
observation(90, 6, 1).
observation(90, 7, 0).
observation(90, 8, 0).
transition(90, 95).
observation(91, 0, 1).
observation(91, 1, 0).
observation(91, 2, 0).
observation(91, 3, 0).
observation(91, 4, 1).
observation(91, 5, 0).
observation(91, 6, 1).
observation(91, 7, 0).
observation(91, 8, 0).
transition(91, 81).
observation(92, 0, 1).
observation(92, 1, 1).
observation(92, 2, 0).
observation(92, 3, 1).
observation(92, 4, 0).
observation(92, 5, 0).
observation(92, 6, 1).
observation(92, 7, 0).
observation(92, 8, 0).
transition(92, 75).
observation(93, 0, 1).
observation(93, 1, 0).
observation(93, 2, 0).
observation(93, 3, 0).
observation(93, 4, 0).
observation(93, 5, 0).
observation(93, 6, 1).
observation(93, 7, 0).
observation(93, 8, 0).
transition(93, 65).
observation(94, 0, 1).
observation(94, 1, 1).
observation(94, 2, 1).
observation(94, 3, 1).
observation(94, 4, 0).
observation(94, 5, 0).
observation(94, 6, 1).
observation(94, 7, 0).
observation(94, 8, 0).
transition(94, 79).
observation(95, 0, 1).
observation(95, 1, 0).
observation(95, 2, 0).
observation(95, 3, 0).
observation(95, 4, 0).
observation(95, 5, 0).
observation(95, 6, 1).
observation(95, 7, 0).
observation(95, 8, 0).
transition(95, 65).
observation(96, 0, 1).
observation(96, 1, 1).
observation(96, 2, 0).
observation(96, 3, 0).
observation(96, 4, 1).
observation(96, 5, 0).
observation(96, 6, 1).
observation(96, 7, 0).
observation(96, 8, 0).
transition(96, 83).
observation(97, 0, 1).
observation(97, 1, 0).
observation(97, 2, 0).
observation(97, 3, 0).
observation(97, 4, 1).
observation(97, 5, 0).
observation(97, 6, 1).
observation(97, 7, 0).
observation(97, 8, 0).
transition(97, 81).
observation(98, 0, 1).
observation(98, 1, 1).
observation(98, 2, 1).
observation(98, 3, 0).
observation(98, 4, 1).
observation(98, 5, 0).
observation(98, 6, 1).
observation(98, 7, 0).
observation(98, 8, 0).
transition(98, 87).
observation(99, 0, 1).
observation(99, 1, 0).
observation(99, 2, 0).
observation(99, 3, 0).
observation(99, 4, 1).
observation(99, 5, 0).
observation(99, 6, 1).
observation(99, 7, 0).
observation(99, 8, 0).
transition(99, 81).
observation(100, 0, 0).
observation(100, 1, 1).
observation(100, 2, 0).
observation(100, 3, 0).
observation(100, 4, 0).
observation(100, 5, 0).
observation(100, 6, 1).
observation(100, 7, 0).
observation(100, 8, 0).
transition(100, 66).
observation(101, 0, 0).
observation(101, 1, 0).
observation(101, 2, 0).
observation(101, 3, 0).
observation(101, 4, 0).
observation(101, 5, 0).
observation(101, 6, 1).
observation(101, 7, 0).
observation(101, 8, 0).
transition(101, 64).
observation(102, 0, 0).
observation(102, 1, 1).
observation(102, 2, 1).
observation(102, 3, 0).
observation(102, 4, 0).
observation(102, 5, 0).
observation(102, 6, 1).
observation(102, 7, 0).
observation(102, 8, 0).
transition(102, 70).
observation(103, 0, 0).
observation(103, 1, 0).
observation(103, 2, 0).
observation(103, 3, 0).
observation(103, 4, 0).
observation(103, 5, 0).
observation(103, 6, 1).
observation(103, 7, 0).
observation(103, 8, 0).
transition(103, 64).
observation(104, 0, 0).
observation(104, 1, 0).
observation(104, 2, 0).
observation(104, 3, 0).
observation(104, 4, 0).
observation(104, 5, 0).
observation(104, 6, 1).
observation(104, 7, 0).
observation(104, 8, 0).
transition(104, 64).
observation(105, 0, 0).
observation(105, 1, 0).
observation(105, 2, 0).
observation(105, 3, 0).
observation(105, 4, 0).
observation(105, 5, 0).
observation(105, 6, 1).
observation(105, 7, 0).
observation(105, 8, 0).
transition(105, 64).
observation(106, 0, 0).
observation(106, 1, 0).
observation(106, 2, 1).
observation(106, 3, 0).
observation(106, 4, 0).
observation(106, 5, 0).
observation(106, 6, 1).
observation(106, 7, 0).
observation(106, 8, 0).
transition(106, 68).
observation(107, 0, 0).
observation(107, 1, 0).
observation(107, 2, 0).
observation(107, 3, 0).
observation(107, 4, 0).
observation(107, 5, 0).
observation(107, 6, 1).
observation(107, 7, 0).
observation(107, 8, 0).
transition(107, 64).
observation(108, 0, 0).
observation(108, 1, 0).
observation(108, 2, 0).
observation(108, 3, 0).
observation(108, 4, 0).
observation(108, 5, 0).
observation(108, 6, 1).
observation(108, 7, 0).
observation(108, 8, 0).
transition(108, 64).
observation(109, 0, 0).
observation(109, 1, 0).
observation(109, 2, 0).
observation(109, 3, 0).
observation(109, 4, 0).
observation(109, 5, 0).
observation(109, 6, 1).
observation(109, 7, 0).
observation(109, 8, 0).
transition(109, 64).
observation(110, 0, 0).
observation(110, 1, 0).
observation(110, 2, 1).
observation(110, 3, 0).
observation(110, 4, 0).
observation(110, 5, 0).
observation(110, 6, 1).
observation(110, 7, 0).
observation(110, 8, 0).
transition(110, 68).
observation(111, 0, 0).
observation(111, 1, 0).
observation(111, 2, 0).
observation(111, 3, 0).
observation(111, 4, 0).
observation(111, 5, 0).
observation(111, 6, 1).
observation(111, 7, 0).
observation(111, 8, 0).
transition(111, 64).
observation(112, 0, 1).
observation(112, 1, 1).
observation(112, 2, 0).
observation(112, 3, 0).
observation(112, 4, 1).
observation(112, 5, 0).
observation(112, 6, 1).
observation(112, 7, 0).
observation(112, 8, 0).
transition(112, 83).
observation(113, 0, 1).
observation(113, 1, 0).
observation(113, 2, 0).
observation(113, 3, 0).
observation(113, 4, 1).
observation(113, 5, 0).
observation(113, 6, 1).
observation(113, 7, 0).
observation(113, 8, 0).
transition(113, 81).
observation(114, 0, 1).
observation(114, 1, 1).
observation(114, 2, 1).
observation(114, 3, 0).
observation(114, 4, 1).
observation(114, 5, 0).
observation(114, 6, 1).
observation(114, 7, 0).
observation(114, 8, 0).
transition(114, 87).
observation(115, 0, 1).
observation(115, 1, 0).
observation(115, 2, 0).
observation(115, 3, 0).
observation(115, 4, 1).
observation(115, 5, 0).
observation(115, 6, 1).
observation(115, 7, 0).
observation(115, 8, 0).
transition(115, 81).
observation(116, 0, 1).
observation(116, 1, 1).
observation(116, 2, 0).
observation(116, 3, 0).
observation(116, 4, 1).
observation(116, 5, 0).
observation(116, 6, 1).
observation(116, 7, 0).
observation(116, 8, 0).
transition(116, 83).
observation(117, 0, 1).
observation(117, 1, 0).
observation(117, 2, 0).
observation(117, 3, 0).
observation(117, 4, 1).
observation(117, 5, 0).
observation(117, 6, 1).
observation(117, 7, 0).
observation(117, 8, 0).
transition(117, 81).
observation(118, 0, 1).
observation(118, 1, 1).
observation(118, 2, 1).
observation(118, 3, 0).
observation(118, 4, 1).
observation(118, 5, 0).
observation(118, 6, 1).
observation(118, 7, 0).
observation(118, 8, 0).
transition(118, 87).
observation(119, 0, 1).
observation(119, 1, 0).
observation(119, 2, 0).
observation(119, 3, 0).
observation(119, 4, 1).
observation(119, 5, 0).
observation(119, 6, 1).
observation(119, 7, 0).
observation(119, 8, 0).
transition(119, 81).
observation(120, 0, 1).
observation(120, 1, 1).
observation(120, 2, 0).
observation(120, 3, 0).
observation(120, 4, 1).
observation(120, 5, 0).
observation(120, 6, 1).
observation(120, 7, 0).
observation(120, 8, 0).
transition(120, 83).
observation(121, 0, 1).
observation(121, 1, 0).
observation(121, 2, 0).
observation(121, 3, 0).
observation(121, 4, 1).
observation(121, 5, 0).
observation(121, 6, 1).
observation(121, 7, 0).
observation(121, 8, 0).
transition(121, 81).
observation(122, 0, 1).
observation(122, 1, 1).
observation(122, 2, 1).
observation(122, 3, 0).
observation(122, 4, 1).
observation(122, 5, 0).
observation(122, 6, 1).
observation(122, 7, 0).
observation(122, 8, 0).
transition(122, 87).
observation(123, 0, 1).
observation(123, 1, 0).
observation(123, 2, 0).
observation(123, 3, 0).
observation(123, 4, 1).
observation(123, 5, 0).
observation(123, 6, 1).
observation(123, 7, 0).
observation(123, 8, 0).
transition(123, 81).
observation(124, 0, 1).
observation(124, 1, 1).
observation(124, 2, 0).
observation(124, 3, 0).
observation(124, 4, 0).
observation(124, 5, 0).
observation(124, 6, 1).
observation(124, 7, 0).
observation(124, 8, 0).
transition(124, 67).
observation(125, 0, 1).
observation(125, 1, 0).
observation(125, 2, 0).
observation(125, 3, 0).
observation(125, 4, 0).
observation(125, 5, 0).
observation(125, 6, 1).
observation(125, 7, 0).
observation(125, 8, 0).
transition(125, 65).
observation(126, 0, 1).
observation(126, 1, 1).
observation(126, 2, 1).
observation(126, 3, 0).
observation(126, 4, 0).
observation(126, 5, 0).
observation(126, 6, 1).
observation(126, 7, 0).
observation(126, 8, 0).
transition(126, 71).
observation(127, 0, 1).
observation(127, 1, 0).
observation(127, 2, 0).
observation(127, 3, 0).
observation(127, 4, 0).
observation(127, 5, 0).
observation(127, 6, 1).
observation(127, 7, 0).
observation(127, 8, 0).
transition(127, 65).
observation(128, 0, 1).
observation(128, 1, 1).
observation(128, 2, 0).
observation(128, 3, 0).
observation(128, 4, 1).
observation(128, 5, 0).
observation(128, 6, 1).
observation(128, 7, 1).
observation(128, 8, 1).
transition(128, 467).
observation(129, 0, 1).
observation(129, 1, 0).
observation(129, 2, 0).
observation(129, 3, 0).
observation(129, 4, 1).
observation(129, 5, 0).
observation(129, 6, 1).
observation(129, 7, 1).
observation(129, 8, 1).
transition(129, 465).
observation(130, 0, 1).
observation(130, 1, 1).
observation(130, 2, 1).
observation(130, 3, 1).
observation(130, 4, 1).
observation(130, 5, 0).
observation(130, 6, 1).
observation(130, 7, 1).
observation(130, 8, 1).
transition(130, 479).
observation(131, 0, 1).
observation(131, 1, 0).
observation(131, 2, 0).
observation(131, 3, 0).
observation(131, 4, 1).
observation(131, 5, 0).
observation(131, 6, 1).
observation(131, 7, 1).
observation(131, 8, 1).
transition(131, 465).
observation(132, 0, 0).
observation(132, 1, 1).
observation(132, 2, 0).
observation(132, 3, 0).
observation(132, 4, 0).
observation(132, 5, 0).
observation(132, 6, 1).
observation(132, 7, 1).
observation(132, 8, 1).
transition(132, 450).
observation(133, 0, 0).
observation(133, 1, 0).
observation(133, 2, 0).
observation(133, 3, 0).
observation(133, 4, 0).
observation(133, 5, 0).
observation(133, 6, 1).
observation(133, 7, 1).
observation(133, 8, 1).
transition(133, 448).
observation(134, 0, 0).
observation(134, 1, 1).
observation(134, 2, 1).
observation(134, 3, 1).
observation(134, 4, 0).
observation(134, 5, 0).
observation(134, 6, 1).
observation(134, 7, 1).
observation(134, 8, 1).
transition(134, 462).
observation(135, 0, 0).
observation(135, 1, 0).
observation(135, 2, 0).
observation(135, 3, 0).
observation(135, 4, 0).
observation(135, 5, 0).
observation(135, 6, 1).
observation(135, 7, 1).
observation(135, 8, 1).
transition(135, 448).
observation(136, 0, 0).
observation(136, 1, 0).
observation(136, 2, 0).
observation(136, 3, 1).
observation(136, 4, 0).
observation(136, 5, 0).
observation(136, 6, 0).
observation(136, 7, 1).
observation(136, 8, 1).
transition(136, 392).
observation(137, 0, 0).
observation(137, 1, 0).
observation(137, 2, 0).
observation(137, 3, 0).
observation(137, 4, 0).
observation(137, 5, 0).
observation(137, 6, 0).
observation(137, 7, 1).
observation(137, 8, 1).
transition(137, 384).
observation(138, 0, 0).
observation(138, 1, 0).
observation(138, 2, 1).
observation(138, 3, 1).
observation(138, 4, 0).
observation(138, 5, 0).
observation(138, 6, 0).
observation(138, 7, 1).
observation(138, 8, 1).
transition(138, 396).
observation(139, 0, 0).
observation(139, 1, 0).
observation(139, 2, 0).
observation(139, 3, 0).
observation(139, 4, 0).
observation(139, 5, 0).
observation(139, 6, 0).
observation(139, 7, 1).
observation(139, 8, 1).
transition(139, 384).
observation(140, 0, 0).
observation(140, 1, 0).
observation(140, 2, 0).
observation(140, 3, 1).
observation(140, 4, 0).
observation(140, 5, 0).
observation(140, 6, 0).
observation(140, 7, 1).
observation(140, 8, 1).
transition(140, 392).
observation(141, 0, 0).
observation(141, 1, 0).
observation(141, 2, 0).
observation(141, 3, 0).
observation(141, 4, 0).
observation(141, 5, 0).
observation(141, 6, 0).
observation(141, 7, 1).
observation(141, 8, 1).
transition(141, 384).
observation(142, 0, 0).
observation(142, 1, 0).
observation(142, 2, 1).
observation(142, 3, 1).
observation(142, 4, 0).
observation(142, 5, 0).
observation(142, 6, 0).
observation(142, 7, 1).
observation(142, 8, 1).
transition(142, 396).
observation(143, 0, 0).
observation(143, 1, 0).
observation(143, 2, 0).
observation(143, 3, 0).
observation(143, 4, 0).
observation(143, 5, 0).
observation(143, 6, 0).
observation(143, 7, 1).
observation(143, 8, 1).
transition(143, 384).
observation(144, 0, 1).
observation(144, 1, 1).
observation(144, 2, 0).
observation(144, 3, 0).
observation(144, 4, 1).
observation(144, 5, 0).
observation(144, 6, 1).
observation(144, 7, 1).
observation(144, 8, 1).
transition(144, 467).
observation(145, 0, 1).
observation(145, 1, 0).
observation(145, 2, 0).
observation(145, 3, 0).
observation(145, 4, 1).
observation(145, 5, 0).
observation(145, 6, 1).
observation(145, 7, 1).
observation(145, 8, 1).
transition(145, 465).
observation(146, 0, 1).
observation(146, 1, 1).
observation(146, 2, 1).
observation(146, 3, 1).
observation(146, 4, 1).
observation(146, 5, 0).
observation(146, 6, 1).
observation(146, 7, 1).
observation(146, 8, 1).
transition(146, 479).
observation(147, 0, 1).
observation(147, 1, 0).
observation(147, 2, 0).
observation(147, 3, 0).
observation(147, 4, 1).
observation(147, 5, 0).
observation(147, 6, 1).
observation(147, 7, 1).
observation(147, 8, 1).
transition(147, 465).
observation(148, 0, 1).
observation(148, 1, 1).
observation(148, 2, 0).
observation(148, 3, 0).
observation(148, 4, 1).
observation(148, 5, 0).
observation(148, 6, 1).
observation(148, 7, 1).
observation(148, 8, 1).
transition(148, 467).
observation(149, 0, 1).
observation(149, 1, 0).
observation(149, 2, 0).
observation(149, 3, 0).
observation(149, 4, 1).
observation(149, 5, 0).
observation(149, 6, 1).
observation(149, 7, 1).
observation(149, 8, 1).
transition(149, 465).
observation(150, 0, 1).
observation(150, 1, 1).
observation(150, 2, 1).
observation(150, 3, 1).
observation(150, 4, 1).
observation(150, 5, 0).
observation(150, 6, 1).
observation(150, 7, 1).
observation(150, 8, 1).
transition(150, 479).
observation(151, 0, 1).
observation(151, 1, 0).
observation(151, 2, 0).
observation(151, 3, 0).
observation(151, 4, 1).
observation(151, 5, 0).
observation(151, 6, 1).
observation(151, 7, 1).
observation(151, 8, 1).
transition(151, 465).
observation(152, 0, 1).
observation(152, 1, 1).
observation(152, 2, 0).
observation(152, 3, 1).
observation(152, 4, 1).
observation(152, 5, 0).
observation(152, 6, 1).
observation(152, 7, 1).
observation(152, 8, 1).
transition(152, 475).
observation(153, 0, 1).
observation(153, 1, 0).
observation(153, 2, 0).
observation(153, 3, 0).
observation(153, 4, 1).
observation(153, 5, 0).
observation(153, 6, 1).
observation(153, 7, 1).
observation(153, 8, 1).
transition(153, 465).
observation(154, 0, 1).
observation(154, 1, 1).
observation(154, 2, 1).
observation(154, 3, 1).
observation(154, 4, 1).
observation(154, 5, 0).
observation(154, 6, 1).
observation(154, 7, 1).
observation(154, 8, 1).
transition(154, 479).
observation(155, 0, 1).
observation(155, 1, 0).
observation(155, 2, 0).
observation(155, 3, 0).
observation(155, 4, 1).
observation(155, 5, 0).
observation(155, 6, 1).
observation(155, 7, 1).
observation(155, 8, 1).
transition(155, 465).
observation(156, 0, 1).
observation(156, 1, 1).
observation(156, 2, 0).
observation(156, 3, 1).
observation(156, 4, 0).
observation(156, 5, 0).
observation(156, 6, 1).
observation(156, 7, 1).
observation(156, 8, 1).
transition(156, 459).
observation(157, 0, 1).
observation(157, 1, 0).
observation(157, 2, 0).
observation(157, 3, 0).
observation(157, 4, 0).
observation(157, 5, 0).
observation(157, 6, 1).
observation(157, 7, 1).
observation(157, 8, 1).
transition(157, 449).
observation(158, 0, 1).
observation(158, 1, 1).
observation(158, 2, 1).
observation(158, 3, 1).
observation(158, 4, 0).
observation(158, 5, 0).
observation(158, 6, 1).
observation(158, 7, 1).
observation(158, 8, 1).
transition(158, 463).
observation(159, 0, 1).
observation(159, 1, 0).
observation(159, 2, 0).
observation(159, 3, 0).
observation(159, 4, 0).
observation(159, 5, 0).
observation(159, 6, 1).
observation(159, 7, 1).
observation(159, 8, 1).
transition(159, 449).
observation(160, 0, 1).
observation(160, 1, 1).
observation(160, 2, 0).
observation(160, 3, 0).
observation(160, 4, 1).
observation(160, 5, 0).
observation(160, 6, 1).
observation(160, 7, 1).
observation(160, 8, 0).
transition(160, 211).
observation(161, 0, 1).
observation(161, 1, 0).
observation(161, 2, 0).
observation(161, 3, 0).
observation(161, 4, 1).
observation(161, 5, 0).
observation(161, 6, 1).
observation(161, 7, 1).
observation(161, 8, 0).
transition(161, 209).
observation(162, 0, 1).
observation(162, 1, 1).
observation(162, 2, 1).
observation(162, 3, 0).
observation(162, 4, 1).
observation(162, 5, 0).
observation(162, 6, 1).
observation(162, 7, 1).
observation(162, 8, 0).
transition(162, 215).
observation(163, 0, 1).
observation(163, 1, 0).
observation(163, 2, 0).
observation(163, 3, 0).
observation(163, 4, 1).
observation(163, 5, 0).
observation(163, 6, 1).
observation(163, 7, 1).
observation(163, 8, 0).
transition(163, 209).
observation(164, 0, 0).
observation(164, 1, 1).
observation(164, 2, 0).
observation(164, 3, 0).
observation(164, 4, 0).
observation(164, 5, 0).
observation(164, 6, 1).
observation(164, 7, 1).
observation(164, 8, 0).
transition(164, 194).
observation(165, 0, 0).
observation(165, 1, 0).
observation(165, 2, 0).
observation(165, 3, 0).
observation(165, 4, 0).
observation(165, 5, 0).
observation(165, 6, 1).
observation(165, 7, 1).
observation(165, 8, 0).
transition(165, 192).
observation(166, 0, 0).
observation(166, 1, 1).
observation(166, 2, 1).
observation(166, 3, 0).
observation(166, 4, 0).
observation(166, 5, 0).
observation(166, 6, 1).
observation(166, 7, 1).
observation(166, 8, 0).
transition(166, 198).
observation(167, 0, 0).
observation(167, 1, 0).
observation(167, 2, 0).
observation(167, 3, 0).
observation(167, 4, 0).
observation(167, 5, 0).
observation(167, 6, 1).
observation(167, 7, 1).
observation(167, 8, 0).
transition(167, 192).
observation(168, 0, 0).
observation(168, 1, 0).
observation(168, 2, 0).
observation(168, 3, 0).
observation(168, 4, 0).
observation(168, 5, 0).
observation(168, 6, 1).
observation(168, 7, 1).
observation(168, 8, 0).
transition(168, 192).
observation(169, 0, 0).
observation(169, 1, 0).
observation(169, 2, 0).
observation(169, 3, 0).
observation(169, 4, 0).
observation(169, 5, 0).
observation(169, 6, 1).
observation(169, 7, 1).
observation(169, 8, 0).
transition(169, 192).
observation(170, 0, 0).
observation(170, 1, 0).
observation(170, 2, 1).
observation(170, 3, 0).
observation(170, 4, 0).
observation(170, 5, 0).
observation(170, 6, 1).
observation(170, 7, 1).
observation(170, 8, 0).
transition(170, 196).
observation(171, 0, 0).
observation(171, 1, 0).
observation(171, 2, 0).
observation(171, 3, 0).
observation(171, 4, 0).
observation(171, 5, 0).
observation(171, 6, 1).
observation(171, 7, 1).
observation(171, 8, 0).
transition(171, 192).
observation(172, 0, 0).
observation(172, 1, 0).
observation(172, 2, 0).
observation(172, 3, 0).
observation(172, 4, 0).
observation(172, 5, 0).
observation(172, 6, 1).
observation(172, 7, 1).
observation(172, 8, 0).
transition(172, 192).
observation(173, 0, 0).
observation(173, 1, 0).
observation(173, 2, 0).
observation(173, 3, 0).
observation(173, 4, 0).
observation(173, 5, 0).
observation(173, 6, 1).
observation(173, 7, 1).
observation(173, 8, 0).
transition(173, 192).
observation(174, 0, 0).
observation(174, 1, 0).
observation(174, 2, 1).
observation(174, 3, 0).
observation(174, 4, 0).
observation(174, 5, 0).
observation(174, 6, 1).
observation(174, 7, 1).
observation(174, 8, 0).
transition(174, 196).
observation(175, 0, 0).
observation(175, 1, 0).
observation(175, 2, 0).
observation(175, 3, 0).
observation(175, 4, 0).
observation(175, 5, 0).
observation(175, 6, 1).
observation(175, 7, 1).
observation(175, 8, 0).
transition(175, 192).
observation(176, 0, 1).
observation(176, 1, 1).
observation(176, 2, 0).
observation(176, 3, 0).
observation(176, 4, 1).
observation(176, 5, 0).
observation(176, 6, 1).
observation(176, 7, 1).
observation(176, 8, 0).
transition(176, 211).
observation(177, 0, 1).
observation(177, 1, 0).
observation(177, 2, 0).
observation(177, 3, 0).
observation(177, 4, 1).
observation(177, 5, 0).
observation(177, 6, 1).
observation(177, 7, 1).
observation(177, 8, 0).
transition(177, 209).
observation(178, 0, 1).
observation(178, 1, 1).
observation(178, 2, 1).
observation(178, 3, 0).
observation(178, 4, 1).
observation(178, 5, 0).
observation(178, 6, 1).
observation(178, 7, 1).
observation(178, 8, 0).
transition(178, 215).
observation(179, 0, 1).
observation(179, 1, 0).
observation(179, 2, 0).
observation(179, 3, 0).
observation(179, 4, 1).
observation(179, 5, 0).
observation(179, 6, 1).
observation(179, 7, 1).
observation(179, 8, 0).
transition(179, 209).
observation(180, 0, 1).
observation(180, 1, 1).
observation(180, 2, 0).
observation(180, 3, 0).
observation(180, 4, 1).
observation(180, 5, 0).
observation(180, 6, 1).
observation(180, 7, 1).
observation(180, 8, 0).
transition(180, 211).
observation(181, 0, 1).
observation(181, 1, 0).
observation(181, 2, 0).
observation(181, 3, 0).
observation(181, 4, 1).
observation(181, 5, 0).
observation(181, 6, 1).
observation(181, 7, 1).
observation(181, 8, 0).
transition(181, 209).
observation(182, 0, 1).
observation(182, 1, 1).
observation(182, 2, 1).
observation(182, 3, 0).
observation(182, 4, 1).
observation(182, 5, 0).
observation(182, 6, 1).
observation(182, 7, 1).
observation(182, 8, 0).
transition(182, 215).
observation(183, 0, 1).
observation(183, 1, 0).
observation(183, 2, 0).
observation(183, 3, 0).
observation(183, 4, 1).
observation(183, 5, 0).
observation(183, 6, 1).
observation(183, 7, 1).
observation(183, 8, 0).
transition(183, 209).
observation(184, 0, 1).
observation(184, 1, 1).
observation(184, 2, 0).
observation(184, 3, 0).
observation(184, 4, 1).
observation(184, 5, 0).
observation(184, 6, 1).
observation(184, 7, 1).
observation(184, 8, 0).
transition(184, 211).
observation(185, 0, 1).
observation(185, 1, 0).
observation(185, 2, 0).
observation(185, 3, 0).
observation(185, 4, 1).
observation(185, 5, 0).
observation(185, 6, 1).
observation(185, 7, 1).
observation(185, 8, 0).
transition(185, 209).
observation(186, 0, 1).
observation(186, 1, 1).
observation(186, 2, 1).
observation(186, 3, 0).
observation(186, 4, 1).
observation(186, 5, 0).
observation(186, 6, 1).
observation(186, 7, 1).
observation(186, 8, 0).
transition(186, 215).
observation(187, 0, 1).
observation(187, 1, 0).
observation(187, 2, 0).
observation(187, 3, 0).
observation(187, 4, 1).
observation(187, 5, 0).
observation(187, 6, 1).
observation(187, 7, 1).
observation(187, 8, 0).
transition(187, 209).
observation(188, 0, 1).
observation(188, 1, 1).
observation(188, 2, 0).
observation(188, 3, 0).
observation(188, 4, 0).
observation(188, 5, 0).
observation(188, 6, 1).
observation(188, 7, 1).
observation(188, 8, 0).
transition(188, 195).
observation(189, 0, 1).
observation(189, 1, 0).
observation(189, 2, 0).
observation(189, 3, 0).
observation(189, 4, 0).
observation(189, 5, 0).
observation(189, 6, 1).
observation(189, 7, 1).
observation(189, 8, 0).
transition(189, 193).
observation(190, 0, 1).
observation(190, 1, 1).
observation(190, 2, 1).
observation(190, 3, 0).
observation(190, 4, 0).
observation(190, 5, 0).
observation(190, 6, 1).
observation(190, 7, 1).
observation(190, 8, 0).
transition(190, 199).
observation(191, 0, 1).
observation(191, 1, 0).
observation(191, 2, 0).
observation(191, 3, 0).
observation(191, 4, 0).
observation(191, 5, 0).
observation(191, 6, 1).
observation(191, 7, 1).
observation(191, 8, 0).
transition(191, 193).
observation(192, 0, 1).
observation(192, 1, 1).
observation(192, 2, 0).
observation(192, 3, 0).
observation(192, 4, 1).
observation(192, 5, 0).
observation(192, 6, 1).
observation(192, 7, 0).
observation(192, 8, 0).
transition(192, 83).
observation(193, 0, 1).
observation(193, 1, 0).
observation(193, 2, 0).
observation(193, 3, 0).
observation(193, 4, 1).
observation(193, 5, 0).
observation(193, 6, 1).
observation(193, 7, 0).
observation(193, 8, 0).
transition(193, 81).
observation(194, 0, 1).
observation(194, 1, 1).
observation(194, 2, 1).
observation(194, 3, 0).
observation(194, 4, 1).
observation(194, 5, 0).
observation(194, 6, 1).
observation(194, 7, 0).
observation(194, 8, 0).
transition(194, 87).
observation(195, 0, 1).
observation(195, 1, 0).
observation(195, 2, 0).
observation(195, 3, 0).
observation(195, 4, 1).
observation(195, 5, 0).
observation(195, 6, 1).
observation(195, 7, 0).
observation(195, 8, 0).
transition(195, 81).
observation(196, 0, 0).
observation(196, 1, 1).
observation(196, 2, 0).
observation(196, 3, 0).
observation(196, 4, 0).
observation(196, 5, 0).
observation(196, 6, 1).
observation(196, 7, 0).
observation(196, 8, 0).
transition(196, 66).
observation(197, 0, 0).
observation(197, 1, 0).
observation(197, 2, 0).
observation(197, 3, 0).
observation(197, 4, 0).
observation(197, 5, 0).
observation(197, 6, 1).
observation(197, 7, 0).
observation(197, 8, 0).
transition(197, 64).
observation(198, 0, 0).
observation(198, 1, 1).
observation(198, 2, 1).
observation(198, 3, 0).
observation(198, 4, 0).
observation(198, 5, 0).
observation(198, 6, 1).
observation(198, 7, 0).
observation(198, 8, 0).
transition(198, 70).
observation(199, 0, 0).
observation(199, 1, 0).
observation(199, 2, 0).
observation(199, 3, 0).
observation(199, 4, 0).
observation(199, 5, 0).
observation(199, 6, 1).
observation(199, 7, 0).
observation(199, 8, 0).
transition(199, 64).
observation(200, 0, 0).
observation(200, 1, 0).
observation(200, 2, 0).
observation(200, 3, 0).
observation(200, 4, 0).
observation(200, 5, 0).
observation(200, 6, 0).
observation(200, 7, 1).
observation(200, 8, 0).
transition(200, 128).
observation(201, 0, 0).
observation(201, 1, 0).
observation(201, 2, 0).
observation(201, 3, 0).
observation(201, 4, 0).
observation(201, 5, 0).
observation(201, 6, 0).
observation(201, 7, 1).
observation(201, 8, 0).
transition(201, 128).
observation(202, 0, 0).
observation(202, 1, 0).
observation(202, 2, 1).
observation(202, 3, 0).
observation(202, 4, 0).
observation(202, 5, 0).
observation(202, 6, 0).
observation(202, 7, 1).
observation(202, 8, 0).
transition(202, 132).
observation(203, 0, 0).
observation(203, 1, 0).
observation(203, 2, 0).
observation(203, 3, 0).
observation(203, 4, 0).
observation(203, 5, 0).
observation(203, 6, 0).
observation(203, 7, 1).
observation(203, 8, 0).
transition(203, 128).
observation(204, 0, 0).
observation(204, 1, 0).
observation(204, 2, 0).
observation(204, 3, 0).
observation(204, 4, 0).
observation(204, 5, 0).
observation(204, 6, 0).
observation(204, 7, 1).
observation(204, 8, 0).
transition(204, 128).
observation(205, 0, 0).
observation(205, 1, 0).
observation(205, 2, 0).
observation(205, 3, 0).
observation(205, 4, 0).
observation(205, 5, 0).
observation(205, 6, 0).
observation(205, 7, 1).
observation(205, 8, 0).
transition(205, 128).
observation(206, 0, 0).
observation(206, 1, 0).
observation(206, 2, 1).
observation(206, 3, 0).
observation(206, 4, 0).
observation(206, 5, 0).
observation(206, 6, 0).
observation(206, 7, 1).
observation(206, 8, 0).
transition(206, 132).
observation(207, 0, 0).
observation(207, 1, 0).
observation(207, 2, 0).
observation(207, 3, 0).
observation(207, 4, 0).
observation(207, 5, 0).
observation(207, 6, 0).
observation(207, 7, 1).
observation(207, 8, 0).
transition(207, 128).
observation(208, 0, 1).
observation(208, 1, 1).
observation(208, 2, 0).
observation(208, 3, 0).
observation(208, 4, 1).
observation(208, 5, 0).
observation(208, 6, 1).
observation(208, 7, 0).
observation(208, 8, 0).
transition(208, 83).
observation(209, 0, 1).
observation(209, 1, 0).
observation(209, 2, 0).
observation(209, 3, 0).
observation(209, 4, 1).
observation(209, 5, 0).
observation(209, 6, 1).
observation(209, 7, 0).
observation(209, 8, 0).
transition(209, 81).
observation(210, 0, 1).
observation(210, 1, 1).
observation(210, 2, 1).
observation(210, 3, 0).
observation(210, 4, 1).
observation(210, 5, 0).
observation(210, 6, 1).
observation(210, 7, 0).
observation(210, 8, 0).
transition(210, 87).
observation(211, 0, 1).
observation(211, 1, 0).
observation(211, 2, 0).
observation(211, 3, 0).
observation(211, 4, 1).
observation(211, 5, 0).
observation(211, 6, 1).
observation(211, 7, 0).
observation(211, 8, 0).
transition(211, 81).
observation(212, 0, 1).
observation(212, 1, 1).
observation(212, 2, 0).
observation(212, 3, 0).
observation(212, 4, 1).
observation(212, 5, 0).
observation(212, 6, 1).
observation(212, 7, 0).
observation(212, 8, 0).
transition(212, 83).
observation(213, 0, 1).
observation(213, 1, 0).
observation(213, 2, 0).
observation(213, 3, 0).
observation(213, 4, 1).
observation(213, 5, 0).
observation(213, 6, 1).
observation(213, 7, 0).
observation(213, 8, 0).
transition(213, 81).
observation(214, 0, 1).
observation(214, 1, 1).
observation(214, 2, 1).
observation(214, 3, 0).
observation(214, 4, 1).
observation(214, 5, 0).
observation(214, 6, 1).
observation(214, 7, 0).
observation(214, 8, 0).
transition(214, 87).
observation(215, 0, 1).
observation(215, 1, 0).
observation(215, 2, 0).
observation(215, 3, 0).
observation(215, 4, 1).
observation(215, 5, 0).
observation(215, 6, 1).
observation(215, 7, 0).
observation(215, 8, 0).
transition(215, 81).
observation(216, 0, 1).
observation(216, 1, 1).
observation(216, 2, 0).
observation(216, 3, 0).
observation(216, 4, 1).
observation(216, 5, 0).
observation(216, 6, 1).
observation(216, 7, 1).
observation(216, 8, 0).
transition(216, 211).
observation(217, 0, 1).
observation(217, 1, 0).
observation(217, 2, 0).
observation(217, 3, 0).
observation(217, 4, 1).
observation(217, 5, 0).
observation(217, 6, 1).
observation(217, 7, 1).
observation(217, 8, 0).
transition(217, 209).
observation(218, 0, 1).
observation(218, 1, 1).
observation(218, 2, 1).
observation(218, 3, 0).
observation(218, 4, 1).
observation(218, 5, 0).
observation(218, 6, 1).
observation(218, 7, 1).
observation(218, 8, 0).
transition(218, 215).
observation(219, 0, 1).
observation(219, 1, 0).
observation(219, 2, 0).
observation(219, 3, 0).
observation(219, 4, 1).
observation(219, 5, 0).
observation(219, 6, 1).
observation(219, 7, 1).
observation(219, 8, 0).
transition(219, 209).
observation(220, 0, 1).
observation(220, 1, 1).
observation(220, 2, 0).
observation(220, 3, 0).
observation(220, 4, 0).
observation(220, 5, 0).
observation(220, 6, 1).
observation(220, 7, 1).
observation(220, 8, 0).
transition(220, 195).
observation(221, 0, 1).
observation(221, 1, 0).
observation(221, 2, 0).
observation(221, 3, 0).
observation(221, 4, 0).
observation(221, 5, 0).
observation(221, 6, 1).
observation(221, 7, 1).
observation(221, 8, 0).
transition(221, 193).
observation(222, 0, 1).
observation(222, 1, 1).
observation(222, 2, 1).
observation(222, 3, 0).
observation(222, 4, 0).
observation(222, 5, 0).
observation(222, 6, 1).
observation(222, 7, 1).
observation(222, 8, 0).
transition(222, 199).
observation(223, 0, 1).
observation(223, 1, 0).
observation(223, 2, 0).
observation(223, 3, 0).
observation(223, 4, 0).
observation(223, 5, 0).
observation(223, 6, 1).
observation(223, 7, 1).
observation(223, 8, 0).
transition(223, 193).
observation(224, 0, 1).
observation(224, 1, 1).
observation(224, 2, 0).
observation(224, 3, 0).
observation(224, 4, 1).
observation(224, 5, 0).
observation(224, 6, 1).
observation(224, 7, 1).
observation(224, 8, 0).
transition(224, 211).
observation(225, 0, 1).
observation(225, 1, 0).
observation(225, 2, 0).
observation(225, 3, 0).
observation(225, 4, 1).
observation(225, 5, 0).
observation(225, 6, 1).
observation(225, 7, 1).
observation(225, 8, 0).
transition(225, 209).
observation(226, 0, 1).
observation(226, 1, 1).
observation(226, 2, 1).
observation(226, 3, 0).
observation(226, 4, 1).
observation(226, 5, 0).
observation(226, 6, 1).
observation(226, 7, 1).
observation(226, 8, 0).
transition(226, 215).
observation(227, 0, 1).
observation(227, 1, 0).
observation(227, 2, 0).
observation(227, 3, 0).
observation(227, 4, 1).
observation(227, 5, 0).
observation(227, 6, 1).
observation(227, 7, 1).
observation(227, 8, 0).
transition(227, 209).
observation(228, 0, 0).
observation(228, 1, 1).
observation(228, 2, 0).
observation(228, 3, 0).
observation(228, 4, 0).
observation(228, 5, 0).
observation(228, 6, 1).
observation(228, 7, 1).
observation(228, 8, 0).
transition(228, 194).
observation(229, 0, 0).
observation(229, 1, 0).
observation(229, 2, 0).
observation(229, 3, 0).
observation(229, 4, 0).
observation(229, 5, 0).
observation(229, 6, 1).
observation(229, 7, 1).
observation(229, 8, 0).
transition(229, 192).
observation(230, 0, 0).
observation(230, 1, 1).
observation(230, 2, 1).
observation(230, 3, 0).
observation(230, 4, 0).
observation(230, 5, 0).
observation(230, 6, 1).
observation(230, 7, 1).
observation(230, 8, 0).
transition(230, 198).
observation(231, 0, 0).
observation(231, 1, 0).
observation(231, 2, 0).
observation(231, 3, 0).
observation(231, 4, 0).
observation(231, 5, 0).
observation(231, 6, 1).
observation(231, 7, 1).
observation(231, 8, 0).
transition(231, 192).
observation(232, 0, 0).
observation(232, 1, 0).
observation(232, 2, 0).
observation(232, 3, 0).
observation(232, 4, 0).
observation(232, 5, 0).
observation(232, 6, 1).
observation(232, 7, 1).
observation(232, 8, 0).
transition(232, 192).
observation(233, 0, 0).
observation(233, 1, 0).
observation(233, 2, 0).
observation(233, 3, 0).
observation(233, 4, 0).
observation(233, 5, 0).
observation(233, 6, 1).
observation(233, 7, 1).
observation(233, 8, 0).
transition(233, 192).
observation(234, 0, 0).
observation(234, 1, 0).
observation(234, 2, 1).
observation(234, 3, 0).
observation(234, 4, 0).
observation(234, 5, 0).
observation(234, 6, 1).
observation(234, 7, 1).
observation(234, 8, 0).
transition(234, 196).
observation(235, 0, 0).
observation(235, 1, 0).
observation(235, 2, 0).
observation(235, 3, 0).
observation(235, 4, 0).
observation(235, 5, 0).
observation(235, 6, 1).
observation(235, 7, 1).
observation(235, 8, 0).
transition(235, 192).
observation(236, 0, 0).
observation(236, 1, 0).
observation(236, 2, 0).
observation(236, 3, 0).
observation(236, 4, 0).
observation(236, 5, 0).
observation(236, 6, 1).
observation(236, 7, 1).
observation(236, 8, 0).
transition(236, 192).
observation(237, 0, 0).
observation(237, 1, 0).
observation(237, 2, 0).
observation(237, 3, 0).
observation(237, 4, 0).
observation(237, 5, 0).
observation(237, 6, 1).
observation(237, 7, 1).
observation(237, 8, 0).
transition(237, 192).
observation(238, 0, 0).
observation(238, 1, 0).
observation(238, 2, 1).
observation(238, 3, 0).
observation(238, 4, 0).
observation(238, 5, 0).
observation(238, 6, 1).
observation(238, 7, 1).
observation(238, 8, 0).
transition(238, 196).
observation(239, 0, 0).
observation(239, 1, 0).
observation(239, 2, 0).
observation(239, 3, 0).
observation(239, 4, 0).
observation(239, 5, 0).
observation(239, 6, 1).
observation(239, 7, 1).
observation(239, 8, 0).
transition(239, 192).
observation(240, 0, 1).
observation(240, 1, 1).
observation(240, 2, 0).
observation(240, 3, 0).
observation(240, 4, 1).
observation(240, 5, 0).
observation(240, 6, 1).
observation(240, 7, 1).
observation(240, 8, 0).
transition(240, 211).
observation(241, 0, 1).
observation(241, 1, 0).
observation(241, 2, 0).
observation(241, 3, 0).
observation(241, 4, 1).
observation(241, 5, 0).
observation(241, 6, 1).
observation(241, 7, 1).
observation(241, 8, 0).
transition(241, 209).
observation(242, 0, 1).
observation(242, 1, 1).
observation(242, 2, 1).
observation(242, 3, 0).
observation(242, 4, 1).
observation(242, 5, 0).
observation(242, 6, 1).
observation(242, 7, 1).
observation(242, 8, 0).
transition(242, 215).
observation(243, 0, 1).
observation(243, 1, 0).
observation(243, 2, 0).
observation(243, 3, 0).
observation(243, 4, 1).
observation(243, 5, 0).
observation(243, 6, 1).
observation(243, 7, 1).
observation(243, 8, 0).
transition(243, 209).
observation(244, 0, 1).
observation(244, 1, 1).
observation(244, 2, 0).
observation(244, 3, 0).
observation(244, 4, 1).
observation(244, 5, 0).
observation(244, 6, 1).
observation(244, 7, 1).
observation(244, 8, 0).
transition(244, 211).
observation(245, 0, 1).
observation(245, 1, 0).
observation(245, 2, 0).
observation(245, 3, 0).
observation(245, 4, 1).
observation(245, 5, 0).
observation(245, 6, 1).
observation(245, 7, 1).
observation(245, 8, 0).
transition(245, 209).
observation(246, 0, 1).
observation(246, 1, 1).
observation(246, 2, 1).
observation(246, 3, 0).
observation(246, 4, 1).
observation(246, 5, 0).
observation(246, 6, 1).
observation(246, 7, 1).
observation(246, 8, 0).
transition(246, 215).
observation(247, 0, 1).
observation(247, 1, 0).
observation(247, 2, 0).
observation(247, 3, 0).
observation(247, 4, 1).
observation(247, 5, 0).
observation(247, 6, 1).
observation(247, 7, 1).
observation(247, 8, 0).
transition(247, 209).
observation(248, 0, 1).
observation(248, 1, 1).
observation(248, 2, 0).
observation(248, 3, 0).
observation(248, 4, 1).
observation(248, 5, 0).
observation(248, 6, 1).
observation(248, 7, 1).
observation(248, 8, 0).
transition(248, 211).
observation(249, 0, 1).
observation(249, 1, 0).
observation(249, 2, 0).
observation(249, 3, 0).
observation(249, 4, 1).
observation(249, 5, 0).
observation(249, 6, 1).
observation(249, 7, 1).
observation(249, 8, 0).
transition(249, 209).
observation(250, 0, 1).
observation(250, 1, 1).
observation(250, 2, 1).
observation(250, 3, 0).
observation(250, 4, 1).
observation(250, 5, 0).
observation(250, 6, 1).
observation(250, 7, 1).
observation(250, 8, 0).
transition(250, 215).
observation(251, 0, 1).
observation(251, 1, 0).
observation(251, 2, 0).
observation(251, 3, 0).
observation(251, 4, 1).
observation(251, 5, 0).
observation(251, 6, 1).
observation(251, 7, 1).
observation(251, 8, 0).
transition(251, 209).
observation(252, 0, 1).
observation(252, 1, 1).
observation(252, 2, 0).
observation(252, 3, 0).
observation(252, 4, 0).
observation(252, 5, 0).
observation(252, 6, 1).
observation(252, 7, 1).
observation(252, 8, 0).
transition(252, 195).
observation(253, 0, 1).
observation(253, 1, 0).
observation(253, 2, 0).
observation(253, 3, 0).
observation(253, 4, 0).
observation(253, 5, 0).
observation(253, 6, 1).
observation(253, 7, 1).
observation(253, 8, 0).
transition(253, 193).
observation(254, 0, 1).
observation(254, 1, 1).
observation(254, 2, 1).
observation(254, 3, 0).
observation(254, 4, 0).
observation(254, 5, 0).
observation(254, 6, 1).
observation(254, 7, 1).
observation(254, 8, 0).
transition(254, 199).
observation(255, 0, 1).
observation(255, 1, 0).
observation(255, 2, 0).
observation(255, 3, 0).
observation(255, 4, 0).
observation(255, 5, 0).
observation(255, 6, 1).
observation(255, 7, 1).
observation(255, 8, 0).
transition(255, 193).
observation(256, 0, 0).
observation(256, 1, 0).
observation(256, 2, 0).
observation(256, 3, 0).
observation(256, 4, 0).
observation(256, 5, 1).
observation(256, 6, 0).
observation(256, 7, 1).
observation(256, 8, 1).
transition(256, 416).
observation(257, 0, 0).
observation(257, 1, 0).
observation(257, 2, 0).
observation(257, 3, 0).
observation(257, 4, 0).
observation(257, 5, 1).
observation(257, 6, 0).
observation(257, 7, 1).
observation(257, 8, 1).
transition(257, 416).
observation(258, 0, 0).
observation(258, 1, 0).
observation(258, 2, 1).
observation(258, 3, 1).
observation(258, 4, 0).
observation(258, 5, 1).
observation(258, 6, 0).
observation(258, 7, 1).
observation(258, 8, 1).
transition(258, 428).
observation(259, 0, 0).
observation(259, 1, 0).
observation(259, 2, 0).
observation(259, 3, 0).
observation(259, 4, 0).
observation(259, 5, 1).
observation(259, 6, 0).
observation(259, 7, 1).
observation(259, 8, 1).
transition(259, 416).
observation(260, 0, 0).
observation(260, 1, 0).
observation(260, 2, 0).
observation(260, 3, 0).
observation(260, 4, 0).
observation(260, 5, 1).
observation(260, 6, 0).
observation(260, 7, 1).
observation(260, 8, 1).
transition(260, 416).
observation(261, 0, 0).
observation(261, 1, 0).
observation(261, 2, 0).
observation(261, 3, 0).
observation(261, 4, 0).
observation(261, 5, 1).
observation(261, 6, 0).
observation(261, 7, 1).
observation(261, 8, 1).
transition(261, 416).
observation(262, 0, 0).
observation(262, 1, 0).
observation(262, 2, 1).
observation(262, 3, 1).
observation(262, 4, 0).
observation(262, 5, 1).
observation(262, 6, 0).
observation(262, 7, 1).
observation(262, 8, 1).
transition(262, 428).
observation(263, 0, 0).
observation(263, 1, 0).
observation(263, 2, 0).
observation(263, 3, 0).
observation(263, 4, 0).
observation(263, 5, 1).
observation(263, 6, 0).
observation(263, 7, 1).
observation(263, 8, 1).
transition(263, 416).
observation(264, 0, 0).
observation(264, 1, 0).
observation(264, 2, 0).
observation(264, 3, 1).
observation(264, 4, 0).
observation(264, 5, 1).
observation(264, 6, 0).
observation(264, 7, 1).
observation(264, 8, 1).
transition(264, 424).
observation(265, 0, 0).
observation(265, 1, 0).
observation(265, 2, 0).
observation(265, 3, 0).
observation(265, 4, 0).
observation(265, 5, 1).
observation(265, 6, 0).
observation(265, 7, 1).
observation(265, 8, 1).
transition(265, 416).
observation(266, 0, 0).
observation(266, 1, 0).
observation(266, 2, 1).
observation(266, 3, 1).
observation(266, 4, 0).
observation(266, 5, 1).
observation(266, 6, 0).
observation(266, 7, 1).
observation(266, 8, 1).
transition(266, 428).
observation(267, 0, 0).
observation(267, 1, 0).
observation(267, 2, 0).
observation(267, 3, 0).
observation(267, 4, 0).
observation(267, 5, 1).
observation(267, 6, 0).
observation(267, 7, 1).
observation(267, 8, 1).
transition(267, 416).
observation(268, 0, 0).
observation(268, 1, 0).
observation(268, 2, 0).
observation(268, 3, 1).
observation(268, 4, 0).
observation(268, 5, 1).
observation(268, 6, 0).
observation(268, 7, 1).
observation(268, 8, 1).
transition(268, 424).
observation(269, 0, 0).
observation(269, 1, 0).
observation(269, 2, 0).
observation(269, 3, 0).
observation(269, 4, 0).
observation(269, 5, 1).
observation(269, 6, 0).
observation(269, 7, 1).
observation(269, 8, 1).
transition(269, 416).
observation(270, 0, 0).
observation(270, 1, 0).
observation(270, 2, 1).
observation(270, 3, 1).
observation(270, 4, 0).
observation(270, 5, 1).
observation(270, 6, 0).
observation(270, 7, 1).
observation(270, 8, 1).
transition(270, 428).
observation(271, 0, 0).
observation(271, 1, 0).
observation(271, 2, 0).
observation(271, 3, 0).
observation(271, 4, 0).
observation(271, 5, 1).
observation(271, 6, 0).
observation(271, 7, 1).
observation(271, 8, 1).
transition(271, 416).
observation(272, 0, 0).
observation(272, 1, 0).
observation(272, 2, 0).
observation(272, 3, 0).
observation(272, 4, 0).
observation(272, 5, 1).
observation(272, 6, 0).
observation(272, 7, 1).
observation(272, 8, 1).
transition(272, 416).
observation(273, 0, 0).
observation(273, 1, 0).
observation(273, 2, 0).
observation(273, 3, 0).
observation(273, 4, 0).
observation(273, 5, 1).
observation(273, 6, 0).
observation(273, 7, 1).
observation(273, 8, 1).
transition(273, 416).
observation(274, 0, 0).
observation(274, 1, 0).
observation(274, 2, 1).
observation(274, 3, 1).
observation(274, 4, 0).
observation(274, 5, 1).
observation(274, 6, 0).
observation(274, 7, 1).
observation(274, 8, 1).
transition(274, 428).
observation(275, 0, 0).
observation(275, 1, 0).
observation(275, 2, 0).
observation(275, 3, 0).
observation(275, 4, 0).
observation(275, 5, 1).
observation(275, 6, 0).
observation(275, 7, 1).
observation(275, 8, 1).
transition(275, 416).
observation(276, 0, 0).
observation(276, 1, 0).
observation(276, 2, 0).
observation(276, 3, 0).
observation(276, 4, 0).
observation(276, 5, 1).
observation(276, 6, 0).
observation(276, 7, 1).
observation(276, 8, 1).
transition(276, 416).
observation(277, 0, 0).
observation(277, 1, 0).
observation(277, 2, 0).
observation(277, 3, 0).
observation(277, 4, 0).
observation(277, 5, 1).
observation(277, 6, 0).
observation(277, 7, 1).
observation(277, 8, 1).
transition(277, 416).
observation(278, 0, 0).
observation(278, 1, 0).
observation(278, 2, 1).
observation(278, 3, 1).
observation(278, 4, 0).
observation(278, 5, 1).
observation(278, 6, 0).
observation(278, 7, 1).
observation(278, 8, 1).
transition(278, 428).
observation(279, 0, 0).
observation(279, 1, 0).
observation(279, 2, 0).
observation(279, 3, 0).
observation(279, 4, 0).
observation(279, 5, 1).
observation(279, 6, 0).
observation(279, 7, 1).
observation(279, 8, 1).
transition(279, 416).
observation(280, 0, 0).
observation(280, 1, 0).
observation(280, 2, 0).
observation(280, 3, 1).
observation(280, 4, 0).
observation(280, 5, 1).
observation(280, 6, 0).
observation(280, 7, 1).
observation(280, 8, 1).
transition(280, 424).
observation(281, 0, 0).
observation(281, 1, 0).
observation(281, 2, 0).
observation(281, 3, 0).
observation(281, 4, 0).
observation(281, 5, 1).
observation(281, 6, 0).
observation(281, 7, 1).
observation(281, 8, 1).
transition(281, 416).
observation(282, 0, 0).
observation(282, 1, 0).
observation(282, 2, 1).
observation(282, 3, 1).
observation(282, 4, 0).
observation(282, 5, 1).
observation(282, 6, 0).
observation(282, 7, 1).
observation(282, 8, 1).
transition(282, 428).
observation(283, 0, 0).
observation(283, 1, 0).
observation(283, 2, 0).
observation(283, 3, 0).
observation(283, 4, 0).
observation(283, 5, 1).
observation(283, 6, 0).
observation(283, 7, 1).
observation(283, 8, 1).
transition(283, 416).
observation(284, 0, 0).
observation(284, 1, 0).
observation(284, 2, 0).
observation(284, 3, 1).
observation(284, 4, 0).
observation(284, 5, 1).
observation(284, 6, 0).
observation(284, 7, 1).
observation(284, 8, 1).
transition(284, 424).
observation(285, 0, 0).
observation(285, 1, 0).
observation(285, 2, 0).
observation(285, 3, 0).
observation(285, 4, 0).
observation(285, 5, 1).
observation(285, 6, 0).
observation(285, 7, 1).
observation(285, 8, 1).
transition(285, 416).
observation(286, 0, 0).
observation(286, 1, 0).
observation(286, 2, 1).
observation(286, 3, 1).
observation(286, 4, 0).
observation(286, 5, 1).
observation(286, 6, 0).
observation(286, 7, 1).
observation(286, 8, 1).
transition(286, 428).
observation(287, 0, 0).
observation(287, 1, 0).
observation(287, 2, 0).
observation(287, 3, 0).
observation(287, 4, 0).
observation(287, 5, 1).
observation(287, 6, 0).
observation(287, 7, 1).
observation(287, 8, 1).
transition(287, 416).
observation(288, 0, 0).
observation(288, 1, 0).
observation(288, 2, 0).
observation(288, 3, 0).
observation(288, 4, 0).
observation(288, 5, 1).
observation(288, 6, 1).
observation(288, 7, 1).
observation(288, 8, 0).
transition(288, 224).
observation(289, 0, 0).
observation(289, 1, 0).
observation(289, 2, 0).
observation(289, 3, 0).
observation(289, 4, 0).
observation(289, 5, 1).
observation(289, 6, 1).
observation(289, 7, 1).
observation(289, 8, 0).
transition(289, 224).
observation(290, 0, 0).
observation(290, 1, 0).
observation(290, 2, 1).
observation(290, 3, 0).
observation(290, 4, 0).
observation(290, 5, 1).
observation(290, 6, 1).
observation(290, 7, 1).
observation(290, 8, 0).
transition(290, 228).
observation(291, 0, 0).
observation(291, 1, 0).
observation(291, 2, 0).
observation(291, 3, 0).
observation(291, 4, 0).
observation(291, 5, 1).
observation(291, 6, 1).
observation(291, 7, 1).
observation(291, 8, 0).
transition(291, 224).
observation(292, 0, 0).
observation(292, 1, 0).
observation(292, 2, 0).
observation(292, 3, 0).
observation(292, 4, 0).
observation(292, 5, 1).
observation(292, 6, 1).
observation(292, 7, 1).
observation(292, 8, 0).
transition(292, 224).
observation(293, 0, 0).
observation(293, 1, 0).
observation(293, 2, 0).
observation(293, 3, 0).
observation(293, 4, 0).
observation(293, 5, 1).
observation(293, 6, 1).
observation(293, 7, 1).
observation(293, 8, 0).
transition(293, 224).
observation(294, 0, 0).
observation(294, 1, 0).
observation(294, 2, 1).
observation(294, 3, 0).
observation(294, 4, 0).
observation(294, 5, 1).
observation(294, 6, 1).
observation(294, 7, 1).
observation(294, 8, 0).
transition(294, 228).
observation(295, 0, 0).
observation(295, 1, 0).
observation(295, 2, 0).
observation(295, 3, 0).
observation(295, 4, 0).
observation(295, 5, 1).
observation(295, 6, 1).
observation(295, 7, 1).
observation(295, 8, 0).
transition(295, 224).
observation(296, 0, 0).
observation(296, 1, 0).
observation(296, 2, 0).
observation(296, 3, 0).
observation(296, 4, 0).
observation(296, 5, 1).
observation(296, 6, 1).
observation(296, 7, 1).
observation(296, 8, 0).
transition(296, 224).
observation(297, 0, 0).
observation(297, 1, 0).
observation(297, 2, 0).
observation(297, 3, 0).
observation(297, 4, 0).
observation(297, 5, 1).
observation(297, 6, 1).
observation(297, 7, 1).
observation(297, 8, 0).
transition(297, 224).
observation(298, 0, 0).
observation(298, 1, 0).
observation(298, 2, 1).
observation(298, 3, 0).
observation(298, 4, 0).
observation(298, 5, 1).
observation(298, 6, 1).
observation(298, 7, 1).
observation(298, 8, 0).
transition(298, 228).
observation(299, 0, 0).
observation(299, 1, 0).
observation(299, 2, 0).
observation(299, 3, 0).
observation(299, 4, 0).
observation(299, 5, 1).
observation(299, 6, 1).
observation(299, 7, 1).
observation(299, 8, 0).
transition(299, 224).
observation(300, 0, 0).
observation(300, 1, 0).
observation(300, 2, 0).
observation(300, 3, 0).
observation(300, 4, 0).
observation(300, 5, 1).
observation(300, 6, 1).
observation(300, 7, 1).
observation(300, 8, 0).
transition(300, 224).
observation(301, 0, 0).
observation(301, 1, 0).
observation(301, 2, 0).
observation(301, 3, 0).
observation(301, 4, 0).
observation(301, 5, 1).
observation(301, 6, 1).
observation(301, 7, 1).
observation(301, 8, 0).
transition(301, 224).
observation(302, 0, 0).
observation(302, 1, 0).
observation(302, 2, 1).
observation(302, 3, 0).
observation(302, 4, 0).
observation(302, 5, 1).
observation(302, 6, 1).
observation(302, 7, 1).
observation(302, 8, 0).
transition(302, 228).
observation(303, 0, 0).
observation(303, 1, 0).
observation(303, 2, 0).
observation(303, 3, 0).
observation(303, 4, 0).
observation(303, 5, 1).
observation(303, 6, 1).
observation(303, 7, 1).
observation(303, 8, 0).
transition(303, 224).
observation(304, 0, 0).
observation(304, 1, 0).
observation(304, 2, 0).
observation(304, 3, 0).
observation(304, 4, 0).
observation(304, 5, 1).
observation(304, 6, 1).
observation(304, 7, 1).
observation(304, 8, 0).
transition(304, 224).
observation(305, 0, 0).
observation(305, 1, 0).
observation(305, 2, 0).
observation(305, 3, 0).
observation(305, 4, 0).
observation(305, 5, 1).
observation(305, 6, 1).
observation(305, 7, 1).
observation(305, 8, 0).
transition(305, 224).
observation(306, 0, 0).
observation(306, 1, 0).
observation(306, 2, 1).
observation(306, 3, 0).
observation(306, 4, 0).
observation(306, 5, 1).
observation(306, 6, 1).
observation(306, 7, 1).
observation(306, 8, 0).
transition(306, 228).
observation(307, 0, 0).
observation(307, 1, 0).
observation(307, 2, 0).
observation(307, 3, 0).
observation(307, 4, 0).
observation(307, 5, 1).
observation(307, 6, 1).
observation(307, 7, 1).
observation(307, 8, 0).
transition(307, 224).
observation(308, 0, 0).
observation(308, 1, 0).
observation(308, 2, 0).
observation(308, 3, 0).
observation(308, 4, 0).
observation(308, 5, 1).
observation(308, 6, 1).
observation(308, 7, 1).
observation(308, 8, 0).
transition(308, 224).
observation(309, 0, 0).
observation(309, 1, 0).
observation(309, 2, 0).
observation(309, 3, 0).
observation(309, 4, 0).
observation(309, 5, 1).
observation(309, 6, 1).
observation(309, 7, 1).
observation(309, 8, 0).
transition(309, 224).
observation(310, 0, 0).
observation(310, 1, 0).
observation(310, 2, 1).
observation(310, 3, 0).
observation(310, 4, 0).
observation(310, 5, 1).
observation(310, 6, 1).
observation(310, 7, 1).
observation(310, 8, 0).
transition(310, 228).
observation(311, 0, 0).
observation(311, 1, 0).
observation(311, 2, 0).
observation(311, 3, 0).
observation(311, 4, 0).
observation(311, 5, 1).
observation(311, 6, 1).
observation(311, 7, 1).
observation(311, 8, 0).
transition(311, 224).
observation(312, 0, 0).
observation(312, 1, 0).
observation(312, 2, 0).
observation(312, 3, 0).
observation(312, 4, 0).
observation(312, 5, 1).
observation(312, 6, 1).
observation(312, 7, 1).
observation(312, 8, 0).
transition(312, 224).
observation(313, 0, 0).
observation(313, 1, 0).
observation(313, 2, 0).
observation(313, 3, 0).
observation(313, 4, 0).
observation(313, 5, 1).
observation(313, 6, 1).
observation(313, 7, 1).
observation(313, 8, 0).
transition(313, 224).
observation(314, 0, 0).
observation(314, 1, 0).
observation(314, 2, 1).
observation(314, 3, 0).
observation(314, 4, 0).
observation(314, 5, 1).
observation(314, 6, 1).
observation(314, 7, 1).
observation(314, 8, 0).
transition(314, 228).
observation(315, 0, 0).
observation(315, 1, 0).
observation(315, 2, 0).
observation(315, 3, 0).
observation(315, 4, 0).
observation(315, 5, 1).
observation(315, 6, 1).
observation(315, 7, 1).
observation(315, 8, 0).
transition(315, 224).
observation(316, 0, 0).
observation(316, 1, 0).
observation(316, 2, 0).
observation(316, 3, 0).
observation(316, 4, 0).
observation(316, 5, 1).
observation(316, 6, 1).
observation(316, 7, 1).
observation(316, 8, 0).
transition(316, 224).
observation(317, 0, 0).
observation(317, 1, 0).
observation(317, 2, 0).
observation(317, 3, 0).
observation(317, 4, 0).
observation(317, 5, 1).
observation(317, 6, 1).
observation(317, 7, 1).
observation(317, 8, 0).
transition(317, 224).
observation(318, 0, 0).
observation(318, 1, 0).
observation(318, 2, 1).
observation(318, 3, 0).
observation(318, 4, 0).
observation(318, 5, 1).
observation(318, 6, 1).
observation(318, 7, 1).
observation(318, 8, 0).
transition(318, 228).
observation(319, 0, 0).
observation(319, 1, 0).
observation(319, 2, 0).
observation(319, 3, 0).
observation(319, 4, 0).
observation(319, 5, 1).
observation(319, 6, 1).
observation(319, 7, 1).
observation(319, 8, 0).
transition(319, 224).
observation(320, 0, 0).
observation(320, 1, 0).
observation(320, 2, 0).
observation(320, 3, 0).
observation(320, 4, 0).
observation(320, 5, 1).
observation(320, 6, 0).
observation(320, 7, 0).
observation(320, 8, 0).
transition(320, 32).
observation(321, 0, 0).
observation(321, 1, 0).
observation(321, 2, 0).
observation(321, 3, 0).
observation(321, 4, 0).
observation(321, 5, 1).
observation(321, 6, 0).
observation(321, 7, 0).
observation(321, 8, 0).
transition(321, 32).
observation(322, 0, 0).
observation(322, 1, 0).
observation(322, 2, 1).
observation(322, 3, 1).
observation(322, 4, 0).
observation(322, 5, 1).
observation(322, 6, 0).
observation(322, 7, 0).
observation(322, 8, 0).
transition(322, 44).
observation(323, 0, 0).
observation(323, 1, 0).
observation(323, 2, 0).
observation(323, 3, 0).
observation(323, 4, 0).
observation(323, 5, 1).
observation(323, 6, 0).
observation(323, 7, 0).
observation(323, 8, 0).
transition(323, 32).
observation(324, 0, 0).
observation(324, 1, 0).
observation(324, 2, 0).
observation(324, 3, 0).
observation(324, 4, 0).
observation(324, 5, 1).
observation(324, 6, 0).
observation(324, 7, 0).
observation(324, 8, 0).
transition(324, 32).
observation(325, 0, 0).
observation(325, 1, 0).
observation(325, 2, 0).
observation(325, 3, 0).
observation(325, 4, 0).
observation(325, 5, 1).
observation(325, 6, 0).
observation(325, 7, 0).
observation(325, 8, 0).
transition(325, 32).
observation(326, 0, 0).
observation(326, 1, 0).
observation(326, 2, 1).
observation(326, 3, 1).
observation(326, 4, 0).
observation(326, 5, 1).
observation(326, 6, 0).
observation(326, 7, 0).
observation(326, 8, 0).
transition(326, 44).
observation(327, 0, 0).
observation(327, 1, 0).
observation(327, 2, 0).
observation(327, 3, 0).
observation(327, 4, 0).
observation(327, 5, 1).
observation(327, 6, 0).
observation(327, 7, 0).
observation(327, 8, 0).
transition(327, 32).
observation(328, 0, 0).
observation(328, 1, 0).
observation(328, 2, 0).
observation(328, 3, 1).
observation(328, 4, 0).
observation(328, 5, 1).
observation(328, 6, 0).
observation(328, 7, 0).
observation(328, 8, 0).
transition(328, 40).
observation(329, 0, 0).
observation(329, 1, 0).
observation(329, 2, 0).
observation(329, 3, 0).
observation(329, 4, 0).
observation(329, 5, 1).
observation(329, 6, 0).
observation(329, 7, 0).
observation(329, 8, 0).
transition(329, 32).
observation(330, 0, 0).
observation(330, 1, 0).
observation(330, 2, 1).
observation(330, 3, 1).
observation(330, 4, 0).
observation(330, 5, 1).
observation(330, 6, 0).
observation(330, 7, 0).
observation(330, 8, 0).
transition(330, 44).
observation(331, 0, 0).
observation(331, 1, 0).
observation(331, 2, 0).
observation(331, 3, 0).
observation(331, 4, 0).
observation(331, 5, 1).
observation(331, 6, 0).
observation(331, 7, 0).
observation(331, 8, 0).
transition(331, 32).
observation(332, 0, 0).
observation(332, 1, 0).
observation(332, 2, 0).
observation(332, 3, 1).
observation(332, 4, 0).
observation(332, 5, 1).
observation(332, 6, 0).
observation(332, 7, 0).
observation(332, 8, 0).
transition(332, 40).
observation(333, 0, 0).
observation(333, 1, 0).
observation(333, 2, 0).
observation(333, 3, 0).
observation(333, 4, 0).
observation(333, 5, 1).
observation(333, 6, 0).
observation(333, 7, 0).
observation(333, 8, 0).
transition(333, 32).
observation(334, 0, 0).
observation(334, 1, 0).
observation(334, 2, 1).
observation(334, 3, 1).
observation(334, 4, 0).
observation(334, 5, 1).
observation(334, 6, 0).
observation(334, 7, 0).
observation(334, 8, 0).
transition(334, 44).
observation(335, 0, 0).
observation(335, 1, 0).
observation(335, 2, 0).
observation(335, 3, 0).
observation(335, 4, 0).
observation(335, 5, 1).
observation(335, 6, 0).
observation(335, 7, 0).
observation(335, 8, 0).
transition(335, 32).
observation(336, 0, 0).
observation(336, 1, 0).
observation(336, 2, 0).
observation(336, 3, 0).
observation(336, 4, 0).
observation(336, 5, 1).
observation(336, 6, 0).
observation(336, 7, 0).
observation(336, 8, 0).
transition(336, 32).
observation(337, 0, 0).
observation(337, 1, 0).
observation(337, 2, 0).
observation(337, 3, 0).
observation(337, 4, 0).
observation(337, 5, 1).
observation(337, 6, 0).
observation(337, 7, 0).
observation(337, 8, 0).
transition(337, 32).
observation(338, 0, 0).
observation(338, 1, 0).
observation(338, 2, 1).
observation(338, 3, 1).
observation(338, 4, 0).
observation(338, 5, 1).
observation(338, 6, 0).
observation(338, 7, 0).
observation(338, 8, 0).
transition(338, 44).
observation(339, 0, 0).
observation(339, 1, 0).
observation(339, 2, 0).
observation(339, 3, 0).
observation(339, 4, 0).
observation(339, 5, 1).
observation(339, 6, 0).
observation(339, 7, 0).
observation(339, 8, 0).
transition(339, 32).
observation(340, 0, 0).
observation(340, 1, 0).
observation(340, 2, 0).
observation(340, 3, 0).
observation(340, 4, 0).
observation(340, 5, 1).
observation(340, 6, 0).
observation(340, 7, 0).
observation(340, 8, 0).
transition(340, 32).
observation(341, 0, 0).
observation(341, 1, 0).
observation(341, 2, 0).
observation(341, 3, 0).
observation(341, 4, 0).
observation(341, 5, 1).
observation(341, 6, 0).
observation(341, 7, 0).
observation(341, 8, 0).
transition(341, 32).
observation(342, 0, 0).
observation(342, 1, 0).
observation(342, 2, 1).
observation(342, 3, 1).
observation(342, 4, 0).
observation(342, 5, 1).
observation(342, 6, 0).
observation(342, 7, 0).
observation(342, 8, 0).
transition(342, 44).
observation(343, 0, 0).
observation(343, 1, 0).
observation(343, 2, 0).
observation(343, 3, 0).
observation(343, 4, 0).
observation(343, 5, 1).
observation(343, 6, 0).
observation(343, 7, 0).
observation(343, 8, 0).
transition(343, 32).
observation(344, 0, 0).
observation(344, 1, 0).
observation(344, 2, 0).
observation(344, 3, 1).
observation(344, 4, 0).
observation(344, 5, 1).
observation(344, 6, 0).
observation(344, 7, 0).
observation(344, 8, 0).
transition(344, 40).
observation(345, 0, 0).
observation(345, 1, 0).
observation(345, 2, 0).
observation(345, 3, 0).
observation(345, 4, 0).
observation(345, 5, 1).
observation(345, 6, 0).
observation(345, 7, 0).
observation(345, 8, 0).
transition(345, 32).
observation(346, 0, 0).
observation(346, 1, 0).
observation(346, 2, 1).
observation(346, 3, 1).
observation(346, 4, 0).
observation(346, 5, 1).
observation(346, 6, 0).
observation(346, 7, 0).
observation(346, 8, 0).
transition(346, 44).
observation(347, 0, 0).
observation(347, 1, 0).
observation(347, 2, 0).
observation(347, 3, 0).
observation(347, 4, 0).
observation(347, 5, 1).
observation(347, 6, 0).
observation(347, 7, 0).
observation(347, 8, 0).
transition(347, 32).
observation(348, 0, 0).
observation(348, 1, 0).
observation(348, 2, 0).
observation(348, 3, 1).
observation(348, 4, 0).
observation(348, 5, 1).
observation(348, 6, 0).
observation(348, 7, 0).
observation(348, 8, 0).
transition(348, 40).
observation(349, 0, 0).
observation(349, 1, 0).
observation(349, 2, 0).
observation(349, 3, 0).
observation(349, 4, 0).
observation(349, 5, 1).
observation(349, 6, 0).
observation(349, 7, 0).
observation(349, 8, 0).
transition(349, 32).
observation(350, 0, 0).
observation(350, 1, 0).
observation(350, 2, 1).
observation(350, 3, 1).
observation(350, 4, 0).
observation(350, 5, 1).
observation(350, 6, 0).
observation(350, 7, 0).
observation(350, 8, 0).
transition(350, 44).
observation(351, 0, 0).
observation(351, 1, 0).
observation(351, 2, 0).
observation(351, 3, 0).
observation(351, 4, 0).
observation(351, 5, 1).
observation(351, 6, 0).
observation(351, 7, 0).
observation(351, 8, 0).
transition(351, 32).
observation(352, 0, 0).
observation(352, 1, 0).
observation(352, 2, 0).
observation(352, 3, 0).
observation(352, 4, 0).
observation(352, 5, 1).
observation(352, 6, 1).
observation(352, 7, 0).
observation(352, 8, 0).
transition(352, 96).
observation(353, 0, 0).
observation(353, 1, 0).
observation(353, 2, 0).
observation(353, 3, 0).
observation(353, 4, 0).
observation(353, 5, 1).
observation(353, 6, 1).
observation(353, 7, 0).
observation(353, 8, 0).
transition(353, 96).
observation(354, 0, 0).
observation(354, 1, 0).
observation(354, 2, 1).
observation(354, 3, 0).
observation(354, 4, 0).
observation(354, 5, 1).
observation(354, 6, 1).
observation(354, 7, 0).
observation(354, 8, 0).
transition(354, 100).
observation(355, 0, 0).
observation(355, 1, 0).
observation(355, 2, 0).
observation(355, 3, 0).
observation(355, 4, 0).
observation(355, 5, 1).
observation(355, 6, 1).
observation(355, 7, 0).
observation(355, 8, 0).
transition(355, 96).
observation(356, 0, 0).
observation(356, 1, 0).
observation(356, 2, 0).
observation(356, 3, 0).
observation(356, 4, 0).
observation(356, 5, 1).
observation(356, 6, 1).
observation(356, 7, 0).
observation(356, 8, 0).
transition(356, 96).
observation(357, 0, 0).
observation(357, 1, 0).
observation(357, 2, 0).
observation(357, 3, 0).
observation(357, 4, 0).
observation(357, 5, 1).
observation(357, 6, 1).
observation(357, 7, 0).
observation(357, 8, 0).
transition(357, 96).
observation(358, 0, 0).
observation(358, 1, 0).
observation(358, 2, 1).
observation(358, 3, 0).
observation(358, 4, 0).
observation(358, 5, 1).
observation(358, 6, 1).
observation(358, 7, 0).
observation(358, 8, 0).
transition(358, 100).
observation(359, 0, 0).
observation(359, 1, 0).
observation(359, 2, 0).
observation(359, 3, 0).
observation(359, 4, 0).
observation(359, 5, 1).
observation(359, 6, 1).
observation(359, 7, 0).
observation(359, 8, 0).
transition(359, 96).
observation(360, 0, 0).
observation(360, 1, 0).
observation(360, 2, 0).
observation(360, 3, 0).
observation(360, 4, 0).
observation(360, 5, 1).
observation(360, 6, 1).
observation(360, 7, 0).
observation(360, 8, 0).
transition(360, 96).
observation(361, 0, 0).
observation(361, 1, 0).
observation(361, 2, 0).
observation(361, 3, 0).
observation(361, 4, 0).
observation(361, 5, 1).
observation(361, 6, 1).
observation(361, 7, 0).
observation(361, 8, 0).
transition(361, 96).
observation(362, 0, 0).
observation(362, 1, 0).
observation(362, 2, 1).
observation(362, 3, 0).
observation(362, 4, 0).
observation(362, 5, 1).
observation(362, 6, 1).
observation(362, 7, 0).
observation(362, 8, 0).
transition(362, 100).
observation(363, 0, 0).
observation(363, 1, 0).
observation(363, 2, 0).
observation(363, 3, 0).
observation(363, 4, 0).
observation(363, 5, 1).
observation(363, 6, 1).
observation(363, 7, 0).
observation(363, 8, 0).
transition(363, 96).
observation(364, 0, 0).
observation(364, 1, 0).
observation(364, 2, 0).
observation(364, 3, 0).
observation(364, 4, 0).
observation(364, 5, 1).
observation(364, 6, 1).
observation(364, 7, 0).
observation(364, 8, 0).
transition(364, 96).
observation(365, 0, 0).
observation(365, 1, 0).
observation(365, 2, 0).
observation(365, 3, 0).
observation(365, 4, 0).
observation(365, 5, 1).
observation(365, 6, 1).
observation(365, 7, 0).
observation(365, 8, 0).
transition(365, 96).
observation(366, 0, 0).
observation(366, 1, 0).
observation(366, 2, 1).
observation(366, 3, 0).
observation(366, 4, 0).
observation(366, 5, 1).
observation(366, 6, 1).
observation(366, 7, 0).
observation(366, 8, 0).
transition(366, 100).
observation(367, 0, 0).
observation(367, 1, 0).
observation(367, 2, 0).
observation(367, 3, 0).
observation(367, 4, 0).
observation(367, 5, 1).
observation(367, 6, 1).
observation(367, 7, 0).
observation(367, 8, 0).
transition(367, 96).
observation(368, 0, 0).
observation(368, 1, 0).
observation(368, 2, 0).
observation(368, 3, 0).
observation(368, 4, 0).
observation(368, 5, 1).
observation(368, 6, 1).
observation(368, 7, 0).
observation(368, 8, 0).
transition(368, 96).
observation(369, 0, 0).
observation(369, 1, 0).
observation(369, 2, 0).
observation(369, 3, 0).
observation(369, 4, 0).
observation(369, 5, 1).
observation(369, 6, 1).
observation(369, 7, 0).
observation(369, 8, 0).
transition(369, 96).
observation(370, 0, 0).
observation(370, 1, 0).
observation(370, 2, 1).
observation(370, 3, 0).
observation(370, 4, 0).
observation(370, 5, 1).
observation(370, 6, 1).
observation(370, 7, 0).
observation(370, 8, 0).
transition(370, 100).
observation(371, 0, 0).
observation(371, 1, 0).
observation(371, 2, 0).
observation(371, 3, 0).
observation(371, 4, 0).
observation(371, 5, 1).
observation(371, 6, 1).
observation(371, 7, 0).
observation(371, 8, 0).
transition(371, 96).
observation(372, 0, 0).
observation(372, 1, 0).
observation(372, 2, 0).
observation(372, 3, 0).
observation(372, 4, 0).
observation(372, 5, 1).
observation(372, 6, 1).
observation(372, 7, 0).
observation(372, 8, 0).
transition(372, 96).
observation(373, 0, 0).
observation(373, 1, 0).
observation(373, 2, 0).
observation(373, 3, 0).
observation(373, 4, 0).
observation(373, 5, 1).
observation(373, 6, 1).
observation(373, 7, 0).
observation(373, 8, 0).
transition(373, 96).
observation(374, 0, 0).
observation(374, 1, 0).
observation(374, 2, 1).
observation(374, 3, 0).
observation(374, 4, 0).
observation(374, 5, 1).
observation(374, 6, 1).
observation(374, 7, 0).
observation(374, 8, 0).
transition(374, 100).
observation(375, 0, 0).
observation(375, 1, 0).
observation(375, 2, 0).
observation(375, 3, 0).
observation(375, 4, 0).
observation(375, 5, 1).
observation(375, 6, 1).
observation(375, 7, 0).
observation(375, 8, 0).
transition(375, 96).
observation(376, 0, 0).
observation(376, 1, 0).
observation(376, 2, 0).
observation(376, 3, 0).
observation(376, 4, 0).
observation(376, 5, 1).
observation(376, 6, 1).
observation(376, 7, 0).
observation(376, 8, 0).
transition(376, 96).
observation(377, 0, 0).
observation(377, 1, 0).
observation(377, 2, 0).
observation(377, 3, 0).
observation(377, 4, 0).
observation(377, 5, 1).
observation(377, 6, 1).
observation(377, 7, 0).
observation(377, 8, 0).
transition(377, 96).
observation(378, 0, 0).
observation(378, 1, 0).
observation(378, 2, 1).
observation(378, 3, 0).
observation(378, 4, 0).
observation(378, 5, 1).
observation(378, 6, 1).
observation(378, 7, 0).
observation(378, 8, 0).
transition(378, 100).
observation(379, 0, 0).
observation(379, 1, 0).
observation(379, 2, 0).
observation(379, 3, 0).
observation(379, 4, 0).
observation(379, 5, 1).
observation(379, 6, 1).
observation(379, 7, 0).
observation(379, 8, 0).
transition(379, 96).
observation(380, 0, 0).
observation(380, 1, 0).
observation(380, 2, 0).
observation(380, 3, 0).
observation(380, 4, 0).
observation(380, 5, 1).
observation(380, 6, 1).
observation(380, 7, 0).
observation(380, 8, 0).
transition(380, 96).
observation(381, 0, 0).
observation(381, 1, 0).
observation(381, 2, 0).
observation(381, 3, 0).
observation(381, 4, 0).
observation(381, 5, 1).
observation(381, 6, 1).
observation(381, 7, 0).
observation(381, 8, 0).
transition(381, 96).
observation(382, 0, 0).
observation(382, 1, 0).
observation(382, 2, 1).
observation(382, 3, 0).
observation(382, 4, 0).
observation(382, 5, 1).
observation(382, 6, 1).
observation(382, 7, 0).
observation(382, 8, 0).
transition(382, 100).
observation(383, 0, 0).
observation(383, 1, 0).
observation(383, 2, 0).
observation(383, 3, 0).
observation(383, 4, 0).
observation(383, 5, 1).
observation(383, 6, 1).
observation(383, 7, 0).
observation(383, 8, 0).
transition(383, 96).
observation(384, 0, 0).
observation(384, 1, 0).
observation(384, 2, 0).
observation(384, 3, 0).
observation(384, 4, 0).
observation(384, 5, 1).
observation(384, 6, 0).
observation(384, 7, 1).
observation(384, 8, 1).
transition(384, 416).
observation(385, 0, 0).
observation(385, 1, 0).
observation(385, 2, 0).
observation(385, 3, 0).
observation(385, 4, 0).
observation(385, 5, 1).
observation(385, 6, 0).
observation(385, 7, 1).
observation(385, 8, 1).
transition(385, 416).
observation(386, 0, 0).
observation(386, 1, 0).
observation(386, 2, 1).
observation(386, 3, 1).
observation(386, 4, 0).
observation(386, 5, 1).
observation(386, 6, 0).
observation(386, 7, 1).
observation(386, 8, 1).
transition(386, 428).
observation(387, 0, 0).
observation(387, 1, 0).
observation(387, 2, 0).
observation(387, 3, 0).
observation(387, 4, 0).
observation(387, 5, 1).
observation(387, 6, 0).
observation(387, 7, 1).
observation(387, 8, 1).
transition(387, 416).
observation(388, 0, 0).
observation(388, 1, 0).
observation(388, 2, 0).
observation(388, 3, 0).
observation(388, 4, 0).
observation(388, 5, 1).
observation(388, 6, 0).
observation(388, 7, 1).
observation(388, 8, 1).
transition(388, 416).
observation(389, 0, 0).
observation(389, 1, 0).
observation(389, 2, 0).
observation(389, 3, 0).
observation(389, 4, 0).
observation(389, 5, 1).
observation(389, 6, 0).
observation(389, 7, 1).
observation(389, 8, 1).
transition(389, 416).
observation(390, 0, 0).
observation(390, 1, 0).
observation(390, 2, 1).
observation(390, 3, 1).
observation(390, 4, 0).
observation(390, 5, 1).
observation(390, 6, 0).
observation(390, 7, 1).
observation(390, 8, 1).
transition(390, 428).
observation(391, 0, 0).
observation(391, 1, 0).
observation(391, 2, 0).
observation(391, 3, 0).
observation(391, 4, 0).
observation(391, 5, 1).
observation(391, 6, 0).
observation(391, 7, 1).
observation(391, 8, 1).
transition(391, 416).
observation(392, 0, 0).
observation(392, 1, 0).
observation(392, 2, 0).
observation(392, 3, 1).
observation(392, 4, 0).
observation(392, 5, 1).
observation(392, 6, 0).
observation(392, 7, 1).
observation(392, 8, 1).
transition(392, 424).
observation(393, 0, 0).
observation(393, 1, 0).
observation(393, 2, 0).
observation(393, 3, 0).
observation(393, 4, 0).
observation(393, 5, 1).
observation(393, 6, 0).
observation(393, 7, 1).
observation(393, 8, 1).
transition(393, 416).
observation(394, 0, 0).
observation(394, 1, 0).
observation(394, 2, 1).
observation(394, 3, 1).
observation(394, 4, 0).
observation(394, 5, 1).
observation(394, 6, 0).
observation(394, 7, 1).
observation(394, 8, 1).
transition(394, 428).
observation(395, 0, 0).
observation(395, 1, 0).
observation(395, 2, 0).
observation(395, 3, 0).
observation(395, 4, 0).
observation(395, 5, 1).
observation(395, 6, 0).
observation(395, 7, 1).
observation(395, 8, 1).
transition(395, 416).
observation(396, 0, 0).
observation(396, 1, 0).
observation(396, 2, 0).
observation(396, 3, 1).
observation(396, 4, 0).
observation(396, 5, 1).
observation(396, 6, 0).
observation(396, 7, 1).
observation(396, 8, 1).
transition(396, 424).
observation(397, 0, 0).
observation(397, 1, 0).
observation(397, 2, 0).
observation(397, 3, 0).
observation(397, 4, 0).
observation(397, 5, 1).
observation(397, 6, 0).
observation(397, 7, 1).
observation(397, 8, 1).
transition(397, 416).
observation(398, 0, 0).
observation(398, 1, 0).
observation(398, 2, 1).
observation(398, 3, 1).
observation(398, 4, 0).
observation(398, 5, 1).
observation(398, 6, 0).
observation(398, 7, 1).
observation(398, 8, 1).
transition(398, 428).
observation(399, 0, 0).
observation(399, 1, 0).
observation(399, 2, 0).
observation(399, 3, 0).
observation(399, 4, 0).
observation(399, 5, 1).
observation(399, 6, 0).
observation(399, 7, 1).
observation(399, 8, 1).
transition(399, 416).
observation(400, 0, 0).
observation(400, 1, 0).
observation(400, 2, 0).
observation(400, 3, 0).
observation(400, 4, 0).
observation(400, 5, 1).
observation(400, 6, 0).
observation(400, 7, 1).
observation(400, 8, 1).
transition(400, 416).
observation(401, 0, 0).
observation(401, 1, 0).
observation(401, 2, 0).
observation(401, 3, 0).
observation(401, 4, 0).
observation(401, 5, 1).
observation(401, 6, 0).
observation(401, 7, 1).
observation(401, 8, 1).
transition(401, 416).
observation(402, 0, 0).
observation(402, 1, 0).
observation(402, 2, 1).
observation(402, 3, 1).
observation(402, 4, 0).
observation(402, 5, 1).
observation(402, 6, 0).
observation(402, 7, 1).
observation(402, 8, 1).
transition(402, 428).
observation(403, 0, 0).
observation(403, 1, 0).
observation(403, 2, 0).
observation(403, 3, 0).
observation(403, 4, 0).
observation(403, 5, 1).
observation(403, 6, 0).
observation(403, 7, 1).
observation(403, 8, 1).
transition(403, 416).
observation(404, 0, 0).
observation(404, 1, 0).
observation(404, 2, 0).
observation(404, 3, 0).
observation(404, 4, 0).
observation(404, 5, 1).
observation(404, 6, 0).
observation(404, 7, 1).
observation(404, 8, 1).
transition(404, 416).
observation(405, 0, 0).
observation(405, 1, 0).
observation(405, 2, 0).
observation(405, 3, 0).
observation(405, 4, 0).
observation(405, 5, 1).
observation(405, 6, 0).
observation(405, 7, 1).
observation(405, 8, 1).
transition(405, 416).
observation(406, 0, 0).
observation(406, 1, 0).
observation(406, 2, 1).
observation(406, 3, 1).
observation(406, 4, 0).
observation(406, 5, 1).
observation(406, 6, 0).
observation(406, 7, 1).
observation(406, 8, 1).
transition(406, 428).
observation(407, 0, 0).
observation(407, 1, 0).
observation(407, 2, 0).
observation(407, 3, 0).
observation(407, 4, 0).
observation(407, 5, 1).
observation(407, 6, 0).
observation(407, 7, 1).
observation(407, 8, 1).
transition(407, 416).
observation(408, 0, 0).
observation(408, 1, 0).
observation(408, 2, 0).
observation(408, 3, 1).
observation(408, 4, 0).
observation(408, 5, 1).
observation(408, 6, 0).
observation(408, 7, 1).
observation(408, 8, 1).
transition(408, 424).
observation(409, 0, 0).
observation(409, 1, 0).
observation(409, 2, 0).
observation(409, 3, 0).
observation(409, 4, 0).
observation(409, 5, 1).
observation(409, 6, 0).
observation(409, 7, 1).
observation(409, 8, 1).
transition(409, 416).
observation(410, 0, 0).
observation(410, 1, 0).
observation(410, 2, 1).
observation(410, 3, 1).
observation(410, 4, 0).
observation(410, 5, 1).
observation(410, 6, 0).
observation(410, 7, 1).
observation(410, 8, 1).
transition(410, 428).
observation(411, 0, 0).
observation(411, 1, 0).
observation(411, 2, 0).
observation(411, 3, 0).
observation(411, 4, 0).
observation(411, 5, 1).
observation(411, 6, 0).
observation(411, 7, 1).
observation(411, 8, 1).
transition(411, 416).
observation(412, 0, 0).
observation(412, 1, 0).
observation(412, 2, 0).
observation(412, 3, 1).
observation(412, 4, 0).
observation(412, 5, 1).
observation(412, 6, 0).
observation(412, 7, 1).
observation(412, 8, 1).
transition(412, 424).
observation(413, 0, 0).
observation(413, 1, 0).
observation(413, 2, 0).
observation(413, 3, 0).
observation(413, 4, 0).
observation(413, 5, 1).
observation(413, 6, 0).
observation(413, 7, 1).
observation(413, 8, 1).
transition(413, 416).
observation(414, 0, 0).
observation(414, 1, 0).
observation(414, 2, 1).
observation(414, 3, 1).
observation(414, 4, 0).
observation(414, 5, 1).
observation(414, 6, 0).
observation(414, 7, 1).
observation(414, 8, 1).
transition(414, 428).
observation(415, 0, 0).
observation(415, 1, 0).
observation(415, 2, 0).
observation(415, 3, 0).
observation(415, 4, 0).
observation(415, 5, 1).
observation(415, 6, 0).
observation(415, 7, 1).
observation(415, 8, 1).
transition(415, 416).
observation(416, 0, 0).
observation(416, 1, 0).
observation(416, 2, 0).
observation(416, 3, 0).
observation(416, 4, 0).
observation(416, 5, 1).
observation(416, 6, 1).
observation(416, 7, 1).
observation(416, 8, 0).
transition(416, 224).
observation(417, 0, 0).
observation(417, 1, 0).
observation(417, 2, 0).
observation(417, 3, 0).
observation(417, 4, 0).
observation(417, 5, 1).
observation(417, 6, 1).
observation(417, 7, 1).
observation(417, 8, 0).
transition(417, 224).
observation(418, 0, 0).
observation(418, 1, 0).
observation(418, 2, 1).
observation(418, 3, 0).
observation(418, 4, 0).
observation(418, 5, 1).
observation(418, 6, 1).
observation(418, 7, 1).
observation(418, 8, 0).
transition(418, 228).
observation(419, 0, 0).
observation(419, 1, 0).
observation(419, 2, 0).
observation(419, 3, 0).
observation(419, 4, 0).
observation(419, 5, 1).
observation(419, 6, 1).
observation(419, 7, 1).
observation(419, 8, 0).
transition(419, 224).
observation(420, 0, 0).
observation(420, 1, 0).
observation(420, 2, 0).
observation(420, 3, 0).
observation(420, 4, 0).
observation(420, 5, 1).
observation(420, 6, 1).
observation(420, 7, 1).
observation(420, 8, 0).
transition(420, 224).
observation(421, 0, 0).
observation(421, 1, 0).
observation(421, 2, 0).
observation(421, 3, 0).
observation(421, 4, 0).
observation(421, 5, 1).
observation(421, 6, 1).
observation(421, 7, 1).
observation(421, 8, 0).
transition(421, 224).
observation(422, 0, 0).
observation(422, 1, 0).
observation(422, 2, 1).
observation(422, 3, 0).
observation(422, 4, 0).
observation(422, 5, 1).
observation(422, 6, 1).
observation(422, 7, 1).
observation(422, 8, 0).
transition(422, 228).
observation(423, 0, 0).
observation(423, 1, 0).
observation(423, 2, 0).
observation(423, 3, 0).
observation(423, 4, 0).
observation(423, 5, 1).
observation(423, 6, 1).
observation(423, 7, 1).
observation(423, 8, 0).
transition(423, 224).
observation(424, 0, 0).
observation(424, 1, 0).
observation(424, 2, 0).
observation(424, 3, 0).
observation(424, 4, 0).
observation(424, 5, 1).
observation(424, 6, 1).
observation(424, 7, 1).
observation(424, 8, 0).
transition(424, 224).
observation(425, 0, 0).
observation(425, 1, 0).
observation(425, 2, 0).
observation(425, 3, 0).
observation(425, 4, 0).
observation(425, 5, 1).
observation(425, 6, 1).
observation(425, 7, 1).
observation(425, 8, 0).
transition(425, 224).
observation(426, 0, 0).
observation(426, 1, 0).
observation(426, 2, 1).
observation(426, 3, 0).
observation(426, 4, 0).
observation(426, 5, 1).
observation(426, 6, 1).
observation(426, 7, 1).
observation(426, 8, 0).
transition(426, 228).
observation(427, 0, 0).
observation(427, 1, 0).
observation(427, 2, 0).
observation(427, 3, 0).
observation(427, 4, 0).
observation(427, 5, 1).
observation(427, 6, 1).
observation(427, 7, 1).
observation(427, 8, 0).
transition(427, 224).
observation(428, 0, 0).
observation(428, 1, 0).
observation(428, 2, 0).
observation(428, 3, 0).
observation(428, 4, 0).
observation(428, 5, 1).
observation(428, 6, 1).
observation(428, 7, 1).
observation(428, 8, 0).
transition(428, 224).
observation(429, 0, 0).
observation(429, 1, 0).
observation(429, 2, 0).
observation(429, 3, 0).
observation(429, 4, 0).
observation(429, 5, 1).
observation(429, 6, 1).
observation(429, 7, 1).
observation(429, 8, 0).
transition(429, 224).
observation(430, 0, 0).
observation(430, 1, 0).
observation(430, 2, 1).
observation(430, 3, 0).
observation(430, 4, 0).
observation(430, 5, 1).
observation(430, 6, 1).
observation(430, 7, 1).
observation(430, 8, 0).
transition(430, 228).
observation(431, 0, 0).
observation(431, 1, 0).
observation(431, 2, 0).
observation(431, 3, 0).
observation(431, 4, 0).
observation(431, 5, 1).
observation(431, 6, 1).
observation(431, 7, 1).
observation(431, 8, 0).
transition(431, 224).
observation(432, 0, 0).
observation(432, 1, 0).
observation(432, 2, 0).
observation(432, 3, 0).
observation(432, 4, 0).
observation(432, 5, 1).
observation(432, 6, 1).
observation(432, 7, 1).
observation(432, 8, 0).
transition(432, 224).
observation(433, 0, 0).
observation(433, 1, 0).
observation(433, 2, 0).
observation(433, 3, 0).
observation(433, 4, 0).
observation(433, 5, 1).
observation(433, 6, 1).
observation(433, 7, 1).
observation(433, 8, 0).
transition(433, 224).
observation(434, 0, 0).
observation(434, 1, 0).
observation(434, 2, 1).
observation(434, 3, 0).
observation(434, 4, 0).
observation(434, 5, 1).
observation(434, 6, 1).
observation(434, 7, 1).
observation(434, 8, 0).
transition(434, 228).
observation(435, 0, 0).
observation(435, 1, 0).
observation(435, 2, 0).
observation(435, 3, 0).
observation(435, 4, 0).
observation(435, 5, 1).
observation(435, 6, 1).
observation(435, 7, 1).
observation(435, 8, 0).
transition(435, 224).
observation(436, 0, 0).
observation(436, 1, 0).
observation(436, 2, 0).
observation(436, 3, 0).
observation(436, 4, 0).
observation(436, 5, 1).
observation(436, 6, 1).
observation(436, 7, 1).
observation(436, 8, 0).
transition(436, 224).
observation(437, 0, 0).
observation(437, 1, 0).
observation(437, 2, 0).
observation(437, 3, 0).
observation(437, 4, 0).
observation(437, 5, 1).
observation(437, 6, 1).
observation(437, 7, 1).
observation(437, 8, 0).
transition(437, 224).
observation(438, 0, 0).
observation(438, 1, 0).
observation(438, 2, 1).
observation(438, 3, 0).
observation(438, 4, 0).
observation(438, 5, 1).
observation(438, 6, 1).
observation(438, 7, 1).
observation(438, 8, 0).
transition(438, 228).
observation(439, 0, 0).
observation(439, 1, 0).
observation(439, 2, 0).
observation(439, 3, 0).
observation(439, 4, 0).
observation(439, 5, 1).
observation(439, 6, 1).
observation(439, 7, 1).
observation(439, 8, 0).
transition(439, 224).
observation(440, 0, 0).
observation(440, 1, 0).
observation(440, 2, 0).
observation(440, 3, 0).
observation(440, 4, 0).
observation(440, 5, 1).
observation(440, 6, 1).
observation(440, 7, 1).
observation(440, 8, 0).
transition(440, 224).
observation(441, 0, 0).
observation(441, 1, 0).
observation(441, 2, 0).
observation(441, 3, 0).
observation(441, 4, 0).
observation(441, 5, 1).
observation(441, 6, 1).
observation(441, 7, 1).
observation(441, 8, 0).
transition(441, 224).
observation(442, 0, 0).
observation(442, 1, 0).
observation(442, 2, 1).
observation(442, 3, 0).
observation(442, 4, 0).
observation(442, 5, 1).
observation(442, 6, 1).
observation(442, 7, 1).
observation(442, 8, 0).
transition(442, 228).
observation(443, 0, 0).
observation(443, 1, 0).
observation(443, 2, 0).
observation(443, 3, 0).
observation(443, 4, 0).
observation(443, 5, 1).
observation(443, 6, 1).
observation(443, 7, 1).
observation(443, 8, 0).
transition(443, 224).
observation(444, 0, 0).
observation(444, 1, 0).
observation(444, 2, 0).
observation(444, 3, 0).
observation(444, 4, 0).
observation(444, 5, 1).
observation(444, 6, 1).
observation(444, 7, 1).
observation(444, 8, 0).
transition(444, 224).
observation(445, 0, 0).
observation(445, 1, 0).
observation(445, 2, 0).
observation(445, 3, 0).
observation(445, 4, 0).
observation(445, 5, 1).
observation(445, 6, 1).
observation(445, 7, 1).
observation(445, 8, 0).
transition(445, 224).
observation(446, 0, 0).
observation(446, 1, 0).
observation(446, 2, 1).
observation(446, 3, 0).
observation(446, 4, 0).
observation(446, 5, 1).
observation(446, 6, 1).
observation(446, 7, 1).
observation(446, 8, 0).
transition(446, 228).
observation(447, 0, 0).
observation(447, 1, 0).
observation(447, 2, 0).
observation(447, 3, 0).
observation(447, 4, 0).
observation(447, 5, 1).
observation(447, 6, 1).
observation(447, 7, 1).
observation(447, 8, 0).
transition(447, 224).
observation(448, 0, 0).
observation(448, 1, 0).
observation(448, 2, 0).
observation(448, 3, 0).
observation(448, 4, 0).
observation(448, 5, 1).
observation(448, 6, 0).
observation(448, 7, 1).
observation(448, 8, 0).
transition(448, 160).
observation(449, 0, 0).
observation(449, 1, 0).
observation(449, 2, 0).
observation(449, 3, 0).
observation(449, 4, 0).
observation(449, 5, 1).
observation(449, 6, 0).
observation(449, 7, 1).
observation(449, 8, 0).
transition(449, 160).
observation(450, 0, 0).
observation(450, 1, 0).
observation(450, 2, 1).
observation(450, 3, 0).
observation(450, 4, 0).
observation(450, 5, 1).
observation(450, 6, 0).
observation(450, 7, 1).
observation(450, 8, 0).
transition(450, 164).
observation(451, 0, 0).
observation(451, 1, 0).
observation(451, 2, 0).
observation(451, 3, 0).
observation(451, 4, 0).
observation(451, 5, 1).
observation(451, 6, 0).
observation(451, 7, 1).
observation(451, 8, 0).
transition(451, 160).
observation(452, 0, 0).
observation(452, 1, 0).
observation(452, 2, 0).
observation(452, 3, 0).
observation(452, 4, 0).
observation(452, 5, 1).
observation(452, 6, 0).
observation(452, 7, 1).
observation(452, 8, 0).
transition(452, 160).
observation(453, 0, 0).
observation(453, 1, 0).
observation(453, 2, 0).
observation(453, 3, 0).
observation(453, 4, 0).
observation(453, 5, 1).
observation(453, 6, 0).
observation(453, 7, 1).
observation(453, 8, 0).
transition(453, 160).
observation(454, 0, 0).
observation(454, 1, 0).
observation(454, 2, 1).
observation(454, 3, 0).
observation(454, 4, 0).
observation(454, 5, 1).
observation(454, 6, 0).
observation(454, 7, 1).
observation(454, 8, 0).
transition(454, 164).
observation(455, 0, 0).
observation(455, 1, 0).
observation(455, 2, 0).
observation(455, 3, 0).
observation(455, 4, 0).
observation(455, 5, 1).
observation(455, 6, 0).
observation(455, 7, 1).
observation(455, 8, 0).
transition(455, 160).
observation(456, 0, 0).
observation(456, 1, 0).
observation(456, 2, 0).
observation(456, 3, 0).
observation(456, 4, 0).
observation(456, 5, 1).
observation(456, 6, 0).
observation(456, 7, 1).
observation(456, 8, 0).
transition(456, 160).
observation(457, 0, 0).
observation(457, 1, 0).
observation(457, 2, 0).
observation(457, 3, 0).
observation(457, 4, 0).
observation(457, 5, 1).
observation(457, 6, 0).
observation(457, 7, 1).
observation(457, 8, 0).
transition(457, 160).
observation(458, 0, 0).
observation(458, 1, 0).
observation(458, 2, 1).
observation(458, 3, 0).
observation(458, 4, 0).
observation(458, 5, 1).
observation(458, 6, 0).
observation(458, 7, 1).
observation(458, 8, 0).
transition(458, 164).
observation(459, 0, 0).
observation(459, 1, 0).
observation(459, 2, 0).
observation(459, 3, 0).
observation(459, 4, 0).
observation(459, 5, 1).
observation(459, 6, 0).
observation(459, 7, 1).
observation(459, 8, 0).
transition(459, 160).
observation(460, 0, 0).
observation(460, 1, 0).
observation(460, 2, 0).
observation(460, 3, 0).
observation(460, 4, 0).
observation(460, 5, 1).
observation(460, 6, 0).
observation(460, 7, 1).
observation(460, 8, 0).
transition(460, 160).
observation(461, 0, 0).
observation(461, 1, 0).
observation(461, 2, 0).
observation(461, 3, 0).
observation(461, 4, 0).
observation(461, 5, 1).
observation(461, 6, 0).
observation(461, 7, 1).
observation(461, 8, 0).
transition(461, 160).
observation(462, 0, 0).
observation(462, 1, 0).
observation(462, 2, 1).
observation(462, 3, 0).
observation(462, 4, 0).
observation(462, 5, 1).
observation(462, 6, 0).
observation(462, 7, 1).
observation(462, 8, 0).
transition(462, 164).
observation(463, 0, 0).
observation(463, 1, 0).
observation(463, 2, 0).
observation(463, 3, 0).
observation(463, 4, 0).
observation(463, 5, 1).
observation(463, 6, 0).
observation(463, 7, 1).
observation(463, 8, 0).
transition(463, 160).
observation(464, 0, 0).
observation(464, 1, 0).
observation(464, 2, 0).
observation(464, 3, 0).
observation(464, 4, 0).
observation(464, 5, 1).
observation(464, 6, 0).
observation(464, 7, 1).
observation(464, 8, 0).
transition(464, 160).
observation(465, 0, 0).
observation(465, 1, 0).
observation(465, 2, 0).
observation(465, 3, 0).
observation(465, 4, 0).
observation(465, 5, 1).
observation(465, 6, 0).
observation(465, 7, 1).
observation(465, 8, 0).
transition(465, 160).
observation(466, 0, 0).
observation(466, 1, 0).
observation(466, 2, 1).
observation(466, 3, 0).
observation(466, 4, 0).
observation(466, 5, 1).
observation(466, 6, 0).
observation(466, 7, 1).
observation(466, 8, 0).
transition(466, 164).
observation(467, 0, 0).
observation(467, 1, 0).
observation(467, 2, 0).
observation(467, 3, 0).
observation(467, 4, 0).
observation(467, 5, 1).
observation(467, 6, 0).
observation(467, 7, 1).
observation(467, 8, 0).
transition(467, 160).
observation(468, 0, 0).
observation(468, 1, 0).
observation(468, 2, 0).
observation(468, 3, 0).
observation(468, 4, 0).
observation(468, 5, 1).
observation(468, 6, 0).
observation(468, 7, 1).
observation(468, 8, 0).
transition(468, 160).
observation(469, 0, 0).
observation(469, 1, 0).
observation(469, 2, 0).
observation(469, 3, 0).
observation(469, 4, 0).
observation(469, 5, 1).
observation(469, 6, 0).
observation(469, 7, 1).
observation(469, 8, 0).
transition(469, 160).
observation(470, 0, 0).
observation(470, 1, 0).
observation(470, 2, 1).
observation(470, 3, 0).
observation(470, 4, 0).
observation(470, 5, 1).
observation(470, 6, 0).
observation(470, 7, 1).
observation(470, 8, 0).
transition(470, 164).
observation(471, 0, 0).
observation(471, 1, 0).
observation(471, 2, 0).
observation(471, 3, 0).
observation(471, 4, 0).
observation(471, 5, 1).
observation(471, 6, 0).
observation(471, 7, 1).
observation(471, 8, 0).
transition(471, 160).
observation(472, 0, 0).
observation(472, 1, 0).
observation(472, 2, 0).
observation(472, 3, 0).
observation(472, 4, 0).
observation(472, 5, 1).
observation(472, 6, 0).
observation(472, 7, 1).
observation(472, 8, 0).
transition(472, 160).
observation(473, 0, 0).
observation(473, 1, 0).
observation(473, 2, 0).
observation(473, 3, 0).
observation(473, 4, 0).
observation(473, 5, 1).
observation(473, 6, 0).
observation(473, 7, 1).
observation(473, 8, 0).
transition(473, 160).
observation(474, 0, 0).
observation(474, 1, 0).
observation(474, 2, 1).
observation(474, 3, 0).
observation(474, 4, 0).
observation(474, 5, 1).
observation(474, 6, 0).
observation(474, 7, 1).
observation(474, 8, 0).
transition(474, 164).
observation(475, 0, 0).
observation(475, 1, 0).
observation(475, 2, 0).
observation(475, 3, 0).
observation(475, 4, 0).
observation(475, 5, 1).
observation(475, 6, 0).
observation(475, 7, 1).
observation(475, 8, 0).
transition(475, 160).
observation(476, 0, 0).
observation(476, 1, 0).
observation(476, 2, 0).
observation(476, 3, 0).
observation(476, 4, 0).
observation(476, 5, 1).
observation(476, 6, 0).
observation(476, 7, 1).
observation(476, 8, 0).
transition(476, 160).
observation(477, 0, 0).
observation(477, 1, 0).
observation(477, 2, 0).
observation(477, 3, 0).
observation(477, 4, 0).
observation(477, 5, 1).
observation(477, 6, 0).
observation(477, 7, 1).
observation(477, 8, 0).
transition(477, 160).
observation(478, 0, 0).
observation(478, 1, 0).
observation(478, 2, 1).
observation(478, 3, 0).
observation(478, 4, 0).
observation(478, 5, 1).
observation(478, 6, 0).
observation(478, 7, 1).
observation(478, 8, 0).
transition(478, 164).
observation(479, 0, 0).
observation(479, 1, 0).
observation(479, 2, 0).
observation(479, 3, 0).
observation(479, 4, 0).
observation(479, 5, 1).
observation(479, 6, 0).
observation(479, 7, 1).
observation(479, 8, 0).
transition(479, 160).
observation(480, 0, 0).
observation(480, 1, 0).
observation(480, 2, 0).
observation(480, 3, 0).
observation(480, 4, 0).
observation(480, 5, 1).
observation(480, 6, 1).
observation(480, 7, 1).
observation(480, 8, 0).
transition(480, 224).
observation(481, 0, 0).
observation(481, 1, 0).
observation(481, 2, 0).
observation(481, 3, 0).
observation(481, 4, 0).
observation(481, 5, 1).
observation(481, 6, 1).
observation(481, 7, 1).
observation(481, 8, 0).
transition(481, 224).
observation(482, 0, 0).
observation(482, 1, 0).
observation(482, 2, 1).
observation(482, 3, 0).
observation(482, 4, 0).
observation(482, 5, 1).
observation(482, 6, 1).
observation(482, 7, 1).
observation(482, 8, 0).
transition(482, 228).
observation(483, 0, 0).
observation(483, 1, 0).
observation(483, 2, 0).
observation(483, 3, 0).
observation(483, 4, 0).
observation(483, 5, 1).
observation(483, 6, 1).
observation(483, 7, 1).
observation(483, 8, 0).
transition(483, 224).
observation(484, 0, 0).
observation(484, 1, 0).
observation(484, 2, 0).
observation(484, 3, 0).
observation(484, 4, 0).
observation(484, 5, 1).
observation(484, 6, 1).
observation(484, 7, 1).
observation(484, 8, 0).
transition(484, 224).
observation(485, 0, 0).
observation(485, 1, 0).
observation(485, 2, 0).
observation(485, 3, 0).
observation(485, 4, 0).
observation(485, 5, 1).
observation(485, 6, 1).
observation(485, 7, 1).
observation(485, 8, 0).
transition(485, 224).
observation(486, 0, 0).
observation(486, 1, 0).
observation(486, 2, 1).
observation(486, 3, 0).
observation(486, 4, 0).
observation(486, 5, 1).
observation(486, 6, 1).
observation(486, 7, 1).
observation(486, 8, 0).
transition(486, 228).
observation(487, 0, 0).
observation(487, 1, 0).
observation(487, 2, 0).
observation(487, 3, 0).
observation(487, 4, 0).
observation(487, 5, 1).
observation(487, 6, 1).
observation(487, 7, 1).
observation(487, 8, 0).
transition(487, 224).
observation(488, 0, 0).
observation(488, 1, 0).
observation(488, 2, 0).
observation(488, 3, 0).
observation(488, 4, 0).
observation(488, 5, 1).
observation(488, 6, 1).
observation(488, 7, 1).
observation(488, 8, 0).
transition(488, 224).
observation(489, 0, 0).
observation(489, 1, 0).
observation(489, 2, 0).
observation(489, 3, 0).
observation(489, 4, 0).
observation(489, 5, 1).
observation(489, 6, 1).
observation(489, 7, 1).
observation(489, 8, 0).
transition(489, 224).
observation(490, 0, 0).
observation(490, 1, 0).
observation(490, 2, 1).
observation(490, 3, 0).
observation(490, 4, 0).
observation(490, 5, 1).
observation(490, 6, 1).
observation(490, 7, 1).
observation(490, 8, 0).
transition(490, 228).
observation(491, 0, 0).
observation(491, 1, 0).
observation(491, 2, 0).
observation(491, 3, 0).
observation(491, 4, 0).
observation(491, 5, 1).
observation(491, 6, 1).
observation(491, 7, 1).
observation(491, 8, 0).
transition(491, 224).
observation(492, 0, 0).
observation(492, 1, 0).
observation(492, 2, 0).
observation(492, 3, 0).
observation(492, 4, 0).
observation(492, 5, 1).
observation(492, 6, 1).
observation(492, 7, 1).
observation(492, 8, 0).
transition(492, 224).
observation(493, 0, 0).
observation(493, 1, 0).
observation(493, 2, 0).
observation(493, 3, 0).
observation(493, 4, 0).
observation(493, 5, 1).
observation(493, 6, 1).
observation(493, 7, 1).
observation(493, 8, 0).
transition(493, 224).
observation(494, 0, 0).
observation(494, 1, 0).
observation(494, 2, 1).
observation(494, 3, 0).
observation(494, 4, 0).
observation(494, 5, 1).
observation(494, 6, 1).
observation(494, 7, 1).
observation(494, 8, 0).
transition(494, 228).
observation(495, 0, 0).
observation(495, 1, 0).
observation(495, 2, 0).
observation(495, 3, 0).
observation(495, 4, 0).
observation(495, 5, 1).
observation(495, 6, 1).
observation(495, 7, 1).
observation(495, 8, 0).
transition(495, 224).
observation(496, 0, 0).
observation(496, 1, 0).
observation(496, 2, 0).
observation(496, 3, 0).
observation(496, 4, 0).
observation(496, 5, 1).
observation(496, 6, 1).
observation(496, 7, 1).
observation(496, 8, 0).
transition(496, 224).
observation(497, 0, 0).
observation(497, 1, 0).
observation(497, 2, 0).
observation(497, 3, 0).
observation(497, 4, 0).
observation(497, 5, 1).
observation(497, 6, 1).
observation(497, 7, 1).
observation(497, 8, 0).
transition(497, 224).
observation(498, 0, 0).
observation(498, 1, 0).
observation(498, 2, 1).
observation(498, 3, 0).
observation(498, 4, 0).
observation(498, 5, 1).
observation(498, 6, 1).
observation(498, 7, 1).
observation(498, 8, 0).
transition(498, 228).
observation(499, 0, 0).
observation(499, 1, 0).
observation(499, 2, 0).
observation(499, 3, 0).
observation(499, 4, 0).
observation(499, 5, 1).
observation(499, 6, 1).
observation(499, 7, 1).
observation(499, 8, 0).
transition(499, 224).
observation(500, 0, 0).
observation(500, 1, 0).
observation(500, 2, 0).
observation(500, 3, 0).
observation(500, 4, 0).
observation(500, 5, 1).
observation(500, 6, 1).
observation(500, 7, 1).
observation(500, 8, 0).
transition(500, 224).
observation(501, 0, 0).
observation(501, 1, 0).
observation(501, 2, 0).
observation(501, 3, 0).
observation(501, 4, 0).
observation(501, 5, 1).
observation(501, 6, 1).
observation(501, 7, 1).
observation(501, 8, 0).
transition(501, 224).
observation(502, 0, 0).
observation(502, 1, 0).
observation(502, 2, 1).
observation(502, 3, 0).
observation(502, 4, 0).
observation(502, 5, 1).
observation(502, 6, 1).
observation(502, 7, 1).
observation(502, 8, 0).
transition(502, 228).
observation(503, 0, 0).
observation(503, 1, 0).
observation(503, 2, 0).
observation(503, 3, 0).
observation(503, 4, 0).
observation(503, 5, 1).
observation(503, 6, 1).
observation(503, 7, 1).
observation(503, 8, 0).
transition(503, 224).
observation(504, 0, 0).
observation(504, 1, 0).
observation(504, 2, 0).
observation(504, 3, 0).
observation(504, 4, 0).
observation(504, 5, 1).
observation(504, 6, 1).
observation(504, 7, 1).
observation(504, 8, 0).
transition(504, 224).
observation(505, 0, 0).
observation(505, 1, 0).
observation(505, 2, 0).
observation(505, 3, 0).
observation(505, 4, 0).
observation(505, 5, 1).
observation(505, 6, 1).
observation(505, 7, 1).
observation(505, 8, 0).
transition(505, 224).
observation(506, 0, 0).
observation(506, 1, 0).
observation(506, 2, 1).
observation(506, 3, 0).
observation(506, 4, 0).
observation(506, 5, 1).
observation(506, 6, 1).
observation(506, 7, 1).
observation(506, 8, 0).
transition(506, 228).
observation(507, 0, 0).
observation(507, 1, 0).
observation(507, 2, 0).
observation(507, 3, 0).
observation(507, 4, 0).
observation(507, 5, 1).
observation(507, 6, 1).
observation(507, 7, 1).
observation(507, 8, 0).
transition(507, 224).
observation(508, 0, 0).
observation(508, 1, 0).
observation(508, 2, 0).
observation(508, 3, 0).
observation(508, 4, 0).
observation(508, 5, 1).
observation(508, 6, 1).
observation(508, 7, 1).
observation(508, 8, 0).
transition(508, 224).
observation(509, 0, 0).
observation(509, 1, 0).
observation(509, 2, 0).
observation(509, 3, 0).
observation(509, 4, 0).
observation(509, 5, 1).
observation(509, 6, 1).
observation(509, 7, 1).
observation(509, 8, 0).
transition(509, 224).
observation(510, 0, 0).
observation(510, 1, 0).
observation(510, 2, 1).
observation(510, 3, 0).
observation(510, 4, 0).
observation(510, 5, 1).
observation(510, 6, 1).
observation(510, 7, 1).
observation(510, 8, 0).
transition(510, 228).
observation(511, 0, 0).
observation(511, 1, 0).
observation(511, 2, 0).
observation(511, 3, 0).
observation(511, 4, 0).
observation(511, 5, 1).
observation(511, 6, 1).
observation(511, 7, 1).
observation(511, 8, 0).
transition(511, 224).
