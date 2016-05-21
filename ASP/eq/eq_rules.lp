#hide const_number/1.
#hide expr_const/1.
#hide num_rules/1.
#hide match/3.
#hide match2/3.
#hide smaller_match/3.
#hide rule/4.
#hide eq/2.
#hide is_call/1.
#hide check_terminate/1.
#hide terminates/1.
#hide next_step/2.

const_number(0..10).

%type(call(f, X), Expr) :- X = (sub(3, 1), mul(3, 1)), rule(2, f, @eval(X), Expr).

eq(In, Out) :- example(In, Out).
:- eq(N1, N2), const_number(N1), const_number(N2), N1 != N2.
:- eq(mul(0, B), Val), Val > 0.
:- eq(mul(A, 0), Val), Val > 0.
:- example(In, Out), not terminates(In).

is_call(call(f, Expr)):- eq(call(f, Expr), Out).

eq(Expr, Val) :- rule(Index, F, Arg_Expr, Expr), match(F, Index, Arg_Expr), eq(call(F, Arg_Expr), Val).
eq(A, Val - B) :- eq(add(A, B), Val), const_number(B), B <= Val.
eq(B, Val - A) :- eq(add(A, B), Val), const_number(A), A <= Val.
eq(A, Val / B) :- eq(mul(A, B), Val), const_number(B), B > 0.
eq(B, Val / A) :- eq(mul(A, B), Val), const_number(A), A > 0.
eq(A, Val + B) :- eq(sub(A, B), Val), const_number(B), const_number(Val).
eq(B, Val + A) :- eq(sub(A, B), Val), const_number(A), const_number(Val).

terminates(Expr) :- next_step(Expr, Val), const_number(Val).
terminates(Expr) :- next_step(Expr, Term_Expr), terminates(Term_Expr).

next_step(e, In):- example(In, Out).
next_step(call(F, Args), Expr) :- check_terminate(call(F, Args)), rule(Index, F, Args, Expr), match(F, Index, Args).
next_step(add(A, B), B) :- check_terminate(add(A, B)), const_number(A).
next_step(add(A, B), A) :- check_terminate(add(A, B)), const_number(B).
next_step(mul(A, B), B) :- check_terminate(mul(A, B)), const_number(A).
next_step(mul(A, B), A) :- check_terminate(mul(A, B)), const_number(B).
next_step(sub(A, B), A) :- check_terminate(sub(A, B)), const_number(B).
next_step(sub(A, B), B) :- check_terminate(sub(A, B)), const_number(A).
check_terminate(X) :- next_step(_, X).

match(F, Index, Inputs) :- not smaller_match(F, Index, Inputs), rule(Index, F, Inputs, _), match2(F, Index, Inputs).
smaller_match(F, Index, Args) :- match(F, O, Args), O < Index, const_number(Index).
