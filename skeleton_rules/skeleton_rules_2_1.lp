rule(R, f, (C0, C1), C3) :- input(call(f, (C0, C1))), choose(R, 1, C1, C2, C3).
rule(R, f, (N0, N1), N0) :- input(call(f, (N0, N1))), choose(R, 2).
rule(R, f, (N0, N1), N1) :- input(call(f, (N0, N1))), choose(R, 3).
rule(R, f, (N0, N1), add(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 4).
rule(R, f, (N0, N1), add(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 5).
rule(R, f, (N0, N1), add(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 6, C1).
rule(R, f, (N0, N1), add(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 7).
rule(R, f, (N0, N1), add(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 8).
rule(R, f, (N0, N1), add(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 9).
rule(R, f, (N0, N1), add(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 10).
rule(R, f, (N0, N1), add(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 11, C1).
rule(R, f, (N0, N1), add(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 12).
rule(R, f, (N0, N1), add(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 13).
rule(R, f, (N0, N1), mul(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 14).
rule(R, f, (N0, N1), mul(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 15).
rule(R, f, (N0, N1), mul(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 16, C1).
rule(R, f, (N0, N1), mul(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 17).
rule(R, f, (N0, N1), mul(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 18).
rule(R, f, (N0, N1), mul(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 19).
rule(R, f, (N0, N1), mul(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 20).
rule(R, f, (N0, N1), mul(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 21, C1).
rule(R, f, (N0, N1), mul(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 22).
rule(R, f, (N0, N1), mul(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 23).
rule(R, f, (N0, N1), sub(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 24).
rule(R, f, (N0, N1), sub(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 25).
rule(R, f, (N0, N1), sub(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 26, C1).
rule(R, f, (N0, N1), sub(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 27).
rule(R, f, (N0, N1), sub(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 28).
rule(R, f, (N0, N1), sub(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 29).
rule(R, f, (N0, N1), sub(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 30).
rule(R, f, (N0, N1), sub(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 31, C1).
rule(R, f, (N0, N1), sub(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 32).
rule(R, f, (N0, N1), sub(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 33).
rule(R, f, (N0, N1), call(f, (x0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 34).
rule(R, f, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose(R, 35).
rule(R, f, (N0, N1), call(f, (N0 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 36).
rule(R, f, (N0, N1), call(f, (N1 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 37).
rule(R, f, (N0, N1), call(f, (N0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 38).
rule(R, f, (N0, N1), call(f, (N1 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 39).
where(x0, (N0, N1), add(N0, N0)) :- input(call(_, (N0, N1))), choose_where(40).
where(x0, (N0, N1), add(N0, N1)) :- input(call(_, (N0, N1))), choose_where(41).
where(x0, (N0, N1), add(N0, C1)) :- input(call(_, (N0, N1))), choose_where(42, C1).
where(x0, (N0, N1), add(N0, x1)) :- input(call(_, (N0, N1))), choose_where(43).
where(x0, (N0, N1), add(N1, N0)) :- input(call(_, (N0, N1))), choose_where(44).
where(x0, (N0, N1), add(N1, N1)) :- input(call(_, (N0, N1))), choose_where(45).
where(x0, (N0, N1), add(N1, C1)) :- input(call(_, (N0, N1))), choose_where(46, C1).
where(x0, (N0, N1), add(N1, x1)) :- input(call(_, (N0, N1))), choose_where(47).
where(x0, (N0, N1), mul(N0, N0)) :- input(call(_, (N0, N1))), choose_where(48).
where(x0, (N0, N1), mul(N0, N1)) :- input(call(_, (N0, N1))), choose_where(49).
where(x0, (N0, N1), mul(N0, C1)) :- input(call(_, (N0, N1))), choose_where(50, C1).
where(x0, (N0, N1), mul(N0, x1)) :- input(call(_, (N0, N1))), choose_where(51).
where(x0, (N0, N1), mul(N1, N0)) :- input(call(_, (N0, N1))), choose_where(52).
where(x0, (N0, N1), mul(N1, N1)) :- input(call(_, (N0, N1))), choose_where(53).
where(x0, (N0, N1), mul(N1, C1)) :- input(call(_, (N0, N1))), choose_where(54, C1).
where(x0, (N0, N1), mul(N1, x1)) :- input(call(_, (N0, N1))), choose_where(55).
where(x0, (N0, N1), sub(N0, N0)) :- input(call(_, (N0, N1))), choose_where(56).
where(x0, (N0, N1), sub(N0, N1)) :- input(call(_, (N0, N1))), choose_where(57).
where(x0, (N0, N1), sub(N0, C1)) :- input(call(_, (N0, N1))), choose_where(58, C1).
where(x0, (N0, N1), sub(N0, x1)) :- input(call(_, (N0, N1))), choose_where(59).
where(x0, (N0, N1), sub(N1, N0)) :- input(call(_, (N0, N1))), choose_where(60).
where(x0, (N0, N1), sub(N1, N1)) :- input(call(_, (N0, N1))), choose_where(61).
where(x0, (N0, N1), sub(N1, C1)) :- input(call(_, (N0, N1))), choose_where(62, C1).
where(x0, (N0, N1), sub(N1, x1)) :- input(call(_, (N0, N1))), choose_where(63).
rule(R, f, (N0, N1), call(f, (x0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 64).
rule(R, f, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose(R, 65).
rule(R, f, (N0, N1), call(f, (N0 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 66).
rule(R, f, (N0, N1), call(f, (N1 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 67).
rule(R, f, (N0, N1), call(f, (N0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 68).
rule(R, f, (N0, N1), call(f, (N1 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 69).
where(x1, (N0, N1), add(N0, N0)) :- input(call(_, (N0, N1))), choose_where(70).
where(x1, (N0, N1), add(N0, N1)) :- input(call(_, (N0, N1))), choose_where(71).
where(x1, (N0, N1), add(N0, C1)) :- input(call(_, (N0, N1))), choose_where(72, C1).
where(x1, (N0, N1), add(N0, x0)) :- input(call(_, (N0, N1))), choose_where(73).
where(x1, (N0, N1), add(N1, N0)) :- input(call(_, (N0, N1))), choose_where(74).
where(x1, (N0, N1), add(N1, N1)) :- input(call(_, (N0, N1))), choose_where(75).
where(x1, (N0, N1), add(N1, C1)) :- input(call(_, (N0, N1))), choose_where(76, C1).
where(x1, (N0, N1), add(N1, x0)) :- input(call(_, (N0, N1))), choose_where(77).
where(x1, (N0, N1), mul(N0, N0)) :- input(call(_, (N0, N1))), choose_where(78).
where(x1, (N0, N1), mul(N0, N1)) :- input(call(_, (N0, N1))), choose_where(79).
where(x1, (N0, N1), mul(N0, C1)) :- input(call(_, (N0, N1))), choose_where(80, C1).
where(x1, (N0, N1), mul(N0, x0)) :- input(call(_, (N0, N1))), choose_where(81).
where(x1, (N0, N1), mul(N1, N0)) :- input(call(_, (N0, N1))), choose_where(82).
where(x1, (N0, N1), mul(N1, N1)) :- input(call(_, (N0, N1))), choose_where(83).
where(x1, (N0, N1), mul(N1, C1)) :- input(call(_, (N0, N1))), choose_where(84, C1).
where(x1, (N0, N1), mul(N1, x0)) :- input(call(_, (N0, N1))), choose_where(85).
where(x1, (N0, N1), sub(N0, N0)) :- input(call(_, (N0, N1))), choose_where(86).
where(x1, (N0, N1), sub(N0, N1)) :- input(call(_, (N0, N1))), choose_where(87).
where(x1, (N0, N1), sub(N0, C1)) :- input(call(_, (N0, N1))), choose_where(88, C1).
where(x1, (N0, N1), sub(N0, x0)) :- input(call(_, (N0, N1))), choose_where(89).
where(x1, (N0, N1), sub(N1, N0)) :- input(call(_, (N0, N1))), choose_where(90).
where(x1, (N0, N1), sub(N1, N1)) :- input(call(_, (N0, N1))), choose_where(91).
where(x1, (N0, N1), sub(N1, C1)) :- input(call(_, (N0, N1))), choose_where(92, C1).
where(x1, (N0, N1), sub(N1, x0)) :- input(call(_, (N0, N1))), choose_where(93).
rule(R, f, (N0, N1), call(f, (x0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 94).
rule(R, f, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose(R, 95).
rule(R, f, (N0, N1), call(f, (N0 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 96).
rule(R, f, (N0, N1), call(f, (N1 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 97).
rule(R, f, (N0, N1), call(f, (N0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 98).
rule(R, f, (N0, N1), call(f, (N1 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 99).
1 {
choose(R, 2;3;4;5;7;8;9;10;12;13;14;15;17;18;19;20;22;23;24;25;27;28;29;30;32;33;34;35;36;37;38;39;64;65;66;67;68;69;94;95;96;97;98;99) ,
choose(R, 6;11;16;21;26;31, C0) : expr_const(C0) ,
choose(R, null, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose(R, 1, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 1 :- num_rules(R).
#minimise [choose_where(R)=1, choose_where(R, _)=1, choose_where(R, _, _)=1, choose_where(R, _, _, _)=1 ].
0 {
choose_where(40;41;43;44;45;47;48;49;51;52;53;55;56;57;59;60;61;63) ,
choose_where(42;46;50;54;58;62, C0) : expr_const(C0) ,
choose_where(null, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose_where(null, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 1.
0 {
choose_where(70;71;73;74;75;77;78;79;81;82;83;85;86;87;89;90;91;93) ,
choose_where(72;76;80;84;88;92, C0) : expr_const(C0) ,
choose_where(null, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose_where(null, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 1.
