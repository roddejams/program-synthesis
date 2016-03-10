#begin_lua
function to_num(x)
  if Val.type(x) == Val.NUM then
    return x
  else
    return 0
  end
end
#end_lua.

%%%%

const_number(0..10).
const(C) :- const_number(C).
const(e).

#domain max_depth(MaxDepth).

#hide const(N).
#hide const_number(N).
#hide rule(R, F, Args, Expr).
#hide match(F, Index, Args).
#hide match2(F, Index, Args).
#hide smaller_match(F, Index, Args).
#hide eval_with(Expr, Args).
#hide value_with(Expr, Out, Args).
#hide num_rules(N).
#hide num_generated_rules(N).
#hide num_generated_wheres(N).
#hide num_generated_wheres_x1(N).
#hide num_generated_wheres_x2(N).
#hide check_if_complex(Expr).
#hide complex(Expr).
#hide n_complex(Expr).
#hide value(Expr, Val).

#hide expr_const(N).

#hide input(In).
#hide where(X, Args, Expr).
#hide output(In, Out).
%%%%

%%%% LANGUAGE BIAS %%%%

input(In) :- example(In, _).
:- not output(In, Out), example(In, Out).

%:- where(X, Args, Expr_1), where(X, Args, Expr_2), Expr_1 != Expr_2.
%:- rule(N, F, Args, Expr_1), rule(N, F, Args, Expr_2), Expr_1 != Expr_2.

%%%% BACKGROUND KNOWLEDGE %%%%
% Instance examples:
%value_with(call(tailFac, (x1, x2) ), 6, (3, 1)) :- eval_with(call(F, (x1, x2)), (3, 1)), output(call(F, (3,1)), 6), value_with((x1, x2), (3,1), (3,1)).
%value_with(call(tailFac, (x1, x2) ), 6, (2, 3)) :- eval_with(call(F, (x1, x2)), (2, 3)), output(call(F, (3,1)), 6), value_with((x1, x2), (3,1), (3,1)).


output(call(F, Args), Out) :- rule(Index, F, Args, Expr), match(F, Index, Args), value_with(Expr, Out, Args).%, const(Out).

value_with(mul(A, B), @to_num(V1) * @to_num(V2), Args) :- eval_with(mul(A, B), Args), value_with(A, V1, Args), value_with(B, V2, Args), const_number(@to_num(V1)*@to_num(V2)).
value_with(sub(A, B), @to_num(V1) - @to_num(V2), Args) :- eval_with(sub(A, B), Args), value_with(A, V1, Args), value_with(B, V2, Args), const_number(@to_num(V1)-@to_num(V2)).
value_with(add(A, B), @to_num(V1) + @to_num(V2), Args) :- eval_with(add(A, B), Args), value_with(A, V1, Args), value_with(B, V2, Args), const_number(@to_num(V1)+@to_num(V2)).
value_with(call(F, Args_new), Out, Args_old) :- eval_with(call(F, Args_new), Args_old), output(call(F, Inputs), Out), value_with(Args_new, Inputs, Args_old).
value_with((A, B), (V1, V2), Args) :- eval_with((A, B), Args), value_with(A, V1, Args), value_with(B, V2, Args).
value_with(N, N, Args) :- eval_with(N, Args), const(N).
value_with(X, V, Args) :- eval_with(X, Args), where(X, Args, Expr), value_with(Expr, V, Args).

value_with(X, V, Args) :- eval_with(X, Args), value(X, V).


value(mul(A, B), @to_num(V1) * @to_num(V2)) :- const_number(V1), const_number(V2), n_complex(mul(A, B)), value(A, V1), value(B, V2), const_number(@to_num(V1)*@to_num(V2)).
value(sub(A, B), @to_num(V1) - @to_num(V2)) :- const_number(V1), const_number(V2), n_complex(sub(A, B)), value(A, V1), value(B, V2), const_number(@to_num(V1)-@to_num(V2)).
value(add(A, B), @to_num(V1) + @to_num(V2)) :- const_number(V1), const_number(V2), n_complex(add(A, B)), value(A, V1), value(B, V2), const_number(@to_num(V1)+@to_num(V2)).
value((A, B), (V1, V2)) :- n_complex((A, B)), value(A, V1), value(B, V2).
value(N, N) :- n_complex(N), const_number(N).

eval_with(Expr, Inputs) :- input(call(F, Inputs)), rule(Index, F, Inputs, Expr), match(F, Index, Inputs).
eval_with(Expr, Args) :- eval_with(X, Args), where(X, Args, Expr).

eval_with(Args_new, Args_old) :- complex(Args_new), eval_with(call(F, Args_new), Args_old).
eval_with(A, Args) :- complex(A), eval_with((A, B), Args).
eval_with(B, Args) :- complex(B), eval_with((A, B), Args).
eval_with(A, Args) :- complex(A), eval_with(mul(A, B), Args).
eval_with(B, Args) :- complex(B), eval_with(mul(A, B), Args).
eval_with(A, Args) :- complex(A), eval_with(sub(A, B), Args).
eval_with(B, Args) :- complex(B), eval_with(sub(A, B), Args).
eval_with(A, Args) :- complex(A), eval_with(add(A, B), Args).
eval_with(B, Args) :- complex(B), eval_with(add(A, B), Args).


check_if_complex(Expr) :- eval_with(Expr, _).

check_if_complex(Args) :- check_if_complex(call(F, Args)).
check_if_complex(A) :- check_if_complex((A, B)).
check_if_complex(B) :- check_if_complex((A, B)).
check_if_complex(A) :- check_if_complex(mul(A, B)).
check_if_complex(B) :- check_if_complex(mul(A, B)).
check_if_complex(A) :- check_if_complex(sub(A, B)).
check_if_complex(B) :- check_if_complex(sub(A, B)).
check_if_complex(A) :- check_if_complex(add(A, B)).
check_if_complex(B) :- check_if_complex(add(A, B)).

complex(x1;x2).

complex((A, B))        :- complex(A), check_if_complex((A, B)).
complex((A, B))        :- complex(B), check_if_complex((A, B)).
complex(mul(A, B))     :- complex(A), check_if_complex(mul(A, B)).
complex(mul(A, B))     :- complex(B), check_if_complex(mul(A, B)).
complex(sub(A, B))     :- complex(A), check_if_complex(sub(A, B)).
complex(sub(A, B))     :- complex(B), check_if_complex(sub(A, B)).
complex(add(A, B))     :- complex(A), check_if_complex(add(A, B)).
complex(add(A, B))     :- complex(B), check_if_complex(add(A, B)).

n_complex(A) :- const(A), check_if_complex(A).

n_complex(call(F, Args)) :- n_complex(Args), check_if_complex(call(F, Args)).
n_complex((A, B))        :- n_complex(A), n_complex(B), check_if_complex((A, B)).
n_complex(mul(A, B))     :- n_complex(A), n_complex(B), check_if_complex(mul(A, B)).
n_complex(sub(A, B))     :- n_complex(A), n_complex(B), check_if_complex(sub(A, B)).
n_complex(add(A, B))     :- n_complex(A), n_complex(B), check_if_complex(add(A, B)).



input(call(F, Inputs)) :- eval_with(call(F, Args_new), Args_old), value_with(Args_new, Inputs, Args_old).

match(F, Index, Inputs) :- not smaller_match(F, Index, Inputs), rule(Index, F, Inputs, _), match2(F, Index, Inputs).
smaller_match(F, Index, Args) :- match(F, O, Args), O < Index, const(Index).




