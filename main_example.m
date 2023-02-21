%--------------------------------------------------------------------------
% Main calling program for the project, "Calculating Pi"
%
% John Lusk
% Applied Programming, Matlab
% Spring 2023
%--------------------------------------------------------------------------

clear, clc
close all
format long
format compact

% archimedes
%circumference = input("Enter a circumference value: ", 's')
%diameter = input("Enter a diameter value: ", 's')

% - Gregory-Leibniz
% Code goes here FOR GREGORY
leibniz = leibniz(1000)


% - Mahadva-Leibniz
madhava = madhava(1000)

% - Wallis
% Code goes here
wallace = wallace(1000)

% - Euler
% Code goes here
euler = euler(100)


% - Nilakantha
% Code goes here

% - BBP
% Code goes here

% - Monte Carlo
% Code goes here

% Output Display
% Plot Pi estimates, error, time, etc.
