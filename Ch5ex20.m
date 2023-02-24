file = fopen('stormtrack.dat', "w");
% w is write
for i = 1:24
    rand_int = randi(30);
    rand_dec = rand(1) * 0.5;
    fprintf(file, '%d %.1f\n', rand_int, rand_dec);
end
fclose(file);

% open the data file for reading
fid = fopen('stormtrack.dat', 'r');
% r is read

%  variables
wind_speed = zeros(24, 1);
visibility = zeros(24, 1);
blizzard_hours = 0;

% Read the data from the file
for i = 1:24
    % Read the current line of data from the file
    line = fgetl(fid);
    
    % Parse the wind speed and visibility from the line
    values = strsplit(line, ' ');
    wind_speed(i) = str2double(values{1});
    visibility(i) = str2double(values{2});
    
    % Check if blizzard conditions were met for the current hour
    if wind_speed(i) >= 30 && visibility(i) <= 0.5
        blizzard_hours = blizzard_hours + 1;
    end
end

% Close the data file
fclose(fid);

% Print the results
% having the blizzard break point at 4 hours is too hight it will almost
% never print blizard met
if blizzard_hours >= 2
    fprintf('Blizzard conditions were met for %d hours during this day.\n', blizzard_hours);
else
    fprintf('Blizzard conditions were not met during this day.\n');
end