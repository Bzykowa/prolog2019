on(1,2).
on(2,3).
on(3,4).
on(4,5).

above(X,Y) :- on(X,Y).
above(X,Z) :- on(X,Y), above(Y,Z).
