function [a, b, c, d, e, f, g, h, i, j, k] = leastSquares3D(x, y, z)
    if ~isequal(size(x), size(y), size(z))
        error('x, y, and z must be the same size.');
    end

    if numel(x) < 10
        error('At least 10 data points are required.');
    end

    A = zeros(length(x), 11);

    for r = 1:length(x)
        A(r, 1) = x(r)^2;
        A(r, 2) = x(r)*y(r);
        A(r, 3) = y(r)^2;
        A(r, 4) = x(r)*z(r);
        A(r, 5) = y(r)*z(r);
        A(r, 6) = z(r)^2;
        A(r, 7) = x(r);
        A(r, 8) = y(r);
        A(r, 9) = z(r);
        A(r, 10) = 1;
    end

    fit = pinv(A) * reshape(z, [], 1);

    a = fit(1);
    b = fit(2);
    c = fit(3);
    d = fit(4);
    e = fit(5);
    f = fit(6);
    g = fit(7);
    h = fit(8);
    i = fit(9);
    j = fit(10);
    k = fit(11);
end