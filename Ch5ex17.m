% Initialize variables
n = 0;  % Number of attempts
x = -1; % Current value

% Generate random integers until a value greater than 25 is generated
while x <= 25
    x = randi([0, 50]);
    n = n + 1;      
    fprintf('Random integer %d: %d\n', n, x);  % Print the current value
end

fprintf('It took %d attempts to generate a random integer greater than 25.\n', n);