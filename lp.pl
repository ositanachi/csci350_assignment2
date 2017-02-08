/*Number 1*/
sum-up-numbers-simple([], 0). 
    /* */
    sum-up-numbers-simple([H|T], N) :-
    number(H), sum-up-numbers-simple(T, Total),
    /*N=H+Total*/
    N is H + Total.
    /*Recursion...adding it to the previous*/
    sum-up-numbers-simple([H|T], N):-
        \+number(H), sum-up-numbers-simple(T, N).

/*Number 2*/
sum-up-numbers-simple([], 0). 
sum-up-numbers-general([[]], 0). /*For nested lists*/
sum-up-numbers-simple([H|T], N) :-
    number(H), sum-up-numbers-simple(T, Total),
    /*N=H+Total*/
    N is H + Total.
    /*Recursion...adding it to the previous*/
    sum-up-numbers-simple([H|T], N):-
        \+number(H), sum-up-numbers-simple(T, N).

