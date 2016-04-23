%*

fib x :: Int -> Int
fib 0 = 1
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

*%

rule(1, fib, 0, 1) :- input(call(fib, 0)).
rule(2, fib, 1, 1) :- input(call(fib, 1)).
rule(3, fib, N, add(call(fib, sub(N, 1)), call(fib, sub(N, 2)))) :- input(call(fib, N)).

match(fib, 1, Input) :- Input == 0, rule(1, fib, Input, _).
match(fib, 2, Input) :- Input == 1, rule(2, fib, Input, _).

input(call(fib, 10)).
