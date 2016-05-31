% fac 
rule(2, fac, (N0), mul(call(fac, (N0 - 1)), N0)) :- is_call(call(fac, (N0))).
rule(1, fac, (N0), 1) :- is_call(call(fac, (N0))).
match_guard(fac, 1, (N0)) :- is_call(call(fac, (N0))).
match_guard(fac, 2, (N0)) :- N0 == 0, is_call(call(fac, (N0))).
