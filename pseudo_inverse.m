function PA = pseudo_inverse(A)
temp = matrix_multiply(A',A);
temp = inv(temp);
PA = matrix_multiply(temp,A');
end