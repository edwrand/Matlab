function [piapprox] = madhava(n)
% Computes the approximation of pi using the Madhava-Leibniz series
% up to the nth term

% Initialize
sum = 0;
piapprox = zeros(n,1);
times = zeros(n,1);

% Compute the series up to the nth term
for k = 0:n-1
    tic;
    sum = sum + (-1/3)^k / (2*k+1);
    piapprox(k+1) = sqrt(12) * sum;
    times(k+1) = toc;
end

% Compute the final approximation of pi
pi_true = pi;
error = abs(piapprox - pi_true);

% Plot the approximations of pi at each iteration
plot(1:n, piapprox, 1:n, error);
plot(1:n, times)
title('Madhava-Leibniz series approximations of pi');
xlabel('Iteration');
ylabel('Approximation of pi');
disp(time)

end