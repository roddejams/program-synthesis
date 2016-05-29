expr_const(0;1).
num_rules(1..2).
num_match(1).

rule(1, mod, (X, Y), X - ((X / Y) * Y)) :- is_call(call(mod, (X, Y))), const_number(X), const_number(Y).
match2(mod, 1, (X, Y)) :- is_call(call(mod, (X, Y))).

match2(gcd, 1, (A, B)) :- B == 0, is_call(call(gcd, (A, B))).
match2(gcd, 2, (A, B)) :- is_call(call(gcd, (A, B))).

example(call(gcd, (1, 1)), 1).
example(call(gcd, (2, 1)), 1).
example(call(gcd, (4, 3)), 1).
example(call(gcd, (2, 6)), 2).
example(call(gcd, (9, 6)), 3).
example(call(gcd, (8, 12)), 4).