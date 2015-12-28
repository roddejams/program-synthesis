%%%%

%*

f x :: Int -> Int
f 0 = 1
f x = x * f(x-1)

*%

rule(1, f, 0, 1).
rule(2, f, N, mul(N, call(f, sub(N, 1)))).

match(f, 1, Input) :- Input == 0, rule(1, f, Input, _).

input(call(f, 3)).

