%%%%

%*

f x :: Int -> Int
f 0 = 1
f x = x * f(x-1)

*%

rule(1, f, 0, 1).
rule(2, f, N, expr(mul, N, call(f, N-1))) :- N != 0.

input(call(f, 3)).

