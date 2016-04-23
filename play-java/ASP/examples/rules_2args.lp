%%%%

%*
Ideas for project - program structure as a logic program. 

Want to say something similar to this but with any expr with call statements replaced with the output of the call. 

Instead of expr(mul, 4, call(f, 3)), want expr(mul, 4, expr(mul, 3, expr(mul, 2, expr(mul 1, 1))))
*%

const(0..10).
#domain const(N).
#domain const(R).
%#domain const(Input).
#domain const(Index).

#hide const(N).
#hide rule(R, F, (Arg1, Args), Expr).
#hide match(F, Index, (Arg1, Args)).
#hide smaller_match(F, Index, (Arg1, Args)).
#hide eval(Expr).
#hide value(Expr, Out).
%%%%

output(call(F, (Arg1, Args)), Out) :- rule(Index, F, (Arg1, Args), Expr), match(F, Index, (Arg1, Args)), value(Expr, Out).

value(mul(A, B), V1 * V2) :- eval(mul(A, B)), value(A, V1), value(B, V2).
value(sub(A, B), V1 - V2) :- eval(sub(A, B)), value(A, V1), value(B, V2).
value(add(A, B), V1 + V2) :- eval(add(A, B)), value(A, V1), value(B, V2).
value(call(F, (Arg1, Args)), Out) :- eval(call(F, (Arg1, Args))), output(call(F, (Input1, Inputs)), Out), value(Arg1, Input1), value(Args, Inputs).
value((A, B), (V1, V2)) :- eval((A, B)), value(A, V1), value(B, V2).
value(N, N) :- eval(N).

eval(Expr) :- input(call(F, (Input1, Inputs))), rule(Index, F, (Input1, Inputs), Expr), match(F, Index, (Input1, Inputs)).
eval(Arg1) :- eval(call(F, (Arg1, Args))).
eval(Args) :- eval(call(F, (Arg1, Args))).
eval(A) :- eval((A, B)).
eval(B) :- eval((A, B)).
eval(A) :- eval(mul(A, B)).
eval(B) :- eval(mul(A, B)).
eval(A) :- eval(sub(A, B)).
eval(B) :- eval(sub(A, B)).
eval(A) :- eval(add(A, B)).
eval(B) :- eval(add(A, B)).

input(call(F, (Input1, Inputs))) :- eval(call(F, (Arg1, Args))), value(Arg1, Input1), value(Args, Inputs).

match(F, Index, (Input1, Inputs)) :- not smaller_match(F, Index, (Input1, Inputs)), rule(Index, F, (Input1, Inputs), _).
smaller_match(F, Index, (Arg1, Args)) :- match(F, O, (Arg1, Args)), O < Index.




