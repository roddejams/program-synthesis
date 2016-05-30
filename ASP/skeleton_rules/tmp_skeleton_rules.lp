match_guard(gcd, R, (N0, N1)) :- N0 == C1, input(call(gcd, (N0, N1))), choose_match(R, 1, C1).
match_guard(gcd, R, (N0, N1)) :- N1 == C1, input(call(gcd, (N0, N1))), choose_match(R, 2, C1).
match_guard(gcd, R, (N0, N1)) :- N0 == N1, input(call(gcd, (N0, N1))), choose_match(R, 3).
match_guard(gcd, R, (N0, N1)) :- N0 < N1, input(call(gcd, (N0, N1))), choose_match(R, 4).
match_guard(gcd, R, (N0, N1)) :- N1 == N0, input(call(gcd, (N0, N1))), choose_match(R, 5).
match_guard(gcd, R, (N0, N1)) :- N1 < N0, input(call(gcd, (N0, N1))), choose_match(R, 6).
rule(R, gcd, (N0, N1), N0) :- input(call(gcd, (N0, N1))), choose(R, 1).
rule(R, gcd, (N0, N1), N1) :- input(call(gcd, (N0, N1))), choose(R, 2).
rule(R, gcd, (N0, N1), add(N0, N0)) :- input(call(gcd, (N0, N1))), choose(R, 3).
rule(R, gcd, (N0, N1), add(N1, N1)) :- input(call(gcd, (N0, N1))), choose(R, 4).
rule(R, gcd, (N0, N1), add(N0, C1)) :- input(call(gcd, (N0, N1))), choose(R, 5, C1).
rule(R, gcd, (N0, N1), add(N1, C1)) :- input(call(gcd, (N0, N1))), choose(R, 6, C1).
rule(R, gcd, (N0, N1), add(N0, N1)) :- input(call(gcd, (N0, N1))), choose(R, 7).
rule(R, gcd, (N0, N1), add(x0, C1)) :- input(call(gcd, (N0, N1))), choose(R, 8, C1).
rule(R, gcd, (N0, N1), add(N0, x0)) :- input(call(gcd, (N0, N1))), choose(R, 9).
rule(R, gcd, (N0, N1), add(N1, x0)) :- input(call(gcd, (N0, N1))), choose(R, 10).
rule(R, gcd, (N0, N1), mul(N0, N0)) :- input(call(gcd, (N0, N1))), choose(R, 11).
rule(R, gcd, (N0, N1), mul(N1, N1)) :- input(call(gcd, (N0, N1))), choose(R, 12).
rule(R, gcd, (N0, N1), mul(N0, C1)) :- input(call(gcd, (N0, N1))), choose(R, 13, C1).
rule(R, gcd, (N0, N1), mul(N1, C1)) :- input(call(gcd, (N0, N1))), choose(R, 14, C1).
rule(R, gcd, (N0, N1), mul(N0, N1)) :- input(call(gcd, (N0, N1))), choose(R, 15).
rule(R, gcd, (N0, N1), mul(x0, C1)) :- input(call(gcd, (N0, N1))), choose(R, 16, C1).
rule(R, gcd, (N0, N1), mul(N0, x0)) :- input(call(gcd, (N0, N1))), choose(R, 17).
rule(R, gcd, (N0, N1), mul(N1, x0)) :- input(call(gcd, (N0, N1))), choose(R, 18).
rule(R, gcd, (N0, N1), sub(N0, N0)) :- input(call(gcd, (N0, N1))), choose(R, 19).
rule(R, gcd, (N0, N1), sub(N1, N1)) :- input(call(gcd, (N0, N1))), choose(R, 20).
rule(R, gcd, (N0, N1), sub(N0, C1)) :- input(call(gcd, (N0, N1))), choose(R, 21, C1).
rule(R, gcd, (N0, N1), sub(N1, C1)) :- input(call(gcd, (N0, N1))), choose(R, 22, C1).
rule(R, gcd, (N0, N1), sub(N0, N1)) :- input(call(gcd, (N0, N1))), choose(R, 23).
rule(R, gcd, (N0, N1), sub(x0, C1)) :- input(call(gcd, (N0, N1))), choose(R, 24, C1).
rule(R, gcd, (N0, N1), sub(N0, x0)) :- input(call(gcd, (N0, N1))), choose(R, 25).
rule(R, gcd, (N0, N1), sub(N1, x0)) :- input(call(gcd, (N0, N1))), choose(R, 26).
rule(R, gcd, (N0, N1), sub(N1, N0)) :- input(call(gcd, (N0, N1))), choose(R, 78).

