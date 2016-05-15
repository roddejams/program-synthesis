rule(R, f, N, C1) :- example(call(f, N), _), choose(R, 1, C1).
rule(R, f, N, N) :- example(call(f, N), _), choose(R, 2).

rule(R, f, N, add(N, N)) :- example(call(f, N), _), choose(R, 3).
rule(R, f, N, mul(N, N)) :- example(call(f, N), _), choose(R, 4).
rule(R, f, N, add(N, C1)) :- example(call(f, N), _), choose(R, 6, C1).
rule(R, f, N, mul(N, C1)) :- example(call(f, N), _), choose(R, 7, C1).
rule(R, f, N, sub(N, C1)) :- example(call(f, N), _), choose(R, 8, C1).
rule(R, f, N, sub(C1, N)) :- example(call(f, N), _), choose(R, 9, C1).
rule(R, f, N, call(f, C1)) :- example(call(f, N), _), choose(R, 10, C1).
rule(R, f, N, call(f, N)) :- example(call(f, N), _), choose(R, 11).

rule(R, f, N, add(N, add(N, N))) :- example(call(f, N), _), choose(R, 12).
rule(R, f, N, add(N, mul(N, N))) :- example(call(f, N), _), choose(R, 13).
rule(R, f, N, add(N, add(N, C1))) :- example(call(f, N), _), choose(R, 15, C1).
rule(R, f, N, add(N, mul(N, C1))) :- example(call(f, N), _), choose(R, 16, C1).
rule(R, f, N, add(N, sub(N, C1))) :- example(call(f, N), _), choose(R, 17, C1).
rule(R, f, N, add(N, sub(C1, N))) :- example(call(f, N), _), choose(R, 18, C1).
rule(R, f, N, add(N, call(f, C1))) :- example(call(f, N), _), choose(R, 19, C1).
rule(R, f, N, add(N, call(f, N))) :- example(call(f, N), _), choose(R, 20).

rule(R, f, N, add(C1, add(N, N))) :- example(call(f, N), _), choose(R, 21, C1).
rule(R, f, N, add(C1, mul(N, N))) :- example(call(f, N), _), choose(R, 22, C1).
rule(R, f, N, add(C1, call(f, N))) :- example(call(f, N), _), choose(R, 23, C1).

rule(R, f, N, mul(N, call(f, sub(N, C1)))) :- example(call(f, N), _), choose(R, 24, C1).

1 {
  choose(R, 2;3;4;5;11;12;13;14;20),
  choose(R, 1;6;7;8;9;10;12;15;16;17;18;19;21;22;23;24, C1) : expr_const(C1)
} 1 :- num_rules(R).

#minimise [choose(_, N)=N, choose(_, N, _)=N].
