expr_const(0;1).

match2(succ, 1, Input) :- Input == 0, rule(1, succ, Input, _).
match2(succ, 2, Input) :- rule(2, succ, Input, _).

example(call(succ, 0), 1).
example(call(succ, 1), 2).

1 { 	choose(R, 1, 0, 0) : num_rules(R),
	choose(R, 1, 0, 1) : num_rules(R),
	choose(R, 1, 1, 0) : num_rules(R),
	choose(R, 1, 1, 1) : num_rules(R),
	choose(R, N, C) : num_rules(R) : num_generated(N) : expr_const(C),
	choose(R, N) : num_rules(R) : num_generated(N)} 2.

#minimise[choose(R, _, _, _)=R, choose(R, _)=R, choose(R, _, _)=R].

num_rules(1..2).
num_generated(0..47).

rule(R, succ, C1, C2) :- choose(R, 1, C1, C2).
rule(R, succ, N, C) :- input(call(succ, N)), choose(R, 2, C).
rule(R, succ, N, N) :- input(call(succ, N)), choose(R, 3).

rule(R, succ, N, add(N, C)) :- input(call(succ, N)), choose(R, 4, C).
rule(R, succ, N, mul(N, C)) :- input(call(succ, N)), choose(R, 5, C).
rule(R, succ, N, sub(N, C)) :- input(call(succ, N)), choose(R, 6, C).
rule(R, succ, N, sub(C, N)) :- input(call(succ, N)), choose(R, 7, C).
rule(R, succ, N, call(succ, N)) :- input(call(succ, N)), choose(R, 8).
