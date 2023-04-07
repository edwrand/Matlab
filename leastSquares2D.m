function [a,b,c,d,e,f] = leastSquares2D(x,y,z)

A = zeros(size(x,2),6);

for r = 1:length(x)
    A(r,1) = x(r)^2;
    A(r,2) = x(r)*y(r);
    A(r,3) = x(r)^2;
    A(r,4) = x(r);
    A(r,5) = x(r);
    A(r,6) = 1;
end

A = pseudo_inverse(A);

fit = matrix_vector_mult(A,z);

a = fit(1);
b = fit(2);
c = fit(3);
d = fit(4);
e = fit(5);
f = fit(6);
