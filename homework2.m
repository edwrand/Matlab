%--------------------------------------------------------------------------
%
%   Applied Programming
%   TCU Engr 10573
%
%   Edward Randall
%   Homework #2
%   Jan 22nd 2023
%
%--------------------------------------------------------------------------

clear, clc
format compact
format long

%Chapter 2. # 5, 10, 14, 17, 27, 36, 45
%Chapter 3. # 2, 5, 9, 14, 16, 27, 33, 34, 37

% Exercise 2-5
help linspace;
% linspace accepts X1 and X2 as range parameters and generates 100 equally
% spaced points between X1 and X2. If the user specifys N then it will
% generate N points between X1 and X2 which can be used to control the
% step. For example if I generate X1 = 0 and X2 = 100 it would generate
% numbers 0-100 spaced 1 apart. But if I put N = 20 it would space the
% numbers out by 5.

% Exercise 2-10
mat = [5:8;9:12];
B = [1:4]';

% Exercise 2-14
a14 = rand(1,3);
b14 = rand(1,3);
mat2x3 = [a14;b14];

a14a = randi(5,2,3);
b14b = randi(5,2,3);
mat2x3 = [a14a;b14b];

mat2x3_2 = randi(50,2,3);

% Exercise 2-17
mat = [1,2,3,4,5];
mat(end);
mat(length(mat));

% Exercise 2-27
sumNums = 2 + 4 + 6 + 8 + 10;
sumer = sum(2:2:10);

% Exercise 2-36
A36 = [1,2,3;4,-1,6];
B36 = [2,4,1;1,3,0];
wat1 = A36 + B36;
wat2 = A36 - B36;
wat3 = A36 .* B36;

% Exercise 2-45
vvec = [1,2,3,4,5];
DiagVec = diag(vvec);
diagtrace = trace(DiagVec);

% Exercise 3-2
% separate file

% Exercise 3-5
help fprintf;
A1 = [9.9, 9900];
A2 = [8.8,  7.7 ; ...
      8800, 7700];
%formatSpec = 'X is %10.4f meters or %10.4f mm\n';
%formatSpec = 'X is %10.2f meters or %10.2f mm\n';
%formatSpec = 'X is %6.4f meters or %6.4f mm\n';
formatSpec = 'X is %2.4f meters or %2.4f mm\n';
fprintf(formatSpec,A1,A2);

% Exercise 3-9
%echostring
% separate file

% Exercise 3-14
%power_charge
% separate file

% Exercise 3-16
%surftens
% separate file

% Exercise 3-27
%user_in = input('How many inches? ');
%create input for function call.

%inches_to_feet(user_in);
%call thefunction

% Exercise 3-33
tf1 = is_pythag(3,4,5);
tf2 = is_pythag(3,4,6);

% Exercise 3-34
vecout(8);

% Exercise 3-37
inch_of_rain = 2.5;
rain_to_snow(inch_of_rain);

%---------------------------------------------------