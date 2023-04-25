%--------------------------------------------------------------------------
%
%   Applied Programming
%   TCU Engr 10573
%
%   Edward Randall
%   Homework #8
%   Jan 22nd 2023
%
%--------------------------------------------------------------------------

clear, clc
format compact
format long

% problem number 1
%sobel_filters('cameraman.tiff');
% says I need to buy a package to use imread, not sure why now

% problem number 2
emboss_filter('cameraman.tiff');

% problem number 3
sharpen_and_edge_filters('cameraman.tiff');

% problem number 4
compare_histograms('cameraman.tiff');

% problem number 5
compare_noise_removal('cameraman.tiff');
% imnoise requires the same package that I do not have

% problem number 6
compare_noise_removal_multisize('cameraman.tiff');
% imnoise requires the same package that I do not have

% As the filter size increases, the averaging filter tends to blur the image more, which can result in a loss of image detail.

% problem number 7
threshold_coins('cameraman.tiff')
% imnoise requires the same package that I do not have

%---------------------------------------------------