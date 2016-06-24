expr_const(0;1;2).
num_rules(1..2).
num_match(1..2).

rule(1, factorial, (N0), 1) :- is_call(call(factorial, (N0))), const_number(N0).
rule(2, factorial, N, mul(N, call(factorial, (N - 1)))) :- is_call(call(factorial, N)), const_number(N).
match_guard(factorial, 1, Input) :- Input == 0, rule(1, factorial, Input, _).
match_guard(factorial, 2, Input) :- rule(2, factorial, Input, _).

%rule(1, f, N, add(1, call(factorial, N))) :- is_call(call(f, N)), const_number(N).
%match2(f, 1, Input) :- rule(1, f, Input, _).

%match2(f, (R + 1), Input) :- is_call(call(f, Input)), num_match(R).

example(call(succ, 0), 2).
example(call(succ, 1), 2).
example(call(succ, 2), 3).
example(call(succ, 3), 7).
