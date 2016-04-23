rule(1, f, (0, R), R) :- input(call(f, (0, R))).
rule(2, f, (N, R), call(f, (x1, x2))) :- input(call(f, (N, R))).

where(x1, (N, R), sub(N, 1)) :- input(call(f, (N, R))).
where(x2, (N, R), mul(N, R)) :- input(call(f, (N, R))).

match2(f, 1, (Arg1, Args)) :- Arg1 == 0, rule(1, f, (Arg1, Args), _).
match2(f, 2, (Arg1, Args)) :- rule(2, f, (Arg1, Args), _).

input(call(f, (2, 1))).

