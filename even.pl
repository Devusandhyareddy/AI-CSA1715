% Base case: Sum of even numbers up to 0 is 0
sum_even_numbers(0, 0).

% Recursive rule: Sum of even numbers up to N is Sum1 plus N if N is even
sum_even_numbers(N, Sum) :-
    N > 0,
    N mod 2 =:= 0,
    N1 is N - 2,
    sum_even_numbers(N1, Sum1),
    Sum is Sum1 + N.

% Recursive rule: If N is odd, skip it and calculate the sum for N-1
sum_even_numbers(N, Sum) :-
    N > 0,
    N mod 2 =:= 1,
    N1 is N - 1,
    sum_even_numbers(N1, Sum).

% Example usage: sum_even_numbers(10, Result).
