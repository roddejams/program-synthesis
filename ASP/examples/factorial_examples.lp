expr_const(0;1).

num_rules(1..2).

match_guard(f, 1, Input) :- Input == 0, rule(1, f, Input, _).
match_guard(f, 2, Input) :- rule(2, f, Input, _).

example(call(f, 0), 1).
example(call(f, 1), 1).
example(call(f, 2), 2).
example(call(f, 3), 6).
