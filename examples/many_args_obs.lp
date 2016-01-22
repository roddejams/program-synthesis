rule(1, sum, (N, (R, V)), add(N, add(R, V))) :- input(call(sum, (N, (R, V)))).

input(call(sum, (1, (2, 3)))).

