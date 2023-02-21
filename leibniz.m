function [piapprox] = leibniz(n)
% Computes the approximation of pi using the Gregory-Leibniz series
% up to the nth term

% Initialize
sum = 0;

% Compute the series up to the nth term
for k = 0:n-1
    sum = sum + (-1)^k / (2*k+1);
end

% Compute the final approximation of pi
piapprox = 4 * sum;

end