rule(R, gcd, (N0, N1), call(gcd, (x0, x1))) :- input(call(gcd, (N0, N1))), choose(R, 27).
rule(R, gcd, (N0, N1), call(gcd, (N0, N1))) :- input(call(gcd, (N0, N1))), choose(R, 28).
rule(R, gcd, (N0, N1), call(gcd, (N0, x0))) :- input(call(gcd, (N0, N1))), choose(R, 29).
rule(R, gcd, (N0, N1), call(gcd, (N1, x0))) :- input(call(gcd, (N0, N1))), choose(R, 30).
rule(R, gcd, (N0, N1), call(gcd, (N0, x1))) :- input(call(gcd, (N0, N1))), choose(R, 31).
rule(R, gcd, (N0, N1), call(gcd, (N1, x1))) :- input(call(gcd, (N0, N1))), choose(R, 32).
rule(R, gcd, (N0, N1), call(gcd, (x0, N1))) :- input(call(gcd, (N0, N1))), choose(R, 76).
rule(R, gcd, (N0, N1), call(gcd, (x0, N0))) :- input(call(gcd, (N0, N1))), choose(R, 79).
rule(R, gcd, (N0, N1), call(gcd, (x1, N1))) :- input(call(gcd, (N0, N1))), choose(R, 80).
rule(R, gcd, (N0, N1), call(gcd, (x1, N0))) :- input(call(gcd, (N0, N1))), choose(R, 81).

