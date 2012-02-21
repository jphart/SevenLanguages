myreverse([],[]).
myreverse([X],[X]).
myreverse([H|T], R) :- myreverse(T, X), append(X, [H], R).


smallest([], 0).
smallest([X], X).
smallest([H|T], X) :- H =< X, smallest(T, H).
smallest([H|T], X) :- H >= X, smallest(T, X).
