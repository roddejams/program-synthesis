#domain const_number(N0).
#domain const_number(N1).
match_guard(div, R, (N0, N1)) :- is_call(call(div, (N0, N1))), choose_match(R, 1).
match_guard(div, R, (N0, N1)) :- N0 == C1, is_call(call(div, (N0, N1))), choose_match(R, 2, C1).
match_guard(div, R, (N0, N1)) :- N1 == C1, is_call(call(div, (N0, N1))), choose_match(R, 3, C1).
match_guard(div, R, (N0, N1)) :- N0 == N1, is_call(call(div, (N0, N1))), choose_match(R, 4).
match_guard(div, R, (N0, N1)) :- N0 < N1, is_call(call(div, (N0, N1))), choose_match(R, 5).
match_guard(div, R, (N0, N1)) :- N1 == N0, is_call(call(div, (N0, N1))), choose_match(R, 6).
match_guard(div, R, (N0, N1)) :- N1 < N0, is_call(call(div, (N0, N1))), choose_match(R, 7).
rule(R, div, (N0, N1), C1) :- is_call(call(div, (N0, N1))), choose(R, 1, C1).
rule(R, div, (N0, N1), N0) :- is_call(call(div, (N0, N1))), choose(R, 2).
rule(R, div, (N0, N1), N1) :- is_call(call(div, (N0, N1))), choose(R, 3).
rule(R, div, (N0, N1), (N0 + C1)) :- is_call(call(div, (N0, N1))), choose(R, 4, C1).
rule(R, div, (N0, N1), (N0 - C1)) :- is_call(call(div, (N0, N1))), choose(R, 5, C1).
rule(R, div, (N0, N1), (N1 + C1)) :- is_call(call(div, (N0, N1))), choose(R, 6, C1).
rule(R, div, (N0, N1), (N1 - C1)) :- is_call(call(div, (N0, N1))), choose(R, 7, C1).
rule(R, div, (N0, N1), (N0 + N1)) :- is_call(call(div, (N0, N1))), choose(R, 8).
rule(R, div, (N0, N1), (N0 - N1)) :- is_call(call(div, (N0, N1))), choose(R, 9).
rule(R, div, (N0, N1), ((N0 + C1) + N0)) :- is_call(call(div, (N0, N1))), choose(R, 10, C1).
rule(R, div, (N0, N1), ((N0 + C1) + C2)) :- is_call(call(div, (N0, N1))), choose(R, 11, C1, C2).
rule(R, div, (N0, N1), ((N0 + C1) + N1)) :- is_call(call(div, (N0, N1))), choose(R, 12, C1).
rule(R, div, (N0, N1), ((N0 + C1) + C2)) :- is_call(call(div, (N0, N1))), choose(R, 13, C1, C2).
rule(R, div, (N0, N1), ((N0 + C1) - N0)) :- is_call(call(div, (N0, N1))), choose(R, 14, C1).
rule(R, div, (N0, N1), ((N0 + C1) - C2)) :- is_call(call(div, (N0, N1))), choose(R, 15, C1, C2).
rule(R, div, (N0, N1), ((N0 + C1) - N1)) :- is_call(call(div, (N0, N1))), choose(R, 16, C1).
rule(R, div, (N0, N1), ((N0 + C1) - C2)) :- is_call(call(div, (N0, N1))), choose(R, 17, C1, C2).
rule(R, div, (N0, N1), ((N0 - C1) + N0)) :- is_call(call(div, (N0, N1))), choose(R, 18, C1).
rule(R, div, (N0, N1), ((N0 - C1) + C2)) :- is_call(call(div, (N0, N1))), choose(R, 19, C1, C2).
rule(R, div, (N0, N1), ((N0 - C1) + N1)) :- is_call(call(div, (N0, N1))), choose(R, 20, C1).
rule(R, div, (N0, N1), ((N0 - C1) + C2)) :- is_call(call(div, (N0, N1))), choose(R, 21, C1, C2).
rule(R, div, (N0, N1), ((N0 - C1) - N0)) :- is_call(call(div, (N0, N1))), choose(R, 22, C1).
rule(R, div, (N0, N1), ((N0 - C1) - C2)) :- is_call(call(div, (N0, N1))), choose(R, 23, C1, C2).
rule(R, div, (N0, N1), ((N0 - C1) - N1)) :- is_call(call(div, (N0, N1))), choose(R, 24, C1).
rule(R, div, (N0, N1), ((N0 - C1) - C2)) :- is_call(call(div, (N0, N1))), choose(R, 25, C1, C2).
rule(R, div, (N0, N1), ((N1 + C1) + N0)) :- is_call(call(div, (N0, N1))), choose(R, 26, C1).
rule(R, div, (N0, N1), ((N1 + C1) + C2)) :- is_call(call(div, (N0, N1))), choose(R, 27, C1, C2).
rule(R, div, (N0, N1), ((N1 + C1) + N1)) :- is_call(call(div, (N0, N1))), choose(R, 28, C1).
rule(R, div, (N0, N1), ((N1 + C1) + C2)) :- is_call(call(div, (N0, N1))), choose(R, 29, C1, C2).
rule(R, div, (N0, N1), ((N1 + C1) - N0)) :- is_call(call(div, (N0, N1))), choose(R, 30, C1).
rule(R, div, (N0, N1), ((N1 + C1) - C2)) :- is_call(call(div, (N0, N1))), choose(R, 31, C1, C2).
rule(R, div, (N0, N1), ((N1 + C1) - N1)) :- is_call(call(div, (N0, N1))), choose(R, 32, C1).
rule(R, div, (N0, N1), ((N1 + C1) - C2)) :- is_call(call(div, (N0, N1))), choose(R, 33, C1, C2).
rule(R, div, (N0, N1), ((N1 - C1) + N0)) :- is_call(call(div, (N0, N1))), choose(R, 34, C1).
rule(R, div, (N0, N1), ((N1 - C1) + C2)) :- is_call(call(div, (N0, N1))), choose(R, 35, C1, C2).
rule(R, div, (N0, N1), ((N1 - C1) + N1)) :- is_call(call(div, (N0, N1))), choose(R, 36, C1).
rule(R, div, (N0, N1), ((N1 - C1) + C2)) :- is_call(call(div, (N0, N1))), choose(R, 37, C1, C2).
rule(R, div, (N0, N1), ((N1 - C1) - N0)) :- is_call(call(div, (N0, N1))), choose(R, 38, C1).
rule(R, div, (N0, N1), ((N1 - C1) - C2)) :- is_call(call(div, (N0, N1))), choose(R, 39, C1, C2).
rule(R, div, (N0, N1), ((N1 - C1) - N1)) :- is_call(call(div, (N0, N1))), choose(R, 40, C1).
rule(R, div, (N0, N1), ((N1 - C1) - C2)) :- is_call(call(div, (N0, N1))), choose(R, 41, C1, C2).
rule(R, div, (N0, N1), ((N0 + N1) + N0)) :- is_call(call(div, (N0, N1))), choose(R, 42).
rule(R, div, (N0, N1), ((N0 + N1) + C1)) :- is_call(call(div, (N0, N1))), choose(R, 43, C1).
rule(R, div, (N0, N1), ((N0 + N1) + N1)) :- is_call(call(div, (N0, N1))), choose(R, 44).
rule(R, div, (N0, N1), ((N0 + N1) + C1)) :- is_call(call(div, (N0, N1))), choose(R, 45, C1).
rule(R, div, (N0, N1), ((N0 + N1) - N0)) :- is_call(call(div, (N0, N1))), choose(R, 46).
rule(R, div, (N0, N1), ((N0 + N1) - C1)) :- is_call(call(div, (N0, N1))), choose(R, 47, C1).
rule(R, div, (N0, N1), ((N0 + N1) - N1)) :- is_call(call(div, (N0, N1))), choose(R, 48).
rule(R, div, (N0, N1), ((N0 + N1) - C1)) :- is_call(call(div, (N0, N1))), choose(R, 49, C1).
rule(R, div, (N0, N1), ((N0 - N1) + N0)) :- is_call(call(div, (N0, N1))), choose(R, 50).
rule(R, div, (N0, N1), ((N0 - N1) + C1)) :- is_call(call(div, (N0, N1))), choose(R, 51, C1).
rule(R, div, (N0, N1), ((N0 - N1) + N1)) :- is_call(call(div, (N0, N1))), choose(R, 52).
rule(R, div, (N0, N1), ((N0 - N1) + C1)) :- is_call(call(div, (N0, N1))), choose(R, 53, C1).
rule(R, div, (N0, N1), ((N0 - N1) - N0)) :- is_call(call(div, (N0, N1))), choose(R, 54).
rule(R, div, (N0, N1), ((N0 - N1) - C1)) :- is_call(call(div, (N0, N1))), choose(R, 55, C1).
rule(R, div, (N0, N1), ((N0 - N1) - N1)) :- is_call(call(div, (N0, N1))), choose(R, 56).
rule(R, div, (N0, N1), ((N0 - N1) - C1)) :- is_call(call(div, (N0, N1))), choose(R, 57, C1).
rule(R, div, (N0, N1), call(div, ((N0 - N1), (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 58).
rule(R, div, (N0, N1), call(div, ((N0 - N1), N0))) :- is_call(call(div, (N0, N1))), choose(R, 59).
rule(R, div, (N0, N1), call(div, ((N0 - N1), N1))) :- is_call(call(div, (N0, N1))), choose(R, 60).
rule(R, div, (N0, N1), call(div, ((N0 - N1), C1))) :- is_call(call(div, (N0, N1))), choose(R, 61, C1).
rule(R, div, (N0, N1), call(div, ((N0 - N1), (N0 - C1)))) :- is_call(call(div, (N0, N1))), choose(R, 62, C1).
rule(R, div, (N0, N1), call(div, ((N0 - N1), (N0 + C1)))) :- is_call(call(div, (N0, N1))), choose(R, 63, C1).
rule(R, div, (N0, N1), call(div, ((N0 - N1), (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 64).
rule(R, div, (N0, N1), call(div, ((N0 - N1), (N1 + C1)))) :- is_call(call(div, (N0, N1))), choose(R, 65, C1).
rule(R, div, (N0, N1), call(div, ((N0 - N1), (N1 - C1)))) :- is_call(call(div, (N0, N1))), choose(R, 66, C1).
rule(R, div, (N0, N1), call(div, (N0, (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 67).
rule(R, div, (N0, N1), call(div, (N0, N0))) :- is_call(call(div, (N0, N1))), choose(R, 68).
rule(R, div, (N0, N1), call(div, (N0, N1))) :- is_call(call(div, (N0, N1))), choose(R, 69).
rule(R, div, (N0, N1), call(div, (N0, C1))) :- is_call(call(div, (N0, N1))), choose(R, 70, C1).
rule(R, div, (N0, N1), call(div, (N0, (N0 - C1)))) :- is_call(call(div, (N0, N1))), choose(R, 71, C1).
rule(R, div, (N0, N1), call(div, (N0, (N0 + C1)))) :- is_call(call(div, (N0, N1))), choose(R, 72, C1).
rule(R, div, (N0, N1), call(div, (N0, (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 73).
rule(R, div, (N0, N1), call(div, (N0, (N1 + C1)))) :- is_call(call(div, (N0, N1))), choose(R, 74, C1).
rule(R, div, (N0, N1), call(div, (N0, (N1 - C1)))) :- is_call(call(div, (N0, N1))), choose(R, 75, C1).
rule(R, div, (N0, N1), call(div, (N1, (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 76).
rule(R, div, (N0, N1), call(div, (N1, N0))) :- is_call(call(div, (N0, N1))), choose(R, 77).
rule(R, div, (N0, N1), call(div, (N1, N1))) :- is_call(call(div, (N0, N1))), choose(R, 78).
rule(R, div, (N0, N1), call(div, (N1, C1))) :- is_call(call(div, (N0, N1))), choose(R, 79, C1).
rule(R, div, (N0, N1), call(div, (N1, (N0 - C1)))) :- is_call(call(div, (N0, N1))), choose(R, 80, C1).
rule(R, div, (N0, N1), call(div, (N1, (N0 + C1)))) :- is_call(call(div, (N0, N1))), choose(R, 81, C1).
rule(R, div, (N0, N1), call(div, (N1, (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 82).
rule(R, div, (N0, N1), call(div, (N1, (N1 + C1)))) :- is_call(call(div, (N0, N1))), choose(R, 83, C1).
rule(R, div, (N0, N1), call(div, (N1, (N1 - C1)))) :- is_call(call(div, (N0, N1))), choose(R, 84, C1).
rule(R, div, (N0, N1), call(div, (C1, (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 85, C1).
rule(R, div, (N0, N1), call(div, (C1, N0))) :- is_call(call(div, (N0, N1))), choose(R, 86, C1).
rule(R, div, (N0, N1), call(div, (C1, N1))) :- is_call(call(div, (N0, N1))), choose(R, 87, C1).
rule(R, div, (N0, N1), call(div, (C1, C2))) :- is_call(call(div, (N0, N1))), choose(R, 88, C1, C2).
rule(R, div, (N0, N1), call(div, (C1, (N0 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 89, C1, C2).
rule(R, div, (N0, N1), call(div, (C1, (N0 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 90, C1, C2).
rule(R, div, (N0, N1), call(div, (C1, (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 91, C1).
rule(R, div, (N0, N1), call(div, (C1, (N1 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 92, C1, C2).
rule(R, div, (N0, N1), call(div, (C1, (N1 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 93, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 - C1), (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 94, C1).
rule(R, div, (N0, N1), call(div, ((N0 - C1), N0))) :- is_call(call(div, (N0, N1))), choose(R, 95, C1).
rule(R, div, (N0, N1), call(div, ((N0 - C1), N1))) :- is_call(call(div, (N0, N1))), choose(R, 96, C1).
rule(R, div, (N0, N1), call(div, ((N0 - C1), C2))) :- is_call(call(div, (N0, N1))), choose(R, 97, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 - C1), (N0 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 98, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 - C1), (N0 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 99, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 - C1), (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 100, C1).
rule(R, div, (N0, N1), call(div, ((N0 - C1), (N1 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 101, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 - C1), (N1 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 102, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 + C1), (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 103, C1).
rule(R, div, (N0, N1), call(div, ((N0 + C1), N0))) :- is_call(call(div, (N0, N1))), choose(R, 104, C1).
rule(R, div, (N0, N1), call(div, ((N0 + C1), N1))) :- is_call(call(div, (N0, N1))), choose(R, 105, C1).
rule(R, div, (N0, N1), call(div, ((N0 + C1), C2))) :- is_call(call(div, (N0, N1))), choose(R, 106, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 + C1), (N0 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 107, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 + C1), (N0 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 108, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 + C1), (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 109, C1).
rule(R, div, (N0, N1), call(div, ((N0 + C1), (N1 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 110, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 + C1), (N1 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 111, C1, C2).
rule(R, div, (N0, N1), call(div, ((N0 + N1), (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 112).
rule(R, div, (N0, N1), call(div, ((N0 + N1), N0))) :- is_call(call(div, (N0, N1))), choose(R, 113).
rule(R, div, (N0, N1), call(div, ((N0 + N1), N1))) :- is_call(call(div, (N0, N1))), choose(R, 114).
rule(R, div, (N0, N1), call(div, ((N0 + N1), C1))) :- is_call(call(div, (N0, N1))), choose(R, 115, C1).
rule(R, div, (N0, N1), call(div, ((N0 + N1), (N0 - C1)))) :- is_call(call(div, (N0, N1))), choose(R, 116, C1).
rule(R, div, (N0, N1), call(div, ((N0 + N1), (N0 + C1)))) :- is_call(call(div, (N0, N1))), choose(R, 117, C1).
rule(R, div, (N0, N1), call(div, ((N0 + N1), (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 118).
rule(R, div, (N0, N1), call(div, ((N0 + N1), (N1 + C1)))) :- is_call(call(div, (N0, N1))), choose(R, 119, C1).
rule(R, div, (N0, N1), call(div, ((N0 + N1), (N1 - C1)))) :- is_call(call(div, (N0, N1))), choose(R, 120, C1).
rule(R, div, (N0, N1), call(div, ((N1 + C1), (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 121, C1).
rule(R, div, (N0, N1), call(div, ((N1 + C1), N0))) :- is_call(call(div, (N0, N1))), choose(R, 122, C1).
rule(R, div, (N0, N1), call(div, ((N1 + C1), N1))) :- is_call(call(div, (N0, N1))), choose(R, 123, C1).
rule(R, div, (N0, N1), call(div, ((N1 + C1), C2))) :- is_call(call(div, (N0, N1))), choose(R, 124, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 + C1), (N0 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 125, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 + C1), (N0 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 126, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 + C1), (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 127, C1).
rule(R, div, (N0, N1), call(div, ((N1 + C1), (N1 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 128, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 + C1), (N1 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 129, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 - C1), (N0 - N1)))) :- is_call(call(div, (N0, N1))), choose(R, 130, C1).
rule(R, div, (N0, N1), call(div, ((N1 - C1), N0))) :- is_call(call(div, (N0, N1))), choose(R, 131, C1).
rule(R, div, (N0, N1), call(div, ((N1 - C1), N1))) :- is_call(call(div, (N0, N1))), choose(R, 132, C1).
rule(R, div, (N0, N1), call(div, ((N1 - C1), C2))) :- is_call(call(div, (N0, N1))), choose(R, 133, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 - C1), (N0 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 134, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 - C1), (N0 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 135, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 - C1), (N0 + N1)))) :- is_call(call(div, (N0, N1))), choose(R, 136, C1).
rule(R, div, (N0, N1), call(div, ((N1 - C1), (N1 + C2)))) :- is_call(call(div, (N0, N1))), choose(R, 137, C1, C2).
rule(R, div, (N0, N1), call(div, ((N1 - C1), (N1 - C2)))) :- is_call(call(div, (N0, N1))), choose(R, 138, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 139).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 140).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 - N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 141, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 142).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 143).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 - N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 144, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 145).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 146).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), N0)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 147, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 148).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 149).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), N0)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 150, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 151).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 152).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), N1)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 153, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 154).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 155).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), N1)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 156, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), C1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 157, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), C1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 158, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), C1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 159, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), C1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 160, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), C1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 161, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), C1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 162, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 163, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 164, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 165, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 166, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 167, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 168, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 169, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 170, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 171, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 172, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 173, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 174, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 175).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 176).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N0 + N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 177, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 178).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 179).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N0 + N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 180, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N1 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 181, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N1 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 182, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N1 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 183, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N1 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 184, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N1 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 185, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N1 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 186, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N1 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 187, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N1 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 188, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - N1), (N1 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 189, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N1 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 190, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N1 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 191, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - N1), (N1 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 192, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 193).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 194).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 - N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 195, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 196).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 197).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 - N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 198, C1).
rule(R, div, (N0, N1), add(call(div, (N0, N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 199).
rule(R, div, (N0, N1), add(call(div, (N0, N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 200).
rule(R, div, (N0, N1), add(call(div, (N0, N0)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 201, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 202).
rule(R, div, (N0, N1), sub(call(div, (N0, N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 203).
rule(R, div, (N0, N1), sub(call(div, (N0, N0)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 204, C1).
rule(R, div, (N0, N1), add(call(div, (N0, N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 205).
rule(R, div, (N0, N1), add(call(div, (N0, N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 206).
rule(R, div, (N0, N1), add(call(div, (N0, N1)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 207, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 208).
rule(R, div, (N0, N1), sub(call(div, (N0, N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 209).
rule(R, div, (N0, N1), sub(call(div, (N0, N1)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 210, C1).
rule(R, div, (N0, N1), add(call(div, (N0, C1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 211, C1).
rule(R, div, (N0, N1), add(call(div, (N0, C1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 212, C1).
rule(R, div, (N0, N1), add(call(div, (N0, C1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 213, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N0, C1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 214, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, C1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 215, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, C1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 216, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 217, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 218, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 219, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 220, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 221, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 222, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 223, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 224, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 225, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 226, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 227, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 228, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 229).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 230).
rule(R, div, (N0, N1), add(call(div, (N0, (N0 + N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 231, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 232).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 233).
rule(R, div, (N0, N1), sub(call(div, (N0, (N0 + N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 234, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N1 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 235, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N1 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 236, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N1 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 237, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N0, (N1 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 238, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N1 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 239, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N1 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 240, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N0, (N1 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 241, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N1 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 242, C1).
rule(R, div, (N0, N1), add(call(div, (N0, (N1 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 243, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N0, (N1 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 244, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N1 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 245, C1).
rule(R, div, (N0, N1), sub(call(div, (N0, (N1 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 246, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 247).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 248).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 - N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 249, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 250).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 251).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 - N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 252, C1).
rule(R, div, (N0, N1), add(call(div, (N1, N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 253).
rule(R, div, (N0, N1), add(call(div, (N1, N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 254).
rule(R, div, (N0, N1), add(call(div, (N1, N0)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 255, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 256).
rule(R, div, (N0, N1), sub(call(div, (N1, N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 257).
rule(R, div, (N0, N1), sub(call(div, (N1, N0)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 258, C1).
rule(R, div, (N0, N1), add(call(div, (N1, N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 259).
rule(R, div, (N0, N1), add(call(div, (N1, N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 260).
rule(R, div, (N0, N1), add(call(div, (N1, N1)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 261, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 262).
rule(R, div, (N0, N1), sub(call(div, (N1, N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 263).
rule(R, div, (N0, N1), sub(call(div, (N1, N1)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 264, C1).
rule(R, div, (N0, N1), add(call(div, (N1, C1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 265, C1).
rule(R, div, (N0, N1), add(call(div, (N1, C1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 266, C1).
rule(R, div, (N0, N1), add(call(div, (N1, C1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 267, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N1, C1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 268, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, C1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 269, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, C1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 270, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 271, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 272, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 273, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 274, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 275, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 276, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 277, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 278, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 279, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 280, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 281, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 282, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 283).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 284).
rule(R, div, (N0, N1), add(call(div, (N1, (N0 + N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 285, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 286).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 287).
rule(R, div, (N0, N1), sub(call(div, (N1, (N0 + N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 288, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N1 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 289, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N1 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 290, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N1 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 291, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N1, (N1 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 292, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N1 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 293, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N1 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 294, C1, C2).
rule(R, div, (N0, N1), add(call(div, (N1, (N1 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 295, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N1 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 296, C1).
rule(R, div, (N0, N1), add(call(div, (N1, (N1 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 297, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (N1, (N1 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 298, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N1 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 299, C1).
rule(R, div, (N0, N1), sub(call(div, (N1, (N1 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 300, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 301, C1).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 302, C1).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 303, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 304, C1).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 305, C1).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 306, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 307, C1).
rule(R, div, (N0, N1), add(call(div, (C1, N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 308, C1).
rule(R, div, (N0, N1), add(call(div, (C1, N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 309, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 310, C1).
rule(R, div, (N0, N1), sub(call(div, (C1, N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 311, C1).
rule(R, div, (N0, N1), sub(call(div, (C1, N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 312, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 313, C1).
rule(R, div, (N0, N1), add(call(div, (C1, N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 314, C1).
rule(R, div, (N0, N1), add(call(div, (C1, N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 315, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 316, C1).
rule(R, div, (N0, N1), sub(call(div, (C1, N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 317, C1).
rule(R, div, (N0, N1), sub(call(div, (C1, N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 318, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 319, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 320, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 321, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, (C1, C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 322, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 323, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 324, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 325, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 326, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 327, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 328, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 329, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 330, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 331, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 332, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 333, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 334, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 335, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 336, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 337, C1).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 338, C1).
rule(R, div, (N0, N1), add(call(div, (C1, (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 339, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 340, C1).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 341, C1).
rule(R, div, (N0, N1), sub(call(div, (C1, (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 342, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 343, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 344, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 345, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, (C1, (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 346, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 347, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 348, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, (C1, (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 349, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 350, C1, C2).
rule(R, div, (N0, N1), add(call(div, (C1, (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 351, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, (C1, (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 352, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 353, C1, C2).
rule(R, div, (N0, N1), sub(call(div, (C1, (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 354, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 355, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 356, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 357, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 358, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 359, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 360, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 361, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 362, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 363, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 364, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 365, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 366, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 367, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 368, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 369, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 370, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 371, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 372, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 373, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 374, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 375, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 376, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 377, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 378, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 379, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 380, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 381, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 382, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 383, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 384, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 385, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 386, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 387, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 388, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 389, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 390, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 391, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 392, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 393, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 394, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 395, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 396, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 397, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 398, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 399, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 400, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 401, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 402, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 403, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 404, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 - C1), (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 405, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 406, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 407, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 - C1), (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 408, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 409, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 410, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 411, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 412, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 413, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 414, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 415, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 416, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 417, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 418, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 419, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 420, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 421, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 422, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 423, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 424, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 425, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 426, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 427, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 428, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 429, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 430, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 431, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 432, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 433, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 434, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 435, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 436, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 437, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 438, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 439, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 440, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 441, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 442, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 443, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 444, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 445, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 446, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 447, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 448, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 449, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 450, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 451, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 452, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 453, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 454, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 455, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 456, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 457, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 458, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + C1), (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 459, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 460, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 461, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + C1), (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 462, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 463).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 464).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 - N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 465, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 466).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 467).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 - N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 468, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 469).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 470).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), N0)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 471, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 472).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 473).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), N0)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 474, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 475).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 476).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), N1)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 477, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 478).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 479).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), N1)), C1)) :- is_call(call(div, (N0, N1))), choose(R, 480, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), C1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 481, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), C1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 482, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), C1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 483, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), C1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 484, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), C1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 485, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), C1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 486, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 487, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 488, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 489, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 490, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 491, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 492, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 493, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 494, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 495, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 496, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 497, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 498, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 499).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 500).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N0 + N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 501, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 502).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 503).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N0 + N1))), C1)) :- is_call(call(div, (N0, N1))), choose(R, 504, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N1 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 505, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N1 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 506, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N1 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 507, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N1 + C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 508, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N1 + C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 509, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N1 + C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 510, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N1 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 511, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N1 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 512, C1).
rule(R, div, (N0, N1), add(call(div, ((N0 + N1), (N1 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 513, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N1 - C1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 514, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N1 - C1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 515, C1).
rule(R, div, (N0, N1), sub(call(div, ((N0 + N1), (N1 - C1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 516, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 517, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 518, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 519, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 520, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 521, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 522, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 523, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 524, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 525, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 526, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 527, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 528, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 529, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 530, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 531, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 532, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 533, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 534, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 535, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 536, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 537, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 538, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 539, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 540, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 541, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 542, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 543, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 544, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 545, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 546, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 547, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 548, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 549, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 550, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 551, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 552, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 553, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 554, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 555, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 556, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 557, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 558, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 559, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 560, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 561, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 562, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 563, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 564, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 565, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 566, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 + C1), (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 567, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 568, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 569, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 + C1), (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 570, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 571, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 572, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 573, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 - N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 574, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 - N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 575, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 - N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 576, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 577, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 578, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 579, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), N0)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 580, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), N0)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 581, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), N0)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 582, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 583, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 584, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 585, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), N1)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 586, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), N1)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 587, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), N1)), C2)) :- is_call(call(div, (N0, N1))), choose(R, 588, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 589, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 590, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 591, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), C2)), N0)) :- is_call(call(div, (N0, N1))), choose(R, 592, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), C2)), N1)) :- is_call(call(div, (N0, N1))), choose(R, 593, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), C2)), C3)) :- is_call(call(div, (N0, N1))), choose(R, 594, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 595, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 596, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 597, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 598, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 599, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 600, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 601, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 602, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 603, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 604, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 605, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 606, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 607, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 608, C1).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 609, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 + N1))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 610, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 + N1))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 611, C1).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N0 + N1))), C2)) :- is_call(call(div, (N0, N1))), choose(R, 612, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 613, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 614, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 615, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N1 + C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 616, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N1 + C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 617, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N1 + C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 618, C1, C2, C3).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 619, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 620, C1, C2).
rule(R, div, (N0, N1), add(call(div, ((N1 - C1), (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 621, C1, C2, C3).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N1 - C2))), N0)) :- is_call(call(div, (N0, N1))), choose(R, 622, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N1 - C2))), N1)) :- is_call(call(div, (N0, N1))), choose(R, 623, C1, C2).
rule(R, div, (N0, N1), sub(call(div, ((N1 - C1), (N1 - C2))), C3)) :- is_call(call(div, (N0, N1))), choose(R, 624, C1, C2, C3).
1 {
choose_match(R, 1;4;5;6;7) ,
choose_match(R, 2;3, C0) : expr_const(C0)
} 1 :- num_match(R).
1 {
choose(R, 2;3;8;9;42;44;46;48;50;52;54;56;58;59;60;64;67;68;69;73;76;77;78;82;112;113;114;118;139;140;142;143;145;146;148;149;151;152;154;155;175;176;178;179;193;194;196;197;199;200;202;203;205;206;208;209;229;230;232;233;247;248;250;251;253;254;256;257;259;260;262;263;283;284;286;287;463;464;466;467;469;470;472;473;475;476;478;479;499;500;502;503) ,
choose(R, 1;4;5;6;7;10;12;14;16;18;20;22;24;26;28;30;32;34;36;38;40;43;45;47;49;51;53;55;57;61;62;63;65;66;70;71;72;74;75;79;80;81;83;84;85;86;87;91;94;95;96;100;103;104;105;109;115;116;117;119;120;121;122;123;127;130;131;132;136;141;144;147;150;153;156;157;158;160;161;163;164;166;167;169;170;172;173;177;180;181;182;184;185;187;188;190;191;195;198;201;204;207;210;211;212;214;215;217;218;220;221;223;224;226;227;231;234;235;236;238;239;241;242;244;245;249;252;255;258;261;264;265;266;268;269;271;272;274;275;277;278;280;281;285;288;289;290;292;293;295;296;298;299;301;302;304;305;307;308;310;311;313;314;316;317;337;338;340;341;355;356;358;359;361;362;364;365;367;368;370;371;391;392;394;395;409;410;412;413;415;416;418;419;421;422;424;425;445;446;448;449;465;468;471;474;477;480;481;482;484;485;487;488;490;491;493;494;496;497;501;504;505;506;508;509;511;512;514;515;517;518;520;521;523;524;526;527;529;530;532;533;553;554;556;557;571;572;574;575;577;578;580;581;583;584;586;587;607;608;610;611, C0) : expr_const(C0) ,
choose(R, 11;13;15;17;19;21;23;25;27;29;31;33;35;37;39;41;88;89;90;92;93;97;98;99;101;102;106;107;108;110;111;124;125;126;128;129;133;134;135;137;138;159;162;165;168;171;174;183;186;189;192;213;216;219;222;225;228;237;240;243;246;267;270;273;276;279;282;291;294;297;300;303;306;309;312;315;318;319;320;322;323;325;326;328;329;331;332;334;335;339;342;343;344;346;347;349;350;352;353;357;360;363;366;369;372;373;374;376;377;379;380;382;383;385;386;388;389;393;396;397;398;400;401;403;404;406;407;411;414;417;420;423;426;427;428;430;431;433;434;436;437;439;440;442;443;447;450;451;452;454;455;457;458;460;461;483;486;489;492;495;498;507;510;513;516;519;522;525;528;531;534;535;536;538;539;541;542;544;545;547;548;550;551;555;558;559;560;562;563;565;566;568;569;573;576;579;582;585;588;589;590;592;593;595;596;598;599;601;602;604;605;609;612;613;614;616;617;619;620;622;623, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose(R, 321;324;327;330;333;336;345;348;351;354;375;378;381;384;387;390;399;402;405;408;429;432;435;438;441;444;453;456;459;462;537;540;543;546;549;552;561;564;567;570;591;594;597;600;603;606;615;618;621;624, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2)
} 1 :- num_rules(R).
#minimise [choose(_, R)=R, choose(_, R, _)=R, choose(_, R, _, _)=R, choose(_, R, _, _, _)=R ].
