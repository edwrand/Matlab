function [img_corrected] = hw7_9(img_path, gamma)
% This function performs gamma correction on an image using for-loops

% Load the image
img = imread(img_path);

% Convert image pixel values to the range [0,1]
img_norm = double(img) ./ 255;

% Get the dimensions of the image
[row, col] = size(img_norm);

% Initialize the corrected image
img_corrected = zeros(row, col);

% Loop through each pixel in the image and calculate its corrected value
for i = 1:row
    for j = 1:col
        img_corrected(i,j) = img_norm(i,j) .^ gamma;
    end
end

% Scale the corrected image back to the range [0,255] and round to nearest integer
img_corrected = round(img_corrected .* 255);

% Display the original and corrected images side by side
figure;
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(img_corrected);
title('Gamma-Corrected Image');
end