function [brightened_img, darkened_img] = hw7_6(img_path, factor)
% This function brightens and darkens an image by a specified factor

% Load the image
img = imread(img_path);

% Brighten the image
brightened_img = img * factor;

% Ensure all output values lie in the [0,255] range
brightened_img = max(min(brightened_img, 255), 0);

% Darken the image
darkened_img = img / factor;

% Ensure all output values lie in the [0,255] range
darkened_img = max(min(darkened_img, 255), 0);

% Display the brightened and darkened images using a 256-element gray colormap
figure;
subplot(1,2,1);
imshow(brightened_img, gray(256));
title('Brightened Image');
subplot(1,2,2);
imshow(darkened_img, gray(256));
title('Darkened Image');
end