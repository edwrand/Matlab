%--------------------------------------------------------------------------
%
%   Applied Programming
%   TCU Engr 10573
%
%   Edward Randall
%   Homework #6
%   Jan 22nd 2023
%
%--------------------------------------------------------------------------

clear, clc
format compact
format long

% problem number 1
% Creating the 'cars' structure array
cars(1).name = 'Car1';
cars(1).numberOfWheels = 4;
cars(1).numberOfDoors = 4;
cars(1).maxSpeed = 150;

cars(2).name = 'Car2';
cars(2).numberOfWheels = 4;
cars(2).numberOfDoors = 2;
cars(2).maxSpeed = 180;

cars(3).name = 'Car3';
cars(3).numberOfWheels = 4;
cars(3).numberOfDoors = 4;
cars(3).maxSpeed = 200;

% Creating the 'trucks' structure array
trucks(1).name = 'Truck1';
trucks(1).numberOfWheels = 6;
trucks(1).bedLength = 10;
trucks(1).maxLoad = 15000;

trucks(2).name = 'Truck2';
trucks(2).numberOfWheels = 6;
trucks(2).bedLength = 12;
trucks(2).maxLoad = 18000;

trucks(3).name = 'Truck3';
trucks(3).numberOfWheels = 8;
trucks(3).bedLength = 14;
trucks(3).maxLoad = 20000;

% Creating the 'motorcycles' structure array
motorcycles(1).name = 'Motorcycle1';
motorcycles(1).numberOfWheels = 2;
motorcycles(1).handlebarWidth = 20;
motorcycles(1).maxSpeed = 180;

motorcycles(2).name = 'Motorcycle2';
motorcycles(2).numberOfWheels = 2;
motorcycles(2).handlebarWidth = 22;
motorcycles(2).maxSpeed = 200;

motorcycles(3).name = 'Motorcycle3';
motorcycles(3).numberOfWheels = 2;
motorcycles(3).handlebarWidth = 24;
motorcycles(3).maxSpeed = 220;

% Displaying the structure arrays
disp(cars);
disp(trucks);
disp(motorcycles);


% problem number 2
hw7_2();

% problem number 3
hw7_3();
% image() and imagesc() differ in how they map colors

% problem number 4


