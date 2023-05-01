factorialHelper(N, Res, Acc) :- N =< 1, Res is Acc, !.
factorialHelper(N, Res, Acc) :- UpdAcc = Acc * N, UpdN is N - 1, factorialHelper(UpdN, Res, UpdAcc).
factorial(N, Res) :- factorialHelper(N, Res, 1).

fibHelper(N, Res, _, Acc) :- N =< 2, Res is Acc.
fibHelper(N, Res, Prev, Acc) :- UpdN is N - 1, UpdAcc is Prev + Acc, fibHelper(UpdN, Res, Acc, UpdAcc).
fib(N, Res) :- fibHelper(N, Res, 1, 1).


Append([_|T], List, [_|Res]) :- Append(T, List, Res), !.
Append([], List, List).
ListGreaterThen([H|T], N, [H|Res]) :- H > N, !, ListGreaterThen(T, N, Res), !.
ListGreaterThen([_|T], N, Res) :- ListGreaterThen(T, N, Res), !.
ListGreaterThen([], _, []).
ListLeaveOdd([H|[_|T]], [H|Res]) :- ListLeaveOdd(T, Res), !.
ListLeaveOdd(List, List).
ListRemoveElem([H|T], Item, Res) :- Item = H, !, ListRemoveElem(T, Item, Res).
ListRemoveElem([H|T], Item, [H|Res]) :- ListRemoveElem(T, Item, Res), !.
ListRemoveElem(List, _, List).
ListIncludes([_|T], Item) :- ListIncludes(T, Item), !.
ListIncludes([H|_], H).
ListToSet([H|T], Res) :- ListIncludes(T, H), !, ListToSet(T, Res).
ListToSet([H|T], [H|Res]) :- ListToSet(T, Res), !.
ListToSet(List, List).