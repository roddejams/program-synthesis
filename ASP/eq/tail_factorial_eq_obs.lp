rule(1, f, (0, N), N) :- example(call(f, (0, N)), _), const_number(N).
rule(2, f, (N, R), call(f, (sub(N, 1), mul(N, R)))) :- example(call(f, (N, R)), _), const_number(N), const_number(R).

expr_const(0;1).
num_rules(1..2).

match2(f, 1, (Arg1, Args)) :- Arg1 == 0, rule(1, f, (Arg1, Args), _).
match2(f, 2, (Arg1, Args)) :- rule(2, f, (Arg1, Args), _).

example(call(f, (0, 1)), 1).
example(call(f, (1, 1)), 1).
example(call(f, (2, 1)), 2).
example(call(f, (3, 1)), 6).
