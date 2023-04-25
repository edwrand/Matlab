function emboss_filter(image_filename)
    % Read the image
    I = imread(image_filename);

    % Define the embossing filter
    emboss = [-2 -1 0; -1 1 1; 0 1 2];

    % Apply the embossing filter
    embossed_image = uint8(conv2(double(I), emboss, 'same'));

    % Display the embossed image with a 256-element gray colormap
    imshow(embossed_image, gray(256));
    title('Embossed Image');
end