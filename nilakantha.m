function [piapprox] = nilakantha(n)
% Computes the approximation of pi using the Nilakantha series
% up to the nth term

% Initialize
sum = 0;

% Compute the series up to the nth term
for k = 0:n-1
    a = (2*k+2)*(2*k + 3)*(2*k + 4);
    sum = sum + ((-1)^k) / a;
end

% Compute the final approximation of pi
piapprox = 3 + 4 * sum;

end