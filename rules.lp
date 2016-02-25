%%%%

const(0..10).
const(e).

#domain max_depth(MaxDepth).

#hide const(N).
#hide rule(R, F, Args, Expr).
#hide match(F, Index, Args).
#hide match2(F, Index, Args).
#hide smaller_match(F, Index, Args).
#hide eval_with(Expr, Args).
#hide value_with(Expr, Out, Args).
#hide num_rules(N).
#hide num_generated_rules(N).
#hide num_generated_wheres(N).

#hide expr_const(N).

#hide input(In).
#hide where(X, Args, Expr).
#hide output(In, Out).
%%%%

%%%% LANGUAGE BIAS %%%%

input(In) :- example(In, _).
:- not output(In, Out), example(In, Out).

:- where(X, Args, Expr_1), where(X, Args, Expr_2), Expr_1 != Expr_2.
:- rule(N, F, Args, Expr_1), rule(N, F, Args, Expr_2), Expr_1 != Expr_2.

%%%% BACKGROUND KNOWLEDGE %%%%

output(call(F, Args), Out) :- rule(Index, F, Args, Expr), match(F, Index, Args), value_with(Expr, Out, Args).%, const(Out).

value_with(mul(A, B), V1 * V2, Args) :- eval_with(mul(A, B), Args), value_with(A, V1, Args), value_with(B, V2, Args), const(V1*V2).
value_with(sub(A, B), V1 - V2, Args) :- eval_with(sub(A, B), Args), value_with(A, V1, Args), value_with(B, V2, Args), const(V1-V2).
value_with(add(A, B), V1 + V2, Args) :- eval_with(add(A, B), Args), value_with(A, V1, Args), value_with(B, V2, Args), const(V1+V2).
value_with(call(F, Args_new), Out, Args_old) :- eval_with(call(F, Args_new), Args_old), output(call(F, Inputs), Out), value_with(Args_new, Inputs, Args_old).
value_with((A, B), (V1, V2), Args) :- eval_with((A, B), Args), value_with(A, V1, Args), value_with(B, V2, Args).
value_with(N, N, Args) :- eval_with(N, Args), const(N).
value_with(X, V, Args) :- eval_with(X, Args), where(X, Args, Expr), value_with(Expr, V, Args). 

eval_with(Expr, Inputs) :- input(call(F, Inputs)), rule(Index, F, Inputs, Expr), match(F, Index, Inputs).
eval_with(Expr, Args) :- eval_with(X, Args), where(X, Args, Expr).
eval_with(Args_new, Args_old) :- eval_with(call(F, Args_new), Args_old).
eval_with(A, Args) :- eval_with((A, B), Args).
eval_with(B, Args) :- eval_with((A, B), Args).
eval_with(A, Args) :- eval_with(mul(A, B), Args).
eval_with(B, Args) :- eval_with(mul(A, B), Args).
eval_with(A, Args) :- eval_with(sub(A, B), Args).
eval_with(B, Args) :- eval_with(sub(A, B), Args).
eval_with(A, Args) :- eval_with(add(A, B), Args).
eval_with(B, Args) :- eval_with(add(A, B), Args).

input(call(F, Inputs)) :- eval_with(call(F, Args_new), Args_old), value_with(Args_new, Inputs, Args_old).

match(F, Index, Inputs) :- not smaller_match(F, Index, Inputs), rule(Index, F, Inputs, _), match2(F, Index, Inputs).
smaller_match(F, Index, Args) :- match(F, O, Args), O < Index, const(Index).




