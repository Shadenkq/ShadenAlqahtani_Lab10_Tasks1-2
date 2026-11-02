% Task 1

%Square
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% Rectangle
rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% Triangle
triangle(A, B, C, Base, Height, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C.
