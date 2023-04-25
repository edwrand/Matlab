function compare_histograms(image_filename)
    % Read the image
    I = imread(image_filename);

    % Define the sharpening filter
    sharpen = [0 -1 0; -1 5 -1; 0 -1 0];

    % Define the edge filter
    edge = [0 -1 0; -1 4 -1; 0 -1 0];

    % Apply the sharpening filter
    sharpened_image = uint8(conv2(double(I), sharpen, 'same'));

    % Apply the edge filter
    edge_filtered_image = uint8(conv2(double(I), edge, 'same'));

    % Define the number of bins for the histogram
    nbins = 256;

    % Calculate the histograms
    [n_original, v_original] = hist(double(I(:)), nbins);
    [n_sharpened, v_sharpened] = hist(double(sharpened_image(:)), nbins);
    [n_edge_filtered, v_edge_filtered] = hist(double(edge_filtered_image(:)), nbins);

    % Plot the histograms in different colors on the same graph
    plot(v_original, n_original, 'b', 'LineWidth', 1.5);
    hold on;
    plot(v_sharpened, n_sharpened, 'r', 'LineWidth', 1.5);
    plot(v_edge_filtered, n_edge_filtered, 'g', 'LineWidth', 1.5);
    hold off;

    % Set the legend, xlabel, ylabel, and title
    legend('Original Image', 'Sharpened Image', 'Edge Filtered Image');
    xlabel('Intensity');
    ylabel('Frequency');
    title('Histograms of Original, Sharpened, and Edge Filtered Images');
    grid on;
end