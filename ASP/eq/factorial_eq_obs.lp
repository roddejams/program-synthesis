%rule(1, f, (N0), 1) :- example(call(f, (N0)), _), const_number(N0).
%rule(2, f, N, mul(N, call(f, (N - 1)))) :- example(call(f, N), _), const_number(N).

expr_const(0;1).
num_rules(1..2).
num_match(1).

match2(f, (R + 1), Input) :- is_call(call(f, Input)), num_match(R).

%match2(f, 1, Input) :- Input == 0, rule(1, f, Input, _).
%match2(f, 2, Input) :- rule(2, f, Input, _).

example(call(f, 0), 1).
example(call(f, 1), 1).
example(call(f, 2), 2).
example(call(f, 3), 6).

rule(1, f, (N0), 1) :- is_call(call(f, (N0))), const_number(N0).
rule(2, f, N, mul(N, call(f, (N - 1)))) :- is_call(call(f, N)), const_number(N).
match2(f, 1, Input) :- Input == 0, rule(1, f, Input, _).
match2(f, 2, Input) :- rule(2, f, Input, _).
