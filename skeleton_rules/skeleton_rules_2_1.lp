rule(R, f, (N0, N1), N0) :- input(call(f, (N0, N1))), choose(R, 1).
rule(R, f, (N0, N1), N1) :- input(call(f, (N0, N1))), choose(R, 2).
rule(R, f, (N0, N1), add(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 3).
rule(R, f, (N0, N1), add(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 4).
rule(R, f, (N0, N1), add(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 5, C1).
rule(R, f, (N0, N1), add(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 6).
rule(R, f, (N0, N1), add(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 7).
rule(R, f, (N0, N1), add(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 8).
rule(R, f, (N0, N1), add(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 9).
rule(R, f, (N0, N1), add(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 10, C1).
rule(R, f, (N0, N1), add(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 11).
rule(R, f, (N0, N1), add(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 12).
rule(R, f, (N0, N1), mul(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 13).
rule(R, f, (N0, N1), mul(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 14).
rule(R, f, (N0, N1), mul(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 15, C1).
rule(R, f, (N0, N1), mul(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 16).
rule(R, f, (N0, N1), mul(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 17).
rule(R, f, (N0, N1), mul(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 18).
rule(R, f, (N0, N1), mul(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 19).
rule(R, f, (N0, N1), mul(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 20, C1).
rule(R, f, (N0, N1), mul(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 21).
rule(R, f, (N0, N1), mul(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 22).
rule(R, f, (N0, N1), sub(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 23).
rule(R, f, (N0, N1), sub(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 24).
rule(R, f, (N0, N1), sub(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 25, C1).
rule(R, f, (N0, N1), sub(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 26).
rule(R, f, (N0, N1), sub(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 27).
rule(R, f, (N0, N1), sub(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 28).
rule(R, f, (N0, N1), sub(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 29).
rule(R, f, (N0, N1), sub(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 30, C1).
rule(R, f, (N0, N1), sub(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 31).
rule(R, f, (N0, N1), sub(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 32).
rule(R, f, (N0, N1), call(f, (x0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 33).
rule(R, f, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose(R, 34).
rule(R, f, (N0, N1), call(f, (N0 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 35).
rule(R, f, (N0, N1), call(f, (N1 , (x0)))) :- input(call(f, (N0, N1))), choose(R, 36).
rule(R, f, (N0, N1), call(f, (N0 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 37).
rule(R, f, (N0, N1), call(f, (N1 , (x1)))) :- input(call(f, (N0, N1))), choose(R, 38).
where(x0, (N0, N1), add(N0, N0)) :- input(call(f, (N0, N1))), choose_where(39).
where(x0, (N0, N1), add(N0, N1)) :- input(call(f, (N0, N1))), choose_where(40).
where(x0, (N0, N1), add(N0, C1)) :- input(call(f, (N0, N1))), choose_where(41, C1).
where(x0, (N0, N1), add(N0, x1)) :- input(call(f, (N0, N1))), choose_where(42).
where(x0, (N0, N1), add(N1, N0)) :- input(call(f, (N0, N1))), choose_where(43).
where(x0, (N0, N1), add(N1, N1)) :- input(call(f, (N0, N1))), choose_where(44).
where(x0, (N0, N1), add(N1, C1)) :- input(call(f, (N0, N1))), choose_where(45, C1).
where(x0, (N0, N1), add(N1, x1)) :- input(call(f, (N0, N1))), choose_where(46).
where(x0, (N0, N1), mul(N0, N0)) :- input(call(f, (N0, N1))), choose_where(47).
where(x0, (N0, N1), mul(N0, N1)) :- input(call(f, (N0, N1))), choose_where(48).
where(x0, (N0, N1), mul(N0, C1)) :- input(call(f, (N0, N1))), choose_where(49, C1).
where(x0, (N0, N1), mul(N0, x1)) :- input(call(f, (N0, N1))), choose_where(50).
where(x0, (N0, N1), mul(N1, N0)) :- input(call(f, (N0, N1))), choose_where(51).
where(x0, (N0, N1), mul(N1, N1)) :- input(call(f, (N0, N1))), choose_where(52).
where(x0, (N0, N1), mul(N1, C1)) :- input(call(f, (N0, N1))), choose_where(53, C1).
where(x0, (N0, N1), mul(N1, x1)) :- input(call(f, (N0, N1))), choose_where(54).
where(x0, (N0, N1), sub(N0, N0)) :- input(call(f, (N0, N1))), choose_where(55).
where(x0, (N0, N1), sub(N0, N1)) :- input(call(f, (N0, N1))), choose_where(56).
where(x0, (N0, N1), sub(N0, C1)) :- input(call(f, (N0, N1))), choose_where(57, C1).
where(x0, (N0, N1), sub(N0, x1)) :- input(call(f, (N0, N1))), choose_where(58).
where(x0, (N0, N1), sub(N1, N0)) :- input(call(f, (N0, N1))), choose_where(59).
where(x0, (N0, N1), sub(N1, N1)) :- input(call(f, (N0, N1))), choose_where(60).
where(x0, (N0, N1), sub(N1, C1)) :- input(call(f, (N0, N1))), choose_where(61, C1).
where(x0, (N0, N1), sub(N1, x1)) :- input(call(f, (N0, N1))), choose_where(62).
where(x0, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose_where(63).
where(x0, (N0, N1), call(f, (N0 , (x1)))) :- input(call(f, (N0, N1))), choose_where(64).
where(x0, (N0, N1), call(f, (N1 , (x1)))) :- input(call(f, (N0, N1))), choose_where(65).
where(x1, (N0, N1), add(N0, N0)) :- input(call(f, (N0, N1))), choose_where(66).
where(x1, (N0, N1), add(N0, N1)) :- input(call(f, (N0, N1))), choose_where(67).
where(x1, (N0, N1), add(N0, C1)) :- input(call(f, (N0, N1))), choose_where(68, C1).
where(x1, (N0, N1), add(N0, x0)) :- input(call(f, (N0, N1))), choose_where(69).
where(x1, (N0, N1), add(N1, N0)) :- input(call(f, (N0, N1))), choose_where(70).
where(x1, (N0, N1), add(N1, N1)) :- input(call(f, (N0, N1))), choose_where(71).
where(x1, (N0, N1), add(N1, C1)) :- input(call(f, (N0, N1))), choose_where(72, C1).
where(x1, (N0, N1), add(N1, x0)) :- input(call(f, (N0, N1))), choose_where(73).
where(x1, (N0, N1), mul(N0, N0)) :- input(call(f, (N0, N1))), choose_where(74).
where(x1, (N0, N1), mul(N0, N1)) :- input(call(f, (N0, N1))), choose_where(75).
where(x1, (N0, N1), mul(N0, C1)) :- input(call(f, (N0, N1))), choose_where(76, C1).
where(x1, (N0, N1), mul(N0, x0)) :- input(call(f, (N0, N1))), choose_where(77).
where(x1, (N0, N1), mul(N1, N0)) :- input(call(f, (N0, N1))), choose_where(78).
where(x1, (N0, N1), mul(N1, N1)) :- input(call(f, (N0, N1))), choose_where(79).
where(x1, (N0, N1), mul(N1, C1)) :- input(call(f, (N0, N1))), choose_where(80, C1).
where(x1, (N0, N1), mul(N1, x0)) :- input(call(f, (N0, N1))), choose_where(81).
where(x1, (N0, N1), sub(N0, N0)) :- input(call(f, (N0, N1))), choose_where(82).
where(x1, (N0, N1), sub(N0, N1)) :- input(call(f, (N0, N1))), choose_where(83).
where(x1, (N0, N1), sub(N0, C1)) :- input(call(f, (N0, N1))), choose_where(84, C1).
where(x1, (N0, N1), sub(N0, x0)) :- input(call(f, (N0, N1))), choose_where(85).
where(x1, (N0, N1), sub(N1, N0)) :- input(call(f, (N0, N1))), choose_where(86).
where(x1, (N0, N1), sub(N1, N1)) :- input(call(f, (N0, N1))), choose_where(87).
where(x1, (N0, N1), sub(N1, C1)) :- input(call(f, (N0, N1))), choose_where(88, C1).
where(x1, (N0, N1), sub(N1, x0)) :- input(call(f, (N0, N1))), choose_where(89).
where(x1, (N0, N1), call(f, (N0 , (N1)))) :- input(call(f, (N0, N1))), choose_where(90).
where(x1, (N0, N1), call(f, (N0 , (x0)))) :- input(call(f, (N0, N1))), choose_where(91).
where(x1, (N0, N1), call(f, (N1 , (x0)))) :- input(call(f, (N0, N1))), choose_where(92).
1 {
choose(R, 1;2;3;4;6;7;8;9;11;12;13;14;16;17;18;19;21;22;23;24;26;27;28;29;31;32;33;34;35;36;37;38) ,
choose(R, 5;10;15;20;25;30, C0) : expr_const(C0) 
} 1 :- num_rules(R).
#minimise [choose_where(R)=1, choose_where(R, _)=1 ].
0 {
choose_where(39;40;42;43;44;46;47;48;50;51;52;54;55;56;58;59;60;62;63;64;65) ,
choose_where(41;45;49;53;57;61, C0) : expr_const(C0) 
} 1.
0 {
choose_where(66;67;69;70;71;73;74;75;77;78;79;81;82;83;85;86;87;89;90;91;92) ,
choose_where(68;72;76;80;84;88, C0) : expr_const(C0) 
} 1.
