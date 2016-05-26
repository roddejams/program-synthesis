expr_const(0;1).
num_rules(1..2).
num_match(1).

rule(1, f, (N0), 1) :- is_call(call(f, (N0))), const_number(N0).
rule(2, f, N, mul(N, call(f, (N - 1)))) :- is_call(call(f, N)), const_number(N).
match2(f, 1, Input) :- Input == 0, rule(1, f, Input, _).
match2(f, 2, Input) :- rule(2, f, Input, _).

rule(1, fac2, N, add(1, call(f, N))) :- is_call(call(fac2, N)), const_number(N).
match2(fac2, 1, Input) :- rule(1, fac2, Input, _).

example(call(fac2, 0), 2).
example(call(fac2, 1), 2).
example(call(fac2, 2), 3).
example(call(fac2, 3), 7).
