%--------------------------------------------------------------------------
%
%   Applied Programming
%   TCU Engr 10573
%
%   Edward Randall
%   Homework #1
%   Jan 22nd 2023
%
%--------------------------------------------------------------------------

clear, clc
format compact
format long

% Exercise 1
% pulled the kilos to lbs from google
pounds = 10;
kilos = pounds * 0.453592;
kilos;
% kilos came out to be 4.5359

% Exercise 2
% using help function on some functions
% fix
help fix;
% fix rounds whatever value passed to the nearest integers towards zero
% floor
help floor;
% floor rounds towards whatever value passed towards -infinity
% ceil
help ceil;
% ceil does the opposite and rounds towards positive infinity. Is this
% short for ceiling?
% round
help round;
% the round function rounds towards the nearest decimal or integer.
% Additional parameters can be added to specify a digit place to round to,
% handle significant figures.
% mod
help mod;
% mod is the modulo operator which divides and returns the leftover value
% if any. 2 mod 2 is 0
% rem
help rem;
% rem is remainder after division. It differs from mod when the signs of
% the input values are different.
% sign
help sign;
% this is the signum function. it will return 1 if X > 0. 0 if X = 0 and -1
% if X < 0.
% abs
help abs;
% abs is absolute value of whatever value is passed. If X is complex it
% will return the magnitude of the elements of X

% Exercise 3a and 3b
format long;
pi;
% default pi uses 3.1416
% long format uses 3.141592653589793

% Exercise 4
% double = double-precision arrays
% single = single-precision arrays
% int8 = 8-bit signed integer
% int16 = 16-bit signed integer
% int32 = 32-bit signed integer
% int64 = 64-bit signed integer
% uint8 = 8-bit unsigned integer
% uint16 = 16-bit unsigned integer
% uint32 = 32-bit unsigned integer
% uint64 = 64-bit unsigned integer
% NaN = not a number

% Exercise 5
% largest number possible to store in each
% by default all numerical data will be stored as double precision numbers
% double = -1.7976932348623e308 to -4.94065645841247e-324 and the same
% unsigned range
% single = -3.402823e38 to -1.401298e-45 and 1.401298e-45 to 3.402823e38
% uint8 = range from 0 to 255
% uint16 = range from 0 to 65535
% uint32 = range from 0 to 42944967295
% int8 = range from -128 to 127
% int16 = range from -32768 to 32767
% int32 = range from -2147483648 to 2147483647

% Exercise 6
first = 1/2^3;
% we would do 2^3 first then divide out to get 0.125000000
second = 10>2 + 4;
% this will return a boolean evaluating 10 against 2+4. 10 is greater than
% 6 so it would eval to true
third = 6 > 4 > 3;
% honestly a little confused by this one, looking in my notes
fourth = 1+5 / 2;
% 5/2 then add 1

% Exercise 7
first1 = nthroot(17,3);
% evals to 2.571281590658235
second2 = 2^11;
% evals to 2048
third3 = sin(2*pi);
% -2.449293598294706e-16
fourth4 = exp(-3);
% evals to 0.049787068367864

% Exercise 8
% 8a
N = 100;
a = 0;
b = 100;
r = (b-a).*rand(N,1) + a;
% 8b
N = 100;
a = -40;
b = 20;
r = (b-a).*rand(N,1) + a;
% 8c
randi([10 100],5,1);
% 8d
randi([0 20],5,1);
% 8e
a = 4;
b = 7;
y = a.*randn(1000,1) + b;

% Exercise 9
deg2r = deg2rad(140);
% evals to 2.443460952792061

% Exercise 10
a = 10;
b = 7;
c = sqrt(a^2 + b^2);
% c = 12.206555615733702

% Exercise 11
G = 6.67 * 10^-11;
m1 = 6.0 * 10^24;
m2 = 7.35 * 10^22;
dist = 384400000;
F = G*(m1 * m2)/dist^2;
% evals to 1.990662637882625e+20

% Exercise 12
x1 = -4 * pi;
x2 =  5 * pi;
vec = linspace(x1,x2,100);

% Exercise 13
y = cos(vec);

% Exercise 14
row_vec = 20:-3:-10;

% Exercise 15
% In general, you can generate N random numbers in the interval (a,b) with the formula r = a + (b-a).*rand(N,1).
help rand;
r = 0 + (10-0)*rand(60,1)';

% Exercise 16
% Create a 3 x 4 matrix of normally distributed random numbers whose mean is 3 and standard deviation is 2.
a16 = 2;
b16 = 3;
ex16 = a16.*randn(3,4) + b16;