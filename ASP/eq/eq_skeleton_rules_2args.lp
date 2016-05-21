#domain const_number(N0).
#domain const_number(N1).

rule(R, f, (N0, N1), C1) :- is_call(call(f, (N0, N1))), choose(R, 1, C1).
rule(R, f, (N0, N1), N0) :- is_call(call(f, (N0, N1))), choose(R, 2).
rule(R, f, (N0, N1), N1) :- is_call(call(f, (N0, N1))), choose(R, 3).
rule(R, f, (N0, N1), (N0 * N0)) :- is_call(call(f, (N0, N1))), choose(R, 4).
rule(R, f, (N0, N1), (N0 + C1)) :- is_call(call(f, (N0, N1))), choose(R, 5, C1).
rule(R, f, (N0, N1), (N0 * C1)) :- is_call(call(f, (N0, N1))), choose(R, 6, C1).
rule(R, f, (N0, N1), (N0 - C1)) :- is_call(call(f, (N0, N1))), choose(R, 7, C1).
rule(R, f, (N0, N1), (N1 * N1)) :- is_call(call(f, (N0, N1))), choose(R, 8).
rule(R, f, (N0, N1), (N1 + C1)) :- is_call(call(f, (N0, N1))), choose(R, 9, C1).
rule(R, f, (N0, N1), (N1 * C1)) :- is_call(call(f, (N0, N1))), choose(R, 10, C1).
rule(R, f, (N0, N1), (N1 - C1)) :- is_call(call(f, (N0, N1))), choose(R, 11, C1).
rule(R, f, (N0, N1), (N0 + N1)) :- is_call(call(f, (N0, N1))), choose(R, 12).
rule(R, f, (N0, N1), (N0 * N1)) :- is_call(call(f, (N0, N1))), choose(R, 13).
rule(R, f, (N0, N1), (N0 - N1)) :- is_call(call(f, (N0, N1))), choose(R, 14).
rule(R, f, (N0, N1), ((N0 * N0) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 15).
rule(R, f, (N0, N1), ((N0 * N0) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 16, C1).
rule(R, f, (N0, N1), ((N0 * N0) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 17).
rule(R, f, (N0, N1), ((N0 * N0) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 18, C1).
rule(R, f, (N0, N1), ((N0 * N0) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 19).
rule(R, f, (N0, N1), ((N0 * N0) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 20, C1).
rule(R, f, (N0, N1), ((N0 * N0) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 21).
rule(R, f, (N0, N1), ((N0 * N0) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 22, C1).
rule(R, f, (N0, N1), ((N0 * N0) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 23).
rule(R, f, (N0, N1), ((N0 * N0) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 24, C1).
rule(R, f, (N0, N1), ((N0 * N0) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 25).
rule(R, f, (N0, N1), ((N0 * N0) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 26, C1).
rule(R, f, (N0, N1), ((N0 + C1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 27, C1).
rule(R, f, (N0, N1), ((N0 + C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 28, C1, C2).
rule(R, f, (N0, N1), ((N0 + C1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 29, C1).
rule(R, f, (N0, N1), ((N0 + C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 30, C1, C2).
rule(R, f, (N0, N1), ((N0 + C1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 31, C1).
rule(R, f, (N0, N1), ((N0 + C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 32, C1, C2).
rule(R, f, (N0, N1), ((N0 + C1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 33, C1).
rule(R, f, (N0, N1), ((N0 + C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 34, C1, C2).
rule(R, f, (N0, N1), ((N0 + C1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 35, C1).
rule(R, f, (N0, N1), ((N0 + C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 36, C1, C2).
rule(R, f, (N0, N1), ((N0 + C1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 37, C1).
rule(R, f, (N0, N1), ((N0 + C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 38, C1, C2).
rule(R, f, (N0, N1), ((N0 * C1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 39, C1).
rule(R, f, (N0, N1), ((N0 * C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 40, C1, C2).
rule(R, f, (N0, N1), ((N0 * C1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 41, C1).
rule(R, f, (N0, N1), ((N0 * C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 42, C1, C2).
rule(R, f, (N0, N1), ((N0 * C1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 43, C1).
rule(R, f, (N0, N1), ((N0 * C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 44, C1, C2).
rule(R, f, (N0, N1), ((N0 * C1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 45, C1).
rule(R, f, (N0, N1), ((N0 * C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 46, C1, C2).
rule(R, f, (N0, N1), ((N0 * C1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 47, C1).
rule(R, f, (N0, N1), ((N0 * C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 48, C1, C2).
rule(R, f, (N0, N1), ((N0 * C1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 49, C1).
rule(R, f, (N0, N1), ((N0 * C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 50, C1, C2).
rule(R, f, (N0, N1), ((N0 - C1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 51, C1).
rule(R, f, (N0, N1), ((N0 - C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 52, C1, C2).
rule(R, f, (N0, N1), ((N0 - C1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 53, C1).
rule(R, f, (N0, N1), ((N0 - C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 54, C1, C2).
rule(R, f, (N0, N1), ((N0 - C1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 55, C1).
rule(R, f, (N0, N1), ((N0 - C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 56, C1, C2).
rule(R, f, (N0, N1), ((N0 - C1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 57, C1).
rule(R, f, (N0, N1), ((N0 - C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 58, C1, C2).
rule(R, f, (N0, N1), ((N0 - C1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 59, C1).
rule(R, f, (N0, N1), ((N0 - C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 60, C1, C2).
rule(R, f, (N0, N1), ((N0 - C1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 61, C1).
rule(R, f, (N0, N1), ((N0 - C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 62, C1, C2).
rule(R, f, (N0, N1), ((N1 * N1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 63).
rule(R, f, (N0, N1), ((N1 * N1) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 64, C1).
rule(R, f, (N0, N1), ((N1 * N1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 65).
rule(R, f, (N0, N1), ((N1 * N1) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 66, C1).
rule(R, f, (N0, N1), ((N1 * N1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 67).
rule(R, f, (N0, N1), ((N1 * N1) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 68, C1).
rule(R, f, (N0, N1), ((N1 * N1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 69).
rule(R, f, (N0, N1), ((N1 * N1) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 70, C1).
rule(R, f, (N0, N1), ((N1 * N1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 71).
rule(R, f, (N0, N1), ((N1 * N1) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 72, C1).
rule(R, f, (N0, N1), ((N1 * N1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 73).
rule(R, f, (N0, N1), ((N1 * N1) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 74, C1).
rule(R, f, (N0, N1), ((N1 + C1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 75, C1).
rule(R, f, (N0, N1), ((N1 + C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 76, C1, C2).
rule(R, f, (N0, N1), ((N1 + C1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 77, C1).
rule(R, f, (N0, N1), ((N1 + C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 78, C1, C2).
rule(R, f, (N0, N1), ((N1 + C1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 79, C1).
rule(R, f, (N0, N1), ((N1 + C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 80, C1, C2).
rule(R, f, (N0, N1), ((N1 + C1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 81, C1).
rule(R, f, (N0, N1), ((N1 + C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 82, C1, C2).
rule(R, f, (N0, N1), ((N1 + C1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 83, C1).
rule(R, f, (N0, N1), ((N1 + C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 84, C1, C2).
rule(R, f, (N0, N1), ((N1 + C1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 85, C1).
rule(R, f, (N0, N1), ((N1 + C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 86, C1, C2).
rule(R, f, (N0, N1), ((N1 * C1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 87, C1).
rule(R, f, (N0, N1), ((N1 * C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 88, C1, C2).
rule(R, f, (N0, N1), ((N1 * C1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 89, C1).
rule(R, f, (N0, N1), ((N1 * C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 90, C1, C2).
rule(R, f, (N0, N1), ((N1 * C1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 91, C1).
rule(R, f, (N0, N1), ((N1 * C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 92, C1, C2).
rule(R, f, (N0, N1), ((N1 * C1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 93, C1).
rule(R, f, (N0, N1), ((N1 * C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 94, C1, C2).
rule(R, f, (N0, N1), ((N1 * C1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 95, C1).
rule(R, f, (N0, N1), ((N1 * C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 96, C1, C2).
rule(R, f, (N0, N1), ((N1 * C1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 97, C1).
rule(R, f, (N0, N1), ((N1 * C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 98, C1, C2).
rule(R, f, (N0, N1), ((N1 - C1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 99, C1).
rule(R, f, (N0, N1), ((N1 - C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 100, C1, C2).
rule(R, f, (N0, N1), ((N1 - C1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 101, C1).
rule(R, f, (N0, N1), ((N1 - C1) + C2)) :- is_call(call(f, (N0, N1))), choose(R, 102, C1, C2).
rule(R, f, (N0, N1), ((N1 - C1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 103, C1).
rule(R, f, (N0, N1), ((N1 - C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 104, C1, C2).
rule(R, f, (N0, N1), ((N1 - C1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 105, C1).
rule(R, f, (N0, N1), ((N1 - C1) * C2)) :- is_call(call(f, (N0, N1))), choose(R, 106, C1, C2).
rule(R, f, (N0, N1), ((N1 - C1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 107, C1).
rule(R, f, (N0, N1), ((N1 - C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 108, C1, C2).
rule(R, f, (N0, N1), ((N1 - C1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 109, C1).
rule(R, f, (N0, N1), ((N1 - C1) - C2)) :- is_call(call(f, (N0, N1))), choose(R, 110, C1, C2).
rule(R, f, (N0, N1), ((N0 + N1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 111).
rule(R, f, (N0, N1), ((N0 + N1) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 112, C1).
rule(R, f, (N0, N1), ((N0 + N1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 113).
rule(R, f, (N0, N1), ((N0 + N1) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 114, C1).
rule(R, f, (N0, N1), ((N0 + N1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 115).
rule(R, f, (N0, N1), ((N0 + N1) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 116, C1).
rule(R, f, (N0, N1), ((N0 + N1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 117).
rule(R, f, (N0, N1), ((N0 + N1) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 118, C1).
rule(R, f, (N0, N1), ((N0 + N1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 119).
rule(R, f, (N0, N1), ((N0 + N1) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 120, C1).
rule(R, f, (N0, N1), ((N0 + N1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 121).
rule(R, f, (N0, N1), ((N0 + N1) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 122, C1).
rule(R, f, (N0, N1), ((N0 * N1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 123).
rule(R, f, (N0, N1), ((N0 * N1) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 124, C1).
rule(R, f, (N0, N1), ((N0 * N1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 125).
rule(R, f, (N0, N1), ((N0 * N1) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 126, C1).
rule(R, f, (N0, N1), ((N0 * N1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 127).
rule(R, f, (N0, N1), ((N0 * N1) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 128, C1).
rule(R, f, (N0, N1), ((N0 * N1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 129).
rule(R, f, (N0, N1), ((N0 * N1) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 130, C1).
rule(R, f, (N0, N1), ((N0 * N1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 131).
rule(R, f, (N0, N1), ((N0 * N1) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 132, C1).
rule(R, f, (N0, N1), ((N0 * N1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 133).
rule(R, f, (N0, N1), ((N0 * N1) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 134, C1).
rule(R, f, (N0, N1), ((N0 - N1) + N0)) :- is_call(call(f, (N0, N1))), choose(R, 135).
rule(R, f, (N0, N1), ((N0 - N1) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 136, C1).
rule(R, f, (N0, N1), ((N0 - N1) + N1)) :- is_call(call(f, (N0, N1))), choose(R, 137).
rule(R, f, (N0, N1), ((N0 - N1) + C1)) :- is_call(call(f, (N0, N1))), choose(R, 138, C1).
rule(R, f, (N0, N1), ((N0 - N1) * N0)) :- is_call(call(f, (N0, N1))), choose(R, 139).
rule(R, f, (N0, N1), ((N0 - N1) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 140, C1).
rule(R, f, (N0, N1), ((N0 - N1) * N1)) :- is_call(call(f, (N0, N1))), choose(R, 141).
rule(R, f, (N0, N1), ((N0 - N1) * C1)) :- is_call(call(f, (N0, N1))), choose(R, 142, C1).
rule(R, f, (N0, N1), ((N0 - N1) - N0)) :- is_call(call(f, (N0, N1))), choose(R, 143).
rule(R, f, (N0, N1), ((N0 - N1) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 144, C1).
rule(R, f, (N0, N1), ((N0 - N1) - N1)) :- is_call(call(f, (N0, N1))), choose(R, 145).
rule(R, f, (N0, N1), ((N0 - N1) - C1)) :- is_call(call(f, (N0, N1))), choose(R, 146, C1).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 147).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N1 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 148, C1).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 149).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N0 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 150, C1).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 151).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 152).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N0 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 153, C1).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N0 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 154, C1).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 155).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N1 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 156, C1).
rule(R, f, (N0, N1), call(f, ((N0 - N1), (N1 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 157, C1).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 158, C1).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N1 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 159, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 160, C1).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N0 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 161, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 162, C1).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 163, C1).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N0 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 164, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N0 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 165, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 166, C1).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N1 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 167, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 * C1), (N1 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 168, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 169).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N1 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 170, C1).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 171).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N0 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 172, C1).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 173).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 174).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N0 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 175, C1).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N0 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 176, C1).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 177).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N1 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 178, C1).
rule(R, f, (N0, N1), call(f, ((N1 * N1), (N1 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 179, C1).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 180, C1).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N1 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 181, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 182, C1).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N0 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 183, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 184, C1).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 185, C1).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N0 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 186, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N0 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 187, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 188, C1).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N1 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 189, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 - C1), (N1 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 190, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 191).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N1 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 192, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 193).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N0 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 194, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 195).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 196).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N0 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 197, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N0 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 198, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 199).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N1 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 200, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N1), (N1 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 201, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 202).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N1 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 203, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 204).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N0 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 205, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 206).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 207).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N0 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 208, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N0 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 209, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 210).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N1 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 211, C1).
rule(R, f, (N0, N1), call(f, ((N0 * N0), (N1 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 212, C1).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 213, C1).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N1 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 214, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 215, C1).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N0 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 216, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 217, C1).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 218, C1).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N0 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 219, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N0 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 220, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 221, C1).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N1 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 222, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 + C1), (N1 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 223, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 224, C1).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N1 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 225, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 226, C1).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N0 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 227, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 228, C1).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 229, C1).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N0 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 230, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N0 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 231, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 232, C1).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N1 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 233, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 * C1), (N1 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 234, C1, C2).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 235).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N1 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 236, C1).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 237).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N0 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 238, C1).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 239).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 240).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N0 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 241, C1).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N0 * C1)))) :- is_call(call(f, (N0, N1))), choose(R, 242, C1).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 243).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N1 + C1)))) :- is_call(call(f, (N0, N1))), choose(R, 244, C1).
rule(R, f, (N0, N1), call(f, ((N0 + N1), (N1 - C1)))) :- is_call(call(f, (N0, N1))), choose(R, 245, C1).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 246, C1).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N1 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 247, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 248, C1).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N0 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 249, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 250, C1).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 251, C1).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N0 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 252, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N0 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 253, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 254, C1).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N1 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 255, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 + C1), (N1 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 256, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N0 - N1)))) :- is_call(call(f, (N0, N1))), choose(R, 257, C1).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N1 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 258, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N1 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 259, C1).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N0 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 260, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N0 * N1)))) :- is_call(call(f, (N0, N1))), choose(R, 261, C1).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N0 * N0)))) :- is_call(call(f, (N0, N1))), choose(R, 262, C1).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N0 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 263, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N0 * C2)))) :- is_call(call(f, (N0, N1))), choose(R, 264, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N0 + N1)))) :- is_call(call(f, (N0, N1))), choose(R, 265, C1).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N1 + C2)))) :- is_call(call(f, (N0, N1))), choose(R, 266, C1, C2).
rule(R, f, (N0, N1), call(f, ((N1 - C1), (N1 - C2)))) :- is_call(call(f, (N0, N1))), choose(R, 267, C1, C2).
1 {
choose(R, 2;3;4;8;12;13;14;15;17;19;21;23;25;63;65;67;69;71;73;111;113;115;117;119;121;123;125;127;129;131;133;135;137;139;141;143;145;147;149;151;152;155;169;171;173;174;177;191;193;195;196;199;202;204;206;207;210;235;237;239;240;243) ,
choose(R, 1;5;6;7;9;10;11;16;18;20;22;24;26;27;29;31;33;35;37;39;41;43;45;47;49;51;53;55;57;59;61;64;66;68;70;72;74;75;77;79;81;83;85;87;89;91;93;95;97;99;101;103;105;107;109;112;114;116;118;120;122;124;126;128;130;132;134;136;138;140;142;144;146;148;150;153;154;156;157;158;160;162;163;166;170;172;175;176;178;179;180;182;184;185;188;192;194;197;198;200;201;203;205;208;209;211;212;213;215;217;218;221;224;226;228;229;232;236;238;241;242;244;245;246;248;250;251;254;257;259;261;262;265, C0) : expr_const(C0) ,
choose(R, 28;30;32;34;36;38;40;42;44;46;48;50;52;54;56;58;60;62;76;78;80;82;84;86;88;90;92;94;96;98;100;102;104;106;108;110;159;161;164;165;167;168;181;183;186;187;189;190;214;216;219;220;222;223;225;227;230;231;233;234;247;249;252;253;255;256;258;260;263;264;266;267, C0, C1) : expr_const(C0) : expr_const(C1)
} 1 :- num_rules(R).

#minimise [choose(_, N)=N, choose(_, N, _)=N, choose(_, N, _, _)=N ].
