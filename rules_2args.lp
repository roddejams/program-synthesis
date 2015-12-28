%%%%

%*
Ideas for project - program structure as a logic program. 

Want to say something similar to this but with any expr with call statements replaced with the output of the call. 

Instead of expr(mul, 4, call(f, 3)), want expr(mul, 4, expr(mul, 3, expr(mul, 2, expr(mul 1, 1))))
*%

const(0..100).
#domain const(N).
#domain const(R).
%#domain const(Input).
#domain const(Index).

#hide const(N).
#hide rule(R, F, Arg1, Arg2, Expr).
#hide match(F, Index, N, R).
#hide smaller_match(F, Index, N, R).
#hide eval(Expr).
#hide value(Expr, Out).
%%%%

output(call(F, N, R), Out) :- rule(Index, F, N, R, Expr), match(F, Index, N, R), value(Expr, Out).

value(mul(A, B), V1 * V2) :- eval(mul(A, B)), value(A, V1), value(B, V2).
value(sub(A, B), V1 - V2) :- eval(sub(A, B)), value(A, V1), value(B, V2).
value(add(A, B), V1 + V2) :- eval(add(A, B)), value(A, V1), value(B, V2).
value(call(F, Arg1, Arg2), Out) :- eval(call(F, Arg1, Arg2)), output(call(F, Input1, Input2), Out), value(Arg1, Input1), value(Arg2, Input2).
value(N, N) :- eval(N).

eval(Expr) :- input(call(F, Input1, Input2)), rule(Index, F, Input1, Input2, Expr), match(F, Index, Input1, Input2).
eval(Arg1) :- eval(call(F, Arg1, Arg2)).
eval(Arg2) :- eval(call(F, Arg1, Arg2)).
eval(A) :- eval(mul(A, B)).
eval(B) :- eval(mul(A, B)).
eval(A) :- eval(sub(A, B)).
eval(B) :- eval(sub(A, B)).
eval(A) :- eval(add(A, B)).
eval(B) :- eval(add(A, B)).

input(call(F, Input1, Input2)) :- eval(call(F, Arg1, Arg2)), value(Arg1, Input1), value(Arg2, Input2).

match(F, Index, Input1, Input2) :- not smaller_match(F, Index, Input1, Input2), rule(Index, F, Input1, Input2, _).
smaller_match(F, Index, N, R) :- match(F, O, N, R), O < Index.




