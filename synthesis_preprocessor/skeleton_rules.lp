rule(R, f, N, C1) :- input(call(f, N)), choose(R, 1, C1).
rule(R, f, N, N) :- input(call(f, N)), choose(R, 2).
rule(R, f, N, add(N, C1)) :- input(call(f, N)), choose(R, 3, C1).
rule(R, f, N, mul(N, C1)) :- input(call(f, N)), choose(R, 4, C1).
rule(R, f, N, sub(N, C1)) :- input(call(f, N)), choose(R, 5, C1).
rule(R, f, N, sub(C1, N)) :- input(call(f, N)), choose(R, 6, C1).
rule(R, f, N, add(C2, C1)) :- input(call(f, N)), choose(R, 7, C1, C2).
rule(R, f, N, mul(C2, C1)) :- input(call(f, N)), choose(R, 8, C1, C2).
rule(R, f, N, sub(C2, C1)) :- input(call(f, N)), choose(R, 9, C1, C2).
rule(R, f, N, sub(C1, C2)) :- input(call(f, N)), choose(R, 10, C1, C2).
rule(R, f, N, call(f, C1)) :- input(call(f, N)), choose(R, 11, C1).
rule(R, f, N, add(N, N)) :- input(call(f, N)), choose(R, 12).
rule(R, f, N, mul(N, N)) :- input(call(f, N)), choose(R, 13).
rule(R, f, N, sub(N, N)) :- input(call(f, N)), choose(R, 14).
rule(R, f, N, sub(N, N)) :- input(call(f, N)), choose(R, 15).
rule(R, f, N, add(C1, N)) :- input(call(f, N)), choose(R, 16, C1).
rule(R, f, N, mul(C1, N)) :- input(call(f, N)), choose(R, 17, C1).
rule(R, f, N, sub(C1, N)) :- input(call(f, N)), choose(R, 18, C1).
rule(R, f, N, sub(N, C1)) :- input(call(f, N)), choose(R, 19, C1).
rule(R, f, N, call(f, N)) :- input(call(f, N)), choose(R, 20).
1 {
choose(R, N) : num_rules(R) : num_generated(N) ,
choose(R, N, C0) : num_rules(R) : num_generated(N) : expr_const(C0) ,
choose(R, N, C0, C1) : num_rules(R) : num_generated(N) : expr_const(C0) : expr_const(C1) 
} 2.
#minimise [choose(R)=R, choose(R, _)=R, choose(R, _, _)=R ].
num_generated(0..20).