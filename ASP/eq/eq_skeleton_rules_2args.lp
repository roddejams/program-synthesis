#domain const_number(N0).
#domain const_number(N1).
match2(gcd, 1, (N0, N1)) :- N0 == C1, is_call(call(gcd, (N0, N1))), choose_match(R, 1, C1).
match2(gcd, 2, (N0, N1)) :- N1 == C1, is_call(call(gcd, (N0, N1))), choose_match(R, 2, C1).
match2(gcd, 3, (N0, N1)) :- N0 == N1, is_call(call(gcd, (N0, N1))), choose_match(R, 3).
match2(gcd, 4, (N0, N1)) :- N0 < N1, is_call(call(gcd, (N0, N1))), choose_match(R, 4).
match2(gcd, 5, (N0, N1)) :- N1 == N0, is_call(call(gcd, (N0, N1))), choose_match(R, 5).
match2(gcd, 6, (N0, N1)) :- N1 < N0, is_call(call(gcd, (N0, N1))), choose_match(R, 6).
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
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 343).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 344).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 345, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 346).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 347).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 348, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 349).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 350).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 351, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 352).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 353).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 354, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 355).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 356).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 357, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 358).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 359).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 360, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 361).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 362).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 363, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 364).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 365).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 366, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 367).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 368).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 369, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 370).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 371).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 372, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 373).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 374).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 375, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 376).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 377).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 378, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 379).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 380).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 381, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 382).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 383).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 384, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 385).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 386).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 387, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 388).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 389).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 390, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 391).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 392).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 393, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 394).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 395).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 396, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 397).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 398).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 399, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 400).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 401).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 402, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 403).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 404).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 405, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 406).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 407).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 408, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 409).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 410).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 411, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 412).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 413).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 414, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 415, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 416, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 417, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 418, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 419, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 420, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 421, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 422, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 423, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 424, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 425, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 426, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 427, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 428, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 429, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 430, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 431, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 432, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 433, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 434, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 435, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 436, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 437, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 438, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 439, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 440, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 441, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 442, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 443, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 444, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 445, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 446, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 447, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 448, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 449, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 450, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 451, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 452, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 453, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 454, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 455, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 456, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 457, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 458, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 459, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 460, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 461, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 462, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 463, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 464, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 465, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 466, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 467, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 468, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 469, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 470, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 471, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 472, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 473, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 474, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 475, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 476, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 477, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 478, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 479, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 480, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 481, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 482, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 483, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 484, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 485, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 486, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 487, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 488, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 489, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 490, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 491, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 492, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 493, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 494, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 495, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 496, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 497, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 498, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 499).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 500).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 501, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 502).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 503).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 504, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 505).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 506).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 507, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 508).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 509).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 510, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 511).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 512).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 513, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 514).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 515).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 516, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 517).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 518).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 519, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 520).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 521).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 522, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 523).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 524).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 525, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 526).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 527).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 528, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 529).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 530).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 531, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 532).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 533).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 534, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 535).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 536).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 537, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 538).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 539).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 540, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 541).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 542).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 543, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 544).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 545).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 546, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 547).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 548).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 549, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 550).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 551).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 552, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 553).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 554).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 555, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 556).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 557).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 558, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 559).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 560).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 561, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 562).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 563).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 564, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 565).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 566).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 567, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 568).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 569).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 570, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 571).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 572).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 573, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 574).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 575).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 576, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 577).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 578).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 579, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 580).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 581).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 582, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 583, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 584, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 585, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 586, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 587, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 588, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 589, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 590, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 591, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 592, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 593, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 594, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 595, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 596, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 597, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 598, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 599, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 600, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 601, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 602, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 603, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 604, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 605, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 606, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 607, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 608, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 609, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 610, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 611, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 612, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 613, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 614, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 615, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 616, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 617, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 618, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 619, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 620, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 621, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 622, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 623, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 624, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 625, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 626, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 627, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 628, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 629, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 630, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 631, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 632, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 633, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 634, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 635, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 636, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 637, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 638, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 639, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 640, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 641, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 642, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 643, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 644, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 645, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 646, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 647, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 648, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 649, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 650, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 651, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 652, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 653, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 654, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 655, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 656, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 657, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 658, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 659, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 660, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 661, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 662, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 663, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 664, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 665, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 666, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 667).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 668).
rule(R, gcd, (N0, N1), add(call(gcd, (N0, (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 669, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 670).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 671).
rule(R, gcd, (N0, N1), mul(call(gcd, (N0, (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 672, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 673).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 674).
rule(R, gcd, (N0, N1), sub(call(gcd, (N0, (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 675, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 676).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 677).
rule(R, gcd, (N0, N1), div(call(gcd, (N0, (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 678, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 679).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 680).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 681, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 682).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 683).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 684, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 685).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 686).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 687, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 688).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 689).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 690, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 691).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 692).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 693, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 694).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 695).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 696, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 697).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 698).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 699, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 700).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 701).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 702, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 703).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 704).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 705, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 706).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 707).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 708, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 709).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 710).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 711, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 712).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 713).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 714, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 715).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 716).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 717, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 718).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 719).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 720, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 721).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 722).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 723, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 724).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 725).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 726, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 727).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 728).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 729, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 730).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 731).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 732, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 733).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 734).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 735, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 736).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 737).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 738, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 739).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 740).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 741, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 742).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 743).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 744, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 745).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 746).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 747, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 748).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 749).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 750, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 751, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 752, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 753, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 754, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 755, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 756, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 757, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 758, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 759, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 760, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 761, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 762, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 763, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 764, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 765, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 766, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 767, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 768, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 769, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 770, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 771, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 772, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 773, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 774, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 775, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 776, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 777, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 778, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 779, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 780, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 781, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 782, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 783, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 784, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 785, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 786, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 787, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 788, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 789, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 790, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 791, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 792, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 793, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 794, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 795, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 796, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 797, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 798, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 799, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 800, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 801, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 802, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 803, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 804, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 805, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 806, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 807, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 808, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 809, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 810, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 811, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 812, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 813, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 814, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 815, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 816, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 817, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 818, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 819, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 820, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 821, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 822, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 823, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 824, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 825, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 826, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 827, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 828, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 829, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 830, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 831, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 832, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 833, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 834, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 835).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 836).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 837, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 838).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 839).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 840, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 841).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 842).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 843, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 844).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 845).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 846, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 847).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 848).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 849, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 850).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 851).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 852, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 853).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 854).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 855, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 856).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 857).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 858, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 859).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 860).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 861, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 862).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 863).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 864, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 865).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 866).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 867, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 868).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 869).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 870, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 871).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 872).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 873, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 874).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 875).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 876, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 877).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 878).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 879, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 880).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 881).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 882, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 883).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 884).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 885, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 886).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 887).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 888, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 889).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 890).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 891, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 892).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 893).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 894, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 895).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 896).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 897, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 898).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 899).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 900, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 901).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 902).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 903, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 904).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 905).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 906, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 907).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 908).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 909, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 910).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 911).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 912, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 913).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 914).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 915, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 916).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 917).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 918, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 919, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 920, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 921, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 922, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 923, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 924, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 925, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 926, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 927, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 928, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 929, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 930, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 931, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 932, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 933, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 934, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 935, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 936, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 937, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 938, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 939, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 940, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 941, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 942, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 943, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 944, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 945, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 946, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 947, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 948, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 949, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 950, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 951, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 952, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 953, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 954, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 955, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 956, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 957, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 958, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 959, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 960, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 961, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 962, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 963, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 964, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 965, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 966, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 967, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 968, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 969, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 970, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 971, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 972, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 973, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 974, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 975, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 976, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 977, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 978, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 979, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 980, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 981, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 982, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 983, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 984, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 985, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 986, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 987, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 988, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 989, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 990, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 991, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 992, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 993, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 994, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 995, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 996, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 997, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 998, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 999, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1000, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1001, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1002, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1003).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1004).
rule(R, gcd, (N0, N1), add(call(gcd, (N1, (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1005, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1006).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1007).
rule(R, gcd, (N0, N1), mul(call(gcd, (N1, (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1008, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1009).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1010).
rule(R, gcd, (N0, N1), sub(call(gcd, (N1, (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1011, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1012).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1013).
rule(R, gcd, (N0, N1), div(call(gcd, (N1, (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1014, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1015).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1016).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1017, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1018).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1019).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1020, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1021).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1022).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1023, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1024).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1025).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1026, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1027).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1028).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1029, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1030).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1031).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1032, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1033).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1034).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1035, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1036).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1037).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1038, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1039).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1040).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1041, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1042).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1043).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1044, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1045).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1046).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1047, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1048).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1049).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1050, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1051).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1052).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1053, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1054).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1055).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1056, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1057).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1058).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1059, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1060).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1061).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1062, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1063).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1064).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1065, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1066).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1067).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1068, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1069).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1070).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1071, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1072).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1073).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1074, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1075).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1076).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1077, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1078).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1079).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1080, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1081).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1082).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1083, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1084).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1085).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1086, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1087, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1088, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1089, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1090, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1091, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1092, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1093, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1094, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1095, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1096, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1097, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1098, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1099, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1100, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1101, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1102, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1103, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1104, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1105, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1106, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1107, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1108, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1109, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1110, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1111, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1112, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1113, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1114, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1115, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1116, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1117, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1118, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1119, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1120, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1121, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1122, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1123, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1124, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1125, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1126, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1127, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1128, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1129, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1130, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1131, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1132, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1133, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1134, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1135, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1136, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1137, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1138, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1139, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1140, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1141, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1142, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1143, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1144, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1145, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1146, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1147, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1148, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1149, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1150, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1151, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1152, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1153, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1154, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1155, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1156, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1157, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1158, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1159, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1160, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1161, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1162, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1163, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1164, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1165, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1166, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1167, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1168, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1169, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1170, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1171).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1172).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1173, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1174).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1175).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1176, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1177).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1178).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1179, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1180).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1181).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1182, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1183).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1184).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1185, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1186).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1187).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1188, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1189).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1190).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1191, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1192).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1193).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1194, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1195).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1196).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1197, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1198).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1199).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1200, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1201).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1202).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1203, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1204).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1205).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1206, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1207).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1208).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1209, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1210).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1211).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1212, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1213).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1214).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1215, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1216).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1217).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1218, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1219).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1220).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1221, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1222).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1223).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1224, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1225).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1226).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1227, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1228).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1229).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1230, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1231).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1232).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1233, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1234).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1235).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1236, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1237).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1238).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1239, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1240).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1241).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1242, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1243).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1244).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1245, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1246).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1247).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1248, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1249).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1250).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1251, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1252).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1253).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1254, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1255, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1256, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1257, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1258, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1259, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1260, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1261, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1262, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1263, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1264, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1265, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1266, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1267, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1268, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1269, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1270, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1271, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1272, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1273, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1274, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1275, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1276, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1277, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1278, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1279, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1280, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1281, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1282, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1283, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1284, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1285, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1286, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1287, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1288, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1289, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1290, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1291, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1292, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1293, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1294, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1295, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1296, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1297, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1298, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1299, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1300, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1301, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1302, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1303, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1304, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1305, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1306, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1307, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1308, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1309, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1310, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1311, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1312, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1313, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1314, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1315, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1316, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1317, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1318, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1319, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1320, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1321, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1322, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1323, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1324, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1325, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1326, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1327, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1328, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1329, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1330, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1331, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1332, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1333, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1334, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1335, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1336, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1337, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1338, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1339).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1340).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * N0), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1341, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1342).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1343).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * N0), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1344, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1345).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1346).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * N0), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1347, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1348).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1349).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * N0), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1350, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1351, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1352, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1353, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1354, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1355, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1356, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1357, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1358, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1359, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1360, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1361, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1362, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1363, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1364, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1365, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1366, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1367, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1368, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1369, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1370, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1371, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1372, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1373, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1374, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1375, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1376, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1377, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1378, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1379, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1380, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1381, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1382, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1383, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1384, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1385, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1386, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1387, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1388, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1389, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1390, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1391, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1392, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1393, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1394, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1395, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1396, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1397, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1398, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1399, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1400, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1401, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1402, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1403, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1404, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1405, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1406, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1407, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1408, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1409, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1410, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1411, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1412, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1413, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1414, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1415, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1416, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1417, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1418, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1419, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1420, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1421, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1422, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1423, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1424, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1425, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1426, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1427, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1428, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1429, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1430, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1431, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1432, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1433, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1434, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1435, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1436, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1437, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1438, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1439, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1440, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1441, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1442, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1443, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1444, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1445, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1446, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1447, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1448, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1449, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1450, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1451, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1452, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1453, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1454, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1455, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1456, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1457, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1458, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1459, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1460, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1461, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1462, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1463, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1464, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1465, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1466, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1467, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1468, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1469, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1470, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1471, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1472, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1473, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1474, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1475, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1476, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1477, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1478, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1479, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1480, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1481, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1482, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1483, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1484, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1485, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1486, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1487, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1488, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1489, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1490, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1491, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1492, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1493, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1494, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1495, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1496, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1497, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1498, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1499, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1500, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1501, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1502, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1503, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1504, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1505, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1506, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1507, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1508, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1509, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1510, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1511, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1512, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1513, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1514, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1515, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1516, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1517, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1518, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1519, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1520, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1521, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1522, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1523, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1524, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1525, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1526, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1527, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1528, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1529, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1530, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1531, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1532, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1533, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1534, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1535, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1536, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1537, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1538, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1539, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1540, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1541, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1542, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1543, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1544, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1545, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1546, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1547, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1548, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1549, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1550, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1551, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1552, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1553, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1554, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1555, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1556, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1557, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1558, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1559, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1560, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1561, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1562, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1563, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1564, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1565, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1566, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1567, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1568, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1569, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1570, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1571, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1572, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1573, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1574, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1575, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1576, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1577, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1578, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1579, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1580, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1581, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1582, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1583, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1584, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1585, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1586, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1587, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1588, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1589, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1590, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1591, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1592, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1593, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1594, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1595, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1596, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1597, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1598, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1599, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1600, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1601, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1602, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1603, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1604, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1605, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1606, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1607, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1608, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1609, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1610, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1611, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1612, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1613, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1614, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1615, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1616, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1617, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1618, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1619, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1620, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1621, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1622, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1623, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1624, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1625, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1626, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1627, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1628, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1629, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1630, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1631, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1632, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1633, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1634, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1635, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1636, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1637, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1638, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1639, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1640, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1641, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1642, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1643, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1644, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1645, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1646, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1647, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1648, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1649, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1650, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1651, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1652, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1653, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1654, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1655, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1656, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1657, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1658, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1659, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1660, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1661, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1662, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1663, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1664, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1665, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1666, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1667, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1668, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1669, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1670, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1671, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1672, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1673, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1674, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1675, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1676, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 + C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1677, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1678, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1679, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 + C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1680, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1681, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1682, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 + C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1683, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1684, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1685, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 + C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1686, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1687, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1688, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1689, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1690, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1691, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1692, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1693, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1694, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1695, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1696, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1697, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1698, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1699, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1700, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1701, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1702, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1703, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1704, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1705, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1706, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1707, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1708, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1709, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1710, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1711, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1712, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1713, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1714, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1715, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1716, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1717, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1718, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1719, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1720, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1721, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1722, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1723, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1724, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1725, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1726, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1727, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1728, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1729, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1730, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1731, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1732, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1733, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1734, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1735, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1736, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1737, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1738, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1739, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1740, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1741, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1742, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1743, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1744, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1745, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1746, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1747, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1748, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1749, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1750, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1751, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1752, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1753, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1754, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1755, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1756, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1757, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1758, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1759, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1760, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1761, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1762, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1763, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1764, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1765, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1766, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1767, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1768, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1769, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1770, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1771, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1772, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1773, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1774, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1775, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1776, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1777, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1778, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1779, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1780, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1781, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1782, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1783, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1784, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1785, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1786, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1787, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1788, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1789, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1790, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1791, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1792, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1793, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1794, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1795, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1796, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1797, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1798, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1799, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1800, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1801, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1802, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1803, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1804, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1805, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1806, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1807, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1808, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1809, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1810, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1811, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1812, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1813, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1814, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1815, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1816, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1817, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1818, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1819, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1820, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1821, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1822, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1823, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1824, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1825, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1826, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1827, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1828, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1829, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1830, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1831, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1832, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1833, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1834, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1835, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1836, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1837, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1838, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1839, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1840, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1841, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1842, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1843, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1844, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 - C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1845, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1846, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1847, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 - C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1848, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1849, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1850, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 - C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1851, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1852, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1853, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 - C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1854, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1855, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1856, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1857, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1858, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1859, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1860, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1861, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1862, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1863, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1864, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1865, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1866, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1867, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1868, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1869, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1870, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1871, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1872, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1873, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1874, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1875, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1876, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1877, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1878, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1879, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1880, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1881, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1882, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1883, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1884, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1885, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1886, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1887, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1888, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1889, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1890, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1891, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1892, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1893, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1894, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1895, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1896, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1897, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1898, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1899, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1900, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1901, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1902, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1903, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1904, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1905, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1906, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1907, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1908, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1909, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1910, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1911, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1912, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1913, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1914, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1915, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1916, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1917, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1918, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1919, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1920, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1921, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1922, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1923, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1924, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1925, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 1926, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1927, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1928, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1929, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1930, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1931, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1932, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1933, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1934, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1935, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1936, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1937, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1938, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1939, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1940, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1941, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1942, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1943, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1944, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1945, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1946, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1947, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1948, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1949, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1950, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1951, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1952, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1953, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1954, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1955, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1956, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1957, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1958, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1959, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1960, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1961, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1962, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1963, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1964, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1965, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1966, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1967, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1968, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1969, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1970, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1971, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1972, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1973, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1974, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1975, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1976, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1977, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1978, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1979, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1980, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1981, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1982, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1983, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1984, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1985, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1986, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1987, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1988, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1989, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1990, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1991, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1992, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1993, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1994, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1995, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1996, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 1997, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 1998, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 1999, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2000, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2001, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2002, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2003, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2004, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2005, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2006, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2007, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2008, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2009, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2010, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2011, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2012, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N1 * C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2013, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2014, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2015, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N1 * C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2016, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2017, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2018, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N1 * C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2019, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2020, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2021, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N1 * C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2022, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2023, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2024, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2025, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2026, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2027, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2028, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2029, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2030, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2031, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2032, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2033, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2034, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2035, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2036, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2037, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2038, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2039, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2040, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2041, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2042, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2043, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2044, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2045, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2046, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2047, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2048, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2049, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2050, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2051, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2052, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2053, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2054, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2055, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2056, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2057, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2058, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2059, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2060, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2061, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2062, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2063, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2064, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2065, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2066, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2067, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2068, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2069, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2070, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2071, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2072, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2073, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2074, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2075, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2076, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2077, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2078, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2079, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2080, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2081, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2082, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2083, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2084, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2085, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2086, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2087, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2088, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2089, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2090, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2091, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2092, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2093, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2094, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2095, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2096, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2097, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2098, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2099, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2100, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2101, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2102, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2103, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2104, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2105, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2106, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2107, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2108, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2109, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2110, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2111, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2112, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2113, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2114, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2115, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2116, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2117, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2118, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2119, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2120, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2121, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2122, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2123, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2124, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2125, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2126, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2127, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2128, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2129, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2130, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2131, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2132, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2133, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2134, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2135, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2136, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2137, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2138, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2139, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2140, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2141, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2142, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2143, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2144, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2145, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2146, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2147, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2148, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2149, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2150, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2151, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2152, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2153, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2154, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2155, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2156, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2157, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2158, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2159, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2160, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2161, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2162, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2163, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2164, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2165, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2166, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2167, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2168, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2169, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2170, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2171, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2172, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2173, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2174, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2175, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2176, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2177, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2178, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2179, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2180, C1).
rule(R, gcd, (N0, N1), add(call(gcd, (C1, (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2181, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2182, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2183, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, (C1, (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2184, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2185, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2186, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, (C1, (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2187, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2188, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2189, C1).
rule(R, gcd, (N0, N1), div(call(gcd, (C1, (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2190, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2191, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2192, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2193, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2194, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2195, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2196, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2197, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2198, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2199, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2200, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2201, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2202, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2203, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2204, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2205, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2206, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2207, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2208, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2209, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2210, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2211, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2212, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2213, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2214, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2215, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2216, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2217, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2218, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2219, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2220, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2221, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2222, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2223, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2224, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2225, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2226, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2227, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2228, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2229, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2230, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2231, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2232, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2233, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2234, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2235, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2236, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2237, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2238, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2239, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2240, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2241, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2242, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2243, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2244, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2245, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2246, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2247, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2248, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2249, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2250, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2251, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2252, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2253, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2254, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2255, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2256, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2257, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2258, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2259, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2260, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2261, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2262, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2263, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2264, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2265, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2266, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2267, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2268, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2269, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2270, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2271, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2272, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2273, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2274, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2275, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2276, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2277, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2278, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2279, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2280, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2281, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2282, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2283, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2284, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2285, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2286, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2287, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2288, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2289, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2290, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2291, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2292, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2293, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2294, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2295, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2296, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2297, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2298, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2299, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2300, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2301, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2302, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2303, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2304, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2305, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2306, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2307, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2308, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2309, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2310, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2311, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2312, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2313, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2314, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2315, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2316, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2317, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2318, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2319, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2320, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2321, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2322, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2323, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2324, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2325, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2326, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2327, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2328, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2329, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2330, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2331, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2332, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2333, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2334, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2335, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2336, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2337, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2338, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2339, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2340, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2341, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2342, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2343, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2344, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2345, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2346, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2347, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2348, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 - C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2349, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2350, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2351, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 - C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2352, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2353, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2354, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 - C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2355, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2356, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2357, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 - C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2358, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2359, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2360, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2361, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2362, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2363, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2364, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2365, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2366, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2367, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2368, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2369, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 - N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2370, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2371, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2372, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2373, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2374, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2375, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2376, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2377, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2378, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2379, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2380, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2381, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), N0)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2382, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2383, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2384, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2385, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2386, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2387, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2388, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2389, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2390, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2391, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2392, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2393, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2394, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2395, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2396, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2397, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2398, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2399, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2400, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2401, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2402, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2403, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2404, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2405, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), N1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2406, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2407, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2408, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2409, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2410, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2411, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2412, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2413, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2414, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2415, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2416, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2417, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2418, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2419, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2420, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2421, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2422, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2423, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2424, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2425, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2426, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2427, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2428, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2429, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * N0))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2430, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2431, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2432, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2433, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2434, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2435, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2436, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2437, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2438, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2439, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2440, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2441, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2442, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2443, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2444, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2445, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2446, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2447, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2448, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2449, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2450, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2451, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 + C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2452, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 + C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2453, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 + C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2454, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2455, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2456, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2457, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2458, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2459, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2460, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2461, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2462, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2463, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2464, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2465, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2466, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2467, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2468, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2469, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2470, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2471, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2472, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2473, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2474, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2475, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2476, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2477, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N1 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2478, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2479, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2480, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2481, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2482, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2483, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2484, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2485, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2486, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2487, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), C2)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2488, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), C2)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2489, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), C2)), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2490, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2491, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2492, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2493, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2494, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2495, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2496, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2497, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2498, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2499, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 - C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2500, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 - C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2501, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 - C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2502, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2503, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2504, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2505, C1, C2, C3).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2506, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2507, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2508, C1, C2, C3).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2509, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2510, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2511, C1, C2, C3).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * C2))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2512, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * C2))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2513, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 * C2))), C3)) :- is_call(call(gcd, (N0, N1))), choose(R, 2514, C1, C2, C3).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2515, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2516, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 * C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2517, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2518, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2519, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 * C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2520, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2521, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2522, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 * C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2523, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2524, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2525, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 * C1), (N0 + N1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2526, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2527).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2528).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2529, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2530).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2531).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2532, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2533).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2534).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2535, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 - N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2536).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 - N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2537).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 - N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2538, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2539).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2540).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2541, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2542).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2543).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2544, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2545).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2546).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2547, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), N0)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2548).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), N0)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2549).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), N0)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2550, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2551).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2552).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2553, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2554).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2555).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2556, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2557).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2558).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2559, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2560).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2561).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2562, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2563).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2564).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2565, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2566).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2567).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2568, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2569).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2570).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2571, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), N1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2572).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), N1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2573).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), N1)), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2574, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2575).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2576).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2577, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2578).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2579).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2580, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2581).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2582).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2583, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2584).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2585).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2586, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2587).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2588).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2589, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2590).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2591).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2592, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2593).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2594).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2595, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * N0))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2596).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * N0))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2597).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * N0))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2598, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2599, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2600, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2601, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2602, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2603, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2604, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2605, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2606, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2607, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2608, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2609, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2610, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2611, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2612, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2613, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2614, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2615, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2616, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2617, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2618, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2619, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 + C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2620, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 + C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2621, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 + C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2622, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2623, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2624, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2625, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2626, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2627, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2628, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2629, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2630, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2631, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2632, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2633, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2634, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2635, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2636, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2637, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2638, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2639, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2640, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2641, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2642, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2643, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2644, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2645, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N1 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2646, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2647, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2648, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2649, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2650, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2651, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2652, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2653, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2654, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2655, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), C1)), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2656, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), C1)), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2657, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), C1)), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2658, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2659, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2660, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2661, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2662, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2663, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2664, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2665, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2666, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2667, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 - C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2668, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 - C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2669, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 - C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2670, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2671, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2672, C1).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2673, C1, C2).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2674, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2675, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2676, C1, C2).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2677, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2678, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2679, C1, C2).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * C1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2680, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * C1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2681, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 * C1))), C2)) :- is_call(call(gcd, (N0, N1))), choose(R, 2682, C1, C2).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2683).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2684).
rule(R, gcd, (N0, N1), add(call(gcd, ((N0 + N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2685, C1).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2686).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2687).
rule(R, gcd, (N0, N1), mul(call(gcd, ((N0 + N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2688, C1).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2689).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2690).
rule(R, gcd, (N0, N1), sub(call(gcd, ((N0 + N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2691, C1).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 + N1))), N0)) :- is_call(call(gcd, (N0, N1))), choose(R, 2692).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 + N1))), N1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2693).
rule(R, gcd, (N0, N1), div(call(gcd, ((N0 + N1), (N0 + N1))), C1)) :- is_call(call(gcd, (N0, N1))), choose(R, 2694, C1).
1 {
choose_match(R, 3;4;5;6) ,
choose_match(R, 1;2, C0) : expr_const(C0) 
} 1 :- num_match(R).
1 {
choose(R, 2;3;4;8;12;13;14;15;17;19;21;23;25;63;65;67;69;71;73;111;113;115;117;119;121;123;125;127;129;131;133;135;137;139;141;143;145;147;148;149;150;151;152;160;161;162;163;164;165;166;174;175;176;177;178;179;180;188;189;190;191;192;193;194;202;203;204;205;206;207;208;216;217;218;219;220;221;222;230;329;330;331;332;333;334;342;343;344;346;347;349;350;352;353;355;356;358;359;361;362;364;365;367;368;370;371;373;374;376;377;379;380;382;383;385;386;388;389;391;392;394;395;397;398;400;401;403;404;406;407;409;410;412;413;499;500;502;503;505;506;508;509;511;512;514;515;517;518;520;521;523;524;526;527;529;530;532;533;535;536;538;539;541;542;544;545;547;548;550;551;553;554;556;557;559;560;562;563;565;566;568;569;571;572;574;575;577;578;580;581;667;668;670;671;673;674;676;677;679;680;682;683;685;686;688;689;691;692;694;695;697;698;700;701;703;704;706;707;709;710;712;713;715;716;718;719;721;722;724;725;727;728;730;731;733;734;736;737;739;740;742;743;745;746;748;749;835;836;838;839;841;842;844;845;847;848;850;851;853;854;856;857;859;860;862;863;865;866;868;869;871;872;874;875;877;878;880;881;883;884;886;887;889;890;892;893;895;896;898;899;901;902;904;905;907;908;910;911;913;914;916;917;1003;1004;1006;1007;1009;1010;1012;1013;1015;1016;1018;1019;1021;1022;1024;1025;1027;1028;1030;1031;1033;1034;1036;1037;1039;1040;1042;1043;1045;1046;1048;1049;1051;1052;1054;1055;1057;1058;1060;1061;1063;1064;1066;1067;1069;1070;1072;1073;1075;1076;1078;1079;1081;1082;1084;1085;1171;1172;1174;1175;1177;1178;1180;1181;1183;1184;1186;1187;1189;1190;1192;1193;1195;1196;1198;1199;1201;1202;1204;1205;1207;1208;1210;1211;1213;1214;1216;1217;1219;1220;1222;1223;1225;1226;1228;1229;1231;1232;1234;1235;1237;1238;1240;1241;1243;1244;1246;1247;1249;1250;1252;1253;1339;1340;1342;1343;1345;1346;1348;1349;2527;2528;2530;2531;2533;2534;2536;2537;2539;2540;2542;2543;2545;2546;2548;2549;2551;2552;2554;2555;2557;2558;2560;2561;2563;2564;2566;2567;2569;2570;2572;2573;2575;2576;2578;2579;2581;2582;2584;2585;2587;2588;2590;2591;2593;2594;2596;2597;2683;2684;2686;2687;2689;2690;2692;2693) ,
choose(R, 1;5;6;7;9;10;11;16;18;20;22;24;26;27;29;31;33;35;37;39;41;43;45;47;49;51;53;55;57;59;61;64;66;68;70;72;74;75;77;79;81;83;85;87;89;91;93;95;97;99;101;103;105;107;109;112;114;116;118;120;122;124;126;128;130;132;134;136;138;140;142;144;146;153;154;155;156;157;158;159;167;168;169;170;171;172;173;181;182;183;184;185;186;187;195;196;197;198;199;200;201;209;210;211;212;213;214;215;223;224;225;226;227;228;229;231;232;233;234;235;236;244;245;246;247;248;249;250;258;259;260;261;262;263;264;272;273;274;275;276;277;278;286;287;288;289;290;291;292;300;301;302;303;304;305;306;314;315;316;317;318;319;320;328;335;336;337;338;339;340;341;345;348;351;354;357;360;363;366;369;372;375;378;381;384;387;390;393;396;399;402;405;408;411;414;415;416;418;419;421;422;424;425;427;428;430;431;433;434;436;437;439;440;442;443;445;446;448;449;451;452;454;455;457;458;460;461;463;464;466;467;469;470;472;473;475;476;478;479;481;482;484;485;487;488;490;491;493;494;496;497;501;504;507;510;513;516;519;522;525;528;531;534;537;540;543;546;549;552;555;558;561;564;567;570;573;576;579;582;583;584;586;587;589;590;592;593;595;596;598;599;601;602;604;605;607;608;610;611;613;614;616;617;619;620;622;623;625;626;628;629;631;632;634;635;637;638;640;641;643;644;646;647;649;650;652;653;655;656;658;659;661;662;664;665;669;672;675;678;681;684;687;690;693;696;699;702;705;708;711;714;717;720;723;726;729;732;735;738;741;744;747;750;751;752;754;755;757;758;760;761;763;764;766;767;769;770;772;773;775;776;778;779;781;782;784;785;787;788;790;791;793;794;796;797;799;800;802;803;805;806;808;809;811;812;814;815;817;818;820;821;823;824;826;827;829;830;832;833;837;840;843;846;849;852;855;858;861;864;867;870;873;876;879;882;885;888;891;894;897;900;903;906;909;912;915;918;919;920;922;923;925;926;928;929;931;932;934;935;937;938;940;941;943;944;946;947;949;950;952;953;955;956;958;959;961;962;964;965;967;968;970;971;973;974;976;977;979;980;982;983;985;986;988;989;991;992;994;995;997;998;1000;1001;1005;1008;1011;1014;1017;1020;1023;1026;1029;1032;1035;1038;1041;1044;1047;1050;1053;1056;1059;1062;1065;1068;1071;1074;1077;1080;1083;1086;1087;1088;1090;1091;1093;1094;1096;1097;1099;1100;1102;1103;1105;1106;1108;1109;1111;1112;1114;1115;1117;1118;1120;1121;1123;1124;1126;1127;1129;1130;1132;1133;1135;1136;1138;1139;1141;1142;1144;1145;1147;1148;1150;1151;1153;1154;1156;1157;1159;1160;1162;1163;1165;1166;1168;1169;1173;1176;1179;1182;1185;1188;1191;1194;1197;1200;1203;1206;1209;1212;1215;1218;1221;1224;1227;1230;1233;1236;1239;1242;1245;1248;1251;1254;1255;1256;1258;1259;1261;1262;1264;1265;1267;1268;1270;1271;1273;1274;1276;1277;1279;1280;1282;1283;1285;1286;1288;1289;1291;1292;1294;1295;1297;1298;1300;1301;1303;1304;1306;1307;1309;1310;1312;1313;1315;1316;1318;1319;1321;1322;1324;1325;1327;1328;1330;1331;1333;1334;1336;1337;1341;1344;1347;1350;1351;1352;1354;1355;1357;1358;1360;1361;1363;1364;1366;1367;1369;1370;1372;1373;1375;1376;1378;1379;1381;1382;1384;1385;1387;1388;1390;1391;1393;1394;1396;1397;1399;1400;1402;1403;1405;1406;1408;1409;1411;1412;1414;1415;1417;1418;1420;1421;1507;1508;1510;1511;1513;1514;1516;1517;1519;1520;1522;1523;1525;1526;1528;1529;1531;1532;1534;1535;1537;1538;1540;1541;1543;1544;1546;1547;1549;1550;1552;1553;1555;1556;1558;1559;1561;1562;1564;1565;1567;1568;1570;1571;1573;1574;1576;1577;1579;1580;1582;1583;1585;1586;1588;1589;1675;1676;1678;1679;1681;1682;1684;1685;1687;1688;1690;1691;1693;1694;1696;1697;1699;1700;1702;1703;1705;1706;1708;1709;1711;1712;1714;1715;1717;1718;1720;1721;1723;1724;1726;1727;1729;1730;1732;1733;1735;1736;1738;1739;1741;1742;1744;1745;1747;1748;1750;1751;1753;1754;1756;1757;1843;1844;1846;1847;1849;1850;1852;1853;1855;1856;1858;1859;1861;1862;1864;1865;1867;1868;1870;1871;1873;1874;1876;1877;1879;1880;1882;1883;1885;1886;1888;1889;1891;1892;1894;1895;1897;1898;1900;1901;1903;1904;1906;1907;1909;1910;1912;1913;1915;1916;1918;1919;1921;1922;1924;1925;2011;2012;2014;2015;2017;2018;2020;2021;2023;2024;2026;2027;2029;2030;2032;2033;2035;2036;2038;2039;2041;2042;2044;2045;2047;2048;2050;2051;2053;2054;2056;2057;2059;2060;2062;2063;2065;2066;2068;2069;2071;2072;2074;2075;2077;2078;2080;2081;2083;2084;2086;2087;2089;2090;2092;2093;2179;2180;2182;2183;2185;2186;2188;2189;2191;2192;2194;2195;2197;2198;2200;2201;2203;2204;2206;2207;2209;2210;2212;2213;2215;2216;2218;2219;2221;2222;2224;2225;2227;2228;2230;2231;2233;2234;2236;2237;2239;2240;2242;2243;2245;2246;2248;2249;2251;2252;2254;2255;2257;2258;2260;2261;2347;2348;2350;2351;2353;2354;2356;2357;2359;2360;2362;2363;2365;2366;2368;2369;2371;2372;2374;2375;2377;2378;2380;2381;2383;2384;2386;2387;2389;2390;2392;2393;2395;2396;2398;2399;2401;2402;2404;2405;2407;2408;2410;2411;2413;2414;2416;2417;2419;2420;2422;2423;2425;2426;2428;2429;2515;2516;2518;2519;2521;2522;2524;2525;2529;2532;2535;2538;2541;2544;2547;2550;2553;2556;2559;2562;2565;2568;2571;2574;2577;2580;2583;2586;2589;2592;2595;2598;2599;2600;2602;2603;2605;2606;2608;2609;2611;2612;2614;2615;2617;2618;2620;2621;2623;2624;2626;2627;2629;2630;2632;2633;2635;2636;2638;2639;2641;2642;2644;2645;2647;2648;2650;2651;2653;2654;2656;2657;2659;2660;2662;2663;2665;2666;2668;2669;2671;2672;2674;2675;2677;2678;2680;2681;2685;2688;2691;2694, C0) : expr_const(C0) ,
choose(R, 28;30;32;34;36;38;40;42;44;46;48;50;52;54;56;58;60;62;76;78;80;82;84;86;88;90;92;94;96;98;100;102;104;106;108;110;237;238;239;240;241;242;243;251;252;253;254;255;256;257;265;266;267;268;269;270;271;279;280;281;282;283;284;285;293;294;295;296;297;298;299;307;308;309;310;311;312;313;321;322;323;324;325;326;327;417;420;423;426;429;432;435;438;441;444;447;450;453;456;459;462;465;468;471;474;477;480;483;486;489;492;495;498;585;588;591;594;597;600;603;606;609;612;615;618;621;624;627;630;633;636;639;642;645;648;651;654;657;660;663;666;753;756;759;762;765;768;771;774;777;780;783;786;789;792;795;798;801;804;807;810;813;816;819;822;825;828;831;834;921;924;927;930;933;936;939;942;945;948;951;954;957;960;963;966;969;972;975;978;981;984;987;990;993;996;999;1002;1089;1092;1095;1098;1101;1104;1107;1110;1113;1116;1119;1122;1125;1128;1131;1134;1137;1140;1143;1146;1149;1152;1155;1158;1161;1164;1167;1170;1257;1260;1263;1266;1269;1272;1275;1278;1281;1284;1287;1290;1293;1296;1299;1302;1305;1308;1311;1314;1317;1320;1323;1326;1329;1332;1335;1338;1353;1356;1359;1362;1365;1368;1371;1374;1377;1380;1383;1386;1389;1392;1395;1398;1401;1404;1407;1410;1413;1416;1419;1422;1423;1424;1426;1427;1429;1430;1432;1433;1435;1436;1438;1439;1441;1442;1444;1445;1447;1448;1450;1451;1453;1454;1456;1457;1459;1460;1462;1463;1465;1466;1468;1469;1471;1472;1474;1475;1477;1478;1480;1481;1483;1484;1486;1487;1489;1490;1492;1493;1495;1496;1498;1499;1501;1502;1504;1505;1509;1512;1515;1518;1521;1524;1527;1530;1533;1536;1539;1542;1545;1548;1551;1554;1557;1560;1563;1566;1569;1572;1575;1578;1581;1584;1587;1590;1591;1592;1594;1595;1597;1598;1600;1601;1603;1604;1606;1607;1609;1610;1612;1613;1615;1616;1618;1619;1621;1622;1624;1625;1627;1628;1630;1631;1633;1634;1636;1637;1639;1640;1642;1643;1645;1646;1648;1649;1651;1652;1654;1655;1657;1658;1660;1661;1663;1664;1666;1667;1669;1670;1672;1673;1677;1680;1683;1686;1689;1692;1695;1698;1701;1704;1707;1710;1713;1716;1719;1722;1725;1728;1731;1734;1737;1740;1743;1746;1749;1752;1755;1758;1759;1760;1762;1763;1765;1766;1768;1769;1771;1772;1774;1775;1777;1778;1780;1781;1783;1784;1786;1787;1789;1790;1792;1793;1795;1796;1798;1799;1801;1802;1804;1805;1807;1808;1810;1811;1813;1814;1816;1817;1819;1820;1822;1823;1825;1826;1828;1829;1831;1832;1834;1835;1837;1838;1840;1841;1845;1848;1851;1854;1857;1860;1863;1866;1869;1872;1875;1878;1881;1884;1887;1890;1893;1896;1899;1902;1905;1908;1911;1914;1917;1920;1923;1926;1927;1928;1930;1931;1933;1934;1936;1937;1939;1940;1942;1943;1945;1946;1948;1949;1951;1952;1954;1955;1957;1958;1960;1961;1963;1964;1966;1967;1969;1970;1972;1973;1975;1976;1978;1979;1981;1982;1984;1985;1987;1988;1990;1991;1993;1994;1996;1997;1999;2000;2002;2003;2005;2006;2008;2009;2013;2016;2019;2022;2025;2028;2031;2034;2037;2040;2043;2046;2049;2052;2055;2058;2061;2064;2067;2070;2073;2076;2079;2082;2085;2088;2091;2094;2095;2096;2098;2099;2101;2102;2104;2105;2107;2108;2110;2111;2113;2114;2116;2117;2119;2120;2122;2123;2125;2126;2128;2129;2131;2132;2134;2135;2137;2138;2140;2141;2143;2144;2146;2147;2149;2150;2152;2153;2155;2156;2158;2159;2161;2162;2164;2165;2167;2168;2170;2171;2173;2174;2176;2177;2181;2184;2187;2190;2193;2196;2199;2202;2205;2208;2211;2214;2217;2220;2223;2226;2229;2232;2235;2238;2241;2244;2247;2250;2253;2256;2259;2262;2263;2264;2266;2267;2269;2270;2272;2273;2275;2276;2278;2279;2281;2282;2284;2285;2287;2288;2290;2291;2293;2294;2296;2297;2299;2300;2302;2303;2305;2306;2308;2309;2311;2312;2314;2315;2317;2318;2320;2321;2323;2324;2326;2327;2329;2330;2332;2333;2335;2336;2338;2339;2341;2342;2344;2345;2349;2352;2355;2358;2361;2364;2367;2370;2373;2376;2379;2382;2385;2388;2391;2394;2397;2400;2403;2406;2409;2412;2415;2418;2421;2424;2427;2430;2431;2432;2434;2435;2437;2438;2440;2441;2443;2444;2446;2447;2449;2450;2452;2453;2455;2456;2458;2459;2461;2462;2464;2465;2467;2468;2470;2471;2473;2474;2476;2477;2479;2480;2482;2483;2485;2486;2488;2489;2491;2492;2494;2495;2497;2498;2500;2501;2503;2504;2506;2507;2509;2510;2512;2513;2517;2520;2523;2526;2601;2604;2607;2610;2613;2616;2619;2622;2625;2628;2631;2634;2637;2640;2643;2646;2649;2652;2655;2658;2661;2664;2667;2670;2673;2676;2679;2682, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose(R, 1425;1428;1431;1434;1437;1440;1443;1446;1449;1452;1455;1458;1461;1464;1467;1470;1473;1476;1479;1482;1485;1488;1491;1494;1497;1500;1503;1506;1593;1596;1599;1602;1605;1608;1611;1614;1617;1620;1623;1626;1629;1632;1635;1638;1641;1644;1647;1650;1653;1656;1659;1662;1665;1668;1671;1674;1761;1764;1767;1770;1773;1776;1779;1782;1785;1788;1791;1794;1797;1800;1803;1806;1809;1812;1815;1818;1821;1824;1827;1830;1833;1836;1839;1842;1929;1932;1935;1938;1941;1944;1947;1950;1953;1956;1959;1962;1965;1968;1971;1974;1977;1980;1983;1986;1989;1992;1995;1998;2001;2004;2007;2010;2097;2100;2103;2106;2109;2112;2115;2118;2121;2124;2127;2130;2133;2136;2139;2142;2145;2148;2151;2154;2157;2160;2163;2166;2169;2172;2175;2178;2265;2268;2271;2274;2277;2280;2283;2286;2289;2292;2295;2298;2301;2304;2307;2310;2313;2316;2319;2322;2325;2328;2331;2334;2337;2340;2343;2346;2433;2436;2439;2442;2445;2448;2451;2454;2457;2460;2463;2466;2469;2472;2475;2478;2481;2484;2487;2490;2493;2496;2499;2502;2505;2508;2511;2514, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 1 :- num_rules(R).
#minimise [choose(_, R)=R, choose(_, R, _)=R, choose(_, R, _, _)=R, choose(_, R, _, _, _)=R ].
