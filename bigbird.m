clear
clc
original_video = 'image_tracking_input_2023.avi';
output_video = 'bigbird_output.avi';
input_video = VideoReader(original_video);

% Get some parameters of the input video
numberofimages = input_video.NumFrames;
frame_rate = input_video.FrameRate;
height = input_video.Height;
width  = input_video.Width;
disp(['------ Filename: "' original_video '"'])
disp(['       # frames = ' num2str(numberofimages)])
disp(['     frame rate = ' num2str(frame_rate) ' fps'])
disp(['          H x W = ' num2str(height) ' x ' num2str(width)])

outputvideo = VideoWriter(output_video);
outputvideo.FrameRate = input_video.FrameRate;
open(outputvideo);

% Create the looping to filter the frames individually
for i = 1:numberofimages
    % Reading each frame individually
    frame = read(input_video,i);
    % Apply the gray scale to each frame
    grayframe = rgb2gray(frame);
    % Remove the shot noise
    no_noise_frame = medfilt2(grayframe);
    % Remove the Gaussian Noise
    gaussian_fiter_frame = imgaussfilt(no_noise_frame);
    % Threshold the frames so that the dots close and become solid figures
    threshold = graythresh(gaussian_fiter_frame);
    bw_frame = imbinarize(gaussian_fiter_frame,threshold);
    bw_frame = imcomplement(bw_frame);
    % Remove any additional noise from the frames
    se = strel('disk',3);
    bw_frame = imopen(bw_frame,se);
    % Add the target markers to each frame of the video.
    stats = regionprops(bw_frame,'Centroid','Area');
    sol = 0;
    for k = 1:length(stats)
        if (stats(k).Area > 10)
            sol = sol + 1;
            calculated_tracks(i,sol,1) = stats(k).Centroid(2);
            calculated_tracks(i,sol,2) = stats(k).Centroid(1);
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
%Read the true track data given to us
[success, true_tracks] = read_track_data('perfect_truth_2023.bin');
% use associate tracks to compar eour tracking data to the true data
assoc_tracks = associate_tracks(true_tracks, calculated_tracks);
% Calculate the error of our tracking data
error = assoc_tracks - true_tracks;
[mu1,sigma1] = calculate_statistics(error(:,:,1));
[mu2,sigma2] = calculate_statistics(error(:,:,2));
% Plot the images of the graphs
for j = 1:size(assoc_tracks,2)
    subplot(4,4,j);
    plot(assoc_tracks(:,j,2),assoc_tracks(:,j,1));
    xlim([0 width]);
    ylim([0 height]);
end

% Display the output video
%output_video_object = VideoReader(output_video);
%implay(output_video_object);
implay(input_video)
implay(output_video)