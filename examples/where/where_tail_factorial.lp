rule(1, tailFac, (0, R), R) :- input(call(tailFac, (0, R))).
rule(2, tailFac, (N, R), x1) :- input(call(tailFac, (N, R))).

where(x1, (N, R), call(tailFac, (x2, x3))) :- input(call(tailFac, (N, R))).
where(x2, (N, R), sub(N, 1)) :- input(call(tailFac, (N, R))).
where(x3, (N, R), mul(N, R)) :- input(call(tailFac, (N, R))).

match2(tailFac, 1, (Arg1, Args)) :- Arg1 == 0, rule(1, tailFac, (Arg1, Args), _).
match2(tailFac, 2, (Arg1, Args)) :- rule(2, tailFac, (Arg1, Args), _).

input(call(tailFac, (4, 1))).

