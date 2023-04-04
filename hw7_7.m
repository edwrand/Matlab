function [brightened_img, darkened_img] = hw7_7(img_path, factor)
% This function brightens and darkens an image by a specified factor and
% displays histograms of the original, brightened, and darkened images

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

% Calculate histograms of the original, brightened, and darkened images
[n_orig, v_orig] = hist(double(img(:)), 200);
[n_bright, v_bright] = hist(double(brightened_img(:)), 200);
[n_dark, v_dark] = hist(double(darkened_img(:)), 200);

% Display the images and their histograms
figure;
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,2);
imshow(brightened_img);
title('Brightened Image');
subplot(2,2,3);
imshow(darkened_img);
title('Darkened Image');
subplot(2,2,4);
hold on;
plot(v_orig, n_orig, 'r');
plot(v_bright, n_bright, 'g');
plot(v_dark, n_dark, 'b');
hold off;
xlim([0, 255]);
title('Histograms of Original, Brightened, and Darkened Images');
legend('Original', 'Brightened', 'Darkened');
end