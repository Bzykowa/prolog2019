left_of(pencil,hourglass).
left_of(bicycle,hourglass).
left_of(hourglass,butterfly).
left_of(hourglass,camera).
left_of(butterfly,fish).
left_of(camera,fish).
above(camera,butterfly).
above(bicycle,pencil).

left(X,Y) :- left_of(X,Y).
left(X,Z) :- left_of(X,Y), left(Y,Z).

on(X,Y) :- above(X,Y).
on(X,Z) :- above(X,Y), on(Y,Z).

below(X,Y) :- on(Y,X).

right_of(X,Y) :- left(Y,X).

higher(X,Y) :- on(X,Y).
higher(X,Z) :- (on(X,Y), left(Y,Z)) ; (on(X,Y), right_of(Y,Z)).
