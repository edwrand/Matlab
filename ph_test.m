% ph test script

ph_input = input("Enter a PH value: ", 's')

if ph_input == '7'
    disp('PH is neutral.')
elseif ph_input < '7'
    disp("PH is acidic")
elseif ph_input > '7'
    disp("PH is basic")
else
    disp("Something went wrong")
end