function compare_noise_removal_multisize(image_filename)
    % Read the image
    I = imread(image_filename);

    % Add salt & pepper noise to the image
    noisy_image = imnoise(I, 'salt & pepper');

    % Define the 5x5 and 7x7 averaging filters
    avg_filter_5 = (1/25) * ones(5);
    avg_filter_7 = (1/49) * ones(7);

    % Apply the 5x5 averaging filter
    avg_filtered_image_5 = imfilter(noisy_image, avg_filter_5);

    % Apply the 7x7 averaging filter
    avg_filtered_image_7 = imfilter(noisy_image, avg_filter_7);

    % Apply the 5x5 median filter
    med_filtered_image_5 = medfilt2(noisy_image, [5 5]);

    % Apply the 7x7 median filter
    med_filtered_image_7 = medfilt2(noisy_image, [7 7]);

    % Display the original image
    subplot(2, 3, 1);
    imshow(I);
    title('Original Image');

    % Display the noisy image
    subplot(2, 3, 2);
    imshow(noisy_image);
    title('Noisy Image (Salt & Pepper)');

    % Display the image after applying the 5x5 averaging filter
    subplot(2, 3, 3);
    imshow(avg_filtered_image_5);
    title('5x5 Averaging Filter');

    % Display the image after applying the 7x7 averaging filter
    subplot(2, 3, 4);
    imshow(avg_filtered_image_7);
    title('7x7 Averaging Filter');

    % Display the image after applying the 5x5 median filter
    subplot(2, 3, 5);
    imshow(med_filtered_image_5);
    title('5x5 Median Filter');

    % Display the image after applying the 7x7 median filter
    subplot(2, 3, 6);
    imshow(med_filtered_image_7);
    title('7x7 Median Filter');
end