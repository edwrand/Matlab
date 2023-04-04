function cellArray = hw7_2()
    cellArray = cell(1, 10);

    for i = 1:2:9
        cellArray{i} = num2str(i); % Fill odd elements with strings

        nrows = randi(5);
        ncols = randi(5);
        cellArray{i + 1} = i * ones(nrows, ncols); % Fill even elements with matrices
    end

    disp(cellArray);
end