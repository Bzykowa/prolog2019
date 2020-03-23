jednokrotnie(X, L) :- 
        select(X,L,R),
        \+ member(X,R).

dwukrotnie(X, L) :-
        select(X,L,R),
        select(X,R,S),
        \+ member(X,S).

