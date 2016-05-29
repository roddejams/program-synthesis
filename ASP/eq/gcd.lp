%*
gcd x y
	| x == y = x
	| x > y  = gcd(x - y, y)
	| x < y  = gcd(x, y - x)

*%
expr_const(0;1).
num_rules(1..3).
%num_match(1..3).

%rule(1, gcd, (A, B), A) :- is_call(call(gcd, (A, B))), const_number(A), const_number(B).
%rule(2, gcd, (A, B), call(gcd, (A - B, B))) :- is_call(call(gcd, (A, B))), const_number(A), const_number(B).
%rule(3, gcd, (A, B), call(gcd, (A, B - A))) :- is_call(call(gcd, (A, B))), const_number(A), const_number(B).

%match_guard(gcd, 1, (A, B)) :- A == B, is_call(call(gcd, (A, B))).
%match_guard(gcd, 2, (A, B)) :- A > B, is_call(call(gcd, (A, B))).
%match_guard(gcd, 3, (A, B)) :- A < B, is_call(call(gcd, (A, B))).

%rule(1, gcd, (A, B), A) :- input(call(gcd, (A, B))).

%rule(2, gcd, (A, B), call(gcd, (x1, B))) :- input(call(gcd, (A, B))).
%where(x1, (A, B), sub(A, B)) :- input(call(gcd, (A, B))).

%rule(3, gcd, (A, B), call(gcd, (A, x2))) :- input(call(gcd, (A, B))).
%where(x2, (A, B), sub(B, A)) :- input(call(gcd, (A, B))).

match_guard(gcd, 1, (A, B)) :- A == B, input(call(gcd, (A, B))).
match_guard(gcd, 2, (A, B)) :- A > B, input(call(gcd, (A, B))).
match_guard(gcd, 3, (A, B)) :- A < B, input(call(gcd, (A, B))).

example(call(gcd, (1, 1)), 1).
example(call(gcd, (2, 1)), 1).
example(call(gcd, (4, 3)), 1).
example(call(gcd, (3, 6)), 3).
example(call(gcd, (9, 6)), 3).
example(call(gcd, (2, 6)), 2).
example(call(gcd, (9, 3)), 3).