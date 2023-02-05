function [pythag] = is_pythag(a,b,c)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
    if c^2 == a^2 + b^2
        pythag = 1
    else
        pythag = 2
    end
end