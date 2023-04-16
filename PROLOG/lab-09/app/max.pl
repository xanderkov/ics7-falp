max2(A, B, B)    :- B >= A.
max2(A, B, A)    :- A >= B.

max3(A, B, C, A)    :- A >= B, A >= C.
max3(A, B, C, B)    :- B >= A, B >= C.
max3(A, B, C, C)    :- C >= A, C >= B.

max2clip(A, B, B)    :- B >= A, !.
max2clip(A, _, A).

max3clip(A, B, C, A)    :- A >= B, A >= C, !.
max3clip(_, B, C, B)    :- B >= C, !.
max3clip(_, _, C, C).