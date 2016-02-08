expr_const(0;1).

match2(succ, 1, Input) :- Input == 0, rule(1, succ, Input, _).
match2(succ, 2, Input) :- rule(2, succ, Input, _).

example(call(succ, 0), 1).
example(call(succ, 1), 2).
example(call(succ, 2), 3).

num_rules(1..2).
