%*

tail [x] = x
tail x:xs = listLast xs
*%

rule(1, tail, (X, e), X) :- input(call(tail, (X, e))).
rule(2, tail, (X, Xs), call(tail, Xs)) :- input(call(tail, (X, Xs))).

match2(tail, 1, (X, e)) :- rule(1, tail, (X, e), _).
match2(tail, 2, (X, Xs)) :- rule(2, tail, (X, Xs), _).

input(call(tail, (1, (2, (3, (4, e)))))).
