expr_const(0;1).

match2(f, 1, Input) :- rule(1, f, Input, _).

example(call(f, (0, 0)), 0).
example(call(f, (0, 1)), 1).
example(call(f, (1, 1)), 2).

num_rules(1).
