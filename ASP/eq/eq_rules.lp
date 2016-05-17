#begin_lua
function map(func, array)
  local new_array = {}
  for i,v in ipairs(array) do
    new_array[i] = func(v)
  end
  return new_array
end

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
    elseif name == "" then
      return Val.new(Val.FUNC, name, map(eval, args))
    else
      return 0
    end
  else
    return 0
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
#hide terminates(Expr).
#hide next_step(Expr, Next_Expr).

const_number(0..10).

%type(call(f, X), Expr) :- X = (sub(3, 1), mul(3, 1)), rule(2, f, @eval(X), Expr).

eq(In, Out) :- example(In, Out).
:- eq(N1, N2), const_number(N1), const_number(N2), N1 != N2.
:- eq(mul(0, B), Val), Val > 0.
:- eq(mul(A, 0), Val), Val > 0.
:- example(In, Out), not terminates(In).
:- example(In, Out_1), example(In, Out_2), Out_1 != Out_2.

example(call(f, In), Out) :- eq(call(f, Expr), Out), In = @eval(Expr).

eq(Expr, Val) :- rule(Index, F, Eval_Expr, Expr), match(F, Index, Eval_Expr), eq(call(F, Arg_Expr), Val), Eval_Expr = @eval(Arg_Expr), const_number(Eval_Expr).
eq(A, Val - B) :- eq(add(A, B), Val), const_number(B), B < (Val + 1).
eq(B, Val - A) :- eq(add(A, B), Val), const_number(A), A < (Val + 1).
eq(A, Val / B) :- eq(mul(A, B), Val), const_number(B), B > 0.
eq(B, Val / A) :- eq(mul(A, B), Val), const_number(A), A > 0.
eq(A, Val + B) :- eq(sub(A, B), Val), const_number(B), const_number(Val).
eq(B, Val + A) :- eq(sub(A, B), Val), const_number(A), const_number(Val).

terminates(Expr) :- next_step(Expr, Val), const_number(Val).
terminates(Expr) :- next_step(Expr, Term_Expr), terminates(Term_Expr).

next_step(e, In):- example(In, Out).
next_step(call(F, Args), Expr) :- next_step(_, call(F, Args)), rule(Index, F, Eval_Expr, Expr), match(F, Index, Eval_Expr), Eval_Expr = @eval(Args), const_number(Eval_Expr).
next_step(add(A, B), B) :- next_step(_, add(A, B)), const_number(A).
next_step(add(A, B), A) :- next_step(_, add(A, B)), const_number(B).
next_step(mul(A, B), B) :- next_step(_, mul(A, B)), const_number(A).
next_step(mul(A, B), A) :- next_step(_, mul(A, B)), const_number(B).
next_step(sub(A, B), A) :- next_step(_, sub(A, B)), const_number(B).
next_step(sub(A, B), B) :- next_step(_, sub(A, B)), const_number(A).

match(F, Index, Inputs) :- not smaller_match(F, Index, Inputs), rule(Index, F, Inputs, _), match2(F, Index, Inputs).
smaller_match(F, Index, Args) :- match(F, O, Args), O < Index, const_number(Index).
