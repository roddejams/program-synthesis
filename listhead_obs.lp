%*

l_head xs :: Int -> Int
l_head [] = []
l_head x:xs = x

*%

rule(0, l_head, list(EMP), empty).
rule(1, l_head, list(N, list(xs)), N).

input(call(l_head, list(1, list(EMP)))).
