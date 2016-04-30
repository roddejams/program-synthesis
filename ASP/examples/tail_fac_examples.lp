expr_const(0;1).

num_rules(1..2).

match2(f, 1, (Arg1, Args)) :- Arg1 == 0, input(call(f, (Arg1, Args))).
match2(f, 2, (Arg1, Args)) :- input(call(f, (Arg1, Args))).

example(call(f, (0, 1)), 1).
example(call(f, (1, 1)), 1).
example(call(f, (2, 1)), 2).
example(call(f, (3, 1)), 6).
example(call(f, (2, 3)), 6).
