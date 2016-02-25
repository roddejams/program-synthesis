rule(R, f, (N1, N2), C1) :- input(call(f, (N1, N2))), choose(R, 1, C1).
rule(R, f, (N1, N2), N1) :- input(call(f, (N1, N2))), choose(R, 2).
rule(R, f, (N1, N2), N2) :- input(call(f, (N1, N2))), choose(R, 3).

rule(R, f, (N1, N2), add(N1, N1)) :- input(call(f, (N1, N2))), choose(R, 4).
rule(R, f, (N1, N2), add(N1, N2)) :- input(call(f, (N1, N2))), choose(R, 5).
rule(R, f, (N1, N2), add(N2, N2)) :- input(call(f, (N1, N2))), choose(R, 6).
rule(R, f, (N1, N2), mul(N1, N1)) :- input(call(f, (N1, N2))), choose(R, 7).
rule(R, f, (N1, N2), mul(N1, N2)) :- input(call(f, (N1, N2))), choose(R, 8).
rule(R, f, (N1, N2), mul(N2, N2)) :- input(call(f, (N1, N2))), choose(R, 9).
rule(R, f, (N1, N2), sub(N1, N1)) :- input(call(f, (N1, N2))), choose(R, 10).
rule(R, f, (N1, N2), sub(N1, N2)) :- input(call(f, (N1, N2))), choose(R, 11).
rule(R, f, (N1, N2), sub(N2, N1)) :- input(call(f, (N1, N2))), choose(R, 12).
rule(R, f, (N1, N2), sub(N2, N2)) :- input(call(f, (N1, N2))), choose(R, 13).

rule(R, f, (N1, N2), add(N1, C1)) :- input(call(f, (N1, N2))), choose(R, 14, C1).
rule(R, f, (N1, N2), add(N2, C1)) :- input(call(f, (N1, N2))), choose(R, 15, C1).
rule(R, f, (N1, N2), mul(N1, C1)) :- input(call(f, (N1, N2))), choose(R, 16, C1).
rule(R, f, (N1, N2), mul(N2, C1)) :- input(call(f, (N1, N2))), choose(R, 17, C1).
rule(R, f, (N1, N2), sub(N1, C1)) :- input(call(f, (N1, N2))), choose(R, 18, C1).
rule(R, f, (N1, N2), sub(N2, C1)) :- input(call(f, (N1, N2))), choose(R, 19, C1).
rule(R, f, (N1, N2), sub(C1, N1)) :- input(call(f, (N1, N2))), choose(R, 20, C1).
rule(R, f, (N1, N2), sub(C1, N2)) :- input(call(f, (N1, N2))), choose(R, 21, C1).

rule(R, f, (N1, N2), call(f, (N1, N1))) :- input(call(f, (N1, N2))), choose(R, 22).
rule(R, f, (N1, N2), call(f, (N1, N2))) :- input(call(f, (N1, N2))), choose(R, 23).
rule(R, f, (N1, N2), call(f, (N2, N2))) :- input(call(f, (N1, N2))), choose(R, 24).
rule(R, f, (N1, N2), call(f, (N1, C1))) :- input(call(f, (N1, N2))), choose(R, 25, C1).
rule(R, f, (N1, N2), call(f, (C1, N1))) :- input(call(f, (N1, N2))), choose(R, 26, C1).
rule(R, f, (N1, N2), call(f, (N2, C1))) :- input(call(f, (N1, N2))), choose(R, 27, C1).
rule(R, f, (N1, N2), call(f, (C1, N2))) :- input(call(f, (N1, N2))), choose(R, 28, C1).
rule(R, f, (N1, N2), call(f, (C1, C2))) :- input(call(f, (N1, N2))), choose(R, 29, C1, C2).

