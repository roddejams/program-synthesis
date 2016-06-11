match_guard(f, R, (N0)) :- N0 == C1, input(call(f, (N0))), choose_match(R, 1, C1).
match_guard(f, R, (N0)) :- input(call(f, (N0))), choose_match(R, 2).
rule(R, f, (N0), N0) :- input(call(f, (N0))), choose(R, 1).
rule(R, f, (N0), add(N0, N0)) :- input(call(f, (N0))), choose(R, 2).
rule(R, f, (N0), add(N0, C1)) :- input(call(f, (N0))), choose(R, 3, C1).
rule(R, f, (N0), add(N0, x0)) :- input(call(f, (N0))), choose(R, 4).
rule(R, f, (N0), add(N0, x1)) :- input(call(f, (N0))), choose(R, 5).
rule(R, f, (N0), add(N0, x2)) :- input(call(f, (N0))), choose(R, 6).
rule(R, f, (N0), add(x1, x2)) :- input(call(f, (N0))), choose(R, 84).
rule(R, f, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose(R, 7).
rule(R, f, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose(R, 8, C1).
rule(R, f, (N0), mul(N0, x0)) :- input(call(f, (N0))), choose(R, 9).
rule(R, f, (N0), mul(N0, x1)) :- input(call(f, (N0))), choose(R, 10).
rule(R, f, (N0), mul(N0, x2)) :- input(call(f, (N0))), choose(R, 11).
rule(R, f, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose(R, 12).
rule(R, f, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose(R, 13, C1).
rule(R, f, (N0), sub(N0, x0)) :- input(call(f, (N0))), choose(R, 14).
rule(R, f, (N0), sub(N0, x1)) :- input(call(f, (N0))), choose(R, 15).
rule(R, f, (N0), sub(N0, x2)) :- input(call(f, (N0))), choose(R, 16).
rule(R, f, (N0), call(f, (N0 ))) :- input(call(f, (N0))), choose(R, 17).
rule(R, f, (N0), call(f, (x0 ))) :- input(call(f, (N0))), choose(R, 18).
rule(R, f, (N0), call(f, (x1 ))) :- input(call(f, (N0))), choose(R, 19).
rule(R, f, (N0), call(f, (x2 ))) :- input(call(f, (N0))), choose(R, 20).

where(x0, (N0), add(N0, N0)) :- input(call(f, (N0))), choose_where(21).
where(x0, (N0), add(N0, C1)) :- input(call(f, (N0))), choose_where(22, C1).
where(x0, (N0), add(N0, x1)) :- input(call(f, (N0))), choose_where(23).
where(x0, (N0), add(N0, x2)) :- input(call(f, (N0))), choose_where(24).
where(x0, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose_where(25).
where(x0, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose_where(26, C1).
where(x0, (N0), mul(N0, x1)) :- input(call(f, (N0))), choose_where(27).
where(x0, (N0), mul(N0, x2)) :- input(call(f, (N0))), choose_where(28).
where(x0, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose_where(29).
where(x0, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose_where(30, C1).
where(x0, (N0), sub(N0, x1)) :- input(call(f, (N0))), choose_where(31).
where(x0, (N0), sub(N0, x2)) :- input(call(f, (N0))), choose_where(32).
where(x0, (N0), call(f, (N0 ))) :- input(call(f, (N0))), choose_where(33).
where(x0, (N0), call(f, (x1 ))) :- input(call(f, (N0))), choose_where(34).
where(x0, (N0), call(f, (x2 ))) :- input(call(f, (N0))), choose_where(35).
where(x0, (N0), call(f, (x3 ))) :- input(call(f, (N0))), choose_where(81).

where(x1, (N0), add(N0, N0)) :- input(call(f, (N0))), choose_where(36).
where(x1, (N0), add(N0, C1)) :- input(call(f, (N0))), choose_where(37, C1).
where(x1, (N0), add(N0, x0)) :- input(call(f, (N0))), choose_where(38).
where(x1, (N0), add(N0, x2)) :- input(call(f, (N0))), choose_where(39).
where(x1, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose_where(40).
where(x1, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose_where(41, C1).
where(x1, (N0), mul(N0, x0)) :- input(call(f, (N0))), choose_where(42).
where(x1, (N0), mul(N0, x2)) :- input(call(f, (N0))), choose_where(43).
where(x1, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose_where(44).
where(x1, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose_where(45, C1).
where(x1, (N0), sub(N0, x0)) :- input(call(f, (N0))), choose_where(46).
where(x1, (N0), sub(N0, x2)) :- input(call(f, (N0))), choose_where(47).
where(x1, (N0), call(f, (N0 ))) :- input(call(f, (N0))), choose_where(48).
where(x1, (N0), call(f, (x0 ))) :- input(call(f, (N0))), choose_where(49).
where(x1, (N0), call(f, (x2 ))) :- input(call(f, (N0))), choose_where(50).
where(x1, (N0), call(f, (x3 ))) :- input(call(f, (N0))), choose_where(82).

where(x2, (N0), add(N0, N0)) :- input(call(f, (N0))), choose_where(51).
where(x2, (N0), add(N0, C1)) :- input(call(f, (N0))), choose_where(52, C1).
where(x2, (N0), add(N0, x0)) :- input(call(f, (N0))), choose_where(53).
where(x2, (N0), add(N0, x1)) :- input(call(f, (N0))), choose_where(54).
where(x2, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose_where(55).
where(x2, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose_where(56, C1).
where(x2, (N0), mul(N0, x0)) :- input(call(f, (N0))), choose_where(57).
where(x2, (N0), mul(N0, x1)) :- input(call(f, (N0))), choose_where(58).
where(x2, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose_where(59).
where(x2, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose_where(60, C1).
where(x2, (N0), sub(N0, x0)) :- input(call(f, (N0))), choose_where(61).
where(x2, (N0), sub(N0, x1)) :- input(call(f, (N0))), choose_where(62).
where(x2, (N0), call(f, (N0 ))) :- input(call(f, (N0))), choose_where(63).
where(x2, (N0), call(f, (x0 ))) :- input(call(f, (N0))), choose_where(64).
where(x2, (N0), call(f, (x1 ))) :- input(call(f, (N0))), choose_where(65).
where(x2, (N0), call(f, (x3 ))) :- input(call(f, (N0))), choose_where(83).

where(x3, (N0), add(N0, N0)) :- input(call(f, (N0))), choose_where(66).
where(x3, (N0), add(N0, C1)) :- input(call(f, (N0))), choose_where(67, C1).
where(x3, (N0), add(N0, x0)) :- input(call(f, (N0))), choose_where(68).
where(x3, (N0), add(N0, x1)) :- input(call(f, (N0))), choose_where(69).
where(x3, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose_where(70).
where(x3, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose_where(71, C1).
where(x3, (N0), mul(N0, x0)) :- input(call(f, (N0))), choose_where(72).
where(x3, (N0), mul(N0, x1)) :- input(call(f, (N0))), choose_where(73).
where(x3, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose_where(74).
where(x3, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose_where(75, C1).
where(x3, (N0), sub(N0, x0)) :- input(call(f, (N0))), choose_where(76).
where(x3, (N0), sub(N0, x1)) :- input(call(f, (N0))), choose_where(77).
where(x3, (N0), call(f, (N0 ))) :- input(call(f, (N0))), choose_where(78).
where(x3, (N0), call(f, (x0 ))) :- input(call(f, (N0))), choose_where(79).
where(x3, (N0), call(f, (x1 ))) :- input(call(f, (N0))), choose_where(80).

1 {
choose(R, 1;2;4;5;6;7;9;10;11;12;14;15;16;17;18;19;20;84) ,
choose(R, 3;8;13, C0) : expr_const(C0)
} 1 :- num_rules(R).
#minimise [choose(1, N)=N, choose(1, N, _)=N ].
#minimise [choose_where(R)=1, choose_where(R, _)=1 ].
0 {
choose_where(21;23;24;25;27;28;29;31;32;33;34;35;81) ,
choose_where(22;26;30, C0) : expr_const(C0)
} 1.
0 {
choose_where(36;38;39;40;42;43;44;46;47;48;49;50;82) ,
choose_where(37;41;45, C0) : expr_const(C0)
} 1.
0 {
choose_where(51;53;54;55;57;58;59;61;62;63;64;65;83) ,
choose_where(52;56;60, C0) : expr_const(C0)
} 1.
0 {
choose_where(66;68;69;70;72;73;74;76;77;78;79;80) ,
choose_where(67;71;75, C0) : expr_const(C0)
} 1.
1 {
choose_match(R, 2) ,
choose_match(R, 1, C0) : expr_const(C0)
} 1 :- num_match(R).
