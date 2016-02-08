rule(R, succ, N, C1) :- input(call(succ, N)), choose(R, 1, C1).
rule(R, succ, N, N) :- input(call(succ, N)), choose(R, 2).
rule(R, succ, N, add(N, N)) :- input(call(succ, N)), choose(R, 3).
rule(R, succ, N, mul(N, N)) :- input(call(succ, N)), choose(R, 4).
rule(R, succ, N, sub(N, N)) :- input(call(succ, N)), choose(R, 5).
rule(R, succ, N, add(N, C1)) :- input(call(succ, N)), choose(R, 6, C1).
rule(R, succ, N, mul(N, C1)) :- input(call(succ, N)), choose(R, 7, C1).
rule(R, succ, N, sub(N, C1)) :- input(call(succ, N)), choose(R, 8, C1).
rule(R, succ, N, sub(C1, N)) :- input(call(succ, N)), choose(R, 9, C1).
rule(R, succ, N, add(C1, C2)) :- input(call(succ, N)), choose(R, 10, C1, C2).
rule(R, succ, N, mul(C1, C2)) :- input(call(succ, N)), choose(R, 11, C1, C2).
rule(R, succ, N, sub(C1, C2)) :- input(call(succ, N)), choose(R, 12, C1, C2).
rule(R, succ, N, call(succ, C1)) :- input(call(succ, N)), choose(R, 13, C1).
rule(R, succ, N, call(succ, N)) :- input(call(succ, N)), choose(R, 14).
1 {
choose(R, N) : num_rules(R) : num_generated(N) ,
choose(R, N, C0) : num_rules(R) : num_generated(N) : expr_const(C0) ,
choose(R, N, C0, C1) : num_rules(R) : num_generated(N) : expr_const(C0) : expr_const(C1) 
} 2.
#minimise [choose(R)=R, choose(R, _)=R, choose(R, _, _)=R ].
num_generated(0..14).
