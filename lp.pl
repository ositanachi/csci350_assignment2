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
sum-up-numbers-general([], 0). 
sum-up-numbers-general([[]], 0). /*For nested lists*/
    sum-up-numbers-general([H|T], N) :-
        number(H), 
        sum-up-numbers-general(T, Total),
        /*N=H+Total*/
        N is H + Total. /*Recursion...adding it to the previous*/
        /*Need to account for letters*/
        sum-up-numbers-general([H|T], N) :-
            atom(H),
            /*If it is a letter, ignore and continue with tail*/
            sum-up-numbers-general(T, N).
        sum-up-numbers-general([H|T], N) :-
            \+number(H),
            /*Add number and continue with next item in list*/
            sum-up-numbers-general(T, N).

/*Number 3*/
/*Testing helper function to identify smallest...*/
least(H, [H]).
least(E, [H|T]) :-
    least(E, T),
    Head =< E,
    E is H.
min-above-min(L1, L2, N).


/*Number 4*/

