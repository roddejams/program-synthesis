rule(R, f, (N0), N0) :- input(call(f, (N0))), choose(R, 1).
rule(R, f, (N0), add(N0, N0)) :- input(call(f, (N0))), choose(R, 2).
rule(R, f, (N0), add(N0, C1)) :- input(call(f, (N0))), choose(R, 3, C1).
rule(R, f, (N0), add(x0, x1)) :- input(call(f, (N0))), choose(R, 4).
rule(R, f, (N0), add(x0, C1)) :- input(call(f, (N0))), choose(R, 5, C1).
rule(R, f, (N0), add(x1, C1)) :- input(call(f, (N0))), choose(R, 6, C1).
rule(R, f, (N0), add(N0, x0)) :- input(call(f, (N0))), choose(R, 7).
rule(R, f, (N0), add(N0, x1)) :- input(call(f, (N0))), choose(R, 8).
rule(R, f, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose(R, 9).
rule(R, f, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose(R, 10, C1).
rule(R, f, (N0), mul(x0, x1)) :- input(call(f, (N0))), choose(R, 11).
rule(R, f, (N0), mul(x0, C1)) :- input(call(f, (N0))), choose(R, 12, C1).
rule(R, f, (N0), mul(x1, C1)) :- input(call(f, (N0))), choose(R, 13, C1).
rule(R, f, (N0), mul(N0, x0)) :- input(call(f, (N0))), choose(R, 14).
rule(R, f, (N0), mul(N0, x1)) :- input(call(f, (N0))), choose(R, 15).
rule(R, f, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose(R, 16).
rule(R, f, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose(R, 17, C1).
rule(R, f, (N0), sub(x0, x1)) :- input(call(f, (N0))), choose(R, 18).
rule(R, f, (N0), sub(x0, C1)) :- input(call(f, (N0))), choose(R, 19, C1).
rule(R, f, (N0), sub(x1, C1)) :- input(call(f, (N0))), choose(R, 20, C1).
rule(R, f, (N0), sub(N0, x0)) :- input(call(f, (N0))), choose(R, 21).
rule(R, f, (N0), sub(N0, x1)) :- input(call(f, (N0))), choose(R, 22).
rule(R, f, (N0), call(f, N0)) :- input(call(f, (N0))), choose(R, 23).
rule(R, f, (N0), call(f, x0)) :- input(call(f, (N0))), choose(R, 24).
rule(R, f, (N0), call(f, x1)) :- input(call(f, (N0))), choose(R, 25).
where(x0, (N0), add(N0, N0)) :- input(call(f, (N0))), choose_where(26).
where(x0, (N0), add(N0, C1)) :- input(call(f, (N0))), choose_where(27, C1).
where(x0, (N0), add(x1, C1)) :- input(call(f, (N0))), choose_where(28, C1).
where(x0, (N0), add(N0, x1)) :- input(call(f, (N0))), choose_where(29).
where(x0, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose_where(30).
where(x0, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose_where(31, C1).
where(x0, (N0), mul(x1, C1)) :- input(call(f, (N0))), choose_where(32, C1).
where(x0, (N0), mul(N0, x1)) :- input(call(f, (N0))), choose_where(33).
where(x0, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose_where(34).
where(x0, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose_where(35, C1).
where(x0, (N0), sub(x1, C1)) :- input(call(f, (N0))), choose_where(36, C1).
where(x0, (N0), sub(N0, x1)) :- input(call(f, (N0))), choose_where(37).
where(x0, (N0), call(f, N0)) :- input(call(f, (N0))), choose_where(38).
where(x0, (N0), call(f, x1)) :- input(call(f, (N0))), choose_where(39).
where(x1, (N0), add(N0, N0)) :- input(call(f, (N0))), choose_where(40).
where(x1, (N0), add(N0, C1)) :- input(call(f, (N0))), choose_where(41, C1).
where(x1, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose_where(42).
where(x1, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose_where(43, C1).
where(x1, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose_where(44).
where(x1, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose_where(45, C1).
where(x1, (N0), call(f, N0)) :- input(call(f, (N0))), choose_where(46).
1 {
choose(R, 1;2;4;7;8;9;11;14;15;16;18;21;22;23;24;25) ,
choose(R, 3;5;6;10;12;13;17;19;20, C0) : expr_const(C0) 
} 1 :- num_rules(R).
#minimise [choose_where(R)=1, choose_where(R, _)=1 ].
0 {
choose_where(26;29;30;33;34;37;38;39) ,
choose_where(27;28;31;32;35;36, C0) : expr_const(C0) 
} 1.
0 {
choose_where(40;42;44;46) ,
choose_where(41;43;45, C0) : expr_const(C0) 
} 1.
