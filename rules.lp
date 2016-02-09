%%%%

%*
Ideas for project - program structure as a logic program. 

Want to say something similar to this but with any expr with call statements replaced with the output of the call. 

Instead of expr(mul, 4, call(f, 3)), want expr(mul, 4, expr(mul, 3, expr(mul, 2, expr(mul 1, 1))))
*%

const(0..100).
const(e).

#domain max_depth(MaxDepth).

#hide const(N).
#hide rule(R, F, Args, Expr).
#hide match(F, Index, Args).
#hide match2(F, Index, Args).
#hide smaller_match(F, Index, Args).
#hide eval(Expr).
#hide value(Expr, Out).
#hide num_rules(N).
#hide num_generated(N).

#hide fn_name(F, N).
#hide max_depth(N).
#hide expr_const(N).

%#hide input(In).
%#hide output(In, Out).
%%%%

%%%% LANGUAGE BIAS %%%%

input(In) :- example(In, _).
:- not output(In, Out), example(In, Out).


%* OLD CODE
0 {rule(RuleNum, FuncName, Args, Expr) : RuleNum = 1..N : valid_args(Args) : valid_expr(Args, Expr)} N :- fn_name(FuncName, N).

valid_args(C) :- expr_const(C).
valid_args(V) :- var(V).

valid_expr(Args, Expr) :- valid_expr(Args, Expr, N), N <= MaxDepth.
valid_expr(Args, Args, 1) :- valid_args(Args).
valid_expr(Args, C, 1) :- valid_args(Args), valid_args(C).

valid_expr(Args, add(C, Expr), N+1) :- expr_const(C), valid_expr(Args, Expr, N), N < MaxDepth.
valid_expr(Args, sub(C, Expr), N+1) :- expr_const(C), valid_expr(Args, Expr, N), N < MaxDepth.
valid_expr(Args, sub(Expr, C), N+1) :- expr_const(C), valid_expr(Args, Expr, N), N < MaxDepth.
valid_expr(Args, mul(C, Expr), N+1) :- expr_const(C), valid_expr(Args, Expr, N), N < MaxDepth.
valid_expr(Args, call(F, Expr), N+1) :- fn_name(F, _), valid_expr(Args, Expr, N), N < MaxDepth.
*%

%%%% BACKGROUND KNOWLEDGE %%%%

output(call(F, Args), Out) :- rule(Index, F, Args, Expr), match(F, Index, Args), value(Expr, Out), const(Args).

value(mul(A, B), V1 * V2) :- eval(mul(A, B)), value(A, V1), value(B, V2), const(V1*V2).
value(sub(A, B), V1 - V2) :- eval(sub(A, B)), value(A, V1), value(B, V2), const(V1-V2).
value(add(A, B), V1 + V2) :- eval(add(A, B)), value(A, V1), value(B, V2), const(V1+V2).
value(call(F, Args), Out) :- eval(call(F, Args)), output(call(F, Inputs), Out), value(Args, Inputs).
value((A, B), (V1, V2)) :- eval((A, B)), value(A, V1), value(B, V2).
value(N, N) :- eval(N), const(N).

eval(Expr) :- input(call(F, Inputs)), rule(Index, F, Inputs, Expr), match(F, Index, Inputs).
eval(Args) :- eval(call(F, Args)).
eval(A) :- eval((A, B)).
eval(B) :- eval((A, B)).
eval(A) :- eval(mul(A, B)).
eval(B) :- eval(mul(A, B)).
eval(A) :- eval(sub(A, B)).
eval(B) :- eval(sub(A, B)).
eval(A) :- eval(add(A, B)).
eval(B) :- eval(add(A, B)).

input(call(F, Inputs)) :- eval(call(F, Args)), value(Args, Inputs).

match(F, Index, Inputs) :- not smaller_match(F, Index, Inputs), rule(Index, F, Inputs, _), match2(F, Index, Inputs).
smaller_match(F, Index, Args) :- match(F, O, Args), O < Index, const(Index).




