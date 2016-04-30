expr_const(0..2).

num_rules(1..3).

match2(f, 1, Input) :- Input == 0, rule(1, f, Input, _).
match2(f, 2, Input) :- Input == 1, rule(2, f, Input, _).
match2(f, 3, Input) :- rule(3, f, Input, _).

example(call(f, 1), 1).
example(call(f, 2), 1).
example(call(f, 3), 2).
example(call(f, 4), 3).
example(call(f, 5), 5).
example(call(f, 6), 8).
