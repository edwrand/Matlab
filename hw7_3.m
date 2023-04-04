function hw7_3()
    % Initialize the 200x200 matrix to zeros
    matrix = zeros(200, 200);

    % Center coordinates
    center_x = 100;
    center_y = 100;

    % Calculate radial distance and set the value for each element
    for i = 1:200
        for j = 1:200
            d = sqrt((i - center_x)^2 + (j - center_y)^2);
            matrix(i, j) = 128 * exp(-d / 20);
        end
    end

    % Display the image using the image() command
    colormap(gray(256));
    figure;
    image(matrix);
    title('Image using image()');

    % Display the image using the imagesc() command
    figure;
    imagesc(matrix);
    colormap(gray(256));
    title('Image using imagesc()');
end