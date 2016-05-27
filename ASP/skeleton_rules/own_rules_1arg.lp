rule(R, f, N, C1) :- input(call(f, N)), choose(R, 1, C1).
rule(R, f, N, N) :- input(call(f, N)), choose(R, 2).

rule(R, f, N, add(N, N)) :- input(call(f, N)), choose(R, 3).
rule(R, f, N, mul(N, N)) :- input(call(f, N)), choose(R, 4).
rule(R, f, N, sub(N, N)) :- input(call(f, N)), choose(R, 5).
rule(R, f, N, call(f, N)) :- input(call(f, N)), choose(R, 11).
rule(R, f, N, add(N, x1)) :- input(call(f, N)), choose(R, 12).
rule(R, f, N, mul(N, x1)) :- input(call(f, N)), choose(R, 13).
rule(R, f, N, sub(N, x1)) :- input(call(f, N)), choose(R, 14).
rule(R, f, N, sub(x1, N)) :- input(call(f, N)), choose(R, 15).
rule(R, f, N, call(f, x1)) :- input(call(f, N)), choose(R, 16).

rule(R, f, N, add(N, C1)) :- input(call(f, N)), choose(R, 6, C1).
rule(R, f, N, mul(N, C1)) :- input(call(f, N)), choose(R, 7, C1).
rule(R, f, N, sub(N, C1)) :- input(call(f, N)), choose(R, 8, C1).
rule(R, f, N, sub(C1, N)) :- input(call(f, N)), choose(R, 9, C1).
rule(R, f, N, call(f, C1)) :- input(call(f, N)), choose(R, 10, C1).

where(x1, N, add(N, N)) :- input(call(f, N)), choose_where(17).
where(x1, N, mul(N, N)) :- input(call(f, N)), choose_where(18).
where(x1, N, sub(N, N)) :- input(call(f, N)), choose_where(19).
where(x1, N, add(N, C1)) :- input(call(f, N)), choose_where(20, C1).
where(x1, N, mul(N, C1)) :- input(call(f, N)), choose_where(21, C1).
where(x1, N, sub(N, C1)) :- input(call(f, N)), choose_where(22, C1).
where(x1, N, sub(C1, N)) :- input(call(f, N)), choose_where(23, C1).
where(x1, N, add(N, x2)) :- input(call(f, N)), choose_where(24).
where(x1, N, mul(N, x2)) :- input(call(f, N)), choose_where(25).
where(x1, N, sub(N, x2)) :- input(call(f, N)), choose_where(26).
where(x1, N, sub(x2, N)) :- input(call(f, N)), choose_where(27).
where(x1, N, call(f, N)) :- input(call(f, N)), choose_where(28).
where(x1, N, call(f, C1)) :- input(call(f, N)), choose_where(29, C1).
where(x1, N, call(f, x2)) :- input(call(f, N)), choose_where(30).

where(x2, N, add(N, N)) :- input(call(f, N)), choose_where(31).
where(x2, N, mul(N, N)) :- input(call(f, N)), choose_where(32).
where(x2, N, sub(N, N)) :- input(call(f, N)), choose_where(33).
where(x2, N, add(N, C1)) :- input(call(f, N)), choose_where(34, C1).
where(x2, N, mul(N, C1)) :- input(call(f, N)), choose_where(35, C1).
where(x2, N, sub(N, C1)) :- input(call(f, N)), choose_where(36, C1).
where(x2, N, sub(C1, N)) :- input(call(f, N)), choose_where(37, C1).
where(x2, N, call(f, N)) :- input(call(f, N)), choose_where(38).
where(x2, N, call(f, C1)) :- input(call(f, N)), choose_where(39, C1).

rule(R, f, N, add(x1, x2)) :- input(call(f, N)), choose(R, 0).

1 {
choose(R, 2..5;11..16),
choose(R, 1;6..10, C0) : expr_const(C0)
} 1 :- num_rules(R).

0 {
choose_where(17..19;24..28;30),
choose_where(20..23;29, C1) : expr_const(C1)
} 1.

0 {
choose_where(31..33;38),
choose_where(34..37;39, C1) : expr_const(C1)
} 1.


#minimise [choose(_, N)=N, choose(_, N, _)=N ].
#minimise[choose_where(R)=1, choose_where(R, C)=1].
