function [img_negative] = hw7_8(img_path)
% This function creates the negative of an image using for-loops

% Load the image
img = imread(img_path);

% Get the dimensions of the image
[row, col] = size(img);

% Initialize the negative image
img_negative = zeros(row, col);

% Loop through each pixel in the image and calculate its negative value
for i = 1:row
    for j = 1:col
        img_negative(i,j) = 255 - img(i,j);
    end
end

% Display the original and negative images side by side
figure;
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(img_negative);
title('Negative Image');
end