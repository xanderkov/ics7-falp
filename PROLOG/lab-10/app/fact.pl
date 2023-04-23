factorialHelper(N, Res, Acc) :- N =< 1, Res is Acc, !.
factorialHelper(N, Res, Acc) :- UpdAcc = Acc * N, UpdN is N - 1, factorialHelper(UpdN, Res, UpdAcc).
factorial(N, Res) :- factorialHelper(N, Res, 1).

fibHelper(N, Res, _, Acc) :- N =< 2, Res is Acc.
fibHelper(N, Res, Prev, Acc) :- UpdN is N - 1, UpdAcc is Prev + Acc, fibHelper(UpdN, Res, Acc, UpdAcc).
fib(N, Res) :- fibHelper(N, Res, 1, 1).