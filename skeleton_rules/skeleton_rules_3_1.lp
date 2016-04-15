rule(R, f, (C0, C1), C3) :- input(call(f, (C0, C1))), choose(R, 1, C1, C2, C3).
rule(R, f, (N0, N1), N0) :- input(call(f, (N0, N1))), choose(R, 2).
rule(R, f, (N0, N1), N1) :- input(call(f, (N0, N1))), choose(R, 3).
rule(R, f, (N0, N1), add(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 4).
rule(R, f, (N0, N1), add(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 5).
rule(R, f, (N0, N1), add(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 6, C1).
rule(R, f, (N0, N1), add(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 7).
rule(R, f, (N0, N1), add(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 8).
rule(R, f, (N0, N1), add(N0, x2)) :- input(call(f, (N0, N1))), choose(R, 9).
rule(R, f, (N0, N1), add(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 10).
rule(R, f, (N0, N1), add(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 11).
rule(R, f, (N0, N1), add(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 12, C1).
rule(R, f, (N0, N1), add(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 13).
rule(R, f, (N0, N1), add(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 14).
rule(R, f, (N0, N1), add(N1, x2)) :- input(call(f, (N0, N1))), choose(R, 15).
rule(R, f, (N0, N1), mul(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 16).
rule(R, f, (N0, N1), mul(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 17).
rule(R, f, (N0, N1), mul(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 18, C1).
rule(R, f, (N0, N1), mul(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 19).
rule(R, f, (N0, N1), mul(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 20).
rule(R, f, (N0, N1), mul(N0, x2)) :- input(call(f, (N0, N1))), choose(R, 21).
rule(R, f, (N0, N1), mul(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 22).
rule(R, f, (N0, N1), mul(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 23).
rule(R, f, (N0, N1), mul(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 24, C1).
rule(R, f, (N0, N1), mul(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 25).
rule(R, f, (N0, N1), mul(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 26).
rule(R, f, (N0, N1), mul(N1, x2)) :- input(call(f, (N0, N1))), choose(R, 27).
rule(R, f, (N0, N1), sub(N0, N0)) :- input(call(f, (N0, N1))), choose(R, 28).
rule(R, f, (N0, N1), sub(N0, N1)) :- input(call(f, (N0, N1))), choose(R, 29).
rule(R, f, (N0, N1), sub(N0, C1)) :- input(call(f, (N0, N1))), choose(R, 30, C1).
rule(R, f, (N0, N1), sub(N0, x0)) :- input(call(f, (N0, N1))), choose(R, 31).
rule(R, f, (N0, N1), sub(N0, x1)) :- input(call(f, (N0, N1))), choose(R, 32).
rule(R, f, (N0, N1), sub(N0, x2)) :- input(call(f, (N0, N1))), choose(R, 33).
rule(R, f, (N0, N1), sub(N1, N0)) :- input(call(f, (N0, N1))), choose(R, 34).
rule(R, f, (N0, N1), sub(N1, N1)) :- input(call(f, (N0, N1))), choose(R, 35).
rule(R, f, (N0, N1), sub(N1, C1)) :- input(call(f, (N0, N1))), choose(R, 36, C1).
rule(R, f, (N0, N1), sub(N1, x0)) :- input(call(f, (N0, N1))), choose(R, 37).
rule(R, f, (N0, N1), sub(N1, x1)) :- input(call(f, (N0, N1))), choose(R, 38).
rule(R, f, (N0, N1), sub(N1, x2)) :- input(call(f, (N0, N1))), choose(R, 39).
rule(R, f, (N0, N1), call(f, N0)) :- input(call(f, (N0, N1))), choose(R, 40).
rule(R, f, (N0, N1), call(f, C1)) :- input(call(f, (N0, N1))), choose(R, 41, C1).
rule(R, f, (N0, N1), call(f, x0)) :- input(call(f, (N0, N1))), choose(R, 42).
rule(R, f, (N0, N1), call(f, x1)) :- input(call(f, (N0, N1))), choose(R, 43).
rule(R, f, (N0, N1), call(f, x2)) :- input(call(f, (N0, N1))), choose(R, 44).
rule(R, f, (N0, N1), call(f, N1)) :- input(call(f, (N0, N1))), choose(R, 45).
rule(R, f, (N0, N1), call(f, C1)) :- input(call(f, (N0, N1))), choose(R, 46, C1).
rule(R, f, (N0, N1), call(f, x0)) :- input(call(f, (N0, N1))), choose(R, 47).
rule(R, f, (N0, N1), call(f, x1)) :- input(call(f, (N0, N1))), choose(R, 48).
rule(R, f, (N0, N1), call(f, x2)) :- input(call(f, (N0, N1))), choose(R, 49).
where(x0, (N0, N1), add(N0, N0)) :- input(call(_, (N0, N1))), choose_where(50).
where(x0, (N0, N1), add(N0, N1)) :- input(call(_, (N0, N1))), choose_where(51).
where(x0, (N0, N1), add(N0, C1)) :- input(call(_, (N0, N1))), choose_where(52, C1).
where(x0, (N0, N1), add(N0, x1)) :- input(call(_, (N0, N1))), choose_where(53).
where(x0, (N0, N1), add(N0, x2)) :- input(call(_, (N0, N1))), choose_where(54).
where(x0, (N0, N1), add(N1, N0)) :- input(call(_, (N0, N1))), choose_where(55).
where(x0, (N0, N1), add(N1, N1)) :- input(call(_, (N0, N1))), choose_where(56).
where(x0, (N0, N1), add(N1, C1)) :- input(call(_, (N0, N1))), choose_where(57, C1).
where(x0, (N0, N1), add(N1, x1)) :- input(call(_, (N0, N1))), choose_where(58).
where(x0, (N0, N1), add(N1, x2)) :- input(call(_, (N0, N1))), choose_where(59).
where(x0, (N0, N1), mul(N0, N0)) :- input(call(_, (N0, N1))), choose_where(60).
where(x0, (N0, N1), mul(N0, N1)) :- input(call(_, (N0, N1))), choose_where(61).
where(x0, (N0, N1), mul(N0, C1)) :- input(call(_, (N0, N1))), choose_where(62, C1).
where(x0, (N0, N1), mul(N0, x1)) :- input(call(_, (N0, N1))), choose_where(63).
where(x0, (N0, N1), mul(N0, x2)) :- input(call(_, (N0, N1))), choose_where(64).
where(x0, (N0, N1), mul(N1, N0)) :- input(call(_, (N0, N1))), choose_where(65).
where(x0, (N0, N1), mul(N1, N1)) :- input(call(_, (N0, N1))), choose_where(66).
where(x0, (N0, N1), mul(N1, C1)) :- input(call(_, (N0, N1))), choose_where(67, C1).
where(x0, (N0, N1), mul(N1, x1)) :- input(call(_, (N0, N1))), choose_where(68).
where(x0, (N0, N1), mul(N1, x2)) :- input(call(_, (N0, N1))), choose_where(69).
where(x0, (N0, N1), sub(N0, N0)) :- input(call(_, (N0, N1))), choose_where(70).
where(x0, (N0, N1), sub(N0, N1)) :- input(call(_, (N0, N1))), choose_where(71).
where(x0, (N0, N1), sub(N0, C1)) :- input(call(_, (N0, N1))), choose_where(72, C1).
where(x0, (N0, N1), sub(N0, x1)) :- input(call(_, (N0, N1))), choose_where(73).
where(x0, (N0, N1), sub(N0, x2)) :- input(call(_, (N0, N1))), choose_where(74).
where(x0, (N0, N1), sub(N1, N0)) :- input(call(_, (N0, N1))), choose_where(75).
where(x0, (N0, N1), sub(N1, N1)) :- input(call(_, (N0, N1))), choose_where(76).
where(x0, (N0, N1), sub(N1, C1)) :- input(call(_, (N0, N1))), choose_where(77, C1).
where(x0, (N0, N1), sub(N1, x1)) :- input(call(_, (N0, N1))), choose_where(78).
where(x0, (N0, N1), sub(N1, x2)) :- input(call(_, (N0, N1))), choose_where(79).
where(x0, (N0, N1), call(f, N0)) :- input(call(_, (N0, N1))), choose_where(80).
where(x0, (N0, N1), call(f, C1)) :- input(call(_, (N0, N1))), choose_where(81, C1).
where(x0, (N0, N1), call(f, x1)) :- input(call(_, (N0, N1))), choose_where(82).
where(x0, (N0, N1), call(f, x2)) :- input(call(_, (N0, N1))), choose_where(83).
where(x0, (N0, N1), call(f, N1)) :- input(call(_, (N0, N1))), choose_where(84).
where(x0, (N0, N1), call(f, C1)) :- input(call(_, (N0, N1))), choose_where(85, C1).
where(x0, (N0, N1), call(f, x1)) :- input(call(_, (N0, N1))), choose_where(86).
where(x0, (N0, N1), call(f, x2)) :- input(call(_, (N0, N1))), choose_where(87).
where(x1, (N0, N1), add(N0, N0)) :- input(call(_, (N0, N1))), choose_where(88).
where(x1, (N0, N1), add(N0, N1)) :- input(call(_, (N0, N1))), choose_where(89).
where(x1, (N0, N1), add(N0, C1)) :- input(call(_, (N0, N1))), choose_where(90, C1).
where(x1, (N0, N1), add(N0, x0)) :- input(call(_, (N0, N1))), choose_where(91).
where(x1, (N0, N1), add(N0, x2)) :- input(call(_, (N0, N1))), choose_where(92).
where(x1, (N0, N1), add(N1, N0)) :- input(call(_, (N0, N1))), choose_where(93).
where(x1, (N0, N1), add(N1, N1)) :- input(call(_, (N0, N1))), choose_where(94).
where(x1, (N0, N1), add(N1, C1)) :- input(call(_, (N0, N1))), choose_where(95, C1).
where(x1, (N0, N1), add(N1, x0)) :- input(call(_, (N0, N1))), choose_where(96).
where(x1, (N0, N1), add(N1, x2)) :- input(call(_, (N0, N1))), choose_where(97).
where(x1, (N0, N1), mul(N0, N0)) :- input(call(_, (N0, N1))), choose_where(98).
where(x1, (N0, N1), mul(N0, N1)) :- input(call(_, (N0, N1))), choose_where(99).
where(x1, (N0, N1), mul(N0, C1)) :- input(call(_, (N0, N1))), choose_where(100, C1).
where(x1, (N0, N1), mul(N0, x0)) :- input(call(_, (N0, N1))), choose_where(101).
where(x1, (N0, N1), mul(N0, x2)) :- input(call(_, (N0, N1))), choose_where(102).
where(x1, (N0, N1), mul(N1, N0)) :- input(call(_, (N0, N1))), choose_where(103).
where(x1, (N0, N1), mul(N1, N1)) :- input(call(_, (N0, N1))), choose_where(104).
where(x1, (N0, N1), mul(N1, C1)) :- input(call(_, (N0, N1))), choose_where(105, C1).
where(x1, (N0, N1), mul(N1, x0)) :- input(call(_, (N0, N1))), choose_where(106).
where(x1, (N0, N1), mul(N1, x2)) :- input(call(_, (N0, N1))), choose_where(107).
where(x1, (N0, N1), sub(N0, N0)) :- input(call(_, (N0, N1))), choose_where(108).
where(x1, (N0, N1), sub(N0, N1)) :- input(call(_, (N0, N1))), choose_where(109).
where(x1, (N0, N1), sub(N0, C1)) :- input(call(_, (N0, N1))), choose_where(110, C1).
where(x1, (N0, N1), sub(N0, x0)) :- input(call(_, (N0, N1))), choose_where(111).
where(x1, (N0, N1), sub(N0, x2)) :- input(call(_, (N0, N1))), choose_where(112).
where(x1, (N0, N1), sub(N1, N0)) :- input(call(_, (N0, N1))), choose_where(113).
where(x1, (N0, N1), sub(N1, N1)) :- input(call(_, (N0, N1))), choose_where(114).
where(x1, (N0, N1), sub(N1, C1)) :- input(call(_, (N0, N1))), choose_where(115, C1).
where(x1, (N0, N1), sub(N1, x0)) :- input(call(_, (N0, N1))), choose_where(116).
where(x1, (N0, N1), sub(N1, x2)) :- input(call(_, (N0, N1))), choose_where(117).
where(x1, (N0, N1), call(f, N0)) :- input(call(_, (N0, N1))), choose_where(118).
where(x1, (N0, N1), call(f, C1)) :- input(call(_, (N0, N1))), choose_where(119, C1).
where(x1, (N0, N1), call(f, x0)) :- input(call(_, (N0, N1))), choose_where(120).
where(x1, (N0, N1), call(f, x2)) :- input(call(_, (N0, N1))), choose_where(121).
where(x1, (N0, N1), call(f, N1)) :- input(call(_, (N0, N1))), choose_where(122).
where(x1, (N0, N1), call(f, C1)) :- input(call(_, (N0, N1))), choose_where(123, C1).
where(x1, (N0, N1), call(f, x0)) :- input(call(_, (N0, N1))), choose_where(124).
where(x1, (N0, N1), call(f, x2)) :- input(call(_, (N0, N1))), choose_where(125).
where(x2, (N0, N1), add(N0, N0)) :- input(call(_, (N0, N1))), choose_where(126).
where(x2, (N0, N1), add(N0, N1)) :- input(call(_, (N0, N1))), choose_where(127).
where(x2, (N0, N1), add(N0, C1)) :- input(call(_, (N0, N1))), choose_where(128, C1).
where(x2, (N0, N1), add(N0, x0)) :- input(call(_, (N0, N1))), choose_where(129).
where(x2, (N0, N1), add(N0, x1)) :- input(call(_, (N0, N1))), choose_where(130).
where(x2, (N0, N1), add(N1, N0)) :- input(call(_, (N0, N1))), choose_where(131).
where(x2, (N0, N1), add(N1, N1)) :- input(call(_, (N0, N1))), choose_where(132).
where(x2, (N0, N1), add(N1, C1)) :- input(call(_, (N0, N1))), choose_where(133, C1).
where(x2, (N0, N1), add(N1, x0)) :- input(call(_, (N0, N1))), choose_where(134).
where(x2, (N0, N1), add(N1, x1)) :- input(call(_, (N0, N1))), choose_where(135).
where(x2, (N0, N1), mul(N0, N0)) :- input(call(_, (N0, N1))), choose_where(136).
where(x2, (N0, N1), mul(N0, N1)) :- input(call(_, (N0, N1))), choose_where(137).
where(x2, (N0, N1), mul(N0, C1)) :- input(call(_, (N0, N1))), choose_where(138, C1).
where(x2, (N0, N1), mul(N0, x0)) :- input(call(_, (N0, N1))), choose_where(139).
where(x2, (N0, N1), mul(N0, x1)) :- input(call(_, (N0, N1))), choose_where(140).
where(x2, (N0, N1), mul(N1, N0)) :- input(call(_, (N0, N1))), choose_where(141).
where(x2, (N0, N1), mul(N1, N1)) :- input(call(_, (N0, N1))), choose_where(142).
where(x2, (N0, N1), mul(N1, C1)) :- input(call(_, (N0, N1))), choose_where(143, C1).
where(x2, (N0, N1), mul(N1, x0)) :- input(call(_, (N0, N1))), choose_where(144).
where(x2, (N0, N1), mul(N1, x1)) :- input(call(_, (N0, N1))), choose_where(145).
where(x2, (N0, N1), sub(N0, N0)) :- input(call(_, (N0, N1))), choose_where(146).
where(x2, (N0, N1), sub(N0, N1)) :- input(call(_, (N0, N1))), choose_where(147).
where(x2, (N0, N1), sub(N0, C1)) :- input(call(_, (N0, N1))), choose_where(148, C1).
where(x2, (N0, N1), sub(N0, x0)) :- input(call(_, (N0, N1))), choose_where(149).
where(x2, (N0, N1), sub(N0, x1)) :- input(call(_, (N0, N1))), choose_where(150).
where(x2, (N0, N1), sub(N1, N0)) :- input(call(_, (N0, N1))), choose_where(151).
where(x2, (N0, N1), sub(N1, N1)) :- input(call(_, (N0, N1))), choose_where(152).
where(x2, (N0, N1), sub(N1, C1)) :- input(call(_, (N0, N1))), choose_where(153, C1).
where(x2, (N0, N1), sub(N1, x0)) :- input(call(_, (N0, N1))), choose_where(154).
where(x2, (N0, N1), sub(N1, x1)) :- input(call(_, (N0, N1))), choose_where(155).
where(x2, (N0, N1), call(f, N0)) :- input(call(_, (N0, N1))), choose_where(156).
where(x2, (N0, N1), call(f, C1)) :- input(call(_, (N0, N1))), choose_where(157, C1).
where(x2, (N0, N1), call(f, x0)) :- input(call(_, (N0, N1))), choose_where(158).
where(x2, (N0, N1), call(f, x1)) :- input(call(_, (N0, N1))), choose_where(159).
where(x2, (N0, N1), call(f, N1)) :- input(call(_, (N0, N1))), choose_where(160).
where(x2, (N0, N1), call(f, C1)) :- input(call(_, (N0, N1))), choose_where(161, C1).
where(x2, (N0, N1), call(f, x0)) :- input(call(_, (N0, N1))), choose_where(162).
where(x2, (N0, N1), call(f, x1)) :- input(call(_, (N0, N1))), choose_where(163).
1 {
choose(R, 2;3;4;5;7;8;9;10;11;13;14;15;16;17;19;20;21;22;23;25;26;27;28;29;31;32;33;34;35;37;38;39;40;42;43;44;45;47;48;49) ,
choose(R, 6;12;18;24;30;36;41;46, C0) : expr_const(C0) ,
choose(R, null, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose(R, 1, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 1 :- num_rules(R).
#minimise [choose_where(R)=1, choose_where(R, _)=1, choose_where(R, _, _)=1, choose_where(R, _, _, _)=1 ].
0 {
choose_where(50;51;53;54;55;56;58;59;60;61;63;64;65;66;68;69;70;71;73;74;75;76;78;79;80;82;83;84;86;87) ,
choose_where(52;57;62;67;72;77;81;85, C0) : expr_const(C0) ,
choose_where(null, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose_where(null, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 1.
0 {
choose_where(88;89;91;92;93;94;96;97;98;99;101;102;103;104;106;107;108;109;111;112;113;114;116;117;118;120;121;122;124;125) ,
choose_where(90;95;100;105;110;115;119;123, C0) : expr_const(C0) ,
choose_where(null, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose_where(null, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 1.
0 {
choose_where(126;127;129;130;131;132;134;135;136;137;139;140;141;142;144;145;146;147;149;150;151;152;154;155;156;158;159;160;162;163) ,
choose_where(128;133;138;143;148;153;157;161, C0) : expr_const(C0) ,
choose_where(null, C0, C1) : expr_const(C0) : expr_const(C1) ,
choose_where(null, C0, C1, C2) : expr_const(C0) : expr_const(C1) : expr_const(C2) 
} 1.
