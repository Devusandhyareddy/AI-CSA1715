planet(mercury, 0.39, 0.382, 0).
planet(venus, 0.72, 0.949, 0).
planet(earth, 1.0, 1.0, 1).
planet(mars, 1.52, 0.532, 2).
planet(jupiter, 5.20, 11.209, 79).
planet(saturn, 9.58, 9.449, 82).
planet(uranus, 19.20, 4.007, 27).
planet(neptune, 30.05, 3.883, 14).

planet_characteristics(Name, Distance_from_sun, Diameter, Moons) :-
    planet(Name, Distance_from_sun, Diameter, Moons).

% Example usage:
% ?- planet_characteristics(earth, Distance, Diameter, Moons).
% Distance = 1.0,
% Diameter = 1.0,
% Moons = 1.