rule(R, f, (N1, N2), add(N1, x1)) :- input(call(f, (N1, N2))), choose(R, 30).
rule(R, f, (N1, N2), add(N2, x1)) :- input(call(f, (N1, N2))), choose(R, 31).
rule(R, f, (N1, N2), mul(N1, x1)) :- input(call(f, (N1, N2))), choose(R, 32).
rule(R, f, (N1, N2), mul(N2, x1)) :- input(call(f, (N1, N2))), choose(R, 33).
rule(R, f, (N1, N2), sub(N1, x1)) :- input(call(f, (N1, N2))), choose(R, 34).
rule(R, f, (N1, N2), sub(N2, x1)) :- input(call(f, (N1, N2))), choose(R, 35).
rule(R, f, (N1, N2), sub(x1, N1)) :- input(call(f, (N1, N2))), choose(R, 36).
rule(R, f, (N1, N2), sub(x1, N2)) :- input(call(f, (N1, N2))), choose(R, 37).

rule(R, f, (N1, N2), call(f, (N1, x1))) :- input(call(f, (N1, N2))), choose(R, 38).
rule(R, f, (N1, N2), call(f, (N2, x1))) :- input(call(f, (N1, N2))), choose(R, 39).
rule(R, f, (N1, N2), call(f, (x1, N1))) :- input(call(f, (N1, N2))), choose(R, 40).
rule(R, f, (N1, N2), call(f, (x1, N2))) :- input(call(f, (N1, N2))), choose(R, 41).
rule(R, f, (N1, N2), call(f, (x1, x2))) :- input(call(f, (N1, N2))), choose(R, 42).

where(x1, (N1, N2), add(N1, N1)) :- input(call(f, (N1, N2))), choose_where(43).
where(x1, (N1, N2), add(N1, N2)) :- input(call(f, (N1, N2))), choose_where(44).
where(x1, (N1, N2), add(N2, N2)) :- input(call(f, (N1, N2))), choose_where(45).
where(x1, (N1, N2), mul(N1, N1)) :- input(call(f, (N1, N2))), choose_where(46).
where(x1, (N1, N2), mul(N1, N2)) :- input(call(f, (N1, N2))), choose_where(47).
where(x1, (N1, N2), mul(N2, N2)) :- input(call(f, (N1, N2))), choose_where(48).
where(x1, (N1, N2), sub(N1, N1)) :- input(call(f, (N1, N2))), choose_where(49).
where(x1, (N1, N2), sub(N1, N2)) :- input(call(f, (N1, N2))), choose_where(50).
where(x1, (N1, N2), sub(N2, N2)) :- input(call(f, (N1, N2))), choose_where(51).
where(x1, (N1, N2), sub(N2, N1)) :- input(call(f, (N1, N2))), choose_where(52).

where(x1, (N1, N2), add(N1, C1)) :- input(call(f, (N1, N2))), choose_where(53, C1).
where(x1, (N1, N2), add(N2, C1)) :- input(call(f, (N1, N2))), choose_where(54, C1).
where(x1, (N1, N2), mul(N1, C1)) :- input(call(f, (N1, N2))), choose_where(55, C1).
where(x1, (N1, N2), mul(N2, C1)) :- input(call(f, (N1, N2))), choose_where(56, C1).
where(x1, (N1, N2), sub(N1, C1)) :- input(call(f, (N1, N2))), choose_where(57, C1).
where(x1, (N1, N2), sub(N2, C1)) :- input(call(f, (N1, N2))), choose_where(58, C1).
where(x1, (N1, N2), sub(C1, N1)) :- input(call(f, (N1, N2))), choose_where(59, C1).
where(x1, (N1, N2), sub(C1, N2)) :- input(call(f, (N1, N2))), choose_where(60, C1).

where(x1, (N1, N2), call(f, (N1, N1))) :- input(call(f, (N1, N2))), choose_where(61).
where(x1, (N1, N2), call(f, (N1, N2))) :- input(call(f, (N1, N2))), choose_where(62).
where(x1, (N1, N2), call(f, (N2, N1))) :- input(call(f, (N1, N2))), choose_where(63).
where(x1, (N1, N2), call(f, (N2, N2))) :- input(call(f, (N1, N2))), choose_where(64).
where(x1, (N1, N2), call(f, (N1, C1))) :- input(call(f, (N1, N2))), choose_where(65, C1).
where(x1, (N1, N2), call(f, (N2, C1))) :- input(call(f, (N1, N2))), choose_where(66, C1).
where(x1, (N1, N2), call(f, (C1, N1))) :- input(call(f, (N1, N2))), choose_where(67, C1).
where(x1, (N1, N2), call(f, (C1, N2))) :- input(call(f, (N1, N2))), choose_where(68, C1).
where(x1, (N1, N2), call(f, (C1, C2))) :- input(call(f, (N1, N2))), choose_where(69, C1, C2).

