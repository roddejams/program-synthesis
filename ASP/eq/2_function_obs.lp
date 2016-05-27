expr_const(0;1;2).
num_rules(1..2).
num_match(1).

rule(1, fac, (N0), 1) :- is_call(call(fac, (N0))), const_number(N0).
rule(2, fac, N, mul(N, call(fac, (N - 1)))) :- is_call(call(fac, N)), const_number(N).
match2(fac, 1, Input) :- Input == 0, rule(1, fac, Input, _).
match2(fac, 2, Input) :- rule(2, fac, Input, _).

%rule(1, f, N, add(1, call(fac, N))) :- is_call(call(f, N)), const_number(N).
%match2(f, 1, Input) :- rule(1, f, Input, _).

match2(f, (R + 1), Input) :- is_call(call(f, Input)), num_match(R).

example(call(f, 0), 2).
example(call(f, 1), 2).
example(call(f, 2), 3).
example(call(f, 3), 7).
