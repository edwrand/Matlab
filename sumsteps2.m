function [sums] = sumsteps2(n)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    for i = 1:n
        if mod(n, 2) ~= 0
            % n is odd
            sums = n + 2
        end
    end

end