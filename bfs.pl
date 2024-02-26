% Define the graph as facts: graph(Node, Neighbors)
graph(a, [b, c]).
graph(b, [d, e]).
graph(c, [f]).
graph(d, []).
graph(e, [f]).
graph(f, []).

% Define the heuristic function: h(Node, Value)
h(a, 5).
h(b, 4).
h(c, 3).
h(d, 2).
h(e, 3).
h(f, 0).
% best_first_search(Node, Goal, Path)
best_first_search(Node, Goal, Path) :-
    best_first_search_helper([Node-0], Goal, [], Path).

% Base case: If the current node is the goal, reverse the path and return it
best_first_search_helper([Node-_ | _], Node, AccPath, Path) :-
    reverse([Node | AccPath], Path).

% Recursive case: Expand the most promising node and continue the search
best_first_search_helper([Node-_ | Queue], Goal, Visited, Path) :-
    findall(NextNode-Cost, (graph(Node, NextNode), \+ member(NextNode, Visited), h(NextNode, Cost)), NextNodes),
    append(Queue, NextNodes, NewQueue),
    sort(2, @=<, NewQueue, SortedQueue),
    best_first_search_helper(SortedQueue, Goal, [Node | Visited], Path).

% Example usage:
% ?- best_first_search(a, f, Path).
% Output: Path = [a, c, f].
