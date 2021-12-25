% defining list
primes([2, 3, 5, 7, 11, 13, 17, 19, 23, 29]).

is_prime(P) :-
    primes(L),
    member(P, L).

% defining range
range(X,X,[]).
range(X,Y,[X|Xs]) :-
    X =< Y,
    Z is X+1,
    range(Z,Y,Xs).

% first statement: S knows that P doesn't know.
is_sum_of_primes(S):-
    is_prime(X),
    is_prime(Y),
    0 is S-X-Y.

s_can_sure_p_does_not_know(S) :-
    S < 31,
    not(is_sum_of_primes(S)).

s_can_not_sure(S) :-
    not(s_can_sure_p_does_not_know(S)).

% second statement: P stil doesn't know the answer.
sum_candidates_for_p(X) :-
    range(4,101,L),
    exclude(s_can_not_sure, L, X).

product_candidates_from_sum(S,OUT):-
    End is div(S,2)+1,
    range(2,End,L),
    maplist([In,Out]>>(Out is (S-In)*In), L,OUT).

product_candidates_foreach_sum_candidate(X):-
    sum_candidates_for_p(S),
    maplist([Sum,Out]>>product_candidates_from_sum(Sum,Out),S,X).