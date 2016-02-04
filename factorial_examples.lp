expr_const(0;1).

fn_name(f, 2).

max_depth(1).

match2(f, 1, Input) :- Input == 0, rule(1, f, Input, _).
match2(f, 2, Input) :- rule(2, f, Input, _).

example(call(f, 0), 1).
example(call(f, 1), 1).
example(call(f, 2), 2).
%example(call(fac, 3), 6).

%%TO BE COMPUTED BY PREPROCESSOR%%
1 { 	choose(R, 1, 0, 0) : num_rules(R),
	choose(R, 1, 0, 1) : num_rules(R),
	choose(R, 1, 1, 0) : num_rules(R),
	choose(R, 1, 1, 1) : num_rules(R),
	choose(R, N, C) : num_rules(R) : num_generated(N) : expr_const(C),
	choose(R, N) : num_rules(R) : num_generated(N)} 2.

#minimise[choose(R, _, _, _)=R, choose(R, _)=R, choose(R, _, _)=R].

num_rules(1..2).
num_generated(0..47).

rule(R, f, C1, C2) :- choose(R, 1, C1, C2).
rule(R, f, N, C) :- input(call(f, N)), choose(R, 2, C).
rule(R, f, N, N) :- input(call(f, N)), choose(R, 0).

rule(R, f, N, add(N, C)) :- input(call(f, N)), choose(R, 3, C).
rule(R, f, N, mul(N, C)) :- input(call(f, N)), choose(R, 4, C).
rule(R, f, N, sub(N, C)) :- input(call(f, N)), choose(R, 5, C).
rule(R, f, N, sub(C, N)) :- input(call(f, N)), choose(R, 6, C).
rule(R, f, N, call(f, N)) :- input(call(f, N)), choose(R, 7).

%*
rule(R, f, N, add(C, add(N, C))) :- input(call(f, N)), choose(8, C), num_rules(R).
rule(R, f, N, add(C, mul(N, C))) :- input(call(f, N)), choose(9, C), num_rules(R).
rule(R, f, N, add(C, sub(N, C))) :- input(call(f, N)), choose(10, C), num_rules(R).
rule(R, f, N, add(C, sub(C, N))) :- input(call(f, N)), choose(11, C), num_rules(R).
rule(R, f, N, add(N, call(f, N))) :- input(call(f, N)), choose(12), num_rules(R).
rule(R, f, N, add(N, add(N, C))) :- input(call(f, N)), choose(13, C), num_rules(R).
rule(R, f, N, add(N, mul(N, C))) :- input(call(f, N)), choose(14, C), num_rules(R).
rule(R, f, N, add(N, sub(N, C))) :- input(call(f, N)), choose(15, C), num_rules(R).
rule(R, f, N, add(N, sub(C, N))) :- input(call(f, N)), choose(16, C), num_rules(R).
rule(R, f, N, add(N, call(f, N))) :- input(call(f, N)), choose(17), num_rules(R).

rule(R, f, N, add(C, add(N, C))) :- input(call(f, N)), choose(38, C), num_rules(R).
rule(R, f, N, add(C, mul(N, C))) :- input(call(f, N)), choose(39, C), num_rules(R).
rule(R, f, N, add(C, sub(N, C))) :- input(call(f, N)), choose(40, C), num_rules(R).
rule(R, f, N, add(C, sub(C, N))) :- input(call(f, N)), choose(41, C), num_rules(R).
rule(R, f, N, add(N, call(f, N))) :- input(call(f, N)), choose(42), num_rules(R).
rule(R, f, N, add(N, add(N, C))) :- input(call(f, N)), choose(43, C), num_rules(R).
rule(R, f, N, add(N, mul(N, C))) :- input(call(f, N)), choose(44, C), num_rules(R).
rule(R, f, N, add(N, sub(N, C))) :- input(call(f, N)), choose(45, C), num_rules(R).
rule(R, f, N, add(N, sub(C, N))) :- input(call(f, N)), choose(46, C), num_rules(R).
rule(R, f, N, add(N, call(f, N))) :- input(call(f, N)), choose(47), num_rules(R).

rule(R, f, N, mul(C, add(N, C))) :- input(call(f, N)), choose(18, C), num_rules(R).
rule(R, f, N, mul(C, mul(N, C))) :- input(call(f, N)), choose(19, C), num_rules(R).
rule(R, f, N, mul(C, sub(N, C))) :- input(call(f, N)), choose(20, C), num_rules(R).
rule(R, f, N, mul(C, sub(C, N))) :- input(call(f, N)), choose(21, C), num_rules(R).
rule(R, f, N, mul(N, call(f, N))) :- input(call(f, N)), choose(22), num_rules(R).
rule(R, f, N, mul(N, add(N, C))) :- input(call(f, N)), choose(23, C), num_rules(R).
rule(R, f, N, mul(N, mul(N, C))) :- input(call(f, N)), choose(24, C), num_rules(R).
rule(R, f, N, mul(N, sub(N, C))) :- input(call(f, N)), choose(25, C), num_rules(R).
rule(R, f, N, mul(N, sub(C, N))) :- input(call(f, N)), choose(26, C), num_rules(R).
rule(R, f, N, mul(N, call(f, N))) :- input(call(f, N)), choose(27), num_rules(R).

rule(R, f, N, mul(C, add(N, C))) :- input(call(f, N)), choose(28, C), num_rules(R).
rule(R, f, N, mul(C, mul(N, C))) :- input(call(f, N)), choose(29, C), num_rules(R).
rule(R, f, N, mul(C, sub(N, C))) :- input(call(f, N)), choose(30, C), num_rules(R).
rule(R, f, N, mul(C, sub(C, N))) :- input(call(f, N)), choose(31, C), num_rules(R).
rule(R, f, N, mul(N, call(f, N))) :- input(call(f, N)), choose(32), num_rules(R).
rule(R, f, N, mul(N, add(N, C))) :- input(call(f, N)), choose(33, C), num_rules(R).
rule(R, f, N, mul(N, mul(N, C))) :- input(call(f, N)), choose(34, C), num_rules(R).
rule(R, f, N, mul(N, sub(N, C))) :- input(call(f, N)), choose(35, C), num_rules(R).
rule(R, f, N, mul(N, sub(C, N))) :- input(call(f, N)), choose(36, C), num_rules(R).
rule(R, f, N, mul(N, call(f, N))) :- input(call(f, N)), choose(37), num_rules(R).
*%
%%%%%%
