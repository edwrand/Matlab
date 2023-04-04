function [img_corrected] = hw7_10(img_path, gamma)
% This function performs gamma correction on an image using for-loops and
% displays histograms of the original and corrected images

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

% Calculate histograms of the original and corrected images
[n_orig, v_orig] = hist(double(img(:)), 200);
[n_corr, v_corr] = hist(double(img_corrected(:)), 200);

% Display the original and corrected images and their histograms side by side
figure;
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,2);
imshow(img_corrected);
title('Gamma-Corrected Image');
subplot(2,2,3);
hold on;
plot(v_orig, n_orig, 'r');
plot(v_corr, n_corr, 'g');
hold off;
xlim([0, 255]);
title('Histograms of Original and Gamma-Corrected Images');
legend('Original', 'Gamma-Corrected');
end