function [matrix, stretched_matrix] = hw7_5()

    % Create a 200x200 matrix of random integers in the range [0, 64]
    matrix = randi([0, 64], 200, 200);

    % Display the original image with image()
    colormap(gray(256));
    figure;
    image(matrix);
    title('Original Image');

    % Contrast stretch the image from [0, 255]
    stretched_matrix = contrastStretch(matrix, 0, 255);

    % Display the new image with image()
    figure;
    image(stretched_matrix);
    title('Contrast Stretched Image');

    % Calculate the histograms for both images
    [n_original, v_original] = hist(double(original_matrix(:)), 65);
    [n_stretched, v_stretched] = hist(double(stretched_matrix(:)), 65);

    % Plot the histograms on the same graph
    figure;
    plot(v_original, n_original, 'b', 'LineWidth', 2);
    hold on;
    plot(v_stretched, n_stretched, 'r', 'LineWidth', 2);
    hold off;
    legend('Original Image', 'Contrast Stretched Image');
    xlabel('Intensity Value');
    ylabel('Frequency');
    title('Histograms of Original and Contrast Stretched Images');

end