expr_const(0;1).

match2(f, 1, Input) :- Input == 0, rule(1, f, Input, _).
match2(f, 2, Input) :- rule(2, f, Input, _).

example(call(f, 0), 1).
example(call(f, 1), 2).
example(call(f, 2), 3).

num_rules(1..2).
