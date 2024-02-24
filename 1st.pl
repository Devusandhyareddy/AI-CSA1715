sum(1, 1).
sum(N, Sum) :-
    N > 1,           % Ensure N is greater than 1
    N1 is N - 1,     % Decrement N by 1 to get N-1
    sum(N1, Sum1),   % Calculate sum from 1 to N-1
    Sum is Sum1 + N. % Calculate sum from 1 to N.
