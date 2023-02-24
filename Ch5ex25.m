[r c]=size(mat);
for i = 1:r
    for j = 1:c
        mat(i, j) = mat(i, j) * 2;
    end
end

% could be re-written as
%mat = mat .* 2;