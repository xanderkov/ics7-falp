concat(L, [], L).
concat([], L, L).
concat([H1|T1], [H2 | T2], [H1 | Res]) :-  
    H < H2,
    concat(T1, [H2|T2], Res), !.

concat([H1|T1], [H2 | T2], [H1 | Res]) :-  
    concat([H1 | T1], T2, Res).