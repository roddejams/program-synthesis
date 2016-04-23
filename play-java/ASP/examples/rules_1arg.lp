%%%%

%*
Ideas for project - program structure as a logic program. 

Want to say something similar to this but with any expr with call statements replaced with the output of the call. 

Instead of expr(mul, 4, call(f, 3)), want expr(mul, 4, expr(mul, 3, expr(mul, 2, expr(mul 1, 1))))
*%

const(0..100).
#domain const(N).
%#domain const(R).
%#domain const(Input).
#domain const(Index).

#hide const(N).
#hide rule(R, F, N, O).
#hide match(F, Index, N).
#hide smaller_match(F, Index, N).
#hide eval(Expr).
#hide value(Expr, Out).
%%%%

output(call(F, N), Out) :- rule(Index, F, N, Expr), match(F, Index, N), value(Expr, Out).

value(mul(A, B), V1 * V2) :- eval(mul(A, B)), value(A, V1), value(B, V2).
value(sub(A, B), V1 - V2) :- eval(sub(A, B)), value(A, V1), value(B, V2).
value(add(A, B), V1 + V2) :- eval(add(A, B)), value(A, V1), value(B, V2).
value(call(F, Expr), Out) :- eval(call(F, Expr)), output(call(F, Input), Out), value(Expr, Input).
value(N, N) :- eval(N).

eval(Expr) :- input(call(F, Input)), rule(Index, F, Input, Expr), match(F, Index, Input).
eval(Expr) :- eval(call(F, Expr)).
eval(A) :- eval(mul(A, B)).
eval(B) :- eval(mul(A, B)).
eval(A) :- eval(sub(A, B)).
eval(B) :- eval(sub(A, B)).
eval(A) :- eval(add(A, B)).
eval(B) :- eval(add(A, B)).

input(call(F, Input)) :- eval(call(F, Expr)), value(Expr, Input).

match(F, Index, Input) :- not smaller_match(F, Index, Input), rule(Index, F, Input, _).
smaller_match(F, Index, N) :- match(F, O, N), O < Index.




