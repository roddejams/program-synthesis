expr_const(0;1).
num_rules(1..2).
num_match(1).
match_guard(f, 2, (Arg1, Args)) :- input(call(f, (Arg1, Args))).
example(call(f, (0, 1)), 1).
example(call(f, (1, 1)), 1).
example(call(f, (2, 1)), 2).
example(call(f, (3, 1)), 6).
example(call(f, (2, 3)), 6).
