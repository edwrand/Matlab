function [mux, sx1, sx2] = calculate_statistics(x)

    n = length(x);
    mux = 0;
    sx1 = 0;
    sx2 = 0;

    for i = 1:n
        mux = mux + x(i);
    end
    mux = mux/n;

    for i = 1:n
        sx1 = sx1 + (x(i)-mux)^2;
    end
    sx1 = sqrt(sx1/n);

    for i = 1:n
        sx2 = sx2 + (x(i)-mux)^2;
    end
    sx2 = sqrt(sx2/(n-1));

end