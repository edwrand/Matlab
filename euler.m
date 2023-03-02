function [piapprox] = euler(n)
% Computes the approximation of pi using the Gregory-Leibniz series
% up to the nth term

% Initialize
sum = 1;

% Compute the series up to the nth term
tic
for k = 1:n
    sum = sum + (1/(k^2));
end
% Compute the final approximation of pi
piapprox = sqrt((sum * 6));
toc

end