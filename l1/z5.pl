le(-1,0).
le(1,2).
le(2,3).
le(3,4).
le(4,5).
le(5,6).
le(7,8).

leq(X,X).   %reflexive
leq(X,Y) :- (le(X,Y) ; le(Y,X)), X = Y. %antisymmetric
leq(X,Y) :- le(X,Y).    %transitive
leq(X,Z) :- le(X,Y), leq(Y,Z).

reflexive(R) :- call(R,X,X).
antisymmetric(R):-
    \+ (call(R, X, Y), call(R, Y, X), Y \= X).
transitive(R) :- \+ (\+ call(R, X, Y); \+ call(R, Y, Z)).

partial_order :- reflexive(leq), antisymmetric(leq), transitive(leq).