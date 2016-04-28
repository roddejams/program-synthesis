rule(R, f, (N0, N1), N0) :- input(call(f, (N0, N1))), choose(R, 1).
rule(R, f, (N0, N1), N1) :- input(call(f, (N0, N1))), choose(R, 2).
rule(R, f, (N0, N1), add(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 3).
rule(R, f, (N0, N1), add(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 4).
rule(R, f, (N0, N1), add(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 5, C1).
rule(R, f, (N0, N1), add(x0, x1)) :- input(call(f, (N0, N1))), choose(R, 6).
rule(R, f, (N0, N1), add(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 7, C1).
rule(R, f, (N0, N1), add(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 8).
rule(R, f, (N0, N1), add(x0, C1)) :- input(call(f, (N0, N1))), choose(R, 9, C1).
rule(R, f, (N0, N1), add(x1, C1)) :- input(call(f, (N0, N1))), choose(R, 10, C1).
rule(R, f, (N0, N1), add(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 11).
rule(R, f, (N0, N1), add(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 12).
rule(R, f, (N0, N1), add(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 13).
rule(R, f, (N0, N1), add(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 14).

rule(R, f, (N0, N1), mul(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 15).
rule(R, f, (N0, N1), mul(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 16).
rule(R, f, (N0, N1), mul(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 17, C1).
rule(R, f, (N0, N1), mul(x0, x1)) :- input(call(f, (N0, N1))), choose(R, 18).
rule(R, f, (N0, N1), mul(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 19, C1).
rule(R, f, (N0, N1), mul(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 20).
rule(R, f, (N0, N1), mul(x0, C1)) :- input(call(f, (N0, N1))), choose(R, 21, C1).
rule(R, f, (N0, N1), mul(x1, C1)) :- input(call(f, (N0, N1))), choose(R, 22, C1).
rule(R, f, (N0, N1), mul(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 23).
rule(R, f, (N0, N1), mul(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 24).
rule(R, f, (N0, N1), mul(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 25).
rule(R, f, (N0, N1), mul(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 26).

rule(R, f, (N0, N1), sub(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 27).
rule(R, f, (N0, N1), sub(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 28).
rule(R, f, (N0, N1), sub(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 29, C1).
rule(R, f, (N0, N1), sub(x0, x1)) :- input(call(f, (N0, N1))), choose(R, 30).
rule(R, f, (N0, N1), sub(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 31, C1).
rule(R, f, (N0, N1), sub(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 32).
rule(R, f, (N0, N1), sub(x0, C1)) :- input(call(f, (N0, N1))), choose(R, 33, C1).
rule(R, f, (N0, N1), sub(x1, C1)) :- input(call(f, (N0, N1))), choose(R, 34, C1).
rule(R, f, (N0, N1), sub(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 35).
rule(R, f, (N0, N1), sub(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 36).
rule(R, f, (N0, N1), sub(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 37).
rule(R, f, (N0, N1), sub(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 38).

rule(R, f, (N0, N1), call(f, (x0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 39).
rule(R, f, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose(R, 40).
rule(R, f, (N0, N1), call(f, (N0 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 41).
rule(R, f, (N0, N1), call(f, (N1 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 42).
rule(R, f, (N0, N1), call(f, (N0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 43).
rule(R, f, (N0, N1), call(f, (N1 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 44).


where(x0, (N0, N1), add(N0, N0)) :- input(call(f, (N0, N1))), choose_where(45).
where(x0, (N0, N1), add(N1, N1)) :- input(call(f, (N0, N1))), choose_where(46).
where(x0, (N0, N1), add(N0, C1)) :- input(call(f, (N0, N1))), choose_where(47, C1).
where(x0, (N0, N1), add(N1, C1)) :- input(call(f, (N0, N1))), choose_where(48, C1).
where(x0, (N0, N1), add(N0, N1)) :- input(call(f, (N0, N1))), choose_where(49).
where(x0, (N0, N1), add(x1, C1)) :- input(call(f, (N0, N1))), choose_where(50, C1).
where(x0, (N0, N1), add(N0, x1)) :- input(call(f, (N0, N1))), choose_where(51).
where(x0, (N0, N1), add(N1, x1)) :- input(call(f, (N0, N1))), choose_where(52).
where(x0, (N0, N1), mul(N0, N0)) :- input(call(f, (N0, N1))), choose_where(53).
where(x0, (N0, N1), mul(N1, N1)) :- input(call(f, (N0, N1))), choose_where(54).
where(x0, (N0, N1), mul(N0, C1)) :- input(call(f, (N0, N1))), choose_where(55, C1).
where(x0, (N0, N1), mul(N1, C1)) :- input(call(f, (N0, N1))), choose_where(56, C1).
where(x0, (N0, N1), mul(N0, N1)) :- input(call(f, (N0, N1))), choose_where(57).
where(x0, (N0, N1), mul(x1, C1)) :- input(call(f, (N0, N1))), choose_where(58, C1).
where(x0, (N0, N1), mul(N0, x1)) :- input(call(f, (N0, N1))), choose_where(59).
where(x0, (N0, N1), mul(N1, x1)) :- input(call(f, (N0, N1))), choose_where(60).
where(x0, (N0, N1), sub(N0, N0)) :- input(call(f, (N0, N1))), choose_where(61).
where(x0, (N0, N1), sub(N1, N1)) :- input(call(f, (N0, N1))), choose_where(62).
where(x0, (N0, N1), sub(N0, C1)) :- input(call(f, (N0, N1))), choose_where(63, C1).
where(x0, (N0, N1), sub(N1, C1)) :- input(call(f, (N0, N1))), choose_where(64, C1).
where(x0, (N0, N1), sub(N0, N1)) :- input(call(f, (N0, N1))), choose_where(65).
where(x0, (N0, N1), sub(x1, C1)) :- input(call(f, (N0, N1))), choose_where(66, C1).
where(x0, (N0, N1), sub(N0, x1)) :- input(call(f, (N0, N1))), choose_where(67).
where(x0, (N0, N1), sub(N1, x1)) :- input(call(f, (N0, N1))), choose_where(68).
where(x0, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose_where(69).
where(x0, (N0, N1), call(f, (N0 , (x1)))) :- input(call(f, (N0, N1))), choose_where(70).
where(x0, (N0, N1), call(f, (N1 , (x1)))) :- input(call(f, (N0, N1))), choose_where(71).
where(x1, (N0, N1), add(N0, N0)) :- input(call(f, (N0, N1))), choose_where(72).
where(x1, (N0, N1), add(N1, N1)) :- input(call(f, (N0, N1))), choose_where(73).
where(x1, (N0, N1), add(N0, C1)) :- input(call(f, (N0, N1))), choose_where(74, C1).
where(x1, (N0, N1), add(N1, C1)) :- input(call(f, (N0, N1))), choose_where(75, C1).
where(x1, (N0, N1), add(N0, N1)) :- input(call(f, (N0, N1))), choose_where(76).
where(x1, (N0, N1), mul(N0, N0)) :- input(call(f, (N0, N1))), choose_where(77).
where(x1, (N0, N1), mul(N1, N1)) :- input(call(f, (N0, N1))), choose_where(78).
where(x1, (N0, N1), mul(N0, C1)) :- input(call(f, (N0, N1))), choose_where(79, C1).
where(x1, (N0, N1), mul(N1, C1)) :- input(call(f, (N0, N1))), choose_where(80, C1).
where(x1, (N0, N1), mul(N0, N1)) :- input(call(f, (N0, N1))), choose_where(81).
where(x1, (N0, N1), sub(N0, N0)) :- input(call(f, (N0, N1))), choose_where(82).
where(x1, (N0, N1), sub(N1, N1)) :- input(call(f, (N0, N1))), choose_where(83).
where(x1, (N0, N1), sub(N0, C1)) :- input(call(f, (N0, N1))), choose_where(84, C1).
where(x1, (N0, N1), sub(N1, C1)) :- input(call(f, (N0, N1))), choose_where(85, C1).
where(x1, (N0, N1), sub(N0, N1)) :- input(call(f, (N0, N1))), choose_where(86).
where(x1, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose_where(87).
1 {
choose(R, 1;2;3;4;6;8;11;12;13;14;15;16;18;20;23;24;25;26;27;28;30;32;35;36;37;38;39;40;41;42;43;44) ,
choose(R, 5;7;9;10;17;19;21;22;29;31;33;34, C0) : expr_const(C0) 
} 1 :- num_rules(R).
#minimise [choose_where(R)=1, choose_where(R, _)=1 ].
0 {
choose_where(45;46;49;51;52;53;54;57;59;60;61;62;65;67;68;69;70;71) ,
choose_where(47;48;50;55;56;58;63;64;66, C0) : expr_const(C0) 
} 1.
0 {
choose_where(72;73;76;77;78;81;82;83;86;87) ,
choose_where(74;75;79;80;84;85, C0) : expr_const(C0) 
} 1.
