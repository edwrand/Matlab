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
%   Output      x           1D array of x-values used in the 1D function.
%               y           1D array of y-values used in the 1D function.
%
%   Notes       y = -0.3*x + 14
%
%**************************************************************************

function [x, y] = generate_linear_1d_data(add_error)

m = -0.3;                       % slope (-0.3)
b = 14;                         % y-intercept (14)
x = 0:0.1:20;                   % x-data
y = m.*x + b;                   % y-data

if (add_error)
    e = randn(1,length(y));     % deviation-data, Normal(0,1)
    y = y + e;                  % Add the deviation data
end

end

%**************************************************************************
