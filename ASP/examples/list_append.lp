%*

append [] xs = xs
append h:xs, ys = h : append(xs, ys).

*%

rule(1, app, (e, Xs), Xs) :- input(call(app, (e, Xs))).
rule(2, app, ((H, Xs), Ys), (H, call(app, (Xs, Ys)))) :- input(call(app, ((H, Xs), Ys))).

match2(app, 1, (e, Xs)) :- rule(1, app, (e, Xs), _).
match2(app, 2, ((H, Xs), Ys)) :- rule(2, app, ((H, Xs), Ys), _).

input(call(app, ((1, (2, e)), (3, (4, e))))).
