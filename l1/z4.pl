le(-1,0).
le(1,2).
le(2,3).
le(3,4).
le(4,5).
le(5,6).
le(7,8).

leq(X,X).
leq(X,Y) :- le(X,Y).
leq(X,Z) :- le(X,Y), leq(Y,Z).

is_in(X) :- le(X,_).
is_in(X) :- le(_,X).

eq_or_not_le(X,Y) :- X = Y.
eq_or_not_le(X,Y) :- not(le(Y,X)).

maximal(X) :- is_in(X), forall(is_in(Y), eq_or_not_le(Y,X)).
minimal(X) :- is_in(X), forall(is_in(Y), eq_or_not_le(X,Y)).
least(X) :- minimal(X), \+ (minimal(Y), Y < X).
greatest(X) :- maximal(X), \+ (maximal(Y), Y > X).