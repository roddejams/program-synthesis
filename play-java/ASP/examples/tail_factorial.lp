%*

f 0 r = r
f n r = f (n - 1) (n * r)
*%

rule(1, f, (0, R), R) :- input(call(f, (0, R))).
rule(2, f, (N, R), call(f, (sub(N, 1), mul(N, R)))) :- input(call(f, (N, R))).

match2(f, 1, (Arg1, Args)) :- Arg1 == 0, rule(1, f, (Arg1, Args), _).
match2(f, 2, (Arg1, Args)) :- rule(2, f, (Arg1, Args), _).

input(call(f, (4, 1))).

