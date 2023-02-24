function [oootput] = prodby2(n)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    oootput = 1
    n = str2double(input('Enter a positive integer: ', 's'))
    for i = 1:n
        if mod(n, 2) ~= 0
            % calcmatrix is odd
            % i think my function is going wrong here cannot figure it out
            oootput = oootput * n
        end
    end
end