#begin_lua
function to_num(x)
  if Val.type(x) == Val.NUM then
    return x
  else
    return 1
  end
end
#end_lua.

#hide const_number/1.
#hide const/1.
#hide expr_const/1.
#hide num_rules/1.
#hide num_match/1.
#hide match/3.
#hide match_guard/3.
#hide smaller_match/3.
#hide rule/4.
#hide eq/2.
#hide is_call/1.
#hide is_next_step/1.
#hide terminates/1.
#hide next_step/2.
#hide const_range/1.

const_number(0..12).
const(X) :- const_number(X).
const(e).
const_range(-100..100).

eq(In, Out) :- example(In, Out).
:- eq(N1, N2), const_range(N1), const_range(N2), N1 != N2.
:- eq(mul(0, B), Val), Val > 0.
:- eq(mul(A, 0), Val), Val > 0.
:- eq(mul(A, B), Val), const_number(B), B > 0, Val #mod @to_num(B) != 0.
:- eq(mul(A, B), Val), const_number(A), A > 0, Val #mod @to_num(A) != 0.
:- example(In, Out), not terminates(In).

is_call(call(F, Expr)):- eq(call(F, Expr), Out).

eq(Expr, Val) :-
	rule(Index, F, Arg_Expr, Expr),
	match(F, Index, Arg_Expr),
	eq(call(F, Arg_Expr), Val).

eq(A, Val - @to_num(B)) :- eq(add(A, B), Val), const_number(B), B <= Val.
eq(B, Val - @to_num(A)) :- eq(add(A, B), Val), const_number(A), A <= Val.
eq(A, Val / @to_num(B)) :- eq(mul(A, B), Val), const_number(B), B > 0.
eq(B, Val / @to_num(A)) :- eq(mul(A, B), Val), const_number(A), A > 0.

eq(A, Val + @to_num(B)) :-
	eq(sub(A, B), Val),
	const_number(B),
	const_number(Val).

eq(B, Val + @to_num(A)) :-
	eq(sub(A, B), Val),
	const_number(A),
	const_number(Val).

eq(X, Val) :- eq((X, Xs), (Val, Vals)), const_number(X), const_number(Val).
eq(Xs, Vals) :- eq((X, Xs), (Val, Vals)), const_number(X), const_number(Val).

terminates(Expr) :- next_step(Expr, Val), const(Val).
terminates(Expr) :- next_step(Expr, Term_Expr), terminates(Term_Expr).

next_step(e, In):- example(In, Out).

next_step(call(F, Args), Expr) :-
  is_next_step(call(F, Args)),
  rule(Index, F, Args, Expr),
  match(F, Index, Args).

next_step(add(A, B), B) :- is_next_step(add(A, B)), const_number(A).
next_step(add(A, B), A) :- is_next_step(add(A, B)), const_number(B).
next_step(mul(A, B), B) :- is_next_step(mul(A, B)), const_number(A).
next_step(mul(A, B), A) :- is_next_step(mul(A, B)), const_number(B).
next_step(sub(A, B), A) :- is_next_step(sub(A, B)), const_number(B).
next_step(sub(A, B), B) :- is_next_step(sub(A, B)), const_number(A).
next_step((X, Xs), Xs) 	:- is_next_step((X, Xs)), const_number(X).
is_next_step(X) :- next_step(_, X).

match(F, Index, Inputs) :-
  not smaller_match(F, Index, Inputs),
  rule(Index, F, Inputs, _),
  match_guard(F, Index, Inputs).

smaller_match(F, Index, Args) :-
  match(F, O, Args), O < Index,
  const_number(Index).
