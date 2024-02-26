% Define the fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(watermelon, green).


fruit_color_query(Fruit, Color) :-
    fruit_color(Fruit, Color). % Directly unifies Fruit with its Color

% Example usage:
%
% Query: What color is the apple?
% ?- fruit_color_query(apple, Color).
% Output: Color = red
