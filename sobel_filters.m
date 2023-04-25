function sobel_filters(image_filename)
    % Read the image
    I = imread(image_filename);

    % Define the vertical Sobel filter
    h1 = [-1 0 1; -2 0 2; -1 0 1];

    % Define the horizontal Sobel filter
    h2 = [-1 -2 -1; 0 0 0; 1 2 1];

    % Apply the vertical Sobel filter
    V = imfilter(I, h1);

    % Apply the horizontal Sobel filter
    H = imfilter(I, h2);

    % Combine both images
    combined = V + H;

    % Display the original image
    subplot(2, 2, 1);
    imshow(I);
    title('Original Image');

    % Display the vertical Sobel filter result
    subplot(2, 2, 2);
    imshow(V);
    title('Vertical Sobel Filter');

    % Display the horizontal Sobel filter result
    subplot(2, 2, 3);
    imshow(H);
    title('Horizontal Sobel Filter');

    % Display the combined image
    subplot(2, 2, 4);
    imshow(combined);
    title('Combined Sobel Filters');
end
