function compare_noise_removal(image_filename)
    % Read the image
    I = imread(image_filename);

    % Add salt & pepper noise to the image
    noisy_image = imnoise(I, 'salt & pepper');

    % Define the 3x3 averaging filter
    avg_filter = (1/9) * ones(3);

    % Apply the averaging filter
    avg_filtered_image = imfilter(noisy_image, avg_filter);

    % Apply the 3x3 median filter
    med_filtered_image = medfilt2(noisy_image);

    % Display the original image
    subplot(2, 2, 1);
    imshow(I);
    title('Original Image');

    % Display the noisy image
    subplot(2, 2, 2);
    imshow(noisy_image);
    title('Noisy Image (Salt & Pepper)');

    % Display the image after applying the averaging filter
    subplot(2, 2, 3);
    imshow(avg_filtered_image);
    title('Averaging Filter');

    % Display the image after applying the median filter
    subplot(2, 2, 4);
    imshow(med_filtered_image);
    title('Median Filter');
end