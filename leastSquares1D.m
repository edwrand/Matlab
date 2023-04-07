% Project 2 - Matlab Least Squares Project
clear all 
close all

% 1d data

[x1, y1] = generate_linear_1d_data(true);

% Fit a plane to the data

for i = 1: length(x1)
    A(i,1) = x1(i);
    A(i,2) = 1;
    y(i,1) = y1(i);
end

% inverse of A
pA = pinv(A);
pI = pinv(y1)

unknowns = pA*y;
m = unknowns(1);
b = unknowns(2);

yfit = m*x1+b;

scatter(x1, y1, 'r');
hold on;
scatter(x1, yfit, 'b');