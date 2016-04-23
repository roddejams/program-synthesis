rule(R, f, (N0), N0) :- input(call(f, (N0))), choose(R, 1).
rule(R, f, (N0), add(N0, N0)) :- input(call(f, (N0))), choose(R, 2).
rule(R, f, (N0), add(N0, C1)) :- input(call(f, (N0))), choose(R, 3, C1).
rule(R, f, (N0), add(N0, x0)) :- input(call(f, (N0))), choose(R, 4).
rule(R, f, (N0), add(N0, x1)) :- input(call(f, (N0))), choose(R, 5).
rule(R, f, (N0), add(N0, x2)) :- input(call(f, (N0))), choose(R, 6).
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
1 {
choose(R, 1;2;4;5;6;7;9;10;11;12;14;15;16;17;18;19;20) ,
choose(R, 3;8;13, C0) : expr_const(C0) 
} 1 :- num_rules(R).
#minimise [choose_where(R)=1, choose_where(R, _)=1 ].
0 {
choose_where(21;23;24;25;27;28;29;31;32;33;34;35) ,
choose_where(22;26;30, C0) : expr_const(C0) 
} 1.
0 {
choose_where(36;38;39;40;42;43;44;46;47;48;49;50) ,
choose_where(37;41;45, C0) : expr_const(C0) 
} 1.
0 {
choose_where(51;53;54;55;57;58;59;61;62;63;64;65) ,
choose_where(52;56;60, C0) : expr_const(C0) 
} 1.
