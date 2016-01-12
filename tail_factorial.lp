%*

tailFac 0 r = r
tailFac n r = tailFac (n - 1) (n * r)
*%

rule(1, tailFac, (0, R), R).
rule(2, tailFac, (N, R), call(tailFac, (sub(N, 1), mul(N, R)))).

match(f, 1, (N, R)) :- N == 0, rule(1, f, (N, R), _).

input(call(tailFac, (3, 1))).