where(x0, (N0, N1), add(N0, N0)) :- input(call(gcd, (N0, N1))), choose_where(33).
where(x0, (N0, N1), add(N1, N1)) :- input(call(gcd, (N0, N1))), choose_where(34).
where(x0, (N0, N1), add(N0, C1)) :- input(call(gcd, (N0, N1))), choose_where(35, C1).
where(x0, (N0, N1), add(N1, C1)) :- input(call(gcd, (N0, N1))), choose_where(36, C1).
where(x0, (N0, N1), add(N0, N1)) :- input(call(gcd, (N0, N1))), choose_where(37).
where(x0, (N0, N1), add(x1, C1)) :- input(call(gcd, (N0, N1))), choose_where(38, C1).
where(x0, (N0, N1), add(N0, x1)) :- input(call(gcd, (N0, N1))), choose_where(39).
where(x0, (N0, N1), add(N1, x1)) :- input(call(gcd, (N0, N1))), choose_where(40).
where(x0, (N0, N1), mul(N0, N0)) :- input(call(gcd, (N0, N1))), choose_where(41).
where(x0, (N0, N1), mul(N1, N1)) :- input(call(gcd, (N0, N1))), choose_where(42).
where(x0, (N0, N1), mul(N0, C1)) :- input(call(gcd, (N0, N1))), choose_where(43, C1).
where(x0, (N0, N1), mul(N1, C1)) :- input(call(gcd, (N0, N1))), choose_where(44, C1).
where(x0, (N0, N1), mul(N0, N1)) :- input(call(gcd, (N0, N1))), choose_where(45).
where(x0, (N0, N1), mul(x1, C1)) :- input(call(gcd, (N0, N1))), choose_where(46, C1).
where(x0, (N0, N1), mul(N0, x1)) :- input(call(gcd, (N0, N1))), choose_where(47).
where(x0, (N0, N1), mul(N1, x1)) :- input(call(gcd, (N0, N1))), choose_where(48).
where(x0, (N0, N1), sub(N0, N0)) :- input(call(gcd, (N0, N1))), choose_where(49).
where(x0, (N0, N1), sub(N1, N1)) :- input(call(gcd, (N0, N1))), choose_where(50).
where(x0, (N0, N1), sub(N0, C1)) :- input(call(gcd, (N0, N1))), choose_where(51, C1).
where(x0, (N0, N1), sub(N1, C1)) :- input(call(gcd, (N0, N1))), choose_where(52, C1).
where(x0, (N0, N1), sub(N0, N1)) :- input(call(gcd, (N0, N1))), choose_where(53).
where(x0, (N0, N1), sub(x1, C1)) :- input(call(gcd, (N0, N1))), choose_where(54, C1).
where(x0, (N0, N1), sub(N0, x1)) :- input(call(gcd, (N0, N1))), choose_where(55).
where(x0, (N0, N1), sub(N1, x1)) :- input(call(gcd, (N0, N1))), choose_where(56).
where(x0, (N0, N1), call(gcd, (N0, N1))) :- input(call(gcd, (N0, N1))), choose_where(57).
where(x0, (N0, N1), call(gcd, (N0, x1))) :- input(call(gcd, (N0, N1))), choose_where(58).
where(x0, (N0, N1), call(gcd, (N1, x1))) :- input(call(gcd, (N0, N1))), choose_where(59).
where(x1, (N0, N1), add(N0, N0)) :- input(call(gcd, (N0, N1))), choose_where(60).
where(x1, (N0, N1), add(N1, N1)) :- input(call(gcd, (N0, N1))), choose_where(61).
where(x1, (N0, N1), add(N0, C1)) :- input(call(gcd, (N0, N1))), choose_where(62, C1).
where(x1, (N0, N1), add(N1, C1)) :- input(call(gcd, (N0, N1))), choose_where(63, C1).
where(x1, (N0, N1), add(N0, N1)) :- input(call(gcd, (N0, N1))), choose_where(64).
where(x1, (N0, N1), mul(N0, N0)) :- input(call(gcd, (N0, N1))), choose_where(65).
where(x1, (N0, N1), mul(N1, N1)) :- input(call(gcd, (N0, N1))), choose_where(66).
where(x1, (N0, N1), mul(N0, C1)) :- input(call(gcd, (N0, N1))), choose_where(67, C1).
where(x1, (N0, N1), mul(N1, C1)) :- input(call(gcd, (N0, N1))), choose_where(68, C1).
where(x1, (N0, N1), mul(N0, N1)) :- input(call(gcd, (N0, N1))), choose_where(69).
where(x1, (N0, N1), sub(N0, N0)) :- input(call(gcd, (N0, N1))), choose_where(70).
where(x1, (N0, N1), sub(N1, N1)) :- input(call(gcd, (N0, N1))), choose_where(71).
where(x1, (N0, N1), sub(N0, C1)) :- input(call(gcd, (N0, N1))), choose_where(72, C1).
where(x1, (N0, N1), sub(N1, C1)) :- input(call(gcd, (N0, N1))), choose_where(73, C1).
where(x1, (N0, N1), sub(N0, N1)) :- input(call(gcd, (N0, N1))), choose_where(74).
where(x1, (N0, N1), sub(N1, N0)) :- input(call(gcd, (N0, N1))), choose_where(77).
where(x1, (N0, N1), call(gcd, (N0, N1))) :- input(call(gcd, (N0, N1))), choose_where(75).
1 {
choose(R, 1;2;3;4;7;9;10;11;12;15;17;18;19;20;23;25;26;27;28;29;30;31;32;76;78;79;80;81) ,
choose(R, 5;6;8;13;14;16;21;22;24, C0) : expr_const(C0)
} 1 :- num_rules(R).
#minimise [choose_where(R)=1, choose_where(R, _)=1 ].
#minimise [choose(1, R)=R, choose(1, R, _)=R].
0 {
choose_where(33;34;37;39;40;41;42;45;47;48;49;50;53;55;56;57;58;59) ,
choose_where(35;36;38;43;44;46;51;52;54, C0) : expr_const(C0)
} 1.
0 {
choose_where(60;61;64;65;66;69;70;71;74;75;77) ,
choose_where(62;63;67;68;72;73, C0) : expr_const(C0)
} 1.
1 {
choose_match(R, 3;4;5;6) ,
choose_match(R, 1;2, C0) : expr_const(C0)
} 1 :- num_match(R).
