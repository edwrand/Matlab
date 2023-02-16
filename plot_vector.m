% Prompt user for a character
char_input = input('Enter a character: ', 's')

% Create x-vector with 50 equally spaced numbers between -2pi and 2pi
x = linspace(-2*pi, 2*pi, 50);

% Calculate y-vector using cosine function
y = cos(x);

% Create plot
if char_input == 'r'
    % Plot points with red *
    plot(x, y, 'r*')
else
    % Plot points with green *
    plot(x, y, 'g*')
end

% Add title and labels
title('Cosine function')
xlabel('x')
ylabel('y')