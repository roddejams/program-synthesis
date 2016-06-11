#domain const_number(N0).
match_guard(f, 1, (N0)) :- N0 == C1, is_call(call(f, (N0))), choose_match(R, 1, C1).
match_guard(f, R, (N0)) :- is_call(call(f, (N0))), choose_match(R, 2).
rule(R, f, (N0), C1) :- is_call(call(f, (N0))), choose(R, 1, C1).
rule(R, f, (N0), N0) :- is_call(call(f, (N0))), choose(R, 2).
rule(R, f, (N0), (N0 * N0)) :- is_call(call(f, (N0))), choose(R, 3).
rule(R, f, (N0), (N0 + C1)) :- is_call(call(f, (N0))), choose(R, 4, C1).
rule(R, f, (N0), (N0 - C1)) :- is_call(call(f, (N0))), choose(R, 5, C1).
rule(R, f, (N0), (N0 * C1)) :- is_call(call(f, (N0))), choose(R, 6, C1).
rule(R, f, (N0), ((N0 * N0) + N0)) :- is_call(call(f, (N0))), choose(R, 7).
rule(R, f, (N0), ((N0 * N0) + C1)) :- is_call(call(f, (N0))), choose(R, 8, C1).
rule(R, f, (N0), ((N0 * N0) - N0)) :- is_call(call(f, (N0))), choose(R, 9).
rule(R, f, (N0), ((N0 * N0) - C1)) :- is_call(call(f, (N0))), choose(R, 10, C1).
rule(R, f, (N0), ((N0 * N0) * N0)) :- is_call(call(f, (N0))), choose(R, 11).
rule(R, f, (N0), ((N0 * N0) * C1)) :- is_call(call(f, (N0))), choose(R, 12, C1).
rule(R, f, (N0), ((N0 + C1) + N0)) :- is_call(call(f, (N0))), choose(R, 13, C1).
rule(R, f, (N0), ((N0 + C1) + C2)) :- is_call(call(f, (N0))), choose(R, 14, C1, C2).
rule(R, f, (N0), ((N0 + C1) - N0)) :- is_call(call(f, (N0))), choose(R, 15, C1).
rule(R, f, (N0), ((N0 + C1) - C2)) :- is_call(call(f, (N0))), choose(R, 16, C1, C2).
rule(R, f, (N0), ((N0 + C1) * N0)) :- is_call(call(f, (N0))), choose(R, 17, C1).
rule(R, f, (N0), ((N0 + C1) * C2)) :- is_call(call(f, (N0))), choose(R, 18, C1, C2).
rule(R, f, (N0), ((N0 - C1) + N0)) :- is_call(call(f, (N0))), choose(R, 19, C1).
rule(R, f, (N0), ((N0 - C1) + C2)) :- is_call(call(f, (N0))), choose(R, 20, C1, C2).
rule(R, f, (N0), ((N0 - C1) - N0)) :- is_call(call(f, (N0))), choose(R, 21, C1).
rule(R, f, (N0), ((N0 - C1) - C2)) :- is_call(call(f, (N0))), choose(R, 22, C1, C2).
rule(R, f, (N0), ((N0 - C1) * N0)) :- is_call(call(f, (N0))), choose(R, 23, C1).
rule(R, f, (N0), ((N0 - C1) * C2)) :- is_call(call(f, (N0))), choose(R, 24, C1, C2).
rule(R, f, (N0), ((N0 * C1) + N0)) :- is_call(call(f, (N0))), choose(R, 25, C1).
rule(R, f, (N0), ((N0 * C1) + C2)) :- is_call(call(f, (N0))), choose(R, 26, C1, C2).
rule(R, f, (N0), ((N0 * C1) - N0)) :- is_call(call(f, (N0))), choose(R, 27, C1).
rule(R, f, (N0), ((N0 * C1) - C2)) :- is_call(call(f, (N0))), choose(R, 28, C1, C2).
rule(R, f, (N0), ((N0 * C1) * N0)) :- is_call(call(f, (N0))), choose(R, 29, C1).
rule(R, f, (N0), ((N0 * C1) * C2)) :- is_call(call(f, (N0))), choose(R, 30, C1, C2).
rule(R, f, (N0), call(f, (N0 - C1))) :- is_call(call(f, (N0))), choose(R, 31, C1).
rule(R, f, (N0), call(f, (N0 * N0))) :- is_call(call(f, (N0))), choose(R, 32).
rule(R, f, (N0), call(f, (N0 + C1))) :- is_call(call(f, (N0))), choose(R, 33, C1).
rule(R, f, (N0), call(f, (N0 * C1))) :- is_call(call(f, (N0))), choose(R, 34, C1).
rule(R, f, (N0), add(call(f, (N0 - C1)), N0)) :- is_call(call(f, (N0))), choose(R, 35, C1).
rule(R, f, (N0), add(call(f, (N0 - C1)), C2)) :- is_call(call(f, (N0))), choose(R, 36, C1, C2).
rule(R, f, (N0), mul(call(f, (N0 - C1)), N0)) :- is_call(call(f, (N0))), choose(R, 37, C1).
rule(R, f, (N0), mul(call(f, (N0 - C1)), C2)) :- is_call(call(f, (N0))), choose(R, 38, C1, C2).
rule(R, f, (N0), sub(call(f, (N0 - C1)), N0)) :- is_call(call(f, (N0))), choose(R, 39, C1).
rule(R, f, (N0), sub(call(f, (N0 - C1)), C2)) :- is_call(call(f, (N0))), choose(R, 40, C1, C2).
rule(R, f, (N0), div(call(f, (N0 - C1)), N0)) :- is_call(call(f, (N0))), choose(R, 41, C1).
rule(R, f, (N0), div(call(f, (N0 - C1)), C2)) :- is_call(call(f, (N0))), choose(R, 42, C1, C2).
rule(R, f, (N0), add(call(f, (N0 * N0)), N0)) :- is_call(call(f, (N0))), choose(R, 43).
rule(R, f, (N0), add(call(f, (N0 * N0)), C1)) :- is_call(call(f, (N0))), choose(R, 44, C1).
rule(R, f, (N0), mul(call(f, (N0 * N0)), N0)) :- is_call(call(f, (N0))), choose(R, 45).
rule(R, f, (N0), mul(call(f, (N0 * N0)), C1)) :- is_call(call(f, (N0))), choose(R, 46, C1).
rule(R, f, (N0), sub(call(f, (N0 * N0)), N0)) :- is_call(call(f, (N0))), choose(R, 47).
rule(R, f, (N0), sub(call(f, (N0 * N0)), C1)) :- is_call(call(f, (N0))), choose(R, 48, C1).
rule(R, f, (N0), div(call(f, (N0 * N0)), N0)) :- is_call(call(f, (N0))), choose(R, 49).
rule(R, f, (N0), div(call(f, (N0 * N0)), C1)) :- is_call(call(f, (N0))), choose(R, 50, C1).
rule(R, f, (N0), add(call(f, (N0 + C1)), N0)) :- is_call(call(f, (N0))), choose(R, 51, C1).
rule(R, f, (N0), add(call(f, (N0 + C1)), C2)) :- is_call(call(f, (N0))), choose(R, 52, C1, C2).
rule(R, f, (N0), mul(call(f, (N0 + C1)), N0)) :- is_call(call(f, (N0))), choose(R, 53, C1).
rule(R, f, (N0), mul(call(f, (N0 + C1)), C2)) :- is_call(call(f, (N0))), choose(R, 54, C1, C2).
rule(R, f, (N0), sub(call(f, (N0 + C1)), N0)) :- is_call(call(f, (N0))), choose(R, 55, C1).
rule(R, f, (N0), sub(call(f, (N0 + C1)), C2)) :- is_call(call(f, (N0))), choose(R, 56, C1, C2).
rule(R, f, (N0), div(call(f, (N0 + C1)), N0)) :- is_call(call(f, (N0))), choose(R, 57, C1).
rule(R, f, (N0), div(call(f, (N0 + C1)), C2)) :- is_call(call(f, (N0))), choose(R, 58, C1, C2).
rule(R, f, (N0), add(call(f, (N0 * C1)), N0)) :- is_call(call(f, (N0))), choose(R, 59, C1).
rule(R, f, (N0), add(call(f, (N0 * C1)), C2)) :- is_call(call(f, (N0))), choose(R, 60, C1, C2).
rule(R, f, (N0), mul(call(f, (N0 * C1)), N0)) :- is_call(call(f, (N0))), choose(R, 61, C1).
rule(R, f, (N0), mul(call(f, (N0 * C1)), C2)) :- is_call(call(f, (N0))), choose(R, 62, C1, C2).
rule(R, f, (N0), sub(call(f, (N0 * C1)), N0)) :- is_call(call(f, (N0))), choose(R, 63, C1).
rule(R, f, (N0), sub(call(f, (N0 * C1)), C2)) :- is_call(call(f, (N0))), choose(R, 64, C1, C2).
rule(R, f, (N0), div(call(f, (N0 * C1)), N0)) :- is_call(call(f, (N0))), choose(R, 65, C1).
rule(R, f, (N0), div(call(f, (N0 * C1)), C2)) :- is_call(call(f, (N0))), choose(R, 66, C1, C2).
1 {
choose_match(R, 2),
choose_match(R, 1, C0) : expr_const(C0)
} 1 :- num_match(R).
1 {
choose(R, 2;3;7;9;11;32;43;45;47;49) ,

choose(R, 1;4;5;6;8;10;12;13;15;17;19;21;23;25;27;29;31;33;34;35;37;39;41;44;
          46;48;50;51;53;55;57;59;61;63;65;67, C0) : expr_const(C0) ,
          
choose(R, 14;16;18;20;22;24;26;28;30;36;38;40;42;52;54;56;58;60;62;64;66, C0, C1) : expr_const(C0) : expr_const(C1)
} 1 :- num_rules(R).
#minimise [choose(1, R)=R, choose(1, R, _)=R, choose(1, R, _, _)=R ].
