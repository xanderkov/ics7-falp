list_length(List, Length) :- list_length(List, 0, Length).
list_length([], Acc, Acc) :- !.
list_length([_|T], Acc, Length) :- !,
    NewAcc is Acc + 1,
    list_length(T, NewAcc, Length).

sum_list(List, Sum) :- sum_list(List, 0, Sum), !.
sum_list([], Acc, Acc) :- !.
sum_list([H|T], Acc, Sum) :- 
    NewAcc is Acc + H,
    sum_list(T, NewAcc, Sum).

sum_even_positions(List, Sum) :- !,
    sum_even_positions(List, 0, Sum).

sum_even_positions([], Sum, Sum) :- !.
sum_even_positions([_], Sum, Sum).
sum_even_positions([_, X|T], Acc, Sum) :-
    NewAcc is Acc + X,
    sum_even_positions(T, NewAcc, Sum).

filter_gt_y([], _, []) :- !.
filter_gt_y([X|Xs], Y, [X|Ys]) :- X > Y, !, filter_gt_y(Xs, Y, Ys).
filter_gt_y([X|Xs], Y, Ys) :- X =< Y, !, filter_gt_y(Xs, Y, Ys).

delete_elem_once(_, [], []) :- !.
delete_elem_once(X, [X|Tail], Tail) :- !.
delete_elem_once(X, [Y|Tail], [Y|Tail1]) :-
    delete_elem_once(X, Tail, Tail1).

delete_all(_, [], []) :- !.
delete_all(X, [X|Tail], Result) :- !,
    delete_all(X, Tail, Result).
delete_all(X, [Y|Tail], [Y|Tail1]) :- delete_all(X, Tail, Tail1).

concat([], L, L) :- !.
concat([H|T], L, [H|Result]) :- concat(T, L, Result).