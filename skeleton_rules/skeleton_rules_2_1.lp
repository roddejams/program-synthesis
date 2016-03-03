rule(R, f, (N0), C1) :- input(call(f, (N0))), choose(R, 1, C1).
rule(R, f, (N0), N0) :- input(call(f, (N0))), choose(R, 2).
rule(R, f, (N0), add(N0, N0)) :- input(call(f, (N0))), choose(R, 3).
rule(R, f, (N0), add(N0, C1)) :- input(call(f, (N0))), choose(R, 4, C1).
rule(R, f, (N0), add(N0, x0)) :- input(call(f, (N0))), choose(R, 5).
rule(R, f, (N0), add(N0, x1)) :- input(call(f, (N0))), choose(R, 6).
rule(R, f, (N0), mul(N0, N0)) :- input(call(f, (N0))), choose(R, 7).
rule(R, f, (N0), mul(N0, C1)) :- input(call(f, (N0))), choose(R, 8, C1).
rule(R, f, (N0), mul(N0, x0)) :- input(call(f, (N0))), choose(R, 9).
rule(R, f, (N0), mul(N0, x1)) :- input(call(f, (N0))), choose(R, 10).
rule(R, f, (N0), sub(N0, N0)) :- input(call(f, (N0))), choose(R, 11).
rule(R, f, (N0), sub(N0, C1)) :- input(call(f, (N0))), choose(R, 12, C1).
rule(R, f, (N0), sub(N0, x0)) :- input(call(f, (N0))), choose(R, 13).
rule(R, f, (N0), sub(N0, x1)) :- input(call(f, (N0))), choose(R, 14).
rule(R, f, (N0), call(f, N0)) :- input(call(f, (N0))), choose(R, 15).
rule(R, f, (N0), call(f, C1)) :- input(call(f, (N0))), choose(R, 16, C1).
rule(R, f, (N0), call(f, x0)) :- input(call(f, (N0))), choose(R, 17).
rule(R, f, (N0), call(f, x1)) :- input(call(f, (N0))), choose(R, 18).
where(x0, (N0), add(N0, N0)) :- input(call(_, (N0))), choose_where(R, 19).
where(x0, (N0), add(N0, C1)) :- input(call(_, (N0))), choose_where(R, 20, C1).
where(x0, (N0), add(N0, x1)) :- input(call(_, (N0))), choose_where(R, 21).
where(x0, (N0), mul(N0, N0)) :- input(call(_, (N0))), choose_where(R, 22).
where(x0, (N0), mul(N0, C1)) :- input(call(_, (N0))), choose_where(R, 23, C1).
where(x0, (N0), mul(N0, x1)) :- input(call(_, (N0))), choose_where(R, 24).
where(x0, (N0), sub(N0, N0)) :- input(call(_, (N0))), choose_where(R, 25).
where(x0, (N0), sub(N0, C1)) :- input(call(_, (N0))), choose_where(R, 26, C1).
where(x0, (N0), sub(N0, x1)) :- input(call(_, (N0))), choose_where(R, 27).
where(x0, (N0), call(f, N0)) :- input(call(_, (N0))), choose_where(R, 28).
where(x0, (N0), call(f, C1)) :- input(call(_, (N0))), choose_where(R, 29, C1).
where(x0, (N0), call(f, x1)) :- input(call(_, (N0))), choose_where(R, 30).
where(x1, (N0), add(N0, N0)) :- input(call(_, (N0))), choose_where(R, 31).
where(x1, (N0), add(N0, C1)) :- input(call(_, (N0))), choose_where(R, 32, C1).
where(x1, (N0), add(N0, x0)) :- input(call(_, (N0))), choose_where(R, 33).
where(x1, (N0), mul(N0, N0)) :- input(call(_, (N0))), choose_where(R, 34).
where(x1, (N0), mul(N0, C1)) :- input(call(_, (N0))), choose_where(R, 35, C1).
where(x1, (N0), mul(N0, x0)) :- input(call(_, (N0))), choose_where(R, 36).
where(x1, (N0), sub(N0, N0)) :- input(call(_, (N0))), choose_where(R, 37).
where(x1, (N0), sub(N0, C1)) :- input(call(_, (N0))), choose_where(R, 38, C1).
where(x1, (N0), sub(N0, x0)) :- input(call(_, (N0))), choose_where(R, 39).
where(x1, (N0), call(f, N0)) :- input(call(_, (N0))), choose_where(R, 40).
where(x1, (N0), call(f, C1)) :- input(call(_, (N0))), choose_where(R, 41, C1).
where(x1, (N0), call(f, x0)) :- input(call(_, (N0))), choose_where(R, 42).
1 {
choose(R, N) : num_generated(N) ,
choose(R, N, C0) : num_generated(N) : expr_const(C0) 
} 1 :- num_rules(R).
#minimise [choose(R)=R, choose(R, _)=R ].
num_generated(0..42).