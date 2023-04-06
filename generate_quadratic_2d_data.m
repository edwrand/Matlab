%**************************************************************************
%
%   Author      W. Bryan Bell, Ph.D.
%
%   Project     Least Squares Project
%
%   Purpose     This function produces the data that the least-squares
%               estimator should utilize. (Truth + Deviation)
%
%   Input       add_error   true    Error is added to the data.
%                           false   Perfect data, no error is added.
%
%   Output      x           1D array of x-values used in the 2D function.
%               y           1D array of y-values used in the 2D function.
%               z           2D array of z-values used in the 2D function.
%
%   Notes       z = a*x^2 + b*x*y + c*y^2 + d*x + e*y + f
% 
%               - Peak/Valley location (center) should be at or near (0,0)
%                   descrim = b^2 - 4*a*c;
%                   peak_x = (2*c*d - b*e) / descrim;
%                   peak_y = (2*a*e - b*d) / descrim;
%
%**************************************************************************

function [x, y, z] = generate_quadratic_2d_data(add_error)

a = -0.3;                           % 1st quad. parameter. (-0.3)
b =  0.2;                           % 2nd quad. parameter. ( 0.2)
c = -0.5;                           % 3rd quad. parameter. (-0.5)
d = 0;                              % 4th quad. parameter. ( 0)
e = 0;                              % 5th quad. parameter. ( 0)
f = 20;                             % 6th quad. parameter. (20)
x = -20:0.4:20;                     % Create the 1D x-data. [-20,20]
y = -20:0.4:20;                     % Create the 1D y-data. [-20,20]

% Calculate the 2D quadratic data using the x-data and y-data
z = zeros(length(x),length(y));
ii = 0;
for i=1:length(x)
    ii = ii + 1;
    jj = 0;
    for j=1:length(y)
        jj = jj + 1;
        z(ii,jj) = a*x(i)^2 + b*x(i)*y(j) + c*y(j)^2 ...
            + d*x(i) + e*y(j) + f;
    end
end

if (add_error)
    e = randn(length(x),length(y));     % 2D deviation-data, Normal(0,1)
    z = z + e;                          % Add the 2D deviation data
end

end

%**************************************************************************
