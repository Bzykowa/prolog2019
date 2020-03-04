divisible(X,Y) :- 0 is X mod Y.
divisible(X,Y) :- X > Y + 1, divisible(X, Y + 1).

isPrime(2) :- true.
isPrime(X) :- X < 2, false.
isPrime(X) :- not(divisible(X,2)).

prime(LO,HI,N) :- X is HI-LO+1, loop(LO,X).
loop(LO,0).
loop(LO,X) :- 
    X > 0, ((isPrime(LO), write('X = '), write(LO), nl); (\+ isPrime(LO))),
    LO1 is LO + 1, X1 is X - 1, loop(LO1,X1).