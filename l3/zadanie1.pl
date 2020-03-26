suma([], 0).
suma([H|T], Sum) :-
    suma(T, Rest),
    Sum is H + Rest.

sred(L, M) :-
    suma(L, S),
    length(L, N),
    M is S/N.

wariancja(L, D) :- 
    sred(L, Sr), rozn2(L, H, Sr), suma(H, S), length(H,N),
    D is S/N.

rozn2([], [], _).
rozn2([H|T], [R|T1], Sr) :- 
    R is (H - Sr)*(H - Sr), 
    rozn2(T, T1, Sr).