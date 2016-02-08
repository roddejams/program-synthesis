rule(R, succ, N, C1) :- input(call(succ, N)), choose(R, 1, C1).
rule(R, succ, N, N) :- input(call(succ, N)), choose(R, 2).
rule(R, succ, N, add(N, N)) :- input(call(succ, N)), choose(R, 3).
rule(R, succ, N, mul(N, N)) :- input(call(succ, N)), choose(R, 4).
rule(R, succ, N, sub(N, N)) :- input(call(succ, N)), choose(R, 5).
rule(R, succ, N, add(N, C1)) :- input(call(succ, N)), choose(R, 6, C1).
rule(R, succ, N, mul(N, C1)) :- input(call(succ, N)), choose(R, 7, C1).
rule(R, succ, N, sub(N, C1)) :- input(call(succ, N)), choose(R, 8, C1).
rule(R, succ, N, sub(C1, N)) :- input(call(succ, N)), choose(R, 9, C1).
rule(R, succ, N, add(C1, C2)) :- input(call(succ, N)), choose(R, 10, C1, C2).
rule(R, succ, N, mul(C1, C2)) :- input(call(succ, N)), choose(R, 11, C1, C2).
rule(R, succ, N, sub(C1, C2)) :- input(call(succ, N)), choose(R, 12, C1, C2).
rule(R, succ, N, call(succ, C1)) :- input(call(succ, N)), choose(R, 13, C1).
rule(R, succ, N, call(succ, N)) :- input(call(succ, N)), choose(R, 14).



rule(R, succ, N, add(N, add(N, N))) :- input(call(succ, N)), choose(R, 15).
rule(R, succ, N, mul(N, add(N, N))) :- input(call(succ, N)), choose(R, 16).
rule(R, succ, N, sub(N, add(N, N))) :- input(call(succ, N)), choose(R, 17).
rule(R, succ, N, sub(add(N, N), N)) :- input(call(succ, N)), choose(R, 18).
rule(R, succ, N, add(C1, add(N, N))) :- input(call(succ, N)), choose(R, 19, C1).
rule(R, succ, N, mul(C1, add(N, N))) :- input(call(succ, N)), choose(R, 20, C1).
rule(R, succ, N, sub(C1, add(N, N))) :- input(call(succ, N)), choose(R, 21, C1).
rule(R, succ, N, sub(add(N, N), C1)) :- input(call(succ, N)), choose(R, 22, C1).
rule(R, succ, N, call(succ, add(N, N))) :- input(call(succ, N)), choose(R, 23).

rule(R, succ, N, add(N, mul(N, N))) :- input(call(succ, N)), choose(R, 24).
rule(R, succ, N, mul(N, mul(N, N))) :- input(call(succ, N)), choose(R, 25).
rule(R, succ, N, sub(N, mul(N, N))) :- input(call(succ, N)), choose(R, 26).
rule(R, succ, N, sub(mul(N, N), N)) :- input(call(succ, N)), choose(R, 27).
rule(R, succ, N, add(C1, mul(N, N))) :- input(call(succ, N)), choose(R, 28, C1).
rule(R, succ, N, mul(C1, mul(N, N))) :- input(call(succ, N)), choose(R, 29, C1).
rule(R, succ, N, sub(C1, mul(N, N))) :- input(call(succ, N)), choose(R, 30, C1).
rule(R, succ, N, sub(mul(N, N), C1)) :- input(call(succ, N)), choose(R, 31, C1).
rule(R, succ, N, call(succ, mul(N, N))) :- input(call(succ, N)), choose(R, 32).

rule(R, succ, N, add(N, sub(N, N))) :- input(call(succ, N)), choose(R, 33).
rule(R, succ, N, mul(N, sub(N, N))) :- input(call(succ, N)), choose(R, 34).
rule(R, succ, N, sub(N, sub(N, N))) :- input(call(succ, N)), choose(R, 35).
rule(R, succ, N, sub(sub(N, N), N)) :- input(call(succ, N)), choose(R, 36).
rule(R, succ, N, add(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 37, C1).
rule(R, succ, N, mul(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 38, C1).
rule(R, succ, N, sub(C1, sub(N, N))) :- input(call(succ, N)), choose(R, 39, C1).
rule(R, succ, N, sub(sub(N, N), C1)) :- input(call(succ, N)), choose(R, 40, C1).
rule(R, succ, N, call(succ, sub(N, N))) :- input(call(succ, N)), choose(R, 41).

rule(R, succ, N, add(N, add(N, C1))) :- input(call(succ, N)), choose(R, 42, C1).
rule(R, succ, N, mul(N, add(N, C1))) :- input(call(succ, N)), choose(R, 43, C1).
rule(R, succ, N, sub(N, add(N, C1))) :- input(call(succ, N)), choose(R, 44, C1).
rule(R, succ, N, sub(add(N, C1), N)) :- input(call(succ, N)), choose(R, 45, C1).
rule(R, succ, N, add(C2, add(N, C1))) :- input(call(succ, N)), choose(R, 46, C1, C2).
rule(R, succ, N, mul(C2, add(N, C1))) :- input(call(succ, N)), choose(R, 47, C1, C2).
rule(R, succ, N, sub(C2, add(N, C1))) :- input(call(succ, N)), choose(R, 48, C1, C2).
rule(R, succ, N, sub(add(N, C1), C2)) :- input(call(succ, N)), choose(R, 49, C1, C2).
rule(R, succ, N, call(succ, add(N, C1))) :- input(call(succ, N)), choose(R, 50, C1).

rule(R, succ, N, add(N, mul(N, C1))) :- input(call(succ, N)), choose(R, 51, C1).
rule(R, succ, N, mul(N, mul(N, C1))) :- input(call(succ, N)), choose(R, 52, C1).
rule(R, succ, N, sub(N, mul(N, C1))) :- input(call(succ, N)), choose(R, 53, C1).
rule(R, succ, N, sub(mul(N, C1), N)) :- input(call(succ, N)), choose(R, 54, C1).
rule(R, succ, N, add(C2, mul(N, C1))) :- input(call(succ, N)), choose(R, 55, C1, C2).
rule(R, succ, N, mul(C2, mul(N, C1))) :- input(call(succ, N)), choose(R, 56, C1, C2).
rule(R, succ, N, sub(C2, mul(N, C1))) :- input(call(succ, N)), choose(R, 57, C1, C2).
rule(R, succ, N, sub(mul(N, C1), C2)) :- input(call(succ, N)), choose(R, 58, C1, C2).
rule(R, succ, N, call(succ, mul(N, C1))) :- input(call(succ, N)), choose(R, 59, C1).

rule(R, succ, N, add(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 60, C1).
rule(R, succ, N, mul(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 61, C1).
rule(R, succ, N, sub(N, sub(N, C1))) :- input(call(succ, N)), choose(R, 62, C1).
rule(R, succ, N, sub(sub(N, C1), N)) :- input(call(succ, N)), choose(R, 63, C1).
rule(R, succ, N, add(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 64, C1, C2).
rule(R, succ, N, mul(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 65, C1, C2).
rule(R, succ, N, sub(C2, sub(N, C1))) :- input(call(succ, N)), choose(R, 66, C1, C2).
rule(R, succ, N, sub(sub(N, C1), C2)) :- input(call(succ, N)), choose(R, 67, C1, C2).
rule(R, succ, N, call(succ, sub(N, C1))) :- input(call(succ, N)), choose(R, 68, C1).

rule(R, succ, N, add(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 69, C1).
rule(R, succ, N, mul(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 70, C1).
rule(R, succ, N, sub(N, sub(C1, N))) :- input(call(succ, N)), choose(R, 71, C1).
rule(R, succ, N, sub(sub(C1, N), N)) :- input(call(succ, N)), choose(R, 72, C1).
rule(R, succ, N, add(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 73, C1, C2).
rule(R, succ, N, mul(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 74, C1, C2).
rule(R, succ, N, sub(C2, sub(C1, N))) :- input(call(succ, N)), choose(R, 75, C1, C2).
rule(R, succ, N, sub(sub(C1, N), C2)) :- input(call(succ, N)), choose(R, 76, C1, C2).
rule(R, succ, N, call(succ, sub(C1, N))) :- input(call(succ, N)), choose(R, 77, C1).

rule(R, succ, N, add(N, add(C1, C2))) :- input(call(succ, N)), choose(R, 78, C1, C2).
rule(R, succ, N, mul(N, add(C1, C2))) :- input(call(succ, N)), choose(R, 79, C1, C2).
rule(R, succ, N, sub(N, add(C1, C2))) :- input(call(succ, N)), choose(R, 80, C1, C2).
rule(R, succ, N, sub(add(C1, C2), N)) :- input(call(succ, N)), choose(R, 81, C1, C2).
rule(R, succ, N, add(C3, add(C1, C2))) :- input(call(succ, N)), choose(R, 82, C1, C2, C3).
rule(R, succ, N, mul(C3, add(C1, C2))) :- input(call(succ, N)), choose(R, 83, C1, C2, C3).
rule(R, succ, N, sub(C3, add(C1, C2))) :- input(call(succ, N)), choose(R, 84, C1, C2, C3).
rule(R, succ, N, sub(add(C1, C2), C3)) :- input(call(succ, N)), choose(R, 85, C1, C2, C3).
rule(R, succ, N, call(succ, add(C1, C2))) :- input(call(succ, N)), choose(R, 86, C1, C2).

rule(R, succ, N, add(N, mul(C1, C2))) :- input(call(succ, N)), choose(R, 87, C1, C2).
rule(R, succ, N, mul(N, mul(C1, C2))) :- input(call(succ, N)), choose(R, 88, C1, C2).
rule(R, succ, N, sub(N, mul(C1, C2))) :- input(call(succ, N)), choose(R, 89, C1, C2).
rule(R, succ, N, sub(mul(C1, C2), N)) :- input(call(succ, N)), choose(R, 90, C1, C2).
rule(R, succ, N, add(C3, mul(C1, C2))) :- input(call(succ, N)), choose(R, 91, C1, C2, C3).
rule(R, succ, N, mul(C3, mul(C1, C2))) :- input(call(succ, N)), choose(R, 92, C1, C2, C3).
rule(R, succ, N, sub(C3, mul(C1, C2))) :- input(call(succ, N)), choose(R, 93, C1, C2, C3).
rule(R, succ, N, sub(mul(C1, C2), C3)) :- input(call(succ, N)), choose(R, 94, C1, C2, C3).
rule(R, succ, N, call(succ, mul(C1, C2))) :- input(call(succ, N)), choose(R, 95, C1, C2).

rule(R, succ, N, add(N, sub(C1, C2))) :- input(call(succ, N)), choose(R, 96, C1, C2).
rule(R, succ, N, mul(N, sub(C1, C2))) :- input(call(succ, N)), choose(R, 97, C1, C2).
rule(R, succ, N, sub(N, sub(C1, C2))) :- input(call(succ, N)), choose(R, 98, C1, C2).
rule(R, succ, N, sub(sub(C1, C2), N)) :- input(call(succ, N)), choose(R, 99, C1, C2).
rule(R, succ, N, add(C3, sub(C1, C2))) :- input(call(succ, N)), choose(R, 100, C1, C2, C3).
rule(R, succ, N, mul(C3, sub(C1, C2))) :- input(call(succ, N)), choose(R, 101, C1, C2, C3).
rule(R, succ, N, sub(C3, sub(C1, C2))) :- input(call(succ, N)), choose(R, 102, C1, C2, C3).
rule(R, succ, N, sub(sub(C1, C2), C3)) :- input(call(succ, N)), choose(R, 103, C1, C2, C3).
rule(R, succ, N, call(succ, sub(C1, C2))) :- input(call(succ, N)), choose(R, 104, C1, C2).

rule(R, succ, N, add(N, call(succ, C1))) :- input(call(succ, N)), choose(R, 105, C1).
rule(R, succ, N, mul(N, call(succ, C1))) :- input(call(succ, N)), choose(R, 106, C1).
rule(R, succ, N, sub(N, call(succ, C1))) :- input(call(succ, N)), choose(R, 107, C1).
rule(R, succ, N, sub(call(succ, C1), N)) :- input(call(succ, N)), choose(R, 108, C1).
rule(R, succ, N, add(C2, call(succ, C1))) :- input(call(succ, N)), choose(R, 109, C1, C2).
rule(R, succ, N, mul(C2, call(succ, C1))) :- input(call(succ, N)), choose(R, 110, C1, C2).
rule(R, succ, N, sub(C2, call(succ, C1))) :- input(call(succ, N)), choose(R, 111, C1, C2).
rule(R, succ, N, sub(call(succ, C1), C2)) :- input(call(succ, N)), choose(R, 112, C1, C2).
rule(R, succ, N, call(succ, call(succ, C1))) :- input(call(succ, N)), choose(R, 113, C1).

rule(R, succ, N, add(N, call(succ, N))) :- input(call(succ, N)), choose(R, 114).
rule(R, succ, N, mul(N, call(succ, N))) :- input(call(succ, N)), choose(R, 115).
rule(R, succ, N, sub(N, call(succ, N))) :- input(call(succ, N)), choose(R, 116).
rule(R, succ, N, sub(call(succ, N), N)) :- input(call(succ, N)), choose(R, 117).
rule(R, succ, N, add(C1, call(succ, N))) :- input(call(succ, N)), choose(R, 118, C1).
rule(R, succ, N, mul(C1, call(succ, N))) :- input(call(succ, N)), choose(R, 119, C1).
rule(R, succ, N, sub(C1, call(succ, N))) :- input(call(succ, N)), choose(R, 120, C1).
rule(R, succ, N, sub(call(succ, N), C1)) :- input(call(succ, N)), choose(R, 121, C1).
rule(R, succ, N, call(succ, call(succ, N))) :- input(call(succ, N)), choose(R, 122).
1 {
choose(R, N) : num_rules(R) : num_generated(N) ,
choose(R, N, C0) : num_rules(R) : num_generated(N) : expr_const(C0) ,
choose(R, N, C0, C1) : num_rules(R) : num_generated(N) : expr_const(C0) : expr_const(C1) ,
choose(R, N, C0, C1, C2) : num_rules(R) : num_generated(N) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 2.
#minimise [choose(R)=R, choose(R, _)=R, choose(R, _, _)=R, choose(R, _, _, _)=R ].
num_generated(0..122).