where(x2, (N1, N2), add(N1, N1)) :- input(call(f, (N1, N2))), choose_where(70).
where(x2, (N1, N2), add(N1, N2)) :- input(call(f, (N1, N2))), choose_where(71).
where(x2, (N1, N2), add(N2, N2)) :- input(call(f, (N1, N2))), choose_where(72).
where(x2, (N1, N2), mul(N1, N1)) :- input(call(f, (N1, N2))), choose_where(73).
where(x2, (N1, N2), mul(N1, N2)) :- input(call(f, (N1, N2))), choose_where(74).
where(x2, (N1, N2), mul(N2, N2)) :- input(call(f, (N1, N2))), choose_where(75).
where(x2, (N1, N2), sub(N1, N1)) :- input(call(f, (N1, N2))), choose_where(76).
where(x2, (N1, N2), sub(N1, N2)) :- input(call(f, (N1, N2))), choose_where(77).
where(x2, (N1, N2), sub(N2, N2)) :- input(call(f, (N1, N2))), choose_where(78).
where(x2, (N1, N2), sub(N2, N1)) :- input(call(f, (N1, N2))), choose_where(79).

where(x2, (N1, N2), add(N1, C1)) :- input(call(f, (N1, N2))), choose_where(80, C1).
where(x2, (N1, N2), add(N2, C1)) :- input(call(f, (N1, N2))), choose_where(81, C1).
where(x2, (N1, N2), mul(N1, C1)) :- input(call(f, (N1, N2))), choose_where(82, C1).
where(x2, (N1, N2), mul(N2, C1)) :- input(call(f, (N1, N2))), choose_where(83, C1).
where(x2, (N1, N2), sub(N1, C1)) :- input(call(f, (N1, N2))), choose_where(84, C1).
where(x2, (N1, N2), sub(N2, C1)) :- input(call(f, (N1, N2))), choose_where(85, C1).
where(x2, (N1, N2), sub(C1, N1)) :- input(call(f, (N1, N2))), choose_where(86, C1).
where(x2, (N1, N2), sub(C1, N2)) :- input(call(f, (N1, N2))), choose_where(87, C1).

where(x2, (N1, N2), call(f, (N1, N1))) :- input(call(f, (N1, N2))), choose_where(88).
where(x2, (N1, N2), call(f, (N1, N2))) :- input(call(f, (N1, N2))), choose_where(89).
where(x2, (N1, N2), call(f, (N2, N1))) :- input(call(f, (N1, N2))), choose_where(90).
where(x2, (N1, N2), call(f, (N2, N2))) :- input(call(f, (N1, N2))), choose_where(91).
where(x2, (N1, N2), call(f, (N1, C1))) :- input(call(f, (N1, N2))), choose_where(92, C1).
where(x2, (N1, N2), call(f, (N2, C1))) :- input(call(f, (N1, N2))), choose_where(93, C1).
where(x2, (N1, N2), call(f, (C1, N1))) :- input(call(f, (N1, N2))), choose_where(94, C1).
where(x2, (N1, N2), call(f, (C1, N2))) :- input(call(f, (N1, N2))), choose_where(95, C1).
where(x2, (N1, N2), call(f, (C1, C2))) :- input(call(f, (N1, N2))), choose_where(96, C1, C2).

1 {
choose(R, N) : num_rules(R) : num_generated_rules(N) ,
choose(R, N, C0) : num_rules(R) : num_generated_rules(N) : expr_const(C0) ,
choose(R, N, C0, C1) : num_rules(R) : num_generated_rules(N) : expr_const(C0) : expr_const(C1) 
} 2.

0 {
choose_where(N) : num_generated_wheres(N), 
choose_where(N, C1) : num_generated_wheres(N) : expr_const(C1), 
choose_where(N, C1, C2) : num_generated_wheres(N) : expr_const(C1) : expr_const(C2)
} 2.

num_generated_rules(0..42).
num_generated_wheres(43..96).
