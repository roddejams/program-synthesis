%*

l_head xs :: Int -> Int
l_head x:xs = x

*%

rule(1, l_head, (N, Ns), N).

input(call(l_head, (1, (9, (4, Emp))))).
