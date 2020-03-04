man(jan).
man(piotr).
man(brajan).
man(sebastian).
woman(maria).
woman(kasia).
woman(anna).
woman(jessica).
parent(jan,sebastian).
parent(piotr,anna).
parent(maria,anna).
parent(kasia,sebastian).
parent(sebastian, brajan).
parent(anna, brajan).
parent(sebastian, jessica).
parent(anna,jessica).

father(X, Y) :- man(X), parent(X, Y), X \= Y.        % X is father of Y
mother(X, Y) :- woman(X), parent(X, Y), X \= Y.        % X is mother of Y
son(X) :- man(X), parent(Y, X), X \= Y.
sister(X, Y) :- woman(X), parent(Z, X), parent(Z, Y), X \= Y.
grandfather(X, Y) :- father(X, Z), parent(Z, Y), X \= Z, X \= Y.
siblings(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
