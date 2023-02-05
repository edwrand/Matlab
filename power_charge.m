% power charge
% Exercise 3-14

% confused, am I supposed to create nums.dat? I will just use data above in
% an if loop to print out the positive numbers
%save 'nums.dat' data -ascii   % save to nums.dat
%load nums.dat
clc

% finally! Was having trouble on the .dat file but I will circle back
for data = [1,2,3,4,5,6,7,8,9,10]
    if data>=0 && mod(data,2)==0
        plot(0:2:10,data,"*k")
    end
end

% this is confusing me
