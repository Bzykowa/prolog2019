arc(a,b).
arc(b,a).
arc(b,c).
arc(c,d).

osiągalny(X, Y) :- osiągalny_dfs(X, [X], Y).

osiągalny_dfs(X, _, X).
osiągalny_dfs(X, Odwiedzony, Y) :-
    arc(X, Z),
    \+ member(Z, Odwiedzony),
    osiągalny_dfs(Z, [Z|Odwiedzony], Y).