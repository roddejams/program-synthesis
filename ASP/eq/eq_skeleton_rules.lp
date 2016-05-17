#domain const_number(N0).

rule(R, f, (N0), C1) :- example(call(f, (N0)), _), choose(R, 1, C1).
rule(R, f, (N0), N0) :- example(call(f, (N0)), _), choose(R, 2).
rule(R, f, (N0), mul(N0, N0)) :- example(call(f, (N0)), _), choose(R, 3).
rule(R, f, (N0), add(N0, C1)) :- example(call(f, (N0)), _), choose(R, 4, C1).
rule(R, f, (N0), mul(N0, C1)) :- example(call(f, (N0)), _), choose(R, 5, C1).
rule(R, f, (N0), sub(N0, C1)) :- example(call(f, (N0)), _), choose(R, 6, C1).
rule(R, f, (N0), add(C1, mul(N0, C2))) :- example(call(f, (N0)), _), choose(R, 7, C1, C2).
rule(R, f, (N0), mul(N0, mul(N0, N0))) :- example(call(f, (N0)), _), choose(R, 8).
rule(R, f, (N0), mul(C1, mul(N0, N0))) :- example(call(f, (N0)), _), choose(R, 9, C1).
rule(R, f, (N0), mul(N0, add(N0, C1))) :- example(call(f, (N0)), _), choose(R, 11, C1).
rule(R, f, (N0), mul(C2, add(N0, C1))) :- example(call(f, (N0)), _), choose(R, 12, C1, C2).
rule(R, f, (N0), mul(N0, mul(N0, C1))) :- example(call(f, (N0)), _), choose(R, 14, C1).
rule(R, f, (N0), mul(C2, mul(N0, C1))) :- example(call(f, (N0)), _), choose(R, 15, C1, C2).
rule(R, f, (N0), mul(N0, sub(N0, C1))) :- example(call(f, (N0)), _), choose(R, 17, C1).
rule(R, f, (N0), mul(C2, sub(N0, C1))) :- example(call(f, (N0)), _), choose(R, 18, C1, C2).
rule(R, f, (N0), call(f, mul(N0, N0))) :- example(call(f, (N0)), _), choose(R, 10).
rule(R, f, (N0), call(f, add(N0, C1))) :- example(call(f, (N0)), _), choose(R, 13, C1).
rule(R, f, (N0), call(f, mul(N0, C1))) :- example(call(f, (N0)), _), choose(R, 16, C1).
rule(R, f, (N0), call(f, sub(N0, C1))) :- example(call(f, (N0)), _), choose(R, 19, C1).
rule(R, f, (N0), call(f, add(C1, mul(N0, C2)))) :- example(call(f, (N0)), _), choose(R, 20, C1, C2).
rule(R, f, (N0), call(f, mul(N0, mul(N0, N0)))) :- example(call(f, (N0)), _), choose(R, 21).
rule(R, f, (N0), call(f, mul(C1, mul(N0, N0)))) :- example(call(f, (N0)), _), choose(R, 22, C1).
rule(R, f, (N0), call(f, mul(N0, add(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 23, C1).
rule(R, f, (N0), call(f, mul(C2, add(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 24, C1, C2).
rule(R, f, (N0), call(f, mul(N0, mul(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 25, C1).
rule(R, f, (N0), call(f, mul(C2, mul(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 26, C1, C2).
rule(R, f, (N0), call(f, mul(N0, sub(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 27, C1).
rule(R, f, (N0), call(f, mul(C2, sub(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 28, C1, C2).
rule(R, f, (N0), add(N0, call(f, mul(N0, N0)))) :- example(call(f, (N0)), _), choose(R, 29).
rule(R, f, (N0), add(C1, call(f, mul(N0, N0)))) :- example(call(f, (N0)), _), choose(R, 30, C1).
rule(R, f, (N0), mul(N0, call(f, mul(N0, N0)))) :- example(call(f, (N0)), _), choose(R, 31).
rule(R, f, (N0), mul(C1, call(f, mul(N0, N0)))) :- example(call(f, (N0)), _), choose(R, 32, C1).
rule(R, f, (N0), sub(N0, call(f, mul(N0, N0)))) :- example(call(f, (N0)), _), choose(R, 33).
rule(R, f, (N0), sub(C1, call(f, mul(N0, N0)))) :- example(call(f, (N0)), _), choose(R, 34, C1).
rule(R, f, (N0), add(N0, call(f, add(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 35, C1).
rule(R, f, (N0), add(C2, call(f, add(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 36, C1, C2).
rule(R, f, (N0), mul(N0, call(f, add(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 37, C1).
rule(R, f, (N0), mul(C2, call(f, add(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 38, C1, C2).
rule(R, f, (N0), sub(N0, call(f, add(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 39, C1).
rule(R, f, (N0), sub(C2, call(f, add(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 40, C1, C2).
rule(R, f, (N0), add(N0, call(f, mul(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 41, C1).
rule(R, f, (N0), add(C2, call(f, mul(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 42, C1, C2).
rule(R, f, (N0), mul(N0, call(f, mul(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 43, C1).
rule(R, f, (N0), mul(C2, call(f, mul(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 44, C1, C2).
rule(R, f, (N0), sub(N0, call(f, mul(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 45, C1).
rule(R, f, (N0), sub(C2, call(f, mul(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 46, C1, C2).
rule(R, f, (N0), add(N0, call(f, sub(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 47, C1).
rule(R, f, (N0), add(C2, call(f, sub(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 48, C1, C2).
rule(R, f, (N0), mul(N0, call(f, sub(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 49, C1).
rule(R, f, (N0), mul(C2, call(f, sub(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 50, C1, C2).
rule(R, f, (N0), sub(N0, call(f, sub(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 51, C1).
rule(R, f, (N0), sub(C2, call(f, sub(N0, C1)))) :- example(call(f, (N0)), _), choose(R, 52, C1, C2).
1 {
choose(R, 2;3;8;10;21;29;31;33) ,
choose(R, 1;4;5;6;9;11;14;17;13;16;19;22;23;25;27;30;32;34;35;37;39;41;43;45;47;49;51, C0) : expr_const(C0) ,
choose(R, 7;12;15;18;20;24;26;28;36;38;40;42;44;46;48;50;52, C0, C1) : expr_const(C0) : expr_const(C1)
} 1 :- num_rules(R).

#minimise [choose(_, N)=N, choose(_, N, _)=N, choose(_, N, _, _)=N ].
