function sharpen_and_edge_filters(image_filename)
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

    % Display the original image
    subplot(1, 3, 1);
    imshow(I, gray(256));
    title('Original Image');

    % Display the sharpened image with a 256-element gray colormap
    subplot(1, 3, 2);
    imshow(sharpened_image, gray(256));
    title('Sharpened Image');

    % Display the edge filtered image with a 256-element gray colormap
    subplot(1, 3, 3);
    imshow(edge_filtered_image, gray(256));
    title('Edge Filtered Image');
end
