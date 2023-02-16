aprompt = input("Enter a number: ", 's')
%doc input;

if aprompt == '0'
    disp('cannot call function')
else
    myout(aprompt)
end