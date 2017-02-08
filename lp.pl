%Number1
sum-up-numbers-simple([], 0).
    sum-up-numbers-simple([H|T], N) :-
    number(H), sum-up-numbers-simple(T, Total),
    N is H + Total.
    sum-up-numbers-simple([H|T], N):-
        \+number(H), sum-up-numbers-simple(T, N).
