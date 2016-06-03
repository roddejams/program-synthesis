%rule(1, f, (0, N), N) :- is_call(call(f, (0, N))), const_number(N).
%rule(2, f, (N, R), call(f, ((N - 1), (N * R)))) :- is_call(call(f, (N, R))), const_number(N), const_number(R).
%rule(2, f, (N0, N1), call(f, ((N0 - N1), (N0 + 0)))) :- is_call(call(f, (N0, N1))), const_number(N0), const_number(N1).

expr_const(0;1).
num_rules(1..2).
num_match(1..2).
%match2(f, 1, (Arg1, Args)) :- Arg1 == 0, rule(1, f, (Arg1, Args), _).
%match2(f, 2, (Arg1, Args)) :- rule(2, f, (Arg1, Args), _).

example(call(f, (0, 1)), 1).
example(call(f, (1, 1)), 1).
example(call(f, (2, 1)), 2).
example(call(f, (3, 1)), 6).
