rule(R, succ, N, C1) :- input(call(succ, N)), choose(R, 1, C1).
rule(R, succ, N, N) :- input(call(succ, N)), choose(R, 2).
rule(R, succ, N, add(N, C1)) :- input(call(succ, N)), choose(R, 3, C1).
rule(R, succ, N, mul(N, C1)) :- input(call(succ, N)), choose(R, 4, C1).
rule(R, succ, N, sub(N, C1)) :- input(call(succ, N)), choose(R, 5, C1).
rule(R, succ, N, sub(C1, N)) :- input(call(succ, N)), choose(R, 6, C1).
rule(R, succ, N, add(C2, C1)) :- input(call(succ, N)), choose(R, 7, C1, C2).
rule(R, succ, N, mul(C2, C1)) :- input(call(succ, N)), choose(R, 8, C1, C2).
rule(R, succ, N, sub(C2, C1)) :- input(call(succ, N)), choose(R, 9, C1, C2).
rule(R, succ, N, sub(C1, C2)) :- input(call(succ, N)), choose(R, 10, C1, C2).
rule(R, succ, N, call(succ, C1)) :- input(call(succ, N)), choose(R, 11, C1).
rule(R, succ, N, add(N, N)) :- input(call(succ, N)), choose(R, 12).
rule(R, succ, N, mul(N, N)) :- input(call(succ, N)), choose(R, 13).
rule(R, succ, N, sub(N, N)) :- input(call(succ, N)), choose(R, 14).
rule(R, succ, N, sub(N, N)) :- input(call(succ, N)), choose(R, 15).
rule(R, succ, N, add(C1, N)) :- input(call(succ, N)), choose(R, 16, C1).
rule(R, succ, N, mul(C1, N)) :- input(call(succ, N)), choose(R, 17, C1).
rule(R, succ, N, sub(C1, N)) :- input(call(succ, N)), choose(R, 18, C1).
rule(R, succ, N, sub(N, C1)) :- input(call(succ, N)), choose(R, 19, C1).
rule(R, succ, N, call(succ, N)) :- input(call(succ, N)), choose(R, 20).
rule(R, succ, N, add(N, add(N, C1))) :- input(call(succ, N)), choose(R, 21, C1).
rule(R, succ, N, mul(N, add(N, C1))) :- input(call(succ, N)), choose(R, 22, C1).
rule(R, succ, N, sub(N, add(N, C1))) :- input(call(succ, N)), choose(R, 23, C1).
rule(R, succ, N, sub(add(N, C1), N)) :- input(call(succ, N)), choose(R, 24, C1).
rule(R, succ, N, add(C2, add(N, C1))) :- input(call(succ, N)), choose(R, 25, C1, C2).
rule(R, succ, N, mul(C2, add(N, C1))) :- input(call(succ, N)), choose(R, 26, C1, C2).
rule(R, succ, N, sub(C2, add(N, C1))) :- input(call(succ, N)), choose(R, 27, C1, C2).
rule(R, succ, N, sub(add(N, C1), C2)) :- input(call(succ, N)), choose(R, 28, C1, C2).
rule(R, succ, N, call(succ, add(N, C1))) :- input(call(succ, N)), choose(R, 29, C1).
rule(R, succ, N, add(N, mul(N, C1))) :- input(call(succ, N)), choose(R, 30, C1).
rule(R, succ, N, mul(N, mul(N, C1))) :- input(call(succ, N)), choose(R, 31, C1).
rule(R, succ, N, sub(N, mul(N, C1))) :- input(call(succ, N)), choose(R, 32, C1).
rule(R, succ, N, sub(mul(N, C1), N)) :- input(call(succ, N)), choose(R, 33, C1).
rule(R, succ, N, add(C2, mul(N, C1))) :- input(call(succ, N)), choose(R, 34, C1, C2).
rule(R, succ, N, mul(C2, mul(N, C1))) :- input(call(succ, N)), choose(R, 35, C1, C2).
rule(R, succ, N, sub(C2, mul(N, C1))) :- input(call(succ, N)), choose(R, 36, C1, C2).
rule(R, succ, N, sub(mul(N, C1), C2)) :- input(call(succ, N)), choose(R, 37, C1, C2).
rule(R, succ, N, call(succ, mul(N, C1))) :- input(call(succ, N)), choose(R, 38, C1).
rule(R, succ, N, add(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 39, C1).
rule(R, succ, N, mul(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 40, C1).
rule(R, succ, N, sub(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 41, C1).
rule(R, succ, N, sub(sub(N, C1), N)) :- input(call(succ, N)), choose(R, 42, C1).
rule(R, succ, N, add(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 43, C1, C2).
rule(R, succ, N, mul(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 44, C1, C2).
rule(R, succ, N, sub(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 45, C1, C2).
rule(R, succ, N, sub(sub(N, C1), C2)) :- input(call(succ, N)), choose(R, 46, C1, C2).
rule(R, succ, N, call(succ, sub(N, C1))) :- input(call(succ, N)), choose(R, 47, C1).
rule(R, succ, N, add(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 48, C1).
rule(R, succ, N, mul(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 49, C1).
rule(R, succ, N, sub(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 50, C1).
rule(R, succ, N, sub(sub(C1, N), N)) :- input(call(succ, N)), choose(R, 51, C1).
rule(R, succ, N, add(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 52, C1, C2).
rule(R, succ, N, mul(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 53, C1, C2).
rule(R, succ, N, sub(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 54, C1, C2).
rule(R, succ, N, sub(sub(C1, N), C2)) :- input(call(succ, N)), choose(R, 55, C1, C2).
rule(R, succ, N, call(succ, sub(C1, N))) :- input(call(succ, N)), choose(R, 56, C1).
rule(R, succ, N, add(N, add(C2, C1))) :- input(call(succ, N)), choose(R, 57, C1, C2).
rule(R, succ, N, mul(N, add(C2, C1))) :- input(call(succ, N)), choose(R, 58, C1, C2).
rule(R, succ, N, sub(N, add(C2, C1))) :- input(call(succ, N)), choose(R, 59, C1, C2).
rule(R, succ, N, sub(add(C2, C1), N)) :- input(call(succ, N)), choose(R, 60, C1, C2).
rule(R, succ, N, add(C3, add(C2, C1))) :- input(call(succ, N)), choose(R, 61, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, C1))) :- input(call(succ, N)), choose(R, 62, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, C1))) :- input(call(succ, N)), choose(R, 63, C1, C2, C3).
rule(R, succ, N, sub(add(C2, C1), C3)) :- input(call(succ, N)), choose(R, 64, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, C1))) :- input(call(succ, N)), choose(R, 65, C1, C2).
rule(R, succ, N, add(N, mul(C2, C1))) :- input(call(succ, N)), choose(R, 66, C1, C2).
rule(R, succ, N, mul(N, mul(C2, C1))) :- input(call(succ, N)), choose(R, 67, C1, C2).
rule(R, succ, N, sub(N, mul(C2, C1))) :- input(call(succ, N)), choose(R, 68, C1, C2).
rule(R, succ, N, sub(mul(C2, C1), N)) :- input(call(succ, N)), choose(R, 69, C1, C2).
rule(R, succ, N, add(C3, mul(C2, C1))) :- input(call(succ, N)), choose(R, 70, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, C1))) :- input(call(succ, N)), choose(R, 71, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, C1))) :- input(call(succ, N)), choose(R, 72, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, C1), C3)) :- input(call(succ, N)), choose(R, 73, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, C1))) :- input(call(succ, N)), choose(R, 74, C1, C2).
rule(R, succ, N, add(N, sub(C2, C1))) :- input(call(succ, N)), choose(R, 75, C1, C2).
rule(R, succ, N, mul(N, sub(C2, C1))) :- input(call(succ, N)), choose(R, 76, C1, C2).
rule(R, succ, N, sub(N, sub(C2, C1))) :- input(call(succ, N)), choose(R, 77, C1, C2).
rule(R, succ, N, sub(sub(C2, C1), N)) :- input(call(succ, N)), choose(R, 78, C1, C2).
rule(R, succ, N, add(C3, sub(C2, C1))) :- input(call(succ, N)), choose(R, 79, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, C1))) :- input(call(succ, N)), choose(R, 80, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, C1))) :- input(call(succ, N)), choose(R, 81, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, C1), C3)) :- input(call(succ, N)), choose(R, 82, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, C1))) :- input(call(succ, N)), choose(R, 83, C1, C2).
rule(R, succ, N, add(N, sub(C1, C2))) :- input(call(succ, N)), choose(R, 84, C1, C2).
rule(R, succ, N, mul(N, sub(C1, C2))) :- input(call(succ, N)), choose(R, 85, C1, C2).
rule(R, succ, N, sub(N, sub(C1, C2))) :- input(call(succ, N)), choose(R, 86, C1, C2).
rule(R, succ, N, sub(sub(C1, C2), N)) :- input(call(succ, N)), choose(R, 87, C1, C2).
rule(R, succ, N, add(C3, sub(C1, C2))) :- input(call(succ, N)), choose(R, 88, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C1, C2))) :- input(call(succ, N)), choose(R, 89, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C1, C2))) :- input(call(succ, N)), choose(R, 90, C1, C2, C3).
rule(R, succ, N, sub(sub(C1, C2), C3)) :- input(call(succ, N)), choose(R, 91, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C1, C2))) :- input(call(succ, N)), choose(R, 92, C1, C2).
rule(R, succ, N, add(N, call(succ, C1))) :- input(call(succ, N)), choose(R, 93, C1).
rule(R, succ, N, mul(N, call(succ, C1))) :- input(call(succ, N)), choose(R, 94, C1).
rule(R, succ, N, sub(N, call(succ, C1))) :- input(call(succ, N)), choose(R, 95, C1).
rule(R, succ, N, sub(call(succ, C1), N)) :- input(call(succ, N)), choose(R, 96, C1).
rule(R, succ, N, add(C2, call(succ, C1))) :- input(call(succ, N)), choose(R, 97, C1, C2).
rule(R, succ, N, mul(C2, call(succ, C1))) :- input(call(succ, N)), choose(R, 98, C1, C2).
rule(R, succ, N, sub(C2, call(succ, C1))) :- input(call(succ, N)), choose(R, 99, C1, C2).
rule(R, succ, N, sub(call(succ, C1), C2)) :- input(call(succ, N)), choose(R, 100, C1, C2).
rule(R, succ, N, call(succ, call(succ, C1))) :- input(call(succ, N)), choose(R, 101, C1).
rule(R, succ, N, add(N, add(N, N))) :- input(call(succ, N)), choose(R, 102).
rule(R, succ, N, mul(N, add(N, N))) :- input(call(succ, N)), choose(R, 103).
rule(R, succ, N, sub(N, add(N, N))) :- input(call(succ, N)), choose(R, 104).
rule(R, succ, N, sub(add(N, N), N)) :- input(call(succ, N)), choose(R, 105).
rule(R, succ, N, add(C1, add(N, N))) :- input(call(succ, N)), choose(R, 106, C1).
rule(R, succ, N, mul(C1, add(N, N))) :- input(call(succ, N)), choose(R, 107, C1).
rule(R, succ, N, sub(C1, add(N, N))) :- input(call(succ, N)), choose(R, 108, C1).
rule(R, succ, N, sub(add(N, N), C1)) :- input(call(succ, N)), choose(R, 109, C1).
rule(R, succ, N, call(succ, add(N, N))) :- input(call(succ, N)), choose(R, 110).
rule(R, succ, N, add(N, mul(N, N))) :- input(call(succ, N)), choose(R, 111).
rule(R, succ, N, mul(N, mul(N, N))) :- input(call(succ, N)), choose(R, 112).
rule(R, succ, N, sub(N, mul(N, N))) :- input(call(succ, N)), choose(R, 113).
rule(R, succ, N, sub(mul(N, N), N)) :- input(call(succ, N)), choose(R, 114).
rule(R, succ, N, add(C1, mul(N, N))) :- input(call(succ, N)), choose(R, 115, C1).
rule(R, succ, N, mul(C1, mul(N, N))) :- input(call(succ, N)), choose(R, 116, C1).
rule(R, succ, N, sub(C1, mul(N, N))) :- input(call(succ, N)), choose(R, 117, C1).
rule(R, succ, N, sub(mul(N, N), C1)) :- input(call(succ, N)), choose(R, 118, C1).
rule(R, succ, N, call(succ, mul(N, N))) :- input(call(succ, N)), choose(R, 119).
rule(R, succ, N, add(N, sub(N, N))) :- input(call(succ, N)), choose(R, 120).
rule(R, succ, N, mul(N, sub(N, N))) :- input(call(succ, N)), choose(R, 121).
rule(R, succ, N, sub(N, sub(N, N))) :- input(call(succ, N)), choose(R, 122).
rule(R, succ, N, sub(sub(N, N), N)) :- input(call(succ, N)), choose(R, 123).
rule(R, succ, N, add(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 124, C1).
rule(R, succ, N, mul(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 125, C1).
rule(R, succ, N, sub(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 126, C1).
rule(R, succ, N, sub(sub(N, N), C1)) :- input(call(succ, N)), choose(R, 127, C1).
rule(R, succ, N, call(succ, sub(N, N))) :- input(call(succ, N)), choose(R, 128).
rule(R, succ, N, add(N, sub(N, N))) :- input(call(succ, N)), choose(R, 129).
rule(R, succ, N, mul(N, sub(N, N))) :- input(call(succ, N)), choose(R, 130).
rule(R, succ, N, sub(N, sub(N, N))) :- input(call(succ, N)), choose(R, 131).
rule(R, succ, N, sub(sub(N, N), N)) :- input(call(succ, N)), choose(R, 132).
rule(R, succ, N, add(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 133, C1).
rule(R, succ, N, mul(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 134, C1).
rule(R, succ, N, sub(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 135, C1).
rule(R, succ, N, sub(sub(N, N), C1)) :- input(call(succ, N)), choose(R, 136, C1).
rule(R, succ, N, call(succ, sub(N, N))) :- input(call(succ, N)), choose(R, 137).
rule(R, succ, N, add(N, add(C1, N))) :- input(call(succ, N)), choose(R, 138, C1).
rule(R, succ, N, mul(N, add(C1, N))) :- input(call(succ, N)), choose(R, 139, C1).
rule(R, succ, N, sub(N, add(C1, N))) :- input(call(succ, N)), choose(R, 140, C1).
rule(R, succ, N, sub(add(C1, N), N)) :- input(call(succ, N)), choose(R, 141, C1).
rule(R, succ, N, add(C2, add(C1, N))) :- input(call(succ, N)), choose(R, 142, C1, C2).
rule(R, succ, N, mul(C2, add(C1, N))) :- input(call(succ, N)), choose(R, 143, C1, C2).
rule(R, succ, N, sub(C2, add(C1, N))) :- input(call(succ, N)), choose(R, 144, C1, C2).
rule(R, succ, N, sub(add(C1, N), C2)) :- input(call(succ, N)), choose(R, 145, C1, C2).
rule(R, succ, N, call(succ, add(C1, N))) :- input(call(succ, N)), choose(R, 146, C1).
rule(R, succ, N, add(N, mul(C1, N))) :- input(call(succ, N)), choose(R, 147, C1).
rule(R, succ, N, mul(N, mul(C1, N))) :- input(call(succ, N)), choose(R, 148, C1).
rule(R, succ, N, sub(N, mul(C1, N))) :- input(call(succ, N)), choose(R, 149, C1).
rule(R, succ, N, sub(mul(C1, N), N)) :- input(call(succ, N)), choose(R, 150, C1).
rule(R, succ, N, add(C2, mul(C1, N))) :- input(call(succ, N)), choose(R, 151, C1, C2).
rule(R, succ, N, mul(C2, mul(C1, N))) :- input(call(succ, N)), choose(R, 152, C1, C2).
rule(R, succ, N, sub(C2, mul(C1, N))) :- input(call(succ, N)), choose(R, 153, C1, C2).
rule(R, succ, N, sub(mul(C1, N), C2)) :- input(call(succ, N)), choose(R, 154, C1, C2).
rule(R, succ, N, call(succ, mul(C1, N))) :- input(call(succ, N)), choose(R, 155, C1).
rule(R, succ, N, add(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 156, C1).
rule(R, succ, N, mul(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 157, C1).
rule(R, succ, N, sub(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 158, C1).
rule(R, succ, N, sub(sub(C1, N), N)) :- input(call(succ, N)), choose(R, 159, C1).
rule(R, succ, N, add(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 160, C1, C2).
rule(R, succ, N, mul(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 161, C1, C2).
rule(R, succ, N, sub(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 162, C1, C2).
rule(R, succ, N, sub(sub(C1, N), C2)) :- input(call(succ, N)), choose(R, 163, C1, C2).
rule(R, succ, N, call(succ, sub(C1, N))) :- input(call(succ, N)), choose(R, 164, C1).
rule(R, succ, N, add(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 165, C1).
rule(R, succ, N, mul(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 166, C1).
rule(R, succ, N, sub(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 167, C1).
rule(R, succ, N, sub(sub(N, C1), N)) :- input(call(succ, N)), choose(R, 168, C1).
rule(R, succ, N, add(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 169, C1, C2).
rule(R, succ, N, mul(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 170, C1, C2).
rule(R, succ, N, sub(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 171, C1, C2).
rule(R, succ, N, sub(sub(N, C1), C2)) :- input(call(succ, N)), choose(R, 172, C1, C2).
rule(R, succ, N, call(succ, sub(N, C1))) :- input(call(succ, N)), choose(R, 173, C1).
rule(R, succ, N, add(N, call(succ, N))) :- input(call(succ, N)), choose(R, 174).
rule(R, succ, N, mul(N, call(succ, N))) :- input(call(succ, N)), choose(R, 175).
rule(R, succ, N, sub(N, call(succ, N))) :- input(call(succ, N)), choose(R, 176).
rule(R, succ, N, sub(call(succ, N), N)) :- input(call(succ, N)), choose(R, 177).
rule(R, succ, N, add(C1, call(succ, N))) :- input(call(succ, N)), choose(R, 178, C1).
rule(R, succ, N, mul(C1, call(succ, N))) :- input(call(succ, N)), choose(R, 179, C1).
rule(R, succ, N, sub(C1, call(succ, N))) :- input(call(succ, N)), choose(R, 180, C1).
rule(R, succ, N, sub(call(succ, N), C1)) :- input(call(succ, N)), choose(R, 181, C1).
rule(R, succ, N, call(succ, call(succ, N))) :- input(call(succ, N)), choose(R, 182).
rule(R, succ, N, add(N, add(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 183, C1).
rule(R, succ, N, mul(N, add(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 184, C1).
rule(R, succ, N, sub(N, add(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 185, C1).
rule(R, succ, N, sub(add(N, add(N, C1)), N)) :- input(call(succ, N)), choose(R, 186, C1).
rule(R, succ, N, add(C2, add(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 187, C1, C2).
rule(R, succ, N, mul(C2, add(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 188, C1, C2).
rule(R, succ, N, sub(C2, add(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 189, C1, C2).
rule(R, succ, N, sub(add(N, add(N, C1)), C2)) :- input(call(succ, N)), choose(R, 190, C1, C2).
rule(R, succ, N, call(succ, add(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 191, C1).
rule(R, succ, N, add(N, mul(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 192, C1).
rule(R, succ, N, mul(N, mul(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 193, C1).
rule(R, succ, N, sub(N, mul(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 194, C1).
rule(R, succ, N, sub(mul(N, add(N, C1)), N)) :- input(call(succ, N)), choose(R, 195, C1).
rule(R, succ, N, add(C2, mul(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 196, C1, C2).
rule(R, succ, N, mul(C2, mul(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 197, C1, C2).
rule(R, succ, N, sub(C2, mul(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 198, C1, C2).
rule(R, succ, N, sub(mul(N, add(N, C1)), C2)) :- input(call(succ, N)), choose(R, 199, C1, C2).
rule(R, succ, N, call(succ, mul(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 200, C1).
rule(R, succ, N, add(N, sub(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 201, C1).
rule(R, succ, N, mul(N, sub(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 202, C1).
rule(R, succ, N, sub(N, sub(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 203, C1).
rule(R, succ, N, sub(sub(N, add(N, C1)), N)) :- input(call(succ, N)), choose(R, 204, C1).
rule(R, succ, N, add(C2, sub(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 205, C1, C2).
rule(R, succ, N, mul(C2, sub(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 206, C1, C2).
rule(R, succ, N, sub(C2, sub(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 207, C1, C2).
rule(R, succ, N, sub(sub(N, add(N, C1)), C2)) :- input(call(succ, N)), choose(R, 208, C1, C2).
rule(R, succ, N, call(succ, sub(N, add(N, C1)))) :- input(call(succ, N)), choose(R, 209, C1).
rule(R, succ, N, add(N, sub(add(N, C1), N))) :- input(call(succ, N)), choose(R, 210, C1).
rule(R, succ, N, mul(N, sub(add(N, C1), N))) :- input(call(succ, N)), choose(R, 211, C1).
rule(R, succ, N, sub(N, sub(add(N, C1), N))) :- input(call(succ, N)), choose(R, 212, C1).
rule(R, succ, N, sub(sub(add(N, C1), N), N)) :- input(call(succ, N)), choose(R, 213, C1).
rule(R, succ, N, add(C2, sub(add(N, C1), N))) :- input(call(succ, N)), choose(R, 214, C1, C2).
rule(R, succ, N, mul(C2, sub(add(N, C1), N))) :- input(call(succ, N)), choose(R, 215, C1, C2).
rule(R, succ, N, sub(C2, sub(add(N, C1), N))) :- input(call(succ, N)), choose(R, 216, C1, C2).
rule(R, succ, N, sub(sub(add(N, C1), N), C2)) :- input(call(succ, N)), choose(R, 217, C1, C2).
rule(R, succ, N, call(succ, sub(add(N, C1), N))) :- input(call(succ, N)), choose(R, 218, C1).
rule(R, succ, N, add(N, add(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 219, C1, C2).
rule(R, succ, N, mul(N, add(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 220, C1, C2).
rule(R, succ, N, sub(N, add(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 221, C1, C2).
rule(R, succ, N, sub(add(C2, add(N, C1)), N)) :- input(call(succ, N)), choose(R, 222, C1, C2).
rule(R, succ, N, add(C3, add(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 223, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 224, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 225, C1, C2, C3).
rule(R, succ, N, sub(add(C2, add(N, C1)), C3)) :- input(call(succ, N)), choose(R, 226, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 227, C1, C2).
rule(R, succ, N, add(N, mul(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 228, C1, C2).
rule(R, succ, N, mul(N, mul(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 229, C1, C2).
rule(R, succ, N, sub(N, mul(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 230, C1, C2).
rule(R, succ, N, sub(mul(C2, add(N, C1)), N)) :- input(call(succ, N)), choose(R, 231, C1, C2).
rule(R, succ, N, add(C3, mul(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 232, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 233, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 234, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, add(N, C1)), C3)) :- input(call(succ, N)), choose(R, 235, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 236, C1, C2).
rule(R, succ, N, add(N, sub(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 237, C1, C2).
rule(R, succ, N, mul(N, sub(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 238, C1, C2).
rule(R, succ, N, sub(N, sub(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 239, C1, C2).
rule(R, succ, N, sub(sub(C2, add(N, C1)), N)) :- input(call(succ, N)), choose(R, 240, C1, C2).
rule(R, succ, N, add(C3, sub(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 241, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 242, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 243, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, add(N, C1)), C3)) :- input(call(succ, N)), choose(R, 244, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, add(N, C1)))) :- input(call(succ, N)), choose(R, 245, C1, C2).
rule(R, succ, N, add(N, sub(add(N, C1), C2))) :- input(call(succ, N)), choose(R, 246, C1, C2).
rule(R, succ, N, mul(N, sub(add(N, C1), C2))) :- input(call(succ, N)), choose(R, 247, C1, C2).
rule(R, succ, N, sub(N, sub(add(N, C1), C2))) :- input(call(succ, N)), choose(R, 248, C1, C2).
rule(R, succ, N, sub(sub(add(N, C1), C2), N)) :- input(call(succ, N)), choose(R, 249, C1, C2).
rule(R, succ, N, add(C3, sub(add(N, C1), C2))) :- input(call(succ, N)), choose(R, 250, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(add(N, C1), C2))) :- input(call(succ, N)), choose(R, 251, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(add(N, C1), C2))) :- input(call(succ, N)), choose(R, 252, C1, C2, C3).
rule(R, succ, N, sub(sub(add(N, C1), C2), C3)) :- input(call(succ, N)), choose(R, 253, C1, C2, C3).
rule(R, succ, N, call(succ, sub(add(N, C1), C2))) :- input(call(succ, N)), choose(R, 254, C1, C2).
rule(R, succ, N, add(N, call(succ, add(N, C1)))) :- input(call(succ, N)), choose(R, 255, C1).
rule(R, succ, N, mul(N, call(succ, add(N, C1)))) :- input(call(succ, N)), choose(R, 256, C1).
rule(R, succ, N, sub(N, call(succ, add(N, C1)))) :- input(call(succ, N)), choose(R, 257, C1).
rule(R, succ, N, sub(call(succ, add(N, C1)), N)) :- input(call(succ, N)), choose(R, 258, C1).
rule(R, succ, N, add(C2, call(succ, add(N, C1)))) :- input(call(succ, N)), choose(R, 259, C1, C2).
rule(R, succ, N, mul(C2, call(succ, add(N, C1)))) :- input(call(succ, N)), choose(R, 260, C1, C2).
rule(R, succ, N, sub(C2, call(succ, add(N, C1)))) :- input(call(succ, N)), choose(R, 261, C1, C2).
rule(R, succ, N, sub(call(succ, add(N, C1)), C2)) :- input(call(succ, N)), choose(R, 262, C1, C2).
rule(R, succ, N, call(succ, call(succ, add(N, C1)))) :- input(call(succ, N)), choose(R, 263, C1).
rule(R, succ, N, add(N, add(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 264, C1).
rule(R, succ, N, mul(N, add(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 265, C1).
rule(R, succ, N, sub(N, add(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 266, C1).
rule(R, succ, N, sub(add(N, mul(N, C1)), N)) :- input(call(succ, N)), choose(R, 267, C1).
rule(R, succ, N, add(C2, add(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 268, C1, C2).
rule(R, succ, N, mul(C2, add(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 269, C1, C2).
rule(R, succ, N, sub(C2, add(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 270, C1, C2).
rule(R, succ, N, sub(add(N, mul(N, C1)), C2)) :- input(call(succ, N)), choose(R, 271, C1, C2).
rule(R, succ, N, call(succ, add(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 272, C1).
rule(R, succ, N, add(N, mul(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 273, C1).
rule(R, succ, N, mul(N, mul(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 274, C1).
rule(R, succ, N, sub(N, mul(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 275, C1).
rule(R, succ, N, sub(mul(N, mul(N, C1)), N)) :- input(call(succ, N)), choose(R, 276, C1).
rule(R, succ, N, add(C2, mul(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 277, C1, C2).
rule(R, succ, N, mul(C2, mul(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 278, C1, C2).
rule(R, succ, N, sub(C2, mul(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 279, C1, C2).
rule(R, succ, N, sub(mul(N, mul(N, C1)), C2)) :- input(call(succ, N)), choose(R, 280, C1, C2).
rule(R, succ, N, call(succ, mul(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 281, C1).
rule(R, succ, N, add(N, sub(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 282, C1).
rule(R, succ, N, mul(N, sub(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 283, C1).
rule(R, succ, N, sub(N, sub(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 284, C1).
rule(R, succ, N, sub(sub(N, mul(N, C1)), N)) :- input(call(succ, N)), choose(R, 285, C1).
rule(R, succ, N, add(C2, sub(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 286, C1, C2).
rule(R, succ, N, mul(C2, sub(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 287, C1, C2).
rule(R, succ, N, sub(C2, sub(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 288, C1, C2).
rule(R, succ, N, sub(sub(N, mul(N, C1)), C2)) :- input(call(succ, N)), choose(R, 289, C1, C2).
rule(R, succ, N, call(succ, sub(N, mul(N, C1)))) :- input(call(succ, N)), choose(R, 290, C1).
rule(R, succ, N, add(N, sub(mul(N, C1), N))) :- input(call(succ, N)), choose(R, 291, C1).
rule(R, succ, N, mul(N, sub(mul(N, C1), N))) :- input(call(succ, N)), choose(R, 292, C1).
rule(R, succ, N, sub(N, sub(mul(N, C1), N))) :- input(call(succ, N)), choose(R, 293, C1).
rule(R, succ, N, sub(sub(mul(N, C1), N), N)) :- input(call(succ, N)), choose(R, 294, C1).
rule(R, succ, N, add(C2, sub(mul(N, C1), N))) :- input(call(succ, N)), choose(R, 295, C1, C2).
rule(R, succ, N, mul(C2, sub(mul(N, C1), N))) :- input(call(succ, N)), choose(R, 296, C1, C2).
rule(R, succ, N, sub(C2, sub(mul(N, C1), N))) :- input(call(succ, N)), choose(R, 297, C1, C2).
rule(R, succ, N, sub(sub(mul(N, C1), N), C2)) :- input(call(succ, N)), choose(R, 298, C1, C2).
rule(R, succ, N, call(succ, sub(mul(N, C1), N))) :- input(call(succ, N)), choose(R, 299, C1).
rule(R, succ, N, add(N, add(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 300, C1, C2).
rule(R, succ, N, mul(N, add(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 301, C1, C2).
rule(R, succ, N, sub(N, add(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 302, C1, C2).
rule(R, succ, N, sub(add(C2, mul(N, C1)), N)) :- input(call(succ, N)), choose(R, 303, C1, C2).
rule(R, succ, N, add(C3, add(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 304, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 305, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 306, C1, C2, C3).
rule(R, succ, N, sub(add(C2, mul(N, C1)), C3)) :- input(call(succ, N)), choose(R, 307, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 308, C1, C2).
rule(R, succ, N, add(N, mul(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 309, C1, C2).
rule(R, succ, N, mul(N, mul(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 310, C1, C2).
rule(R, succ, N, sub(N, mul(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 311, C1, C2).
rule(R, succ, N, sub(mul(C2, mul(N, C1)), N)) :- input(call(succ, N)), choose(R, 312, C1, C2).
rule(R, succ, N, add(C3, mul(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 313, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 314, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 315, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, mul(N, C1)), C3)) :- input(call(succ, N)), choose(R, 316, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 317, C1, C2).
rule(R, succ, N, add(N, sub(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 318, C1, C2).
rule(R, succ, N, mul(N, sub(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 319, C1, C2).
rule(R, succ, N, sub(N, sub(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 320, C1, C2).
rule(R, succ, N, sub(sub(C2, mul(N, C1)), N)) :- input(call(succ, N)), choose(R, 321, C1, C2).
rule(R, succ, N, add(C3, sub(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 322, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 323, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 324, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, mul(N, C1)), C3)) :- input(call(succ, N)), choose(R, 325, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, mul(N, C1)))) :- input(call(succ, N)), choose(R, 326, C1, C2).
rule(R, succ, N, add(N, sub(mul(N, C1), C2))) :- input(call(succ, N)), choose(R, 327, C1, C2).
rule(R, succ, N, mul(N, sub(mul(N, C1), C2))) :- input(call(succ, N)), choose(R, 328, C1, C2).
rule(R, succ, N, sub(N, sub(mul(N, C1), C2))) :- input(call(succ, N)), choose(R, 329, C1, C2).
rule(R, succ, N, sub(sub(mul(N, C1), C2), N)) :- input(call(succ, N)), choose(R, 330, C1, C2).
rule(R, succ, N, add(C3, sub(mul(N, C1), C2))) :- input(call(succ, N)), choose(R, 331, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(mul(N, C1), C2))) :- input(call(succ, N)), choose(R, 332, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(mul(N, C1), C2))) :- input(call(succ, N)), choose(R, 333, C1, C2, C3).
rule(R, succ, N, sub(sub(mul(N, C1), C2), C3)) :- input(call(succ, N)), choose(R, 334, C1, C2, C3).
rule(R, succ, N, call(succ, sub(mul(N, C1), C2))) :- input(call(succ, N)), choose(R, 335, C1, C2).
rule(R, succ, N, add(N, call(succ, mul(N, C1)))) :- input(call(succ, N)), choose(R, 336, C1).
rule(R, succ, N, mul(N, call(succ, mul(N, C1)))) :- input(call(succ, N)), choose(R, 337, C1).
rule(R, succ, N, sub(N, call(succ, mul(N, C1)))) :- input(call(succ, N)), choose(R, 338, C1).
rule(R, succ, N, sub(call(succ, mul(N, C1)), N)) :- input(call(succ, N)), choose(R, 339, C1).
rule(R, succ, N, add(C2, call(succ, mul(N, C1)))) :- input(call(succ, N)), choose(R, 340, C1, C2).
rule(R, succ, N, mul(C2, call(succ, mul(N, C1)))) :- input(call(succ, N)), choose(R, 341, C1, C2).
rule(R, succ, N, sub(C2, call(succ, mul(N, C1)))) :- input(call(succ, N)), choose(R, 342, C1, C2).
rule(R, succ, N, sub(call(succ, mul(N, C1)), C2)) :- input(call(succ, N)), choose(R, 343, C1, C2).
rule(R, succ, N, call(succ, call(succ, mul(N, C1)))) :- input(call(succ, N)), choose(R, 344, C1).
rule(R, succ, N, add(N, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 345, C1).
rule(R, succ, N, mul(N, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 346, C1).
rule(R, succ, N, sub(N, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 347, C1).
rule(R, succ, N, sub(add(N, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 348, C1).
rule(R, succ, N, add(C2, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 349, C1, C2).
rule(R, succ, N, mul(C2, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 350, C1, C2).
rule(R, succ, N, sub(C2, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 351, C1, C2).
rule(R, succ, N, sub(add(N, sub(N, C1)), C2)) :- input(call(succ, N)), choose(R, 352, C1, C2).
rule(R, succ, N, call(succ, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 353, C1).
rule(R, succ, N, add(N, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 354, C1).
rule(R, succ, N, mul(N, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 355, C1).
rule(R, succ, N, sub(N, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 356, C1).
rule(R, succ, N, sub(mul(N, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 357, C1).
rule(R, succ, N, add(C2, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 358, C1, C2).
rule(R, succ, N, mul(C2, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 359, C1, C2).
rule(R, succ, N, sub(C2, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 360, C1, C2).
rule(R, succ, N, sub(mul(N, sub(N, C1)), C2)) :- input(call(succ, N)), choose(R, 361, C1, C2).
rule(R, succ, N, call(succ, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 362, C1).
rule(R, succ, N, add(N, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 363, C1).
rule(R, succ, N, mul(N, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 364, C1).
rule(R, succ, N, sub(N, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 365, C1).
rule(R, succ, N, sub(sub(N, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 366, C1).
rule(R, succ, N, add(C2, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 367, C1, C2).
rule(R, succ, N, mul(C2, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 368, C1, C2).
rule(R, succ, N, sub(C2, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 369, C1, C2).
rule(R, succ, N, sub(sub(N, sub(N, C1)), C2)) :- input(call(succ, N)), choose(R, 370, C1, C2).
rule(R, succ, N, call(succ, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 371, C1).
rule(R, succ, N, add(N, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 372, C1).
rule(R, succ, N, mul(N, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 373, C1).
rule(R, succ, N, sub(N, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 374, C1).
rule(R, succ, N, sub(sub(sub(N, C1), N), N)) :- input(call(succ, N)), choose(R, 375, C1).
rule(R, succ, N, add(C2, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 376, C1, C2).
rule(R, succ, N, mul(C2, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 377, C1, C2).
rule(R, succ, N, sub(C2, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 378, C1, C2).
rule(R, succ, N, sub(sub(sub(N, C1), N), C2)) :- input(call(succ, N)), choose(R, 379, C1, C2).
rule(R, succ, N, call(succ, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 380, C1).
rule(R, succ, N, add(N, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 381, C1, C2).
rule(R, succ, N, mul(N, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 382, C1, C2).
rule(R, succ, N, sub(N, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 383, C1, C2).
rule(R, succ, N, sub(add(C2, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 384, C1, C2).
rule(R, succ, N, add(C3, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 385, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 386, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 387, C1, C2, C3).
rule(R, succ, N, sub(add(C2, sub(N, C1)), C3)) :- input(call(succ, N)), choose(R, 388, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 389, C1, C2).
rule(R, succ, N, add(N, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 390, C1, C2).
rule(R, succ, N, mul(N, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 391, C1, C2).
rule(R, succ, N, sub(N, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 392, C1, C2).
rule(R, succ, N, sub(mul(C2, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 393, C1, C2).
rule(R, succ, N, add(C3, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 394, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 395, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 396, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, sub(N, C1)), C3)) :- input(call(succ, N)), choose(R, 397, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 398, C1, C2).
rule(R, succ, N, add(N, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 399, C1, C2).
rule(R, succ, N, mul(N, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 400, C1, C2).
rule(R, succ, N, sub(N, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 401, C1, C2).
rule(R, succ, N, sub(sub(C2, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 402, C1, C2).
rule(R, succ, N, add(C3, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 403, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 404, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 405, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, sub(N, C1)), C3)) :- input(call(succ, N)), choose(R, 406, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 407, C1, C2).
rule(R, succ, N, add(N, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 408, C1, C2).
rule(R, succ, N, mul(N, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 409, C1, C2).
rule(R, succ, N, sub(N, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 410, C1, C2).
rule(R, succ, N, sub(sub(sub(N, C1), C2), N)) :- input(call(succ, N)), choose(R, 411, C1, C2).
rule(R, succ, N, add(C3, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 412, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 413, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 414, C1, C2, C3).
rule(R, succ, N, sub(sub(sub(N, C1), C2), C3)) :- input(call(succ, N)), choose(R, 415, C1, C2, C3).
rule(R, succ, N, call(succ, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 416, C1, C2).
rule(R, succ, N, add(N, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 417, C1).
rule(R, succ, N, mul(N, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 418, C1).
rule(R, succ, N, sub(N, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 419, C1).
rule(R, succ, N, sub(call(succ, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 420, C1).
rule(R, succ, N, add(C2, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 421, C1, C2).
rule(R, succ, N, mul(C2, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 422, C1, C2).
rule(R, succ, N, sub(C2, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 423, C1, C2).
rule(R, succ, N, sub(call(succ, sub(N, C1)), C2)) :- input(call(succ, N)), choose(R, 424, C1, C2).
rule(R, succ, N, call(succ, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 425, C1).
rule(R, succ, N, add(N, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 426, C1).
rule(R, succ, N, mul(N, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 427, C1).
rule(R, succ, N, sub(N, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 428, C1).
rule(R, succ, N, sub(add(N, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 429, C1).
rule(R, succ, N, add(C2, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 430, C1, C2).
rule(R, succ, N, mul(C2, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 431, C1, C2).
rule(R, succ, N, sub(C2, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 432, C1, C2).
rule(R, succ, N, sub(add(N, sub(C1, N)), C2)) :- input(call(succ, N)), choose(R, 433, C1, C2).
rule(R, succ, N, call(succ, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 434, C1).
rule(R, succ, N, add(N, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 435, C1).
rule(R, succ, N, mul(N, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 436, C1).
rule(R, succ, N, sub(N, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 437, C1).
rule(R, succ, N, sub(mul(N, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 438, C1).
rule(R, succ, N, add(C2, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 439, C1, C2).
rule(R, succ, N, mul(C2, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 440, C1, C2).
rule(R, succ, N, sub(C2, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 441, C1, C2).
rule(R, succ, N, sub(mul(N, sub(C1, N)), C2)) :- input(call(succ, N)), choose(R, 442, C1, C2).
rule(R, succ, N, call(succ, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 443, C1).
rule(R, succ, N, add(N, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 444, C1).
rule(R, succ, N, mul(N, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 445, C1).
rule(R, succ, N, sub(N, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 446, C1).
rule(R, succ, N, sub(sub(N, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 447, C1).
rule(R, succ, N, add(C2, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 448, C1, C2).
rule(R, succ, N, mul(C2, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 449, C1, C2).
rule(R, succ, N, sub(C2, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 450, C1, C2).
rule(R, succ, N, sub(sub(N, sub(C1, N)), C2)) :- input(call(succ, N)), choose(R, 451, C1, C2).
rule(R, succ, N, call(succ, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 452, C1).
rule(R, succ, N, add(N, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 453, C1).
rule(R, succ, N, mul(N, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 454, C1).
rule(R, succ, N, sub(N, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 455, C1).
rule(R, succ, N, sub(sub(sub(C1, N), N), N)) :- input(call(succ, N)), choose(R, 456, C1).
rule(R, succ, N, add(C2, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 457, C1, C2).
rule(R, succ, N, mul(C2, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 458, C1, C2).
rule(R, succ, N, sub(C2, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 459, C1, C2).
rule(R, succ, N, sub(sub(sub(C1, N), N), C2)) :- input(call(succ, N)), choose(R, 460, C1, C2).
rule(R, succ, N, call(succ, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 461, C1).
rule(R, succ, N, add(N, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 462, C1, C2).
rule(R, succ, N, mul(N, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 463, C1, C2).
rule(R, succ, N, sub(N, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 464, C1, C2).
rule(R, succ, N, sub(add(C2, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 465, C1, C2).
rule(R, succ, N, add(C3, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 466, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 467, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 468, C1, C2, C3).
rule(R, succ, N, sub(add(C2, sub(C1, N)), C3)) :- input(call(succ, N)), choose(R, 469, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 470, C1, C2).
rule(R, succ, N, add(N, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 471, C1, C2).
rule(R, succ, N, mul(N, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 472, C1, C2).
rule(R, succ, N, sub(N, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 473, C1, C2).
rule(R, succ, N, sub(mul(C2, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 474, C1, C2).
rule(R, succ, N, add(C3, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 475, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 476, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 477, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, sub(C1, N)), C3)) :- input(call(succ, N)), choose(R, 478, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 479, C1, C2).
rule(R, succ, N, add(N, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 480, C1, C2).
rule(R, succ, N, mul(N, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 481, C1, C2).
rule(R, succ, N, sub(N, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 482, C1, C2).
rule(R, succ, N, sub(sub(C2, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 483, C1, C2).
rule(R, succ, N, add(C3, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 484, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 485, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 486, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, sub(C1, N)), C3)) :- input(call(succ, N)), choose(R, 487, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 488, C1, C2).
rule(R, succ, N, add(N, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 489, C1, C2).
rule(R, succ, N, mul(N, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 490, C1, C2).
rule(R, succ, N, sub(N, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 491, C1, C2).
rule(R, succ, N, sub(sub(sub(C1, N), C2), N)) :- input(call(succ, N)), choose(R, 492, C1, C2).
rule(R, succ, N, add(C3, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 493, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 494, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 495, C1, C2, C3).
rule(R, succ, N, sub(sub(sub(C1, N), C2), C3)) :- input(call(succ, N)), choose(R, 496, C1, C2, C3).
rule(R, succ, N, call(succ, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 497, C1, C2).
rule(R, succ, N, add(N, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 498, C1).
rule(R, succ, N, mul(N, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 499, C1).
rule(R, succ, N, sub(N, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 500, C1).
rule(R, succ, N, sub(call(succ, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 501, C1).
rule(R, succ, N, add(C2, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 502, C1, C2).
rule(R, succ, N, mul(C2, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 503, C1, C2).
rule(R, succ, N, sub(C2, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 504, C1, C2).
rule(R, succ, N, sub(call(succ, sub(C1, N)), C2)) :- input(call(succ, N)), choose(R, 505, C1, C2).
rule(R, succ, N, call(succ, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 506, C1).
rule(R, succ, N, add(N, add(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 507, C1, C2).
rule(R, succ, N, mul(N, add(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 508, C1, C2).
rule(R, succ, N, sub(N, add(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 509, C1, C2).
rule(R, succ, N, sub(add(N, add(C2, C1)), N)) :- input(call(succ, N)), choose(R, 510, C1, C2).
rule(R, succ, N, add(C3, add(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 511, C1, C2, C3).
rule(R, succ, N, mul(C3, add(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 512, C1, C2, C3).
rule(R, succ, N, sub(C3, add(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 513, C1, C2, C3).
rule(R, succ, N, sub(add(N, add(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 514, C1, C2, C3).
rule(R, succ, N, call(succ, add(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 515, C1, C2).
rule(R, succ, N, add(N, mul(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 516, C1, C2).
rule(R, succ, N, mul(N, mul(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 517, C1, C2).
rule(R, succ, N, sub(N, mul(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 518, C1, C2).
rule(R, succ, N, sub(mul(N, add(C2, C1)), N)) :- input(call(succ, N)), choose(R, 519, C1, C2).
rule(R, succ, N, add(C3, mul(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 520, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 521, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 522, C1, C2, C3).
rule(R, succ, N, sub(mul(N, add(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 523, C1, C2, C3).
rule(R, succ, N, call(succ, mul(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 524, C1, C2).
rule(R, succ, N, add(N, sub(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 525, C1, C2).
rule(R, succ, N, mul(N, sub(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 526, C1, C2).
rule(R, succ, N, sub(N, sub(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 527, C1, C2).
rule(R, succ, N, sub(sub(N, add(C2, C1)), N)) :- input(call(succ, N)), choose(R, 528, C1, C2).
rule(R, succ, N, add(C3, sub(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 529, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 530, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 531, C1, C2, C3).
rule(R, succ, N, sub(sub(N, add(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 532, C1, C2, C3).
rule(R, succ, N, call(succ, sub(N, add(C2, C1)))) :- input(call(succ, N)), choose(R, 533, C1, C2).
rule(R, succ, N, add(N, sub(add(C2, C1), N))) :- input(call(succ, N)), choose(R, 534, C1, C2).
rule(R, succ, N, mul(N, sub(add(C2, C1), N))) :- input(call(succ, N)), choose(R, 535, C1, C2).
rule(R, succ, N, sub(N, sub(add(C2, C1), N))) :- input(call(succ, N)), choose(R, 536, C1, C2).
rule(R, succ, N, sub(sub(add(C2, C1), N), N)) :- input(call(succ, N)), choose(R, 537, C1, C2).
rule(R, succ, N, add(C3, sub(add(C2, C1), N))) :- input(call(succ, N)), choose(R, 538, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(add(C2, C1), N))) :- input(call(succ, N)), choose(R, 539, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(add(C2, C1), N))) :- input(call(succ, N)), choose(R, 540, C1, C2, C3).
rule(R, succ, N, sub(sub(add(C2, C1), N), C3)) :- input(call(succ, N)), choose(R, 541, C1, C2, C3).
rule(R, succ, N, call(succ, sub(add(C2, C1), N))) :- input(call(succ, N)), choose(R, 542, C1, C2).
rule(R, succ, N, add(N, add(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 543, C1, C2, C3).
rule(R, succ, N, mul(N, add(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 544, C1, C2, C3).
rule(R, succ, N, sub(N, add(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 545, C1, C2, C3).
rule(R, succ, N, sub(add(C3, add(C2, C1)), N)) :- input(call(succ, N)), choose(R, 546, C1, C2, C3).
rule(R, succ, N, add(C4, add(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 547, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, add(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 548, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, add(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 549, C1, C2, C3, C4).
rule(R, succ, N, sub(add(C3, add(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 550, C1, C2, C3, C4).
rule(R, succ, N, call(succ, add(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 551, C1, C2, C3).
rule(R, succ, N, add(N, mul(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 552, C1, C2, C3).
rule(R, succ, N, mul(N, mul(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 553, C1, C2, C3).
rule(R, succ, N, sub(N, mul(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 554, C1, C2, C3).
rule(R, succ, N, sub(mul(C3, add(C2, C1)), N)) :- input(call(succ, N)), choose(R, 555, C1, C2, C3).
rule(R, succ, N, add(C4, mul(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 556, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, mul(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 557, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, mul(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 558, C1, C2, C3, C4).
rule(R, succ, N, sub(mul(C3, add(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 559, C1, C2, C3, C4).
rule(R, succ, N, call(succ, mul(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 560, C1, C2, C3).
rule(R, succ, N, add(N, sub(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 561, C1, C2, C3).
rule(R, succ, N, mul(N, sub(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 562, C1, C2, C3).
rule(R, succ, N, sub(N, sub(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 563, C1, C2, C3).
rule(R, succ, N, sub(sub(C3, add(C2, C1)), N)) :- input(call(succ, N)), choose(R, 564, C1, C2, C3).
rule(R, succ, N, add(C4, sub(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 565, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, sub(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 566, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, sub(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 567, C1, C2, C3, C4).
rule(R, succ, N, sub(sub(C3, add(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 568, C1, C2, C3, C4).
rule(R, succ, N, call(succ, sub(C3, add(C2, C1)))) :- input(call(succ, N)), choose(R, 569, C1, C2, C3).
rule(R, succ, N, add(N, sub(add(C2, C1), C3))) :- input(call(succ, N)), choose(R, 570, C1, C2, C3).
rule(R, succ, N, mul(N, sub(add(C2, C1), C3))) :- input(call(succ, N)), choose(R, 571, C1, C2, C3).
rule(R, succ, N, sub(N, sub(add(C2, C1), C3))) :- input(call(succ, N)), choose(R, 572, C1, C2, C3).
rule(R, succ, N, sub(sub(add(C2, C1), C3), N)) :- input(call(succ, N)), choose(R, 573, C1, C2, C3).
rule(R, succ, N, add(C4, sub(add(C2, C1), C3))) :- input(call(succ, N)), choose(R, 574, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, sub(add(C2, C1), C3))) :- input(call(succ, N)), choose(R, 575, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, sub(add(C2, C1), C3))) :- input(call(succ, N)), choose(R, 576, C1, C2, C3, C4).
rule(R, succ, N, sub(sub(add(C2, C1), C3), C4)) :- input(call(succ, N)), choose(R, 577, C1, C2, C3, C4).
rule(R, succ, N, call(succ, sub(add(C2, C1), C3))) :- input(call(succ, N)), choose(R, 578, C1, C2, C3).
rule(R, succ, N, add(N, call(succ, add(C2, C1)))) :- input(call(succ, N)), choose(R, 579, C1, C2).
rule(R, succ, N, mul(N, call(succ, add(C2, C1)))) :- input(call(succ, N)), choose(R, 580, C1, C2).
rule(R, succ, N, sub(N, call(succ, add(C2, C1)))) :- input(call(succ, N)), choose(R, 581, C1, C2).
rule(R, succ, N, sub(call(succ, add(C2, C1)), N)) :- input(call(succ, N)), choose(R, 582, C1, C2).
rule(R, succ, N, add(C3, call(succ, add(C2, C1)))) :- input(call(succ, N)), choose(R, 583, C1, C2, C3).
rule(R, succ, N, mul(C3, call(succ, add(C2, C1)))) :- input(call(succ, N)), choose(R, 584, C1, C2, C3).
rule(R, succ, N, sub(C3, call(succ, add(C2, C1)))) :- input(call(succ, N)), choose(R, 585, C1, C2, C3).
rule(R, succ, N, sub(call(succ, add(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 586, C1, C2, C3).
rule(R, succ, N, call(succ, call(succ, add(C2, C1)))) :- input(call(succ, N)), choose(R, 587, C1, C2).
rule(R, succ, N, add(N, add(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 588, C1, C2).
rule(R, succ, N, mul(N, add(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 589, C1, C2).
rule(R, succ, N, sub(N, add(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 590, C1, C2).
rule(R, succ, N, sub(add(N, mul(C2, C1)), N)) :- input(call(succ, N)), choose(R, 591, C1, C2).
rule(R, succ, N, add(C3, add(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 592, C1, C2, C3).
rule(R, succ, N, mul(C3, add(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 593, C1, C2, C3).
rule(R, succ, N, sub(C3, add(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 594, C1, C2, C3).
rule(R, succ, N, sub(add(N, mul(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 595, C1, C2, C3).
rule(R, succ, N, call(succ, add(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 596, C1, C2).
rule(R, succ, N, add(N, mul(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 597, C1, C2).
rule(R, succ, N, mul(N, mul(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 598, C1, C2).
rule(R, succ, N, sub(N, mul(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 599, C1, C2).
rule(R, succ, N, sub(mul(N, mul(C2, C1)), N)) :- input(call(succ, N)), choose(R, 600, C1, C2).
rule(R, succ, N, add(C3, mul(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 601, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 602, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 603, C1, C2, C3).
rule(R, succ, N, sub(mul(N, mul(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 604, C1, C2, C3).
rule(R, succ, N, call(succ, mul(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 605, C1, C2).
rule(R, succ, N, add(N, sub(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 606, C1, C2).
rule(R, succ, N, mul(N, sub(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 607, C1, C2).
rule(R, succ, N, sub(N, sub(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 608, C1, C2).
rule(R, succ, N, sub(sub(N, mul(C2, C1)), N)) :- input(call(succ, N)), choose(R, 609, C1, C2).
rule(R, succ, N, add(C3, sub(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 610, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 611, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 612, C1, C2, C3).
rule(R, succ, N, sub(sub(N, mul(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 613, C1, C2, C3).
rule(R, succ, N, call(succ, sub(N, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 614, C1, C2).
rule(R, succ, N, add(N, sub(mul(C2, C1), N))) :- input(call(succ, N)), choose(R, 615, C1, C2).
rule(R, succ, N, mul(N, sub(mul(C2, C1), N))) :- input(call(succ, N)), choose(R, 616, C1, C2).
rule(R, succ, N, sub(N, sub(mul(C2, C1), N))) :- input(call(succ, N)), choose(R, 617, C1, C2).
rule(R, succ, N, sub(sub(mul(C2, C1), N), N)) :- input(call(succ, N)), choose(R, 618, C1, C2).
rule(R, succ, N, add(C3, sub(mul(C2, C1), N))) :- input(call(succ, N)), choose(R, 619, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(mul(C2, C1), N))) :- input(call(succ, N)), choose(R, 620, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(mul(C2, C1), N))) :- input(call(succ, N)), choose(R, 621, C1, C2, C3).
rule(R, succ, N, sub(sub(mul(C2, C1), N), C3)) :- input(call(succ, N)), choose(R, 622, C1, C2, C3).
rule(R, succ, N, call(succ, sub(mul(C2, C1), N))) :- input(call(succ, N)), choose(R, 623, C1, C2).
rule(R, succ, N, add(N, add(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 624, C1, C2, C3).
rule(R, succ, N, mul(N, add(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 625, C1, C2, C3).
rule(R, succ, N, sub(N, add(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 626, C1, C2, C3).
rule(R, succ, N, sub(add(C3, mul(C2, C1)), N)) :- input(call(succ, N)), choose(R, 627, C1, C2, C3).
rule(R, succ, N, add(C4, add(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 628, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, add(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 629, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, add(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 630, C1, C2, C3, C4).
rule(R, succ, N, sub(add(C3, mul(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 631, C1, C2, C3, C4).
rule(R, succ, N, call(succ, add(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 632, C1, C2, C3).
rule(R, succ, N, add(N, mul(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 633, C1, C2, C3).
rule(R, succ, N, mul(N, mul(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 634, C1, C2, C3).
rule(R, succ, N, sub(N, mul(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 635, C1, C2, C3).
rule(R, succ, N, sub(mul(C3, mul(C2, C1)), N)) :- input(call(succ, N)), choose(R, 636, C1, C2, C3).
rule(R, succ, N, add(C4, mul(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 637, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, mul(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 638, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, mul(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 639, C1, C2, C3, C4).
rule(R, succ, N, sub(mul(C3, mul(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 640, C1, C2, C3, C4).
rule(R, succ, N, call(succ, mul(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 641, C1, C2, C3).
rule(R, succ, N, add(N, sub(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 642, C1, C2, C3).
rule(R, succ, N, mul(N, sub(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 643, C1, C2, C3).
rule(R, succ, N, sub(N, sub(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 644, C1, C2, C3).
rule(R, succ, N, sub(sub(C3, mul(C2, C1)), N)) :- input(call(succ, N)), choose(R, 645, C1, C2, C3).
rule(R, succ, N, add(C4, sub(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 646, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, sub(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 647, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, sub(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 648, C1, C2, C3, C4).
rule(R, succ, N, sub(sub(C3, mul(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 649, C1, C2, C3, C4).
rule(R, succ, N, call(succ, sub(C3, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 650, C1, C2, C3).
rule(R, succ, N, add(N, sub(mul(C2, C1), C3))) :- input(call(succ, N)), choose(R, 651, C1, C2, C3).
rule(R, succ, N, mul(N, sub(mul(C2, C1), C3))) :- input(call(succ, N)), choose(R, 652, C1, C2, C3).
rule(R, succ, N, sub(N, sub(mul(C2, C1), C3))) :- input(call(succ, N)), choose(R, 653, C1, C2, C3).
rule(R, succ, N, sub(sub(mul(C2, C1), C3), N)) :- input(call(succ, N)), choose(R, 654, C1, C2, C3).
rule(R, succ, N, add(C4, sub(mul(C2, C1), C3))) :- input(call(succ, N)), choose(R, 655, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, sub(mul(C2, C1), C3))) :- input(call(succ, N)), choose(R, 656, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, sub(mul(C2, C1), C3))) :- input(call(succ, N)), choose(R, 657, C1, C2, C3, C4).
rule(R, succ, N, sub(sub(mul(C2, C1), C3), C4)) :- input(call(succ, N)), choose(R, 658, C1, C2, C3, C4).
rule(R, succ, N, call(succ, sub(mul(C2, C1), C3))) :- input(call(succ, N)), choose(R, 659, C1, C2, C3).
rule(R, succ, N, add(N, call(succ, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 660, C1, C2).
rule(R, succ, N, mul(N, call(succ, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 661, C1, C2).
rule(R, succ, N, sub(N, call(succ, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 662, C1, C2).
rule(R, succ, N, sub(call(succ, mul(C2, C1)), N)) :- input(call(succ, N)), choose(R, 663, C1, C2).
rule(R, succ, N, add(C3, call(succ, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 664, C1, C2, C3).
rule(R, succ, N, mul(C3, call(succ, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 665, C1, C2, C3).
rule(R, succ, N, sub(C3, call(succ, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 666, C1, C2, C3).
rule(R, succ, N, sub(call(succ, mul(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 667, C1, C2, C3).
rule(R, succ, N, call(succ, call(succ, mul(C2, C1)))) :- input(call(succ, N)), choose(R, 668, C1, C2).
rule(R, succ, N, add(N, add(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 669, C1, C2).
rule(R, succ, N, mul(N, add(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 670, C1, C2).
rule(R, succ, N, sub(N, add(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 671, C1, C2).
rule(R, succ, N, sub(add(N, sub(C2, C1)), N)) :- input(call(succ, N)), choose(R, 672, C1, C2).
rule(R, succ, N, add(C3, add(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 673, C1, C2, C3).
rule(R, succ, N, mul(C3, add(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 674, C1, C2, C3).
rule(R, succ, N, sub(C3, add(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 675, C1, C2, C3).
rule(R, succ, N, sub(add(N, sub(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 676, C1, C2, C3).
rule(R, succ, N, call(succ, add(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 677, C1, C2).
rule(R, succ, N, add(N, mul(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 678, C1, C2).
rule(R, succ, N, mul(N, mul(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 679, C1, C2).
rule(R, succ, N, sub(N, mul(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 680, C1, C2).
rule(R, succ, N, sub(mul(N, sub(C2, C1)), N)) :- input(call(succ, N)), choose(R, 681, C1, C2).
rule(R, succ, N, add(C3, mul(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 682, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 683, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 684, C1, C2, C3).
rule(R, succ, N, sub(mul(N, sub(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 685, C1, C2, C3).
rule(R, succ, N, call(succ, mul(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 686, C1, C2).
rule(R, succ, N, add(N, sub(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 687, C1, C2).
rule(R, succ, N, mul(N, sub(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 688, C1, C2).
rule(R, succ, N, sub(N, sub(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 689, C1, C2).
rule(R, succ, N, sub(sub(N, sub(C2, C1)), N)) :- input(call(succ, N)), choose(R, 690, C1, C2).
rule(R, succ, N, add(C3, sub(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 691, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 692, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 693, C1, C2, C3).
rule(R, succ, N, sub(sub(N, sub(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 694, C1, C2, C3).
rule(R, succ, N, call(succ, sub(N, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 695, C1, C2).
rule(R, succ, N, add(N, sub(sub(C2, C1), N))) :- input(call(succ, N)), choose(R, 696, C1, C2).
rule(R, succ, N, mul(N, sub(sub(C2, C1), N))) :- input(call(succ, N)), choose(R, 697, C1, C2).
rule(R, succ, N, sub(N, sub(sub(C2, C1), N))) :- input(call(succ, N)), choose(R, 698, C1, C2).
rule(R, succ, N, sub(sub(sub(C2, C1), N), N)) :- input(call(succ, N)), choose(R, 699, C1, C2).
rule(R, succ, N, add(C3, sub(sub(C2, C1), N))) :- input(call(succ, N)), choose(R, 700, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(sub(C2, C1), N))) :- input(call(succ, N)), choose(R, 701, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(sub(C2, C1), N))) :- input(call(succ, N)), choose(R, 702, C1, C2, C3).
rule(R, succ, N, sub(sub(sub(C2, C1), N), C3)) :- input(call(succ, N)), choose(R, 703, C1, C2, C3).
rule(R, succ, N, call(succ, sub(sub(C2, C1), N))) :- input(call(succ, N)), choose(R, 704, C1, C2).
rule(R, succ, N, add(N, add(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 705, C1, C2, C3).
rule(R, succ, N, mul(N, add(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 706, C1, C2, C3).
rule(R, succ, N, sub(N, add(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 707, C1, C2, C3).
rule(R, succ, N, sub(add(C3, sub(C2, C1)), N)) :- input(call(succ, N)), choose(R, 708, C1, C2, C3).
rule(R, succ, N, add(C4, add(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 709, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, add(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 710, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, add(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 711, C1, C2, C3, C4).
rule(R, succ, N, sub(add(C3, sub(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 712, C1, C2, C3, C4).
rule(R, succ, N, call(succ, add(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 713, C1, C2, C3).
rule(R, succ, N, add(N, mul(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 714, C1, C2, C3).
rule(R, succ, N, mul(N, mul(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 715, C1, C2, C3).
rule(R, succ, N, sub(N, mul(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 716, C1, C2, C3).
rule(R, succ, N, sub(mul(C3, sub(C2, C1)), N)) :- input(call(succ, N)), choose(R, 717, C1, C2, C3).
rule(R, succ, N, add(C4, mul(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 718, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, mul(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 719, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, mul(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 720, C1, C2, C3, C4).
rule(R, succ, N, sub(mul(C3, sub(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 721, C1, C2, C3, C4).
rule(R, succ, N, call(succ, mul(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 722, C1, C2, C3).
rule(R, succ, N, add(N, sub(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 723, C1, C2, C3).
rule(R, succ, N, mul(N, sub(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 724, C1, C2, C3).
rule(R, succ, N, sub(N, sub(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 725, C1, C2, C3).
rule(R, succ, N, sub(sub(C3, sub(C2, C1)), N)) :- input(call(succ, N)), choose(R, 726, C1, C2, C3).
rule(R, succ, N, add(C4, sub(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 727, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, sub(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 728, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, sub(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 729, C1, C2, C3, C4).
rule(R, succ, N, sub(sub(C3, sub(C2, C1)), C4)) :- input(call(succ, N)), choose(R, 730, C1, C2, C3, C4).
rule(R, succ, N, call(succ, sub(C3, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 731, C1, C2, C3).
rule(R, succ, N, add(N, sub(sub(C2, C1), C3))) :- input(call(succ, N)), choose(R, 732, C1, C2, C3).
rule(R, succ, N, mul(N, sub(sub(C2, C1), C3))) :- input(call(succ, N)), choose(R, 733, C1, C2, C3).
rule(R, succ, N, sub(N, sub(sub(C2, C1), C3))) :- input(call(succ, N)), choose(R, 734, C1, C2, C3).
rule(R, succ, N, sub(sub(sub(C2, C1), C3), N)) :- input(call(succ, N)), choose(R, 735, C1, C2, C3).
rule(R, succ, N, add(C4, sub(sub(C2, C1), C3))) :- input(call(succ, N)), choose(R, 736, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, sub(sub(C2, C1), C3))) :- input(call(succ, N)), choose(R, 737, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, sub(sub(C2, C1), C3))) :- input(call(succ, N)), choose(R, 738, C1, C2, C3, C4).
rule(R, succ, N, sub(sub(sub(C2, C1), C3), C4)) :- input(call(succ, N)), choose(R, 739, C1, C2, C3, C4).
rule(R, succ, N, call(succ, sub(sub(C2, C1), C3))) :- input(call(succ, N)), choose(R, 740, C1, C2, C3).
rule(R, succ, N, add(N, call(succ, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 741, C1, C2).
rule(R, succ, N, mul(N, call(succ, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 742, C1, C2).
rule(R, succ, N, sub(N, call(succ, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 743, C1, C2).
rule(R, succ, N, sub(call(succ, sub(C2, C1)), N)) :- input(call(succ, N)), choose(R, 744, C1, C2).
rule(R, succ, N, add(C3, call(succ, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 745, C1, C2, C3).
rule(R, succ, N, mul(C3, call(succ, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 746, C1, C2, C3).
rule(R, succ, N, sub(C3, call(succ, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 747, C1, C2, C3).
rule(R, succ, N, sub(call(succ, sub(C2, C1)), C3)) :- input(call(succ, N)), choose(R, 748, C1, C2, C3).
rule(R, succ, N, call(succ, call(succ, sub(C2, C1)))) :- input(call(succ, N)), choose(R, 749, C1, C2).
rule(R, succ, N, add(N, add(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 750, C1, C2).
rule(R, succ, N, mul(N, add(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 751, C1, C2).
rule(R, succ, N, sub(N, add(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 752, C1, C2).
rule(R, succ, N, sub(add(N, sub(C1, C2)), N)) :- input(call(succ, N)), choose(R, 753, C1, C2).
rule(R, succ, N, add(C3, add(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 754, C1, C2, C3).
rule(R, succ, N, mul(C3, add(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 755, C1, C2, C3).
rule(R, succ, N, sub(C3, add(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 756, C1, C2, C3).
rule(R, succ, N, sub(add(N, sub(C1, C2)), C3)) :- input(call(succ, N)), choose(R, 757, C1, C2, C3).
rule(R, succ, N, call(succ, add(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 758, C1, C2).
rule(R, succ, N, add(N, mul(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 759, C1, C2).
rule(R, succ, N, mul(N, mul(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 760, C1, C2).
rule(R, succ, N, sub(N, mul(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 761, C1, C2).
rule(R, succ, N, sub(mul(N, sub(C1, C2)), N)) :- input(call(succ, N)), choose(R, 762, C1, C2).
rule(R, succ, N, add(C3, mul(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 763, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 764, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 765, C1, C2, C3).
rule(R, succ, N, sub(mul(N, sub(C1, C2)), C3)) :- input(call(succ, N)), choose(R, 766, C1, C2, C3).
rule(R, succ, N, call(succ, mul(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 767, C1, C2).
rule(R, succ, N, add(N, sub(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 768, C1, C2).
rule(R, succ, N, mul(N, sub(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 769, C1, C2).
rule(R, succ, N, sub(N, sub(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 770, C1, C2).
rule(R, succ, N, sub(sub(N, sub(C1, C2)), N)) :- input(call(succ, N)), choose(R, 771, C1, C2).
rule(R, succ, N, add(C3, sub(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 772, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 773, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 774, C1, C2, C3).
rule(R, succ, N, sub(sub(N, sub(C1, C2)), C3)) :- input(call(succ, N)), choose(R, 775, C1, C2, C3).
rule(R, succ, N, call(succ, sub(N, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 776, C1, C2).
rule(R, succ, N, add(N, sub(sub(C1, C2), N))) :- input(call(succ, N)), choose(R, 777, C1, C2).
rule(R, succ, N, mul(N, sub(sub(C1, C2), N))) :- input(call(succ, N)), choose(R, 778, C1, C2).
rule(R, succ, N, sub(N, sub(sub(C1, C2), N))) :- input(call(succ, N)), choose(R, 779, C1, C2).
rule(R, succ, N, sub(sub(sub(C1, C2), N), N)) :- input(call(succ, N)), choose(R, 780, C1, C2).
rule(R, succ, N, add(C3, sub(sub(C1, C2), N))) :- input(call(succ, N)), choose(R, 781, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(sub(C1, C2), N))) :- input(call(succ, N)), choose(R, 782, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(sub(C1, C2), N))) :- input(call(succ, N)), choose(R, 783, C1, C2, C3).
rule(R, succ, N, sub(sub(sub(C1, C2), N), C3)) :- input(call(succ, N)), choose(R, 784, C1, C2, C3).
rule(R, succ, N, call(succ, sub(sub(C1, C2), N))) :- input(call(succ, N)), choose(R, 785, C1, C2).
rule(R, succ, N, add(N, add(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 786, C1, C2, C3).
rule(R, succ, N, mul(N, add(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 787, C1, C2, C3).
rule(R, succ, N, sub(N, add(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 788, C1, C2, C3).
rule(R, succ, N, sub(add(C3, sub(C1, C2)), N)) :- input(call(succ, N)), choose(R, 789, C1, C2, C3).
rule(R, succ, N, add(C4, add(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 790, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, add(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 791, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, add(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 792, C1, C2, C3, C4).
rule(R, succ, N, sub(add(C3, sub(C1, C2)), C4)) :- input(call(succ, N)), choose(R, 793, C1, C2, C3, C4).
rule(R, succ, N, call(succ, add(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 794, C1, C2, C3).
rule(R, succ, N, add(N, mul(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 795, C1, C2, C3).
rule(R, succ, N, mul(N, mul(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 796, C1, C2, C3).
rule(R, succ, N, sub(N, mul(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 797, C1, C2, C3).
rule(R, succ, N, sub(mul(C3, sub(C1, C2)), N)) :- input(call(succ, N)), choose(R, 798, C1, C2, C3).
rule(R, succ, N, add(C4, mul(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 799, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, mul(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 800, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, mul(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 801, C1, C2, C3, C4).
rule(R, succ, N, sub(mul(C3, sub(C1, C2)), C4)) :- input(call(succ, N)), choose(R, 802, C1, C2, C3, C4).
rule(R, succ, N, call(succ, mul(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 803, C1, C2, C3).
rule(R, succ, N, add(N, sub(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 804, C1, C2, C3).
rule(R, succ, N, mul(N, sub(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 805, C1, C2, C3).
rule(R, succ, N, sub(N, sub(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 806, C1, C2, C3).
rule(R, succ, N, sub(sub(C3, sub(C1, C2)), N)) :- input(call(succ, N)), choose(R, 807, C1, C2, C3).
rule(R, succ, N, add(C4, sub(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 808, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, sub(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 809, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, sub(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 810, C1, C2, C3, C4).
rule(R, succ, N, sub(sub(C3, sub(C1, C2)), C4)) :- input(call(succ, N)), choose(R, 811, C1, C2, C3, C4).
rule(R, succ, N, call(succ, sub(C3, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 812, C1, C2, C3).
rule(R, succ, N, add(N, sub(sub(C1, C2), C3))) :- input(call(succ, N)), choose(R, 813, C1, C2, C3).
rule(R, succ, N, mul(N, sub(sub(C1, C2), C3))) :- input(call(succ, N)), choose(R, 814, C1, C2, C3).
rule(R, succ, N, sub(N, sub(sub(C1, C2), C3))) :- input(call(succ, N)), choose(R, 815, C1, C2, C3).
rule(R, succ, N, sub(sub(sub(C1, C2), C3), N)) :- input(call(succ, N)), choose(R, 816, C1, C2, C3).
rule(R, succ, N, add(C4, sub(sub(C1, C2), C3))) :- input(call(succ, N)), choose(R, 817, C1, C2, C3, C4).
rule(R, succ, N, mul(C4, sub(sub(C1, C2), C3))) :- input(call(succ, N)), choose(R, 818, C1, C2, C3, C4).
rule(R, succ, N, sub(C4, sub(sub(C1, C2), C3))) :- input(call(succ, N)), choose(R, 819, C1, C2, C3, C4).
rule(R, succ, N, sub(sub(sub(C1, C2), C3), C4)) :- input(call(succ, N)), choose(R, 820, C1, C2, C3, C4).
rule(R, succ, N, call(succ, sub(sub(C1, C2), C3))) :- input(call(succ, N)), choose(R, 821, C1, C2, C3).
rule(R, succ, N, add(N, call(succ, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 822, C1, C2).
rule(R, succ, N, mul(N, call(succ, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 823, C1, C2).
rule(R, succ, N, sub(N, call(succ, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 824, C1, C2).
rule(R, succ, N, sub(call(succ, sub(C1, C2)), N)) :- input(call(succ, N)), choose(R, 825, C1, C2).
rule(R, succ, N, add(C3, call(succ, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 826, C1, C2, C3).
rule(R, succ, N, mul(C3, call(succ, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 827, C1, C2, C3).
rule(R, succ, N, sub(C3, call(succ, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 828, C1, C2, C3).
rule(R, succ, N, sub(call(succ, sub(C1, C2)), C3)) :- input(call(succ, N)), choose(R, 829, C1, C2, C3).
rule(R, succ, N, call(succ, call(succ, sub(C1, C2)))) :- input(call(succ, N)), choose(R, 830, C1, C2).
rule(R, succ, N, add(N, add(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 831, C1).
rule(R, succ, N, mul(N, add(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 832, C1).
rule(R, succ, N, sub(N, add(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 833, C1).
rule(R, succ, N, sub(add(N, call(succ, C1)), N)) :- input(call(succ, N)), choose(R, 834, C1).
rule(R, succ, N, add(C2, add(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 835, C1, C2).
rule(R, succ, N, mul(C2, add(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 836, C1, C2).
rule(R, succ, N, sub(C2, add(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 837, C1, C2).
rule(R, succ, N, sub(add(N, call(succ, C1)), C2)) :- input(call(succ, N)), choose(R, 838, C1, C2).
rule(R, succ, N, call(succ, add(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 839, C1).
rule(R, succ, N, add(N, mul(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 840, C1).
rule(R, succ, N, mul(N, mul(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 841, C1).
rule(R, succ, N, sub(N, mul(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 842, C1).
rule(R, succ, N, sub(mul(N, call(succ, C1)), N)) :- input(call(succ, N)), choose(R, 843, C1).
rule(R, succ, N, add(C2, mul(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 844, C1, C2).
rule(R, succ, N, mul(C2, mul(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 845, C1, C2).
rule(R, succ, N, sub(C2, mul(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 846, C1, C2).
rule(R, succ, N, sub(mul(N, call(succ, C1)), C2)) :- input(call(succ, N)), choose(R, 847, C1, C2).
rule(R, succ, N, call(succ, mul(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 848, C1).
rule(R, succ, N, add(N, sub(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 849, C1).
rule(R, succ, N, mul(N, sub(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 850, C1).
rule(R, succ, N, sub(N, sub(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 851, C1).
rule(R, succ, N, sub(sub(N, call(succ, C1)), N)) :- input(call(succ, N)), choose(R, 852, C1).
rule(R, succ, N, add(C2, sub(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 853, C1, C2).
rule(R, succ, N, mul(C2, sub(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 854, C1, C2).
rule(R, succ, N, sub(C2, sub(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 855, C1, C2).
rule(R, succ, N, sub(sub(N, call(succ, C1)), C2)) :- input(call(succ, N)), choose(R, 856, C1, C2).
rule(R, succ, N, call(succ, sub(N, call(succ, C1)))) :- input(call(succ, N)), choose(R, 857, C1).
rule(R, succ, N, add(N, sub(call(succ, C1), N))) :- input(call(succ, N)), choose(R, 858, C1).
rule(R, succ, N, mul(N, sub(call(succ, C1), N))) :- input(call(succ, N)), choose(R, 859, C1).
rule(R, succ, N, sub(N, sub(call(succ, C1), N))) :- input(call(succ, N)), choose(R, 860, C1).
rule(R, succ, N, sub(sub(call(succ, C1), N), N)) :- input(call(succ, N)), choose(R, 861, C1).
rule(R, succ, N, add(C2, sub(call(succ, C1), N))) :- input(call(succ, N)), choose(R, 862, C1, C2).
rule(R, succ, N, mul(C2, sub(call(succ, C1), N))) :- input(call(succ, N)), choose(R, 863, C1, C2).
rule(R, succ, N, sub(C2, sub(call(succ, C1), N))) :- input(call(succ, N)), choose(R, 864, C1, C2).
rule(R, succ, N, sub(sub(call(succ, C1), N), C2)) :- input(call(succ, N)), choose(R, 865, C1, C2).
rule(R, succ, N, call(succ, sub(call(succ, C1), N))) :- input(call(succ, N)), choose(R, 866, C1).
rule(R, succ, N, add(N, add(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 867, C1, C2).
rule(R, succ, N, mul(N, add(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 868, C1, C2).
rule(R, succ, N, sub(N, add(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 869, C1, C2).
rule(R, succ, N, sub(add(C2, call(succ, C1)), N)) :- input(call(succ, N)), choose(R, 870, C1, C2).
rule(R, succ, N, add(C3, add(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 871, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 872, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 873, C1, C2, C3).
rule(R, succ, N, sub(add(C2, call(succ, C1)), C3)) :- input(call(succ, N)), choose(R, 874, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 875, C1, C2).
rule(R, succ, N, add(N, mul(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 876, C1, C2).
rule(R, succ, N, mul(N, mul(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 877, C1, C2).
rule(R, succ, N, sub(N, mul(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 878, C1, C2).
rule(R, succ, N, sub(mul(C2, call(succ, C1)), N)) :- input(call(succ, N)), choose(R, 879, C1, C2).
rule(R, succ, N, add(C3, mul(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 880, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 881, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 882, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, call(succ, C1)), C3)) :- input(call(succ, N)), choose(R, 883, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 884, C1, C2).
rule(R, succ, N, add(N, sub(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 885, C1, C2).
rule(R, succ, N, mul(N, sub(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 886, C1, C2).
rule(R, succ, N, sub(N, sub(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 887, C1, C2).
rule(R, succ, N, sub(sub(C2, call(succ, C1)), N)) :- input(call(succ, N)), choose(R, 888, C1, C2).
rule(R, succ, N, add(C3, sub(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 889, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 890, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 891, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, call(succ, C1)), C3)) :- input(call(succ, N)), choose(R, 892, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, call(succ, C1)))) :- input(call(succ, N)), choose(R, 893, C1, C2).
rule(R, succ, N, add(N, sub(call(succ, C1), C2))) :- input(call(succ, N)), choose(R, 894, C1, C2).
rule(R, succ, N, mul(N, sub(call(succ, C1), C2))) :- input(call(succ, N)), choose(R, 895, C1, C2).
rule(R, succ, N, sub(N, sub(call(succ, C1), C2))) :- input(call(succ, N)), choose(R, 896, C1, C2).
rule(R, succ, N, sub(sub(call(succ, C1), C2), N)) :- input(call(succ, N)), choose(R, 897, C1, C2).
rule(R, succ, N, add(C3, sub(call(succ, C1), C2))) :- input(call(succ, N)), choose(R, 898, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(call(succ, C1), C2))) :- input(call(succ, N)), choose(R, 899, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(call(succ, C1), C2))) :- input(call(succ, N)), choose(R, 900, C1, C2, C3).
rule(R, succ, N, sub(sub(call(succ, C1), C2), C3)) :- input(call(succ, N)), choose(R, 901, C1, C2, C3).
rule(R, succ, N, call(succ, sub(call(succ, C1), C2))) :- input(call(succ, N)), choose(R, 902, C1, C2).
rule(R, succ, N, add(N, call(succ, call(succ, C1)))) :- input(call(succ, N)), choose(R, 903, C1).
rule(R, succ, N, mul(N, call(succ, call(succ, C1)))) :- input(call(succ, N)), choose(R, 904, C1).
rule(R, succ, N, sub(N, call(succ, call(succ, C1)))) :- input(call(succ, N)), choose(R, 905, C1).
rule(R, succ, N, sub(call(succ, call(succ, C1)), N)) :- input(call(succ, N)), choose(R, 906, C1).
rule(R, succ, N, add(C2, call(succ, call(succ, C1)))) :- input(call(succ, N)), choose(R, 907, C1, C2).
rule(R, succ, N, mul(C2, call(succ, call(succ, C1)))) :- input(call(succ, N)), choose(R, 908, C1, C2).
rule(R, succ, N, sub(C2, call(succ, call(succ, C1)))) :- input(call(succ, N)), choose(R, 909, C1, C2).
rule(R, succ, N, sub(call(succ, call(succ, C1)), C2)) :- input(call(succ, N)), choose(R, 910, C1, C2).
rule(R, succ, N, call(succ, call(succ, call(succ, C1)))) :- input(call(succ, N)), choose(R, 911, C1).
rule(R, succ, N, add(N, add(N, add(N, N)))) :- input(call(succ, N)), choose(R, 912).
rule(R, succ, N, mul(N, add(N, add(N, N)))) :- input(call(succ, N)), choose(R, 913).
rule(R, succ, N, sub(N, add(N, add(N, N)))) :- input(call(succ, N)), choose(R, 914).
rule(R, succ, N, sub(add(N, add(N, N)), N)) :- input(call(succ, N)), choose(R, 915).
rule(R, succ, N, add(C1, add(N, add(N, N)))) :- input(call(succ, N)), choose(R, 916, C1).
rule(R, succ, N, mul(C1, add(N, add(N, N)))) :- input(call(succ, N)), choose(R, 917, C1).
rule(R, succ, N, sub(C1, add(N, add(N, N)))) :- input(call(succ, N)), choose(R, 918, C1).
rule(R, succ, N, sub(add(N, add(N, N)), C1)) :- input(call(succ, N)), choose(R, 919, C1).
rule(R, succ, N, call(succ, add(N, add(N, N)))) :- input(call(succ, N)), choose(R, 920).
rule(R, succ, N, add(N, mul(N, add(N, N)))) :- input(call(succ, N)), choose(R, 921).
rule(R, succ, N, mul(N, mul(N, add(N, N)))) :- input(call(succ, N)), choose(R, 922).
rule(R, succ, N, sub(N, mul(N, add(N, N)))) :- input(call(succ, N)), choose(R, 923).
rule(R, succ, N, sub(mul(N, add(N, N)), N)) :- input(call(succ, N)), choose(R, 924).
rule(R, succ, N, add(C1, mul(N, add(N, N)))) :- input(call(succ, N)), choose(R, 925, C1).
rule(R, succ, N, mul(C1, mul(N, add(N, N)))) :- input(call(succ, N)), choose(R, 926, C1).
rule(R, succ, N, sub(C1, mul(N, add(N, N)))) :- input(call(succ, N)), choose(R, 927, C1).
rule(R, succ, N, sub(mul(N, add(N, N)), C1)) :- input(call(succ, N)), choose(R, 928, C1).
rule(R, succ, N, call(succ, mul(N, add(N, N)))) :- input(call(succ, N)), choose(R, 929).
rule(R, succ, N, add(N, sub(N, add(N, N)))) :- input(call(succ, N)), choose(R, 930).
rule(R, succ, N, mul(N, sub(N, add(N, N)))) :- input(call(succ, N)), choose(R, 931).
rule(R, succ, N, sub(N, sub(N, add(N, N)))) :- input(call(succ, N)), choose(R, 932).
rule(R, succ, N, sub(sub(N, add(N, N)), N)) :- input(call(succ, N)), choose(R, 933).
rule(R, succ, N, add(C1, sub(N, add(N, N)))) :- input(call(succ, N)), choose(R, 934, C1).
rule(R, succ, N, mul(C1, sub(N, add(N, N)))) :- input(call(succ, N)), choose(R, 935, C1).
rule(R, succ, N, sub(C1, sub(N, add(N, N)))) :- input(call(succ, N)), choose(R, 936, C1).
rule(R, succ, N, sub(sub(N, add(N, N)), C1)) :- input(call(succ, N)), choose(R, 937, C1).
rule(R, succ, N, call(succ, sub(N, add(N, N)))) :- input(call(succ, N)), choose(R, 938).
rule(R, succ, N, add(N, sub(add(N, N), N))) :- input(call(succ, N)), choose(R, 939).
rule(R, succ, N, mul(N, sub(add(N, N), N))) :- input(call(succ, N)), choose(R, 940).
rule(R, succ, N, sub(N, sub(add(N, N), N))) :- input(call(succ, N)), choose(R, 941).
rule(R, succ, N, sub(sub(add(N, N), N), N)) :- input(call(succ, N)), choose(R, 942).
rule(R, succ, N, add(C1, sub(add(N, N), N))) :- input(call(succ, N)), choose(R, 943, C1).
rule(R, succ, N, mul(C1, sub(add(N, N), N))) :- input(call(succ, N)), choose(R, 944, C1).
rule(R, succ, N, sub(C1, sub(add(N, N), N))) :- input(call(succ, N)), choose(R, 945, C1).
rule(R, succ, N, sub(sub(add(N, N), N), C1)) :- input(call(succ, N)), choose(R, 946, C1).
rule(R, succ, N, call(succ, sub(add(N, N), N))) :- input(call(succ, N)), choose(R, 947).
rule(R, succ, N, add(N, add(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 948, C1).
rule(R, succ, N, mul(N, add(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 949, C1).
rule(R, succ, N, sub(N, add(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 950, C1).
rule(R, succ, N, sub(add(C1, add(N, N)), N)) :- input(call(succ, N)), choose(R, 951, C1).
rule(R, succ, N, add(C2, add(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 952, C1, C2).
rule(R, succ, N, mul(C2, add(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 953, C1, C2).
rule(R, succ, N, sub(C2, add(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 954, C1, C2).
rule(R, succ, N, sub(add(C1, add(N, N)), C2)) :- input(call(succ, N)), choose(R, 955, C1, C2).
rule(R, succ, N, call(succ, add(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 956, C1).
rule(R, succ, N, add(N, mul(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 957, C1).
rule(R, succ, N, mul(N, mul(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 958, C1).
rule(R, succ, N, sub(N, mul(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 959, C1).
rule(R, succ, N, sub(mul(C1, add(N, N)), N)) :- input(call(succ, N)), choose(R, 960, C1).
rule(R, succ, N, add(C2, mul(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 961, C1, C2).
rule(R, succ, N, mul(C2, mul(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 962, C1, C2).
rule(R, succ, N, sub(C2, mul(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 963, C1, C2).
rule(R, succ, N, sub(mul(C1, add(N, N)), C2)) :- input(call(succ, N)), choose(R, 964, C1, C2).
rule(R, succ, N, call(succ, mul(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 965, C1).
rule(R, succ, N, add(N, sub(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 966, C1).
rule(R, succ, N, mul(N, sub(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 967, C1).
rule(R, succ, N, sub(N, sub(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 968, C1).
rule(R, succ, N, sub(sub(C1, add(N, N)), N)) :- input(call(succ, N)), choose(R, 969, C1).
rule(R, succ, N, add(C2, sub(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 970, C1, C2).
rule(R, succ, N, mul(C2, sub(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 971, C1, C2).
rule(R, succ, N, sub(C2, sub(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 972, C1, C2).
rule(R, succ, N, sub(sub(C1, add(N, N)), C2)) :- input(call(succ, N)), choose(R, 973, C1, C2).
rule(R, succ, N, call(succ, sub(C1, add(N, N)))) :- input(call(succ, N)), choose(R, 974, C1).
rule(R, succ, N, add(N, sub(add(N, N), C1))) :- input(call(succ, N)), choose(R, 975, C1).
rule(R, succ, N, mul(N, sub(add(N, N), C1))) :- input(call(succ, N)), choose(R, 976, C1).
rule(R, succ, N, sub(N, sub(add(N, N), C1))) :- input(call(succ, N)), choose(R, 977, C1).
rule(R, succ, N, sub(sub(add(N, N), C1), N)) :- input(call(succ, N)), choose(R, 978, C1).
rule(R, succ, N, add(C2, sub(add(N, N), C1))) :- input(call(succ, N)), choose(R, 979, C1, C2).
rule(R, succ, N, mul(C2, sub(add(N, N), C1))) :- input(call(succ, N)), choose(R, 980, C1, C2).
rule(R, succ, N, sub(C2, sub(add(N, N), C1))) :- input(call(succ, N)), choose(R, 981, C1, C2).
rule(R, succ, N, sub(sub(add(N, N), C1), C2)) :- input(call(succ, N)), choose(R, 982, C1, C2).
rule(R, succ, N, call(succ, sub(add(N, N), C1))) :- input(call(succ, N)), choose(R, 983, C1).
rule(R, succ, N, add(N, call(succ, add(N, N)))) :- input(call(succ, N)), choose(R, 984).
rule(R, succ, N, mul(N, call(succ, add(N, N)))) :- input(call(succ, N)), choose(R, 985).
rule(R, succ, N, sub(N, call(succ, add(N, N)))) :- input(call(succ, N)), choose(R, 986).
rule(R, succ, N, sub(call(succ, add(N, N)), N)) :- input(call(succ, N)), choose(R, 987).
rule(R, succ, N, add(C1, call(succ, add(N, N)))) :- input(call(succ, N)), choose(R, 988, C1).
rule(R, succ, N, mul(C1, call(succ, add(N, N)))) :- input(call(succ, N)), choose(R, 989, C1).
rule(R, succ, N, sub(C1, call(succ, add(N, N)))) :- input(call(succ, N)), choose(R, 990, C1).
rule(R, succ, N, sub(call(succ, add(N, N)), C1)) :- input(call(succ, N)), choose(R, 991, C1).
rule(R, succ, N, call(succ, call(succ, add(N, N)))) :- input(call(succ, N)), choose(R, 992).
rule(R, succ, N, add(N, add(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 993).
rule(R, succ, N, mul(N, add(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 994).
rule(R, succ, N, sub(N, add(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 995).
rule(R, succ, N, sub(add(N, mul(N, N)), N)) :- input(call(succ, N)), choose(R, 996).
rule(R, succ, N, add(C1, add(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 997, C1).
rule(R, succ, N, mul(C1, add(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 998, C1).
rule(R, succ, N, sub(C1, add(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 999, C1).
rule(R, succ, N, sub(add(N, mul(N, N)), C1)) :- input(call(succ, N)), choose(R, 1000, C1).
rule(R, succ, N, call(succ, add(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1001).
rule(R, succ, N, add(N, mul(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1002).
rule(R, succ, N, mul(N, mul(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1003).
rule(R, succ, N, sub(N, mul(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1004).
rule(R, succ, N, sub(mul(N, mul(N, N)), N)) :- input(call(succ, N)), choose(R, 1005).
rule(R, succ, N, add(C1, mul(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1006, C1).
rule(R, succ, N, mul(C1, mul(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1007, C1).
rule(R, succ, N, sub(C1, mul(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1008, C1).
rule(R, succ, N, sub(mul(N, mul(N, N)), C1)) :- input(call(succ, N)), choose(R, 1009, C1).
rule(R, succ, N, call(succ, mul(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1010).
rule(R, succ, N, add(N, sub(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1011).
rule(R, succ, N, mul(N, sub(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1012).
rule(R, succ, N, sub(N, sub(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1013).
rule(R, succ, N, sub(sub(N, mul(N, N)), N)) :- input(call(succ, N)), choose(R, 1014).
rule(R, succ, N, add(C1, sub(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1015, C1).
rule(R, succ, N, mul(C1, sub(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1016, C1).
rule(R, succ, N, sub(C1, sub(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1017, C1).
rule(R, succ, N, sub(sub(N, mul(N, N)), C1)) :- input(call(succ, N)), choose(R, 1018, C1).
rule(R, succ, N, call(succ, sub(N, mul(N, N)))) :- input(call(succ, N)), choose(R, 1019).
rule(R, succ, N, add(N, sub(mul(N, N), N))) :- input(call(succ, N)), choose(R, 1020).
rule(R, succ, N, mul(N, sub(mul(N, N), N))) :- input(call(succ, N)), choose(R, 1021).
rule(R, succ, N, sub(N, sub(mul(N, N), N))) :- input(call(succ, N)), choose(R, 1022).
rule(R, succ, N, sub(sub(mul(N, N), N), N)) :- input(call(succ, N)), choose(R, 1023).
rule(R, succ, N, add(C1, sub(mul(N, N), N))) :- input(call(succ, N)), choose(R, 1024, C1).
rule(R, succ, N, mul(C1, sub(mul(N, N), N))) :- input(call(succ, N)), choose(R, 1025, C1).
rule(R, succ, N, sub(C1, sub(mul(N, N), N))) :- input(call(succ, N)), choose(R, 1026, C1).
rule(R, succ, N, sub(sub(mul(N, N), N), C1)) :- input(call(succ, N)), choose(R, 1027, C1).
rule(R, succ, N, call(succ, sub(mul(N, N), N))) :- input(call(succ, N)), choose(R, 1028).
rule(R, succ, N, add(N, add(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1029, C1).
rule(R, succ, N, mul(N, add(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1030, C1).
rule(R, succ, N, sub(N, add(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1031, C1).
rule(R, succ, N, sub(add(C1, mul(N, N)), N)) :- input(call(succ, N)), choose(R, 1032, C1).
rule(R, succ, N, add(C2, add(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1033, C1, C2).
rule(R, succ, N, mul(C2, add(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1034, C1, C2).
rule(R, succ, N, sub(C2, add(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1035, C1, C2).
rule(R, succ, N, sub(add(C1, mul(N, N)), C2)) :- input(call(succ, N)), choose(R, 1036, C1, C2).
rule(R, succ, N, call(succ, add(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1037, C1).
rule(R, succ, N, add(N, mul(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1038, C1).
rule(R, succ, N, mul(N, mul(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1039, C1).
rule(R, succ, N, sub(N, mul(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1040, C1).
rule(R, succ, N, sub(mul(C1, mul(N, N)), N)) :- input(call(succ, N)), choose(R, 1041, C1).
rule(R, succ, N, add(C2, mul(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1042, C1, C2).
rule(R, succ, N, mul(C2, mul(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1043, C1, C2).
rule(R, succ, N, sub(C2, mul(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1044, C1, C2).
rule(R, succ, N, sub(mul(C1, mul(N, N)), C2)) :- input(call(succ, N)), choose(R, 1045, C1, C2).
rule(R, succ, N, call(succ, mul(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1046, C1).
rule(R, succ, N, add(N, sub(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1047, C1).
rule(R, succ, N, mul(N, sub(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1048, C1).
rule(R, succ, N, sub(N, sub(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1049, C1).
rule(R, succ, N, sub(sub(C1, mul(N, N)), N)) :- input(call(succ, N)), choose(R, 1050, C1).
rule(R, succ, N, add(C2, sub(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1051, C1, C2).
rule(R, succ, N, mul(C2, sub(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1052, C1, C2).
rule(R, succ, N, sub(C2, sub(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1053, C1, C2).
rule(R, succ, N, sub(sub(C1, mul(N, N)), C2)) :- input(call(succ, N)), choose(R, 1054, C1, C2).
rule(R, succ, N, call(succ, sub(C1, mul(N, N)))) :- input(call(succ, N)), choose(R, 1055, C1).
rule(R, succ, N, add(N, sub(mul(N, N), C1))) :- input(call(succ, N)), choose(R, 1056, C1).
rule(R, succ, N, mul(N, sub(mul(N, N), C1))) :- input(call(succ, N)), choose(R, 1057, C1).
rule(R, succ, N, sub(N, sub(mul(N, N), C1))) :- input(call(succ, N)), choose(R, 1058, C1).
rule(R, succ, N, sub(sub(mul(N, N), C1), N)) :- input(call(succ, N)), choose(R, 1059, C1).
rule(R, succ, N, add(C2, sub(mul(N, N), C1))) :- input(call(succ, N)), choose(R, 1060, C1, C2).
rule(R, succ, N, mul(C2, sub(mul(N, N), C1))) :- input(call(succ, N)), choose(R, 1061, C1, C2).
rule(R, succ, N, sub(C2, sub(mul(N, N), C1))) :- input(call(succ, N)), choose(R, 1062, C1, C2).
rule(R, succ, N, sub(sub(mul(N, N), C1), C2)) :- input(call(succ, N)), choose(R, 1063, C1, C2).
rule(R, succ, N, call(succ, sub(mul(N, N), C1))) :- input(call(succ, N)), choose(R, 1064, C1).
rule(R, succ, N, add(N, call(succ, mul(N, N)))) :- input(call(succ, N)), choose(R, 1065).
rule(R, succ, N, mul(N, call(succ, mul(N, N)))) :- input(call(succ, N)), choose(R, 1066).
rule(R, succ, N, sub(N, call(succ, mul(N, N)))) :- input(call(succ, N)), choose(R, 1067).
rule(R, succ, N, sub(call(succ, mul(N, N)), N)) :- input(call(succ, N)), choose(R, 1068).
rule(R, succ, N, add(C1, call(succ, mul(N, N)))) :- input(call(succ, N)), choose(R, 1069, C1).
rule(R, succ, N, mul(C1, call(succ, mul(N, N)))) :- input(call(succ, N)), choose(R, 1070, C1).
rule(R, succ, N, sub(C1, call(succ, mul(N, N)))) :- input(call(succ, N)), choose(R, 1071, C1).
rule(R, succ, N, sub(call(succ, mul(N, N)), C1)) :- input(call(succ, N)), choose(R, 1072, C1).
rule(R, succ, N, call(succ, call(succ, mul(N, N)))) :- input(call(succ, N)), choose(R, 1073).
rule(R, succ, N, add(N, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1074).
rule(R, succ, N, mul(N, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1075).
rule(R, succ, N, sub(N, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1076).
rule(R, succ, N, sub(add(N, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1077).
rule(R, succ, N, add(C1, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1078, C1).
rule(R, succ, N, mul(C1, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1079, C1).
rule(R, succ, N, sub(C1, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1080, C1).
rule(R, succ, N, sub(add(N, sub(N, N)), C1)) :- input(call(succ, N)), choose(R, 1081, C1).
rule(R, succ, N, call(succ, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1082).
rule(R, succ, N, add(N, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1083).
rule(R, succ, N, mul(N, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1084).
rule(R, succ, N, sub(N, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1085).
rule(R, succ, N, sub(mul(N, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1086).
rule(R, succ, N, add(C1, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1087, C1).
rule(R, succ, N, mul(C1, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1088, C1).
rule(R, succ, N, sub(C1, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1089, C1).
rule(R, succ, N, sub(mul(N, sub(N, N)), C1)) :- input(call(succ, N)), choose(R, 1090, C1).
rule(R, succ, N, call(succ, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1091).
rule(R, succ, N, add(N, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1092).
rule(R, succ, N, mul(N, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1093).
rule(R, succ, N, sub(N, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1094).
rule(R, succ, N, sub(sub(N, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1095).
rule(R, succ, N, add(C1, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1096, C1).
rule(R, succ, N, mul(C1, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1097, C1).
rule(R, succ, N, sub(C1, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1098, C1).
rule(R, succ, N, sub(sub(N, sub(N, N)), C1)) :- input(call(succ, N)), choose(R, 1099, C1).
rule(R, succ, N, call(succ, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1100).
rule(R, succ, N, add(N, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1101).
rule(R, succ, N, mul(N, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1102).
rule(R, succ, N, sub(N, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1103).
rule(R, succ, N, sub(sub(sub(N, N), N), N)) :- input(call(succ, N)), choose(R, 1104).
rule(R, succ, N, add(C1, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1105, C1).
rule(R, succ, N, mul(C1, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1106, C1).
rule(R, succ, N, sub(C1, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1107, C1).
rule(R, succ, N, sub(sub(sub(N, N), N), C1)) :- input(call(succ, N)), choose(R, 1108, C1).
rule(R, succ, N, call(succ, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1109).
rule(R, succ, N, add(N, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1110, C1).
rule(R, succ, N, mul(N, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1111, C1).
rule(R, succ, N, sub(N, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1112, C1).
rule(R, succ, N, sub(add(C1, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1113, C1).
rule(R, succ, N, add(C2, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1114, C1, C2).
rule(R, succ, N, mul(C2, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1115, C1, C2).
rule(R, succ, N, sub(C2, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1116, C1, C2).
rule(R, succ, N, sub(add(C1, sub(N, N)), C2)) :- input(call(succ, N)), choose(R, 1117, C1, C2).
rule(R, succ, N, call(succ, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1118, C1).
rule(R, succ, N, add(N, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1119, C1).
rule(R, succ, N, mul(N, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1120, C1).
rule(R, succ, N, sub(N, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1121, C1).
rule(R, succ, N, sub(mul(C1, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1122, C1).
rule(R, succ, N, add(C2, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1123, C1, C2).
rule(R, succ, N, mul(C2, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1124, C1, C2).
rule(R, succ, N, sub(C2, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1125, C1, C2).
rule(R, succ, N, sub(mul(C1, sub(N, N)), C2)) :- input(call(succ, N)), choose(R, 1126, C1, C2).
rule(R, succ, N, call(succ, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1127, C1).
rule(R, succ, N, add(N, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1128, C1).
rule(R, succ, N, mul(N, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1129, C1).
rule(R, succ, N, sub(N, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1130, C1).
rule(R, succ, N, sub(sub(C1, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1131, C1).
rule(R, succ, N, add(C2, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1132, C1, C2).
rule(R, succ, N, mul(C2, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1133, C1, C2).
rule(R, succ, N, sub(C2, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1134, C1, C2).
rule(R, succ, N, sub(sub(C1, sub(N, N)), C2)) :- input(call(succ, N)), choose(R, 1135, C1, C2).
rule(R, succ, N, call(succ, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1136, C1).
rule(R, succ, N, add(N, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1137, C1).
rule(R, succ, N, mul(N, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1138, C1).
rule(R, succ, N, sub(N, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1139, C1).
rule(R, succ, N, sub(sub(sub(N, N), C1), N)) :- input(call(succ, N)), choose(R, 1140, C1).
rule(R, succ, N, add(C2, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1141, C1, C2).
rule(R, succ, N, mul(C2, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1142, C1, C2).
rule(R, succ, N, sub(C2, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1143, C1, C2).
rule(R, succ, N, sub(sub(sub(N, N), C1), C2)) :- input(call(succ, N)), choose(R, 1144, C1, C2).
rule(R, succ, N, call(succ, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1145, C1).
rule(R, succ, N, add(N, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1146).
rule(R, succ, N, mul(N, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1147).
rule(R, succ, N, sub(N, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1148).
rule(R, succ, N, sub(call(succ, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1149).
rule(R, succ, N, add(C1, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1150, C1).
rule(R, succ, N, mul(C1, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1151, C1).
rule(R, succ, N, sub(C1, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1152, C1).
rule(R, succ, N, sub(call(succ, sub(N, N)), C1)) :- input(call(succ, N)), choose(R, 1153, C1).
rule(R, succ, N, call(succ, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1154).
rule(R, succ, N, add(N, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1155).
rule(R, succ, N, mul(N, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1156).
rule(R, succ, N, sub(N, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1157).
rule(R, succ, N, sub(add(N, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1158).
rule(R, succ, N, add(C1, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1159, C1).
rule(R, succ, N, mul(C1, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1160, C1).
rule(R, succ, N, sub(C1, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1161, C1).
rule(R, succ, N, sub(add(N, sub(N, N)), C1)) :- input(call(succ, N)), choose(R, 1162, C1).
rule(R, succ, N, call(succ, add(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1163).
rule(R, succ, N, add(N, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1164).
rule(R, succ, N, mul(N, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1165).
rule(R, succ, N, sub(N, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1166).
rule(R, succ, N, sub(mul(N, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1167).
rule(R, succ, N, add(C1, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1168, C1).
rule(R, succ, N, mul(C1, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1169, C1).
rule(R, succ, N, sub(C1, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1170, C1).
rule(R, succ, N, sub(mul(N, sub(N, N)), C1)) :- input(call(succ, N)), choose(R, 1171, C1).
rule(R, succ, N, call(succ, mul(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1172).
rule(R, succ, N, add(N, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1173).
rule(R, succ, N, mul(N, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1174).
rule(R, succ, N, sub(N, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1175).
rule(R, succ, N, sub(sub(N, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1176).
rule(R, succ, N, add(C1, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1177, C1).
rule(R, succ, N, mul(C1, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1178, C1).
rule(R, succ, N, sub(C1, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1179, C1).
rule(R, succ, N, sub(sub(N, sub(N, N)), C1)) :- input(call(succ, N)), choose(R, 1180, C1).
rule(R, succ, N, call(succ, sub(N, sub(N, N)))) :- input(call(succ, N)), choose(R, 1181).
rule(R, succ, N, add(N, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1182).
rule(R, succ, N, mul(N, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1183).
rule(R, succ, N, sub(N, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1184).
rule(R, succ, N, sub(sub(sub(N, N), N), N)) :- input(call(succ, N)), choose(R, 1185).
rule(R, succ, N, add(C1, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1186, C1).
rule(R, succ, N, mul(C1, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1187, C1).
rule(R, succ, N, sub(C1, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1188, C1).
rule(R, succ, N, sub(sub(sub(N, N), N), C1)) :- input(call(succ, N)), choose(R, 1189, C1).
rule(R, succ, N, call(succ, sub(sub(N, N), N))) :- input(call(succ, N)), choose(R, 1190).
rule(R, succ, N, add(N, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1191, C1).
rule(R, succ, N, mul(N, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1192, C1).
rule(R, succ, N, sub(N, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1193, C1).
rule(R, succ, N, sub(add(C1, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1194, C1).
rule(R, succ, N, add(C2, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1195, C1, C2).
rule(R, succ, N, mul(C2, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1196, C1, C2).
rule(R, succ, N, sub(C2, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1197, C1, C2).
rule(R, succ, N, sub(add(C1, sub(N, N)), C2)) :- input(call(succ, N)), choose(R, 1198, C1, C2).
rule(R, succ, N, call(succ, add(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1199, C1).
rule(R, succ, N, add(N, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1200, C1).
rule(R, succ, N, mul(N, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1201, C1).
rule(R, succ, N, sub(N, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1202, C1).
rule(R, succ, N, sub(mul(C1, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1203, C1).
rule(R, succ, N, add(C2, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1204, C1, C2).
rule(R, succ, N, mul(C2, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1205, C1, C2).
rule(R, succ, N, sub(C2, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1206, C1, C2).
rule(R, succ, N, sub(mul(C1, sub(N, N)), C2)) :- input(call(succ, N)), choose(R, 1207, C1, C2).
rule(R, succ, N, call(succ, mul(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1208, C1).
rule(R, succ, N, add(N, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1209, C1).
rule(R, succ, N, mul(N, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1210, C1).
rule(R, succ, N, sub(N, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1211, C1).
rule(R, succ, N, sub(sub(C1, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1212, C1).
rule(R, succ, N, add(C2, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1213, C1, C2).
rule(R, succ, N, mul(C2, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1214, C1, C2).
rule(R, succ, N, sub(C2, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1215, C1, C2).
rule(R, succ, N, sub(sub(C1, sub(N, N)), C2)) :- input(call(succ, N)), choose(R, 1216, C1, C2).
rule(R, succ, N, call(succ, sub(C1, sub(N, N)))) :- input(call(succ, N)), choose(R, 1217, C1).
rule(R, succ, N, add(N, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1218, C1).
rule(R, succ, N, mul(N, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1219, C1).
rule(R, succ, N, sub(N, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1220, C1).
rule(R, succ, N, sub(sub(sub(N, N), C1), N)) :- input(call(succ, N)), choose(R, 1221, C1).
rule(R, succ, N, add(C2, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1222, C1, C2).
rule(R, succ, N, mul(C2, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1223, C1, C2).
rule(R, succ, N, sub(C2, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1224, C1, C2).
rule(R, succ, N, sub(sub(sub(N, N), C1), C2)) :- input(call(succ, N)), choose(R, 1225, C1, C2).
rule(R, succ, N, call(succ, sub(sub(N, N), C1))) :- input(call(succ, N)), choose(R, 1226, C1).
rule(R, succ, N, add(N, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1227).
rule(R, succ, N, mul(N, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1228).
rule(R, succ, N, sub(N, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1229).
rule(R, succ, N, sub(call(succ, sub(N, N)), N)) :- input(call(succ, N)), choose(R, 1230).
rule(R, succ, N, add(C1, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1231, C1).
rule(R, succ, N, mul(C1, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1232, C1).
rule(R, succ, N, sub(C1, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1233, C1).
rule(R, succ, N, sub(call(succ, sub(N, N)), C1)) :- input(call(succ, N)), choose(R, 1234, C1).
rule(R, succ, N, call(succ, call(succ, sub(N, N)))) :- input(call(succ, N)), choose(R, 1235).
rule(R, succ, N, add(N, add(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1236, C1).
rule(R, succ, N, mul(N, add(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1237, C1).
rule(R, succ, N, sub(N, add(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1238, C1).
rule(R, succ, N, sub(add(N, add(C1, N)), N)) :- input(call(succ, N)), choose(R, 1239, C1).
rule(R, succ, N, add(C2, add(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1240, C1, C2).
rule(R, succ, N, mul(C2, add(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1241, C1, C2).
rule(R, succ, N, sub(C2, add(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1242, C1, C2).
rule(R, succ, N, sub(add(N, add(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1243, C1, C2).
rule(R, succ, N, call(succ, add(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1244, C1).
rule(R, succ, N, add(N, mul(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1245, C1).
rule(R, succ, N, mul(N, mul(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1246, C1).
rule(R, succ, N, sub(N, mul(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1247, C1).
rule(R, succ, N, sub(mul(N, add(C1, N)), N)) :- input(call(succ, N)), choose(R, 1248, C1).
rule(R, succ, N, add(C2, mul(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1249, C1, C2).
rule(R, succ, N, mul(C2, mul(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1250, C1, C2).
rule(R, succ, N, sub(C2, mul(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1251, C1, C2).
rule(R, succ, N, sub(mul(N, add(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1252, C1, C2).
rule(R, succ, N, call(succ, mul(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1253, C1).
rule(R, succ, N, add(N, sub(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1254, C1).
rule(R, succ, N, mul(N, sub(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1255, C1).
rule(R, succ, N, sub(N, sub(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1256, C1).
rule(R, succ, N, sub(sub(N, add(C1, N)), N)) :- input(call(succ, N)), choose(R, 1257, C1).
rule(R, succ, N, add(C2, sub(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1258, C1, C2).
rule(R, succ, N, mul(C2, sub(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1259, C1, C2).
rule(R, succ, N, sub(C2, sub(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1260, C1, C2).
rule(R, succ, N, sub(sub(N, add(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1261, C1, C2).
rule(R, succ, N, call(succ, sub(N, add(C1, N)))) :- input(call(succ, N)), choose(R, 1262, C1).
rule(R, succ, N, add(N, sub(add(C1, N), N))) :- input(call(succ, N)), choose(R, 1263, C1).
rule(R, succ, N, mul(N, sub(add(C1, N), N))) :- input(call(succ, N)), choose(R, 1264, C1).
rule(R, succ, N, sub(N, sub(add(C1, N), N))) :- input(call(succ, N)), choose(R, 1265, C1).
rule(R, succ, N, sub(sub(add(C1, N), N), N)) :- input(call(succ, N)), choose(R, 1266, C1).
rule(R, succ, N, add(C2, sub(add(C1, N), N))) :- input(call(succ, N)), choose(R, 1267, C1, C2).
rule(R, succ, N, mul(C2, sub(add(C1, N), N))) :- input(call(succ, N)), choose(R, 1268, C1, C2).
rule(R, succ, N, sub(C2, sub(add(C1, N), N))) :- input(call(succ, N)), choose(R, 1269, C1, C2).
rule(R, succ, N, sub(sub(add(C1, N), N), C2)) :- input(call(succ, N)), choose(R, 1270, C1, C2).
rule(R, succ, N, call(succ, sub(add(C1, N), N))) :- input(call(succ, N)), choose(R, 1271, C1).
rule(R, succ, N, add(N, add(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1272, C1, C2).
rule(R, succ, N, mul(N, add(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1273, C1, C2).
rule(R, succ, N, sub(N, add(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1274, C1, C2).
rule(R, succ, N, sub(add(C2, add(C1, N)), N)) :- input(call(succ, N)), choose(R, 1275, C1, C2).
rule(R, succ, N, add(C3, add(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1276, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1277, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1278, C1, C2, C3).
rule(R, succ, N, sub(add(C2, add(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1279, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1280, C1, C2).
rule(R, succ, N, add(N, mul(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1281, C1, C2).
rule(R, succ, N, mul(N, mul(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1282, C1, C2).
rule(R, succ, N, sub(N, mul(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1283, C1, C2).
rule(R, succ, N, sub(mul(C2, add(C1, N)), N)) :- input(call(succ, N)), choose(R, 1284, C1, C2).
rule(R, succ, N, add(C3, mul(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1285, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1286, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1287, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, add(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1288, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1289, C1, C2).
rule(R, succ, N, add(N, sub(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1290, C1, C2).
rule(R, succ, N, mul(N, sub(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1291, C1, C2).
rule(R, succ, N, sub(N, sub(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1292, C1, C2).
rule(R, succ, N, sub(sub(C2, add(C1, N)), N)) :- input(call(succ, N)), choose(R, 1293, C1, C2).
rule(R, succ, N, add(C3, sub(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1294, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1295, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1296, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, add(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1297, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, add(C1, N)))) :- input(call(succ, N)), choose(R, 1298, C1, C2).
rule(R, succ, N, add(N, sub(add(C1, N), C2))) :- input(call(succ, N)), choose(R, 1299, C1, C2).
rule(R, succ, N, mul(N, sub(add(C1, N), C2))) :- input(call(succ, N)), choose(R, 1300, C1, C2).
rule(R, succ, N, sub(N, sub(add(C1, N), C2))) :- input(call(succ, N)), choose(R, 1301, C1, C2).
rule(R, succ, N, sub(sub(add(C1, N), C2), N)) :- input(call(succ, N)), choose(R, 1302, C1, C2).
rule(R, succ, N, add(C3, sub(add(C1, N), C2))) :- input(call(succ, N)), choose(R, 1303, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(add(C1, N), C2))) :- input(call(succ, N)), choose(R, 1304, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(add(C1, N), C2))) :- input(call(succ, N)), choose(R, 1305, C1, C2, C3).
rule(R, succ, N, sub(sub(add(C1, N), C2), C3)) :- input(call(succ, N)), choose(R, 1306, C1, C2, C3).
rule(R, succ, N, call(succ, sub(add(C1, N), C2))) :- input(call(succ, N)), choose(R, 1307, C1, C2).
rule(R, succ, N, add(N, call(succ, add(C1, N)))) :- input(call(succ, N)), choose(R, 1308, C1).
rule(R, succ, N, mul(N, call(succ, add(C1, N)))) :- input(call(succ, N)), choose(R, 1309, C1).
rule(R, succ, N, sub(N, call(succ, add(C1, N)))) :- input(call(succ, N)), choose(R, 1310, C1).
rule(R, succ, N, sub(call(succ, add(C1, N)), N)) :- input(call(succ, N)), choose(R, 1311, C1).
rule(R, succ, N, add(C2, call(succ, add(C1, N)))) :- input(call(succ, N)), choose(R, 1312, C1, C2).
rule(R, succ, N, mul(C2, call(succ, add(C1, N)))) :- input(call(succ, N)), choose(R, 1313, C1, C2).
rule(R, succ, N, sub(C2, call(succ, add(C1, N)))) :- input(call(succ, N)), choose(R, 1314, C1, C2).
rule(R, succ, N, sub(call(succ, add(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1315, C1, C2).
rule(R, succ, N, call(succ, call(succ, add(C1, N)))) :- input(call(succ, N)), choose(R, 1316, C1).
rule(R, succ, N, add(N, add(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1317, C1).
rule(R, succ, N, mul(N, add(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1318, C1).
rule(R, succ, N, sub(N, add(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1319, C1).
rule(R, succ, N, sub(add(N, mul(C1, N)), N)) :- input(call(succ, N)), choose(R, 1320, C1).
rule(R, succ, N, add(C2, add(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1321, C1, C2).
rule(R, succ, N, mul(C2, add(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1322, C1, C2).
rule(R, succ, N, sub(C2, add(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1323, C1, C2).
rule(R, succ, N, sub(add(N, mul(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1324, C1, C2).
rule(R, succ, N, call(succ, add(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1325, C1).
rule(R, succ, N, add(N, mul(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1326, C1).
rule(R, succ, N, mul(N, mul(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1327, C1).
rule(R, succ, N, sub(N, mul(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1328, C1).
rule(R, succ, N, sub(mul(N, mul(C1, N)), N)) :- input(call(succ, N)), choose(R, 1329, C1).
rule(R, succ, N, add(C2, mul(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1330, C1, C2).
rule(R, succ, N, mul(C2, mul(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1331, C1, C2).
rule(R, succ, N, sub(C2, mul(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1332, C1, C2).
rule(R, succ, N, sub(mul(N, mul(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1333, C1, C2).
rule(R, succ, N, call(succ, mul(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1334, C1).
rule(R, succ, N, add(N, sub(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1335, C1).
rule(R, succ, N, mul(N, sub(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1336, C1).
rule(R, succ, N, sub(N, sub(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1337, C1).
rule(R, succ, N, sub(sub(N, mul(C1, N)), N)) :- input(call(succ, N)), choose(R, 1338, C1).
rule(R, succ, N, add(C2, sub(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1339, C1, C2).
rule(R, succ, N, mul(C2, sub(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1340, C1, C2).
rule(R, succ, N, sub(C2, sub(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1341, C1, C2).
rule(R, succ, N, sub(sub(N, mul(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1342, C1, C2).
rule(R, succ, N, call(succ, sub(N, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1343, C1).
rule(R, succ, N, add(N, sub(mul(C1, N), N))) :- input(call(succ, N)), choose(R, 1344, C1).
rule(R, succ, N, mul(N, sub(mul(C1, N), N))) :- input(call(succ, N)), choose(R, 1345, C1).
rule(R, succ, N, sub(N, sub(mul(C1, N), N))) :- input(call(succ, N)), choose(R, 1346, C1).
rule(R, succ, N, sub(sub(mul(C1, N), N), N)) :- input(call(succ, N)), choose(R, 1347, C1).
rule(R, succ, N, add(C2, sub(mul(C1, N), N))) :- input(call(succ, N)), choose(R, 1348, C1, C2).
rule(R, succ, N, mul(C2, sub(mul(C1, N), N))) :- input(call(succ, N)), choose(R, 1349, C1, C2).
rule(R, succ, N, sub(C2, sub(mul(C1, N), N))) :- input(call(succ, N)), choose(R, 1350, C1, C2).
rule(R, succ, N, sub(sub(mul(C1, N), N), C2)) :- input(call(succ, N)), choose(R, 1351, C1, C2).
rule(R, succ, N, call(succ, sub(mul(C1, N), N))) :- input(call(succ, N)), choose(R, 1352, C1).
rule(R, succ, N, add(N, add(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1353, C1, C2).
rule(R, succ, N, mul(N, add(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1354, C1, C2).
rule(R, succ, N, sub(N, add(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1355, C1, C2).
rule(R, succ, N, sub(add(C2, mul(C1, N)), N)) :- input(call(succ, N)), choose(R, 1356, C1, C2).
rule(R, succ, N, add(C3, add(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1357, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1358, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1359, C1, C2, C3).
rule(R, succ, N, sub(add(C2, mul(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1360, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1361, C1, C2).
rule(R, succ, N, add(N, mul(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1362, C1, C2).
rule(R, succ, N, mul(N, mul(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1363, C1, C2).
rule(R, succ, N, sub(N, mul(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1364, C1, C2).
rule(R, succ, N, sub(mul(C2, mul(C1, N)), N)) :- input(call(succ, N)), choose(R, 1365, C1, C2).
rule(R, succ, N, add(C3, mul(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1366, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1367, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1368, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, mul(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1369, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1370, C1, C2).
rule(R, succ, N, add(N, sub(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1371, C1, C2).
rule(R, succ, N, mul(N, sub(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1372, C1, C2).
rule(R, succ, N, sub(N, sub(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1373, C1, C2).
rule(R, succ, N, sub(sub(C2, mul(C1, N)), N)) :- input(call(succ, N)), choose(R, 1374, C1, C2).
rule(R, succ, N, add(C3, sub(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1375, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1376, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1377, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, mul(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1378, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1379, C1, C2).
rule(R, succ, N, add(N, sub(mul(C1, N), C2))) :- input(call(succ, N)), choose(R, 1380, C1, C2).
rule(R, succ, N, mul(N, sub(mul(C1, N), C2))) :- input(call(succ, N)), choose(R, 1381, C1, C2).
rule(R, succ, N, sub(N, sub(mul(C1, N), C2))) :- input(call(succ, N)), choose(R, 1382, C1, C2).
rule(R, succ, N, sub(sub(mul(C1, N), C2), N)) :- input(call(succ, N)), choose(R, 1383, C1, C2).
rule(R, succ, N, add(C3, sub(mul(C1, N), C2))) :- input(call(succ, N)), choose(R, 1384, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(mul(C1, N), C2))) :- input(call(succ, N)), choose(R, 1385, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(mul(C1, N), C2))) :- input(call(succ, N)), choose(R, 1386, C1, C2, C3).
rule(R, succ, N, sub(sub(mul(C1, N), C2), C3)) :- input(call(succ, N)), choose(R, 1387, C1, C2, C3).
rule(R, succ, N, call(succ, sub(mul(C1, N), C2))) :- input(call(succ, N)), choose(R, 1388, C1, C2).
rule(R, succ, N, add(N, call(succ, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1389, C1).
rule(R, succ, N, mul(N, call(succ, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1390, C1).
rule(R, succ, N, sub(N, call(succ, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1391, C1).
rule(R, succ, N, sub(call(succ, mul(C1, N)), N)) :- input(call(succ, N)), choose(R, 1392, C1).
rule(R, succ, N, add(C2, call(succ, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1393, C1, C2).
rule(R, succ, N, mul(C2, call(succ, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1394, C1, C2).
rule(R, succ, N, sub(C2, call(succ, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1395, C1, C2).
rule(R, succ, N, sub(call(succ, mul(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1396, C1, C2).
rule(R, succ, N, call(succ, call(succ, mul(C1, N)))) :- input(call(succ, N)), choose(R, 1397, C1).
rule(R, succ, N, add(N, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1398, C1).
rule(R, succ, N, mul(N, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1399, C1).
rule(R, succ, N, sub(N, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1400, C1).
rule(R, succ, N, sub(add(N, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 1401, C1).
rule(R, succ, N, add(C2, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1402, C1, C2).
rule(R, succ, N, mul(C2, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1403, C1, C2).
rule(R, succ, N, sub(C2, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1404, C1, C2).
rule(R, succ, N, sub(add(N, sub(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1405, C1, C2).
rule(R, succ, N, call(succ, add(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1406, C1).
rule(R, succ, N, add(N, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1407, C1).
rule(R, succ, N, mul(N, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1408, C1).
rule(R, succ, N, sub(N, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1409, C1).
rule(R, succ, N, sub(mul(N, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 1410, C1).
rule(R, succ, N, add(C2, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1411, C1, C2).
rule(R, succ, N, mul(C2, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1412, C1, C2).
rule(R, succ, N, sub(C2, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1413, C1, C2).
rule(R, succ, N, sub(mul(N, sub(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1414, C1, C2).
rule(R, succ, N, call(succ, mul(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1415, C1).
rule(R, succ, N, add(N, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1416, C1).
rule(R, succ, N, mul(N, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1417, C1).
rule(R, succ, N, sub(N, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1418, C1).
rule(R, succ, N, sub(sub(N, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 1419, C1).
rule(R, succ, N, add(C2, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1420, C1, C2).
rule(R, succ, N, mul(C2, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1421, C1, C2).
rule(R, succ, N, sub(C2, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1422, C1, C2).
rule(R, succ, N, sub(sub(N, sub(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1423, C1, C2).
rule(R, succ, N, call(succ, sub(N, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1424, C1).
rule(R, succ, N, add(N, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 1425, C1).
rule(R, succ, N, mul(N, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 1426, C1).
rule(R, succ, N, sub(N, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 1427, C1).
rule(R, succ, N, sub(sub(sub(C1, N), N), N)) :- input(call(succ, N)), choose(R, 1428, C1).
rule(R, succ, N, add(C2, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 1429, C1, C2).
rule(R, succ, N, mul(C2, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 1430, C1, C2).
rule(R, succ, N, sub(C2, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 1431, C1, C2).
rule(R, succ, N, sub(sub(sub(C1, N), N), C2)) :- input(call(succ, N)), choose(R, 1432, C1, C2).
rule(R, succ, N, call(succ, sub(sub(C1, N), N))) :- input(call(succ, N)), choose(R, 1433, C1).
rule(R, succ, N, add(N, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1434, C1, C2).
rule(R, succ, N, mul(N, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1435, C1, C2).
rule(R, succ, N, sub(N, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1436, C1, C2).
rule(R, succ, N, sub(add(C2, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 1437, C1, C2).
rule(R, succ, N, add(C3, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1438, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1439, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1440, C1, C2, C3).
rule(R, succ, N, sub(add(C2, sub(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1441, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1442, C1, C2).
rule(R, succ, N, add(N, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1443, C1, C2).
rule(R, succ, N, mul(N, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1444, C1, C2).
rule(R, succ, N, sub(N, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1445, C1, C2).
rule(R, succ, N, sub(mul(C2, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 1446, C1, C2).
rule(R, succ, N, add(C3, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1447, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1448, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1449, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, sub(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1450, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1451, C1, C2).
rule(R, succ, N, add(N, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1452, C1, C2).
rule(R, succ, N, mul(N, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1453, C1, C2).
rule(R, succ, N, sub(N, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1454, C1, C2).
rule(R, succ, N, sub(sub(C2, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 1455, C1, C2).
rule(R, succ, N, add(C3, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1456, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1457, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1458, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, sub(C1, N)), C3)) :- input(call(succ, N)), choose(R, 1459, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1460, C1, C2).
rule(R, succ, N, add(N, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 1461, C1, C2).
rule(R, succ, N, mul(N, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 1462, C1, C2).
rule(R, succ, N, sub(N, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 1463, C1, C2).
rule(R, succ, N, sub(sub(sub(C1, N), C2), N)) :- input(call(succ, N)), choose(R, 1464, C1, C2).
rule(R, succ, N, add(C3, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 1465, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 1466, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 1467, C1, C2, C3).
rule(R, succ, N, sub(sub(sub(C1, N), C2), C3)) :- input(call(succ, N)), choose(R, 1468, C1, C2, C3).
rule(R, succ, N, call(succ, sub(sub(C1, N), C2))) :- input(call(succ, N)), choose(R, 1469, C1, C2).
rule(R, succ, N, add(N, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1470, C1).
rule(R, succ, N, mul(N, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1471, C1).
rule(R, succ, N, sub(N, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1472, C1).
rule(R, succ, N, sub(call(succ, sub(C1, N)), N)) :- input(call(succ, N)), choose(R, 1473, C1).
rule(R, succ, N, add(C2, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1474, C1, C2).
rule(R, succ, N, mul(C2, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1475, C1, C2).
rule(R, succ, N, sub(C2, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1476, C1, C2).
rule(R, succ, N, sub(call(succ, sub(C1, N)), C2)) :- input(call(succ, N)), choose(R, 1477, C1, C2).
rule(R, succ, N, call(succ, call(succ, sub(C1, N)))) :- input(call(succ, N)), choose(R, 1478, C1).
rule(R, succ, N, add(N, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1479, C1).
rule(R, succ, N, mul(N, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1480, C1).
rule(R, succ, N, sub(N, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1481, C1).
rule(R, succ, N, sub(add(N, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 1482, C1).
rule(R, succ, N, add(C2, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1483, C1, C2).
rule(R, succ, N, mul(C2, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1484, C1, C2).
rule(R, succ, N, sub(C2, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1485, C1, C2).
rule(R, succ, N, sub(add(N, sub(N, C1)), C2)) :- input(call(succ, N)), choose(R, 1486, C1, C2).
rule(R, succ, N, call(succ, add(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1487, C1).
rule(R, succ, N, add(N, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1488, C1).
rule(R, succ, N, mul(N, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1489, C1).
rule(R, succ, N, sub(N, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1490, C1).
rule(R, succ, N, sub(mul(N, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 1491, C1).
rule(R, succ, N, add(C2, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1492, C1, C2).
rule(R, succ, N, mul(C2, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1493, C1, C2).
rule(R, succ, N, sub(C2, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1494, C1, C2).
rule(R, succ, N, sub(mul(N, sub(N, C1)), C2)) :- input(call(succ, N)), choose(R, 1495, C1, C2).
rule(R, succ, N, call(succ, mul(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1496, C1).
rule(R, succ, N, add(N, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1497, C1).
rule(R, succ, N, mul(N, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1498, C1).
rule(R, succ, N, sub(N, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1499, C1).
rule(R, succ, N, sub(sub(N, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 1500, C1).
rule(R, succ, N, add(C2, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1501, C1, C2).
rule(R, succ, N, mul(C2, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1502, C1, C2).
rule(R, succ, N, sub(C2, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1503, C1, C2).
rule(R, succ, N, sub(sub(N, sub(N, C1)), C2)) :- input(call(succ, N)), choose(R, 1504, C1, C2).
rule(R, succ, N, call(succ, sub(N, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1505, C1).
rule(R, succ, N, add(N, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 1506, C1).
rule(R, succ, N, mul(N, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 1507, C1).
rule(R, succ, N, sub(N, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 1508, C1).
rule(R, succ, N, sub(sub(sub(N, C1), N), N)) :- input(call(succ, N)), choose(R, 1509, C1).
rule(R, succ, N, add(C2, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 1510, C1, C2).
rule(R, succ, N, mul(C2, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 1511, C1, C2).
rule(R, succ, N, sub(C2, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 1512, C1, C2).
rule(R, succ, N, sub(sub(sub(N, C1), N), C2)) :- input(call(succ, N)), choose(R, 1513, C1, C2).
rule(R, succ, N, call(succ, sub(sub(N, C1), N))) :- input(call(succ, N)), choose(R, 1514, C1).
rule(R, succ, N, add(N, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1515, C1, C2).
rule(R, succ, N, mul(N, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1516, C1, C2).
rule(R, succ, N, sub(N, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1517, C1, C2).
rule(R, succ, N, sub(add(C2, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 1518, C1, C2).
rule(R, succ, N, add(C3, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1519, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1520, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1521, C1, C2, C3).
rule(R, succ, N, sub(add(C2, sub(N, C1)), C3)) :- input(call(succ, N)), choose(R, 1522, C1, C2, C3).
rule(R, succ, N, call(succ, add(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1523, C1, C2).
rule(R, succ, N, add(N, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1524, C1, C2).
rule(R, succ, N, mul(N, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1525, C1, C2).
rule(R, succ, N, sub(N, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1526, C1, C2).
rule(R, succ, N, sub(mul(C2, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 1527, C1, C2).
rule(R, succ, N, add(C3, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1528, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1529, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1530, C1, C2, C3).
rule(R, succ, N, sub(mul(C2, sub(N, C1)), C3)) :- input(call(succ, N)), choose(R, 1531, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1532, C1, C2).
rule(R, succ, N, add(N, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1533, C1, C2).
rule(R, succ, N, mul(N, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1534, C1, C2).
rule(R, succ, N, sub(N, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1535, C1, C2).
rule(R, succ, N, sub(sub(C2, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 1536, C1, C2).
rule(R, succ, N, add(C3, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1537, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1538, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1539, C1, C2, C3).
rule(R, succ, N, sub(sub(C2, sub(N, C1)), C3)) :- input(call(succ, N)), choose(R, 1540, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C2, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1541, C1, C2).
rule(R, succ, N, add(N, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 1542, C1, C2).
rule(R, succ, N, mul(N, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 1543, C1, C2).
rule(R, succ, N, sub(N, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 1544, C1, C2).
rule(R, succ, N, sub(sub(sub(N, C1), C2), N)) :- input(call(succ, N)), choose(R, 1545, C1, C2).
rule(R, succ, N, add(C3, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 1546, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 1547, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 1548, C1, C2, C3).
rule(R, succ, N, sub(sub(sub(N, C1), C2), C3)) :- input(call(succ, N)), choose(R, 1549, C1, C2, C3).
rule(R, succ, N, call(succ, sub(sub(N, C1), C2))) :- input(call(succ, N)), choose(R, 1550, C1, C2).
rule(R, succ, N, add(N, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1551, C1).
rule(R, succ, N, mul(N, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1552, C1).
rule(R, succ, N, sub(N, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1553, C1).
rule(R, succ, N, sub(call(succ, sub(N, C1)), N)) :- input(call(succ, N)), choose(R, 1554, C1).
rule(R, succ, N, add(C2, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1555, C1, C2).
rule(R, succ, N, mul(C2, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1556, C1, C2).
rule(R, succ, N, sub(C2, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1557, C1, C2).
rule(R, succ, N, sub(call(succ, sub(N, C1)), C2)) :- input(call(succ, N)), choose(R, 1558, C1, C2).
rule(R, succ, N, call(succ, call(succ, sub(N, C1)))) :- input(call(succ, N)), choose(R, 1559, C1).
rule(R, succ, N, add(N, add(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1560).
rule(R, succ, N, mul(N, add(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1561).
rule(R, succ, N, sub(N, add(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1562).
rule(R, succ, N, sub(add(N, call(succ, N)), N)) :- input(call(succ, N)), choose(R, 1563).
rule(R, succ, N, add(C1, add(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1564, C1).
rule(R, succ, N, mul(C1, add(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1565, C1).
rule(R, succ, N, sub(C1, add(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1566, C1).
rule(R, succ, N, sub(add(N, call(succ, N)), C1)) :- input(call(succ, N)), choose(R, 1567, C1).
rule(R, succ, N, call(succ, add(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1568).
rule(R, succ, N, add(N, mul(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1569).
rule(R, succ, N, mul(N, mul(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1570).
rule(R, succ, N, sub(N, mul(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1571).
rule(R, succ, N, sub(mul(N, call(succ, N)), N)) :- input(call(succ, N)), choose(R, 1572).
rule(R, succ, N, add(C1, mul(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1573, C1).
rule(R, succ, N, mul(C1, mul(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1574, C1).
rule(R, succ, N, sub(C1, mul(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1575, C1).
rule(R, succ, N, sub(mul(N, call(succ, N)), C1)) :- input(call(succ, N)), choose(R, 1576, C1).
rule(R, succ, N, call(succ, mul(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1577).
rule(R, succ, N, add(N, sub(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1578).
rule(R, succ, N, mul(N, sub(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1579).
rule(R, succ, N, sub(N, sub(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1580).
rule(R, succ, N, sub(sub(N, call(succ, N)), N)) :- input(call(succ, N)), choose(R, 1581).
rule(R, succ, N, add(C1, sub(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1582, C1).
rule(R, succ, N, mul(C1, sub(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1583, C1).
rule(R, succ, N, sub(C1, sub(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1584, C1).
rule(R, succ, N, sub(sub(N, call(succ, N)), C1)) :- input(call(succ, N)), choose(R, 1585, C1).
rule(R, succ, N, call(succ, sub(N, call(succ, N)))) :- input(call(succ, N)), choose(R, 1586).
rule(R, succ, N, add(N, sub(call(succ, N), N))) :- input(call(succ, N)), choose(R, 1587).
rule(R, succ, N, mul(N, sub(call(succ, N), N))) :- input(call(succ, N)), choose(R, 1588).
rule(R, succ, N, sub(N, sub(call(succ, N), N))) :- input(call(succ, N)), choose(R, 1589).
rule(R, succ, N, sub(sub(call(succ, N), N), N)) :- input(call(succ, N)), choose(R, 1590).
rule(R, succ, N, add(C1, sub(call(succ, N), N))) :- input(call(succ, N)), choose(R, 1591, C1).
rule(R, succ, N, mul(C1, sub(call(succ, N), N))) :- input(call(succ, N)), choose(R, 1592, C1).
rule(R, succ, N, sub(C1, sub(call(succ, N), N))) :- input(call(succ, N)), choose(R, 1593, C1).
rule(R, succ, N, sub(sub(call(succ, N), N), C1)) :- input(call(succ, N)), choose(R, 1594, C1).
rule(R, succ, N, call(succ, sub(call(succ, N), N))) :- input(call(succ, N)), choose(R, 1595).
rule(R, succ, N, add(N, add(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1596, C1).
rule(R, succ, N, mul(N, add(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1597, C1).
rule(R, succ, N, sub(N, add(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1598, C1).
rule(R, succ, N, sub(add(C1, call(succ, N)), N)) :- input(call(succ, N)), choose(R, 1599, C1).
rule(R, succ, N, add(C2, add(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1600, C1, C2).
rule(R, succ, N, mul(C2, add(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1601, C1, C2).
rule(R, succ, N, sub(C2, add(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1602, C1, C2).
rule(R, succ, N, sub(add(C1, call(succ, N)), C2)) :- input(call(succ, N)), choose(R, 1603, C1, C2).
rule(R, succ, N, call(succ, add(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1604, C1).
rule(R, succ, N, add(N, mul(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1605, C1).
rule(R, succ, N, mul(N, mul(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1606, C1).
rule(R, succ, N, sub(N, mul(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1607, C1).
rule(R, succ, N, sub(mul(C1, call(succ, N)), N)) :- input(call(succ, N)), choose(R, 1608, C1).
rule(R, succ, N, add(C2, mul(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1609, C1, C2).
rule(R, succ, N, mul(C2, mul(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1610, C1, C2).
rule(R, succ, N, sub(C2, mul(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1611, C1, C2).
rule(R, succ, N, sub(mul(C1, call(succ, N)), C2)) :- input(call(succ, N)), choose(R, 1612, C1, C2).
rule(R, succ, N, call(succ, mul(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1613, C1).
rule(R, succ, N, add(N, sub(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1614, C1).
rule(R, succ, N, mul(N, sub(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1615, C1).
rule(R, succ, N, sub(N, sub(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1616, C1).
rule(R, succ, N, sub(sub(C1, call(succ, N)), N)) :- input(call(succ, N)), choose(R, 1617, C1).
rule(R, succ, N, add(C2, sub(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1618, C1, C2).
rule(R, succ, N, mul(C2, sub(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1619, C1, C2).
rule(R, succ, N, sub(C2, sub(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1620, C1, C2).
rule(R, succ, N, sub(sub(C1, call(succ, N)), C2)) :- input(call(succ, N)), choose(R, 1621, C1, C2).
rule(R, succ, N, call(succ, sub(C1, call(succ, N)))) :- input(call(succ, N)), choose(R, 1622, C1).
rule(R, succ, N, add(N, sub(call(succ, N), C1))) :- input(call(succ, N)), choose(R, 1623, C1).
rule(R, succ, N, mul(N, sub(call(succ, N), C1))) :- input(call(succ, N)), choose(R, 1624, C1).
rule(R, succ, N, sub(N, sub(call(succ, N), C1))) :- input(call(succ, N)), choose(R, 1625, C1).
rule(R, succ, N, sub(sub(call(succ, N), C1), N)) :- input(call(succ, N)), choose(R, 1626, C1).
rule(R, succ, N, add(C2, sub(call(succ, N), C1))) :- input(call(succ, N)), choose(R, 1627, C1, C2).
rule(R, succ, N, mul(C2, sub(call(succ, N), C1))) :- input(call(succ, N)), choose(R, 1628, C1, C2).
rule(R, succ, N, sub(C2, sub(call(succ, N), C1))) :- input(call(succ, N)), choose(R, 1629, C1, C2).
rule(R, succ, N, sub(sub(call(succ, N), C1), C2)) :- input(call(succ, N)), choose(R, 1630, C1, C2).
rule(R, succ, N, call(succ, sub(call(succ, N), C1))) :- input(call(succ, N)), choose(R, 1631, C1).
rule(R, succ, N, add(N, call(succ, call(succ, N)))) :- input(call(succ, N)), choose(R, 1632).
rule(R, succ, N, mul(N, call(succ, call(succ, N)))) :- input(call(succ, N)), choose(R, 1633).
rule(R, succ, N, sub(N, call(succ, call(succ, N)))) :- input(call(succ, N)), choose(R, 1634).
rule(R, succ, N, sub(call(succ, call(succ, N)), N)) :- input(call(succ, N)), choose(R, 1635).
rule(R, succ, N, add(C1, call(succ, call(succ, N)))) :- input(call(succ, N)), choose(R, 1636, C1).
rule(R, succ, N, mul(C1, call(succ, call(succ, N)))) :- input(call(succ, N)), choose(R, 1637, C1).
rule(R, succ, N, sub(C1, call(succ, call(succ, N)))) :- input(call(succ, N)), choose(R, 1638, C1).
rule(R, succ, N, sub(call(succ, call(succ, N)), C1)) :- input(call(succ, N)), choose(R, 1639, C1).
rule(R, succ, N, call(succ, call(succ, call(succ, N)))) :- input(call(succ, N)), choose(R, 1640).
1 {
choose(R, N) : num_rules(R) : num_generated(N) ,
choose(R, N, C0) : num_rules(R) : num_generated(N) : expr_const(C0) ,
choose(R, N, C0, C1) : num_rules(R) : num_generated(N) : expr_const(C0) : expr_const(C1) ,
choose(R, N, C0, C1, C2) : num_rules(R) : num_generated(N) : expr_const(C0) : expr_const(C1) : expr_const(C2) ,
choose(R, N, C0, C1, C2, C3) : num_rules(R) : num_generated(N) : expr_const(C0) : expr_const(C1) : expr_const(C2) : expr_const(C3) 
} 2.
#minimise [choose(R)=R, choose(R, _)=R, choose(R, _, _)=R, choose(R, _, _, _)=R, choose(R, _, _, _, _)=R ].
num_generated(0..1640).