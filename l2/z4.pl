reguła(X, +, Y, Y) :-
    number(X),
    X =:= 0, !.

reguła(X, +, Y, X) :-
    number(Y),
    Y =:= 0, !.

reguła(X, *, Y, Y) :-
    number(X),
    X =:= 1, !.

reguła(X, *, Y, X) :-
    number(Y),
    Y =:= 1, !.

reguła(X, *, _, 0) :-
    number(X),
    X =:= 0, !.

reguła(_, *, Y, 0) :-
    number(Y),
    Y =:= 0, !.

reguła(X, +, -X, 0) :- !.

reguła(X, -, X, 0) :- !.

reguła(X, /, X, 1) :- 
    \+ (number(X), X =:= 0), !.

reguła(X, Op, Y, Res) :- 
    Res =.. [Op, X, Y].

uprość(Wyrażenie, Wyrażenie) :- Wyrażenie =.. [_], !.
uprość(Wyrażenie, Uproszczone) :-
    Wyrażenie =.. [Op, X, Y],
    uprość(X, XS),
    uprość(Y, YS),
    reguła(XS, Op, YS, Uproszczone).
