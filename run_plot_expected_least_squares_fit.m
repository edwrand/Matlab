%**************************************************************************
%
%   Least Squares Project
%   This function plots what the perfect least-squares
%   	estimator should produce. (Truth)
%
%**************************************************************************

clear
clc
close all

figure('OuterPosition',[50 50 1050 600])

%Use this flag to turn noise on and off to test your fit function.
add_error = false;

% 1: Generate and plot the linear 1D data
[x1, y1] = generate_linear_1d_data(add_error);
subplot(1,3,1)
plot(x1,y1,'r');
grid on
axis square;
axis([min(x1) max(x1) 0 20]);
title('1D Linear Least-Squares Fit');
xlabel('X-data');
ylabel('Y-data');

% 2: Generate and plot the quadratic 2D data
[x2, y2, z2] = generate_quadratic_2d_data(add_error);
subplot(1,3,2)
surf(x2,y2,z2);
grid on
box on
axis square;
axis([min(x2) max(x2) min(y2) max(x2) -200 50]);
title('2D Quadratic Least-Squares Fit');
xlabel('X-data');
ylabel('Y-data');
zlabel('Z-data');

% 3: Generate and plot the planar 3D data
dist_ft     = 4.0;
angle_deg   = 0.0;
tilt_deg    = 0.0;
[rng_m, az, el] = generate_planar_3d_data(add_error, dist_ft, angle_deg, tilt_deg);
rng_ft = rng_m / 0.3048;
x3 = rng_ft .* cosd(el) .* sind(az);
y3 = rng_ft .* cosd(el) .* cosd(az);
z3 = rng_ft .* sind(el);

subplot(1,3,3)
grid on
box on
xmin = min(x3);
xmax = max(x3);
zmin = min(z3);
zmax = max(z3);
xfit_draw = [xmin xmax xmax xmin];
zfit_draw = [zmax zmax zmin zmin];
yfit_draw = [dist_ft, dist_ft, dist_ft, dist_ft];
hold on
patch('XData',xfit_draw,'YData',yfit_draw,'ZData',zfit_draw,...
    'FaceColor','green','FaceAlpha',0.4)
daspect([1 1 1])   % % Makes the data viewing aspect 1-to-1 (correct proportion)
axis([xmin-5 xmax+5 0 dist_ft+2 zmax-5 zmax+5]);
title('3D Planar Least-Squares Fit');
xlabel('X-data');
ylabel('Y-data');
zlabel('Z-data');



%**************************************************************************
