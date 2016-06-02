%%%%

%*

f x :: Int -> Int
f 0 = 1
f x = x * f(x-1)

*%

rule(1, f, 0, 1) :- input(call(f, 0)).
rule(2, f, N, mul(N, call(f, sub(N,1)))) :- input(call(f, N)).

match2(f, 1, Input) :- Input == 0, rule(1, f, Input, _).
match2(f, 2, Input) :- rule(2, f, Input, _).

input(call(f, 8)).
