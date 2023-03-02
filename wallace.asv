function [piapprox] = wallace(n)
% Computes the approximation of pi using the Gregory-Leibniz series
% up to the nth term

% Initialize
sum = 1;

% Compute the series up to the nth term
for n = 1:n
    numerator = ((2*n)^2);
    denominator = (((2*n)^2) - 1);
    sum = sum * numerator/denominator;
end

% Compute the final approximation of pi
piapprox = 2 * sum;

end