%*

fib x :: Int -> Int
fib 0 = 1
fib x = fib(x-1) + fib(x-2)

*%

rule(1, fib, 0, 1).
rule(2, fib, N, expr(add, call(fib, N-1), call(fib, N-2))) :- N != 0.

input(call(fib, 5)).
