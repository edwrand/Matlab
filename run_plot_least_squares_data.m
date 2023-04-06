%**************************************************************************
%
%   Least Squares Project
%   This script produces and scatter plots of the data that the
%   	least-squares estimator should utilize. (Truth + Deviation)
%
%**************************************************************************

clear, clc
close all
format long
format compact

figure('OuterPosition',[50 50 1050 600])

% 1: Generate and scatter plot the linear 1D data
[x1, y1] = generate_linear_1d_data(true);
subplot(1,3,1)
scatter(x1,y1,'r.');
grid on
axis square;
axis([min(x1) max(x1) 0 20]);
title('Data for 1D Linear');
xlabel('X-data');
ylabel('Y-data');

% 2: Generate and scatter plot the quadratic 2D data
[x2, y2, z2] = generate_quadratic_2d_data(true);
subplot(1,3,2)
x2_vec = zeros(length(x2)*length(y2),1);
y2_vec = zeros(length(x2)*length(y2),1);
z2_vec = zeros(length(x2)*length(y2),1);
cnt = 0;
for i=1:length(x2)
    for j=1:length(y2)
        cnt = cnt + 1;
        x2_vec(cnt) = x2(i);
        y2_vec(cnt) = y2(j);
        z2_vec(cnt) = z2(i,j);
    end
end
scatter3(x2_vec,y2_vec,z2_vec,'r.');
grid on
axis square;
axis([min(x2_vec) max(x2_vec) min(y2_vec) max(y2_vec) -200 50]);
title('Data for 2D Quadratic');
xlabel('X-data');
ylabel('Y-data');
zlabel('Z-data');

% 3: Generate and scatter plot the planar 3D data
dist_ft     = 4.0;
angle_deg   = 0.0;
tilt_deg    = 0.0;
[rng_m, az, el] = generate_planar_3d_data(true, dist_ft, angle_deg, tilt_deg);
subplot(1,3,3)
rng_ft = rng_m / 0.3048;
x3 = rng_ft .* cosd(el) .* sind(az);
y3 = rng_ft .* cosd(el) .* cosd(az);
z3 = rng_ft .* sind(el);

scatter3(x3,y3,z3,'r.');
grid on
axis square;
title('Data for 3D Planar');
xlabel('X-data');
ylabel('Y-data');
zlabel('Z-data');
box on
grid on
axis([-10 10 -5 18 -5 12])
daspect([1 1 1])
view(-40,20)

%Reading the lidar data:
[~,rng_m, az, el] = read_lidar_data('lidar_data.bin');

rng_ft = rng_m / 0.3048;
x = rng_ft .* cosd(el) .* sind(az);
y = rng_ft .* cosd(el) .* cosd(az);
z = rng_ft .* sind(el);

figure
scatter3(x,y,z)
daspect([1 1 1]) %This will make the axis scales equal....important
xlabel('x')
ylabel('y')
zlabel('z')

%**************************************************************************
