#domain const_number(N0).
#domain const_number(N1).
%match_guard(gcd, 1, (N0, N1)) :- N0 == C1, is_call(call(gcd, (N0, N1))), choose_match(R, 1, C1).
%match_guard(gcd, 2, (N0, N1)) :- N1 == C1, is_call(call(gcd, (N0, N1))), choose_match(R, 2, C1).
%match_guard(gcd, 3, (N0, N1)) :- N0 == N1, is_call(call(gcd, (N0, N1))), choose_match(R, 3).
%match_guard(gcd, 4, (N0, N1)) :- N0 < N1, is_call(call(gcd, (N0, N1))), choose_match(R, 4).
%match_guard(gcd, 5, (N0, N1)) :- N1 == N0, is_call(call(gcd, (N0, N1))), choose_match(R, 5).
%match_guard(gcd, 6, (N0, N1)) :- N1 < N0, is_call(call(gcd, (N0, N1))), choose_match(R, 6).
rule(R, gcd, (N0, N1), C1) :- is_call(call(gcd, (N0, N1))), choose(R, 1, C1).
rule(R, gcd, (N0, N1), N0) :- is_call(call(gcd, (N0, N1))), choose(R, 2).
rule(R, gcd, (N0, N1), N1) :- is_call(call(gcd, (N0, N1))), choose(R, 3).
rule(R, gcd, (N0, N1), (N0 * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 4).
rule(R, gcd, (N0, N1), (N0 + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 5, C1).
rule(R, gcd, (N0, N1), (N0 - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 6, C1).
rule(R, gcd, (N0, N1), (N0 * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 7, C1).
rule(R, gcd, (N0, N1), (N1 * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 8).
rule(R, gcd, (N0, N1), (N1 + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 9, C1).
rule(R, gcd, (N0, N1), (N1 - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 10, C1).
rule(R, gcd, (N0, N1), (N1 * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 11, C1).
rule(R, gcd, (N0, N1), (N0 + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 12).
rule(R, gcd, (N0, N1), (N0 - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 13).
rule(R, gcd, (N0, N1), (N0 * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 14).
rule(R, gcd, (N0, N1), ((N0 * N0) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 15).
rule(R, gcd, (N0, N1), ((N0 * N0) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 16, C1).
rule(R, gcd, (N0, N1), ((N0 * N0) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 17).
rule(R, gcd, (N0, N1), ((N0 * N0) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 18, C1).
rule(R, gcd, (N0, N1), ((N0 * N0) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 19).
rule(R, gcd, (N0, N1), ((N0 * N0) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 20, C1).
rule(R, gcd, (N0, N1), ((N0 * N0) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 21).
rule(R, gcd, (N0, N1), ((N0 * N0) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 22, C1).
rule(R, gcd, (N0, N1), ((N0 * N0) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 23).
rule(R, gcd, (N0, N1), ((N0 * N0) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 24, C1).
rule(R, gcd, (N0, N1), ((N0 * N0) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 25).
rule(R, gcd, (N0, N1), ((N0 * N0) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 26, C1).
rule(R, gcd, (N0, N1), ((N0 + C1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 27, C1).
rule(R, gcd, (N0, N1), ((N0 + C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 28, C1, C2).
rule(R, gcd, (N0, N1), ((N0 + C1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 29, C1).
rule(R, gcd, (N0, N1), ((N0 + C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 30, C1, C2).
rule(R, gcd, (N0, N1), ((N0 + C1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 31, C1).
rule(R, gcd, (N0, N1), ((N0 + C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 32, C1, C2).
rule(R, gcd, (N0, N1), ((N0 + C1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 33, C1).
rule(R, gcd, (N0, N1), ((N0 + C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 34, C1, C2).
rule(R, gcd, (N0, N1), ((N0 + C1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 35, C1).
rule(R, gcd, (N0, N1), ((N0 + C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 36, C1, C2).
rule(R, gcd, (N0, N1), ((N0 + C1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 37, C1).
rule(R, gcd, (N0, N1), ((N0 + C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 38, C1, C2).
rule(R, gcd, (N0, N1), ((N0 - C1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 39, C1).
rule(R, gcd, (N0, N1), ((N0 - C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 40, C1, C2).
rule(R, gcd, (N0, N1), ((N0 - C1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 41, C1).
rule(R, gcd, (N0, N1), ((N0 - C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 42, C1, C2).
rule(R, gcd, (N0, N1), ((N0 - C1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 43, C1).
rule(R, gcd, (N0, N1), ((N0 - C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 44, C1, C2).
rule(R, gcd, (N0, N1), ((N0 - C1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 45, C1).
rule(R, gcd, (N0, N1), ((N0 - C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 46, C1, C2).
rule(R, gcd, (N0, N1), ((N0 - C1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 47, C1).
rule(R, gcd, (N0, N1), ((N0 - C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 48, C1, C2).
rule(R, gcd, (N0, N1), ((N0 - C1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 49, C1).
rule(R, gcd, (N0, N1), ((N0 - C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 50, C1, C2).
rule(R, gcd, (N0, N1), ((N0 * C1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 51, C1).
rule(R, gcd, (N0, N1), ((N0 * C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 52, C1, C2).
rule(R, gcd, (N0, N1), ((N0 * C1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 53, C1).
rule(R, gcd, (N0, N1), ((N0 * C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 54, C1, C2).
rule(R, gcd, (N0, N1), ((N0 * C1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 55, C1).
rule(R, gcd, (N0, N1), ((N0 * C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 56, C1, C2).
rule(R, gcd, (N0, N1), ((N0 * C1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 57, C1).
rule(R, gcd, (N0, N1), ((N0 * C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 58, C1, C2).
rule(R, gcd, (N0, N1), ((N0 * C1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 59, C1).
rule(R, gcd, (N0, N1), ((N0 * C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 60, C1, C2).
rule(R, gcd, (N0, N1), ((N0 * C1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 61, C1).
rule(R, gcd, (N0, N1), ((N0 * C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 62, C1, C2).
rule(R, gcd, (N0, N1), ((N1 * N1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 63).
rule(R, gcd, (N0, N1), ((N1 * N1) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 64, C1).
rule(R, gcd, (N0, N1), ((N1 * N1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 65).
rule(R, gcd, (N0, N1), ((N1 * N1) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 66, C1).
rule(R, gcd, (N0, N1), ((N1 * N1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 67).
rule(R, gcd, (N0, N1), ((N1 * N1) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 68, C1).
rule(R, gcd, (N0, N1), ((N1 * N1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 69).
rule(R, gcd, (N0, N1), ((N1 * N1) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 70, C1).
rule(R, gcd, (N0, N1), ((N1 * N1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 71).
rule(R, gcd, (N0, N1), ((N1 * N1) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 72, C1).
rule(R, gcd, (N0, N1), ((N1 * N1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 73).
rule(R, gcd, (N0, N1), ((N1 * N1) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 74, C1).
rule(R, gcd, (N0, N1), ((N1 + C1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 75, C1).
rule(R, gcd, (N0, N1), ((N1 + C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 76, C1, C2).
rule(R, gcd, (N0, N1), ((N1 + C1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 77, C1).
rule(R, gcd, (N0, N1), ((N1 + C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 78, C1, C2).
rule(R, gcd, (N0, N1), ((N1 + C1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 79, C1).
rule(R, gcd, (N0, N1), ((N1 + C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 80, C1, C2).
rule(R, gcd, (N0, N1), ((N1 + C1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 81, C1).
rule(R, gcd, (N0, N1), ((N1 + C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 82, C1, C2).
rule(R, gcd, (N0, N1), ((N1 + C1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 83, C1).
rule(R, gcd, (N0, N1), ((N1 + C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 84, C1, C2).
rule(R, gcd, (N0, N1), ((N1 + C1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 85, C1).
rule(R, gcd, (N0, N1), ((N1 + C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 86, C1, C2).
rule(R, gcd, (N0, N1), ((N1 - C1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 87, C1).
rule(R, gcd, (N0, N1), ((N1 - C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 88, C1, C2).
rule(R, gcd, (N0, N1), ((N1 - C1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 89, C1).
rule(R, gcd, (N0, N1), ((N1 - C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 90, C1, C2).
rule(R, gcd, (N0, N1), ((N1 - C1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 91, C1).
rule(R, gcd, (N0, N1), ((N1 - C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 92, C1, C2).
rule(R, gcd, (N0, N1), ((N1 - C1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 93, C1).
rule(R, gcd, (N0, N1), ((N1 - C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 94, C1, C2).
rule(R, gcd, (N0, N1), ((N1 - C1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 95, C1).
rule(R, gcd, (N0, N1), ((N1 - C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 96, C1, C2).
rule(R, gcd, (N0, N1), ((N1 - C1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 97, C1).
rule(R, gcd, (N0, N1), ((N1 - C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 98, C1, C2).
rule(R, gcd, (N0, N1), ((N1 * C1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 99, C1).
rule(R, gcd, (N0, N1), ((N1 * C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 100, C1, C2).
rule(R, gcd, (N0, N1), ((N1 * C1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 101, C1).
rule(R, gcd, (N0, N1), ((N1 * C1) + C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 102, C1, C2).
rule(R, gcd, (N0, N1), ((N1 * C1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 103, C1).
rule(R, gcd, (N0, N1), ((N1 * C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 104, C1, C2).
rule(R, gcd, (N0, N1), ((N1 * C1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 105, C1).
rule(R, gcd, (N0, N1), ((N1 * C1) - C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 106, C1, C2).
rule(R, gcd, (N0, N1), ((N1 * C1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 107, C1).
rule(R, gcd, (N0, N1), ((N1 * C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 108, C1, C2).
rule(R, gcd, (N0, N1), ((N1 * C1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 109, C1).
rule(R, gcd, (N0, N1), ((N1 * C1) * C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 110, C1, C2).
rule(R, gcd, (N0, N1), ((N0 + N1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 111).
rule(R, gcd, (N0, N1), ((N0 + N1) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 112, C1).
rule(R, gcd, (N0, N1), ((N0 + N1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 113).
rule(R, gcd, (N0, N1), ((N0 + N1) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 114, C1).
rule(R, gcd, (N0, N1), ((N0 + N1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 115).
rule(R, gcd, (N0, N1), ((N0 + N1) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 116, C1).
rule(R, gcd, (N0, N1), ((N0 + N1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 117).
rule(R, gcd, (N0, N1), ((N0 + N1) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 118, C1).
rule(R, gcd, (N0, N1), ((N0 + N1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 119).
rule(R, gcd, (N0, N1), ((N0 + N1) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 120, C1).
rule(R, gcd, (N0, N1), ((N0 + N1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 121).
rule(R, gcd, (N0, N1), ((N0 + N1) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 122, C1).
rule(R, gcd, (N0, N1), ((N0 - N1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 123).
rule(R, gcd, (N0, N1), ((N0 - N1) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 124, C1).
rule(R, gcd, (N0, N1), ((N0 - N1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 125).
rule(R, gcd, (N0, N1), ((N0 - N1) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 126, C1).
rule(R, gcd, (N0, N1), ((N0 - N1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 127).
rule(R, gcd, (N0, N1), ((N0 - N1) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 128, C1).
rule(R, gcd, (N0, N1), ((N0 - N1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 129).
rule(R, gcd, (N0, N1), ((N0 - N1) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 130, C1).
rule(R, gcd, (N0, N1), ((N0 - N1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 131).
rule(R, gcd, (N0, N1), ((N0 - N1) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 132, C1).
rule(R, gcd, (N0, N1), ((N0 - N1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 133).
rule(R, gcd, (N0, N1), ((N0 - N1) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 134, C1).
rule(R, gcd, (N0, N1), ((N0 * N1) + N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 135).
rule(R, gcd, (N0, N1), ((N0 * N1) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 136, C1).
rule(R, gcd, (N0, N1), ((N0 * N1) + N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 137).
rule(R, gcd, (N0, N1), ((N0 * N1) + C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 138, C1).
rule(R, gcd, (N0, N1), ((N0 * N1) - N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 139).
rule(R, gcd, (N0, N1), ((N0 * N1) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 140, C1).
rule(R, gcd, (N0, N1), ((N0 * N1) - N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 141).
rule(R, gcd, (N0, N1), ((N0 * N1) - C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 142, C1).
rule(R, gcd, (N0, N1), ((N0 * N1) * N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 143).
rule(R, gcd, (N0, N1), ((N0 * N1) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 144, C1).
rule(R, gcd, (N0, N1), ((N0 * N1) * N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 145).
rule(R, gcd, (N0, N1), ((N0 * N1) * C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 146, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 147).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 148).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 149).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 150).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 151).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 152).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N0 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 153, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N1 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 154, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N1 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 155, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N1 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 156, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), C1))) :- is_call(call(gcd, (N0, N1))), choose(R, 157, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N0 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 158, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N0 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 159, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - N1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 160).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 161).
rule(R, gcd, (N0, N1), call(gcd, (N0, N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 162).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 163).
rule(R, gcd, (N0, N1), call(gcd, (N0, N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 164).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 165).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 166).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N0 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 167, C1).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N1 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 168, C1).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N1 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 169, C1).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N1 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 170, C1).
rule(R, gcd, (N0, N1), call(gcd, (N0, C1))) :- is_call(call(gcd, (N0, N1))), choose(R, 171, C1).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N0 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 172, C1).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N0 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 173, C1).
rule(R, gcd, (N0, N1), call(gcd, (N0, (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 174).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 175).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 176).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 177).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 178).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 179).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 180).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N0 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 181, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N1 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 182, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N1 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 183, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N1 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 184, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), C1))) :- is_call(call(gcd, (N0, N1))), choose(R, 185, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N0 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 186, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N0 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 187, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * N1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 188).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 189).
rule(R, gcd, (N0, N1), call(gcd, (N1, N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 190).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 191).
rule(R, gcd, (N0, N1), call(gcd, (N1, N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 192).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 193).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 194).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N0 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 195, C1).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N1 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 196, C1).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N1 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 197, C1).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N1 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 198, C1).
rule(R, gcd, (N0, N1), call(gcd, (N1, C1))) :- is_call(call(gcd, (N0, N1))), choose(R, 199, C1).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N0 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 200, C1).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N0 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 201, C1).
rule(R, gcd, (N0, N1), call(gcd, (N1, (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 202).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 203).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 204).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 205).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 206).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 207).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 208).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N0 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 209, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N1 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 210, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N1 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 211, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N1 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 212, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), C1))) :- is_call(call(gcd, (N0, N1))), choose(R, 213, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N0 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 214, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N0 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 215, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 216).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 217).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 218).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 219).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 220).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 221).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 222).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N0 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 223, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N1 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 224, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N1 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 225, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N1 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 226, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), C1))) :- is_call(call(gcd, (N0, N1))), choose(R, 227, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N0 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 228, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N0 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 229, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * N0), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 230).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 231, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 232, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 233, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 234, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 235, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 236, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N0 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 237, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N1 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 238, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N1 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 239, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N1 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 240, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), C2))) :- is_call(call(gcd, (N0, N1))), choose(R, 241, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N0 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 242, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N0 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 243, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + C1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 244, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 245, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 246, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 247, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 248, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 249, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 250, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N0 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 251, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N1 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 252, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N1 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 253, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N1 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 254, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), C2))) :- is_call(call(gcd, (N0, N1))), choose(R, 255, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N0 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 256, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N0 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 257, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 + C1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 258, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 259, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 260, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 261, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 262, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 263, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 264, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N0 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 265, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N1 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 266, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N1 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 267, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N1 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 268, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), C2))) :- is_call(call(gcd, (N0, N1))), choose(R, 269, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N0 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 270, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N0 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 271, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 - C1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 272, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 273, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 274, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 275, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 276, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 277, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 278, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N0 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 279, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N1 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 280, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N1 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 281, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N1 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 282, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), C2))) :- is_call(call(gcd, (N0, N1))), choose(R, 283, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N0 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 284, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N0 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 285, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N1 * C1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 286, C1).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 287, C1).
rule(R, gcd, (N0, N1), call(gcd, (C1, N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 288, C1).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 289, C1).
rule(R, gcd, (N0, N1), call(gcd, (C1, N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 290, C1).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 291, C1).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 292, C1).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N0 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 293, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N1 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 294, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N1 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 295, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N1 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 296, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, (C1, C2))) :- is_call(call(gcd, (N0, N1))), choose(R, 297, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N0 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 298, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N0 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 299, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, (C1, (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 300, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 301, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 302, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 303, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 304, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 305, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 306, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N0 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 307, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N1 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 308, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N1 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 309, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N1 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 310, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), C2))) :- is_call(call(gcd, (N0, N1))), choose(R, 311, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N0 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 312, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N0 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 313, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 - C1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 314, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 315, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 316, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 317, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 318, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 319, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 320, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N0 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 321, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N1 + C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 322, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N1 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 323, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N1 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 324, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), C2))) :- is_call(call(gcd, (N0, N1))), choose(R, 325, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N0 - C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 326, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N0 * C2)))) :- is_call(call(gcd, (N0, N1))), choose(R, 327, C1, C2).
rule(R, gcd, (N0, N1), call(gcd, ((N0 * C1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 328, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N0 - N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 329).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), N0))) :- is_call(call(gcd, (N0, N1))), choose(R, 330).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N1 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 331).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), N1))) :- is_call(call(gcd, (N0, N1))), choose(R, 332).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N0 * N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 333).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N0 * N0)))) :- is_call(call(gcd, (N0, N1))), choose(R, 334).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N0 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 335, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N1 + C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 336, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N1 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 337, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N1 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 338, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), C1))) :- is_call(call(gcd, (N0, N1))), choose(R, 339, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N0 - C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 340, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N0 * C1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 341, C1).
rule(R, gcd, (N0, N1), call(gcd, ((N0 + N1), (N0 + N1)))) :- is_call(call(gcd, (N0, N1))), choose(R, 342).

%1 {
%choose_match(R, 3;4;5;6) ,
%choose_match(R, 1;2, C0) : expr_const(C0) 
%} 1 :- num_match(R).
1 {
choose(R, 2;3;4;8;12;13;14;15;17;19;21;23;25;63;65;67;69;71;73;111;113;115;117;119;121;123;125;127;129;131;133;135;137;139;141;143;145;147;148;149;150;151;152;160;161;162;163;164;165;166;174;175;176;177;178;179;180;188;189;190;191;192;193;194;202;203;204;205;206;207;208;216;217;218;219;220;221;222;230;329;330;331;332;333;334;342) ,
choose(R, 1;5;6;7;9;10;11;16;18;20;22;24;26;27;29;31;33;35;37;39;41;43;45;47;49;51;53;55;57;59;61;64;66;68;70;72;74;75;77;79;81;83;85;87;89;91;93;95;97;99;101;103;105;107;109;112;114;116;118;120;122;124;126;128;130;132;134;136;138;140;142;144;146;153;154;155;156;157;158;159;167;168;169;170;171;172;173;181;182;183;184;185;186;187;195;196;197;198;199;200;201;209;210;211;212;213;214;215;223;224;225;226;227;228;229;231;232;233;234;235;236;244;245;246;247;248;249;250;258;259;260;261;262;263;264;272;273;274;275;276;277;278;286;287;288;289;290;291;292;300;301;302;303;304;305;306;314;315;316;317;318;319;320;328;335;336;337;338;339;340;341, C0) : expr_const(C0) ,
choose(R, 28;30;32;34;36;38;40;42;44;46;48;50;52;54;56;58;60;62;76;78;80;82;84;86;88;90;92;94;96;98;100;102;104;106;108;110;237;238;239;240;241;242;243;251;252;253;254;255;256;257;265;266;267;268;269;270;271;279;280;281;282;283;284;285;293;294;295;296;297;298;299;307;308;309;310;311;312;313;321;322;323;324;325;326;327, C0, C1) : expr_const(C0) : expr_const(C1) 
} 1 :- num_rules(R).
#minimise [choose(_, R)=R, choose(_, R, _)=R, choose(_, R, _, _)=R ].
