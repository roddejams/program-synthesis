expr_const(0;1).
var(x).

fn_name(fac, 2).

max_depth(1).

match2(fac, 1, Input) :- Input == 0, rule(1, fac, Input, _).
match2(fac, 2, Input) :- rule(2, fac, Input, _).

example(call(fac, 0), 1).
example(call(fac, 1), 1).
%example(call(fac, 2), 2).
%example(call(fac, 3), 6).
