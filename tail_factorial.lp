%*

tailFac 0 r = r
tailFac n r = tailFac (n - 1) (n * r)
*%

rule(1, tailFac, (0, R), R) :- input(call(tailFac, (0, R))).
rule(2, tailFac, (N, R), call(tailFac, (sub(N, 1), mul(N, R)))) :- input(call(tailFac, (N, R))).

match2(f, 1, (Arg1, Args)) :- Arg1 == 0, rule(1, f, (Arg1, Args), _).

input(call(tailFac, (8, 1))).

