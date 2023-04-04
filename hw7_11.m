function [x_sorted, error_sum] = hw7_11()
% This function generates a 20-element long vector of random integers from
% 1-100, sorts the values from largest to smallest using a custom sorting
% routine, and verifies the sorting routine using MATLAB's sort() function

% Generate a 20-element long vector of random integers from 1-100
x = randi([1, 100], 1, 20);

% Sort the values from largest to smallest using a custom sorting routine
for i = 1:length(x)-1
    for j = i+1:length(x)
        if x(i) < x(j)
            temp = x(i);
            x(i) = x(j);
            x(j) = temp;
        end
    end
end

% Verify the sorting routine using MATLAB's sort(x) routine
x_sorted = sort(x);
error = abs(x_sorted - x);
error_sum = sum(error);

% Display the results
disp("Original vector:");
disp(x);
disp("Sorted vector using custom sorting routine:");
disp(x);
disp("Sorted vector using MATLAB's sort(x) routine:");
disp(x_sorted);
disp("Error sum:");
disp(error_sum);

end
This function takes no input arguments and returns the sorted vector and the error sum as output arguments. It first generates a 20-element long vector of random integers from 1-100 using the randi() function. It then sorts the values from largest to smallest using a custom sorting routine that employs a nested for-loop and an if-statement to compare and swap elements.

To verify the sorting routine, the function also sorts the vector using MATLAB's sort() function and calculates the absolute difference between the custom-sorted and MATLAB-sorted vectors. The sum() function is then used to compute the sum of the error vector.

Finally, the function displays the original vector, the vector sorted using the custom sorting routine, the vector sorted using MATLAB's sort() function, and the error sum.

You can call this function by simply typing its name in the MATLAB command window:

matlab
Copy code
custom_sort_verification();
This will display the original vector, the vector sorted using the custom sorting routine, the vector sorted using MATLAB's sort() function, and the error sum.





