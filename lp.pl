sum-up-numbers-simple([], 0).
sum-up-numbers-simple([H|T], Acc) :- 
    number(H), sum-up-numbers-simple(T, total),
    Acc is H + Total.
