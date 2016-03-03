rule(1, tailFac, (0, R), R) :- input(call(tailFac, (0, R))).
rule(2, tailFac, (N, R), call(tailFac, (x1, x2))) :- input(call(tailFac, (N, R))).

where(x1, (N, R), sub(N, 1)) :- input(call(tailFac, (N, R))).
where(x2, (N, R), mul(N, R)) :- input(call(tailFac, (N, R))).

match2(tailFac, 1, (Arg1, Args)) :- Arg1 == 0, rule(1, tailFac, (Arg1, Args), _).
match2(tailFac, 2, (Arg1, Args)) :- rule(2, tailFac, (Arg1, Args), _).

input(call(tailFac, (3, 1))).

