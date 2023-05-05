clear
clc

% main script for Image Processing project #3
% May 2nd 2023

% input video
original_video = 'image_tracking_input_2023.avi';
% output video
output_video = 'bigbird_output.avi';

% read it
input_video = VideoReader(original_video);

% Get some parameters of the input video
numberofimages = input_video.NumFrames;
frame_rate = input_video.FrameRate;
height = input_video.Height;
width  = input_video.Width;

% printing some specifications about the video file
disp(['------ Filename: "' original_video '"'])
disp(['       # frames = ' num2str(numberofimages)])
disp(['     frame rate = ' num2str(frame_rate) ' fps'])
disp(['          H x W = ' num2str(height) ' x ' num2str(width)])
% took the above from the example

% write the changed and output video
outputvideo = VideoWriter(output_video);
outputvideo.FrameRate = input_video.FrameRate;
open(outputvideo);

% Create the looping to filter the frames individually
for i = 1:numberofimages

    % read each frame
    frame = read(input_video,i);

    %gray scale to each frame
    grayframe = rgb2gray(frame);

    % remove shot noise
    no_noise_frame = medfilt2(grayframe);

    % remove Gaussian Noise
    gaussian_fiter_frame = imgaussfilt(no_noise_frame);

    % dot formatting
    threshold = graythresh(gaussian_fiter_frame);
    bw_frame = imbinarize(gaussian_fiter_frame,threshold);
    bw_frame = imcomplement(bw_frame);

    % Remove any additional noise from the frames
    se = strel('disk',3);
    bw_frame = imopen(bw_frame,se);

    % Add the target markers to each frame of the video.
    stats = regionprops(bw_frame,'Centroid','Area');
    sol = 0;
    for xd = 1:length(stats)
        if (stats(xd).Area > 10)
            sol = sol + 1;
            calculated_tracks(i,sol,1) = stats(xd).Centroid(2);
            calculated_tracks(i,sol,2) = stats(xd).Centroid(1);
        end
    end
    marked_frame = draw_mark_on_target(bw_frame,stats,10,7,'black');
    % Make the output a double precision frame so that the writeVideo
    % command can properly utilize each frame and write it into the new
    % video. 
    Iout = uint8(255*marked_frame);
    f = im2frame(Iout,gray(256));
    writeVideo(outputvideo,f.cdata);
end
close(outputvideo);

[success, true_tracks] = read_track_data('perfect_truth_2023.bin');
assoc_tracks = associate_tracks(true_tracks, calculated_tracks);
% error
error = assoc_tracks - true_tracks;

% calculate stats
[mu1,sigma1] = calculate_statistics(error(:,:,1));
[mu2,sigma2] = calculate_statistics(error(:,:,2));
% Plot the images of the graphs
for z = 1:size(assoc_tracks,2)
    subplot(4,4,z);
    plot(assoc_tracks(:,z,2),assoc_tracks(:,z,1));
    xlim([0 width]);
    ylim([0 height]);
end
% Display the output video
%output_video_object = VideoReader(output_video);
%implay(output_video_object);
implay(input_video)
implay(output_video)

% Plot the error for each track
for z = 1:size(assoc_tracks, 2)
    figure;
    plot(error(:, z, 2), error(:, z, 1), 'b-', 'LineWidth', 2);
    xlabel('Error in X-axis');
    ylabel('Error in Y-axis');
    title(['Error for Track ' num2str(z)]);
end
