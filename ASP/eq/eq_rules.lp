#begin_lua

function eval(x)
  if Val.type(x) == Val.NUM then
    return x
  elseif Val.type(x) == Val.FUNC then
    local name = x:name()
    local args = x:args()
    if name == "add" then
      return eval(args[1]) + eval(args[2])
    elseif name == "sub" then
      return eval(args[1]) - eval(args[2])
    elseif name == "mul" then
      return eval(args[1]) * eval(args[2])
    else
      return 1
    end
  else
    return 1
  end
end

#end_lua.

#hide const_number(N).
#hide expr_const(N).
#hide num_rules(N).
#hide match(F, Index, Args).
#hide match2(F, Index, Args).
#hide smaller_match(F, Index, Args).
#hide rule(R, F, Index, Expr).
#hide eq(X, Y).
#hide curr_depth(Expr, D).

const_number(0..10).

eq(In, Out) :- example(In, Out).
:- eq(N1, N2), const_number(N1), const_number(N2), N1 != N2.
:- curr_depth(Expr, N), N >= 6.

eq(Expr, Val) :- rule(Index, F, @eval(Arg_Expr), Expr), match(F, Index, @eval(Arg_Expr)), eq(call(F, Arg_Expr), Val).
eq(A, Val - B) :- eq(add(A, B), Val), const_number(B).
eq(B, Val - A) :- eq(add(A, B), Val), const_number(A).
eq(A, Val / B) :- eq(mul(A, B), Val), const_number(B), B != 0.
eq(B, Val / A) :- eq(mul(A, B), Val), const_number(A), A != 0.
eq(A, Val + B) :- eq(sub(A, B), Val), const_number(B).
eq(B, Val + A) :- eq(sub(A, B), Val), const_number(A).

curr_depth(Expr, 1) :- example(Expr, Val).
curr_depth(Expr, N + 1) :- rule(Index, F, @eval(Arg_Expr), Expr), match(F, Index, @eval(Arg_Expr)), curr_depth(call(f, Arg_Expr), N),  N < 6.
%curr_depth(Arg_Expr, N + 1) :- curr_depth(call(f, Arg_Expr), N).
curr_depth(A, N) :- curr_depth(add(A, B), N).
curr_depth(B, N) :- curr_depth(add(A, B), N).
curr_depth(A, N) :- curr_depth(sub(A, B), N).
curr_depth(B, N) :- curr_depth(sub(A, B), N).
curr_depth(A, N) :- curr_depth(mul(A, B), N).
curr_depth(B, N) :- curr_depth(mul(A, B), N).

match(F, Index, Inputs) :- not smaller_match(F, Index, Inputs), rule(Index, F, Inputs, _), match2(F, Index, Inputs).
smaller_match(F, Index, Args) :- match(F, O, Args), O < Index, const_number(Index).
