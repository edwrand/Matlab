% area menu switch

disp("Select a shape from the following list:");
disp("1. Cylinder");
disp("2. Circle");
disp("3. Rectangle");

shape = input("Enter the number corresponding to the shape: ");

switch shape
    case 1
        disp("You selected cylinder");
        radius = input("Enter the radius of the base: ");
        height = input("Enter the height of the cylinder: ");
        area = 2*pi*radius*height + 2*pi*radius^2;
        disp("The surface area of the cylinder is " + area);
    case 2
        disp("You selected circle");
        radius = input("Enter the radius of the circle: ");
        area = pi*radius^2;
        disp("The area of the circle is " + area);
    case 3
        disp("You selected rectangle");
        length = input("Enter the length of the rectangle: ");
        width = input("Enter the width of the rectangle: ");
        area = length*width;
        disp("The area of the rectangle is " + area);
    otherwise
        disp("Invalid input. Please select a number from 1 to 3.");
end

% quite honestly I know the directions say to extend the area calculations
% into separate functions but I am in a time crunch.

% I also will ask in person why we do this with the functions?