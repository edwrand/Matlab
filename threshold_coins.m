function threshold_coins(image_filename)
    % Read the image
    I = imread(image_filename);

    % Display the original image with a 256-element gray colormap
    subplot(1, 3, 1);
    imshow(I, gray(256));
    title('Original Image');

    % Calculate the threshold using graythresh
    level = graythresh(I);

    % Create a black & white image using the calculated threshold
    bw_image = imbinarize(I, level);

    % Display the black & white image
    subplot(1, 3, 2);
    imshow(bw_image);
    title('B&W Image (Original Threshold)');

    % Adjust the threshold level to 3/4 of its calculated value
    adjusted_level = 0.75 * level;

    % Create another black & white image using the adjusted threshold
    adjusted_bw_image = imbinarize(I, adjusted_level);

    % Display the adjusted black & white image
    subplot(1, 3, 3);
    imshow(adjusted_bw_image);
    title('B&W Image (Adjusted Threshold)');
end
