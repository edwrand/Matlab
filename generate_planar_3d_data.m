%**************************************************************************
%
%   Author:     John Lusk
%
%   Project:    Least Squares Project
%
%   Purpose:    This function produces the data that the least-squares
%               estimator should utilize. (Truth + Deviation). This
%               function models a Lidar sensor used for the 4th part of the
%               Least Squares Project.
%
%   Output:     Cartesian triplet containing X, Y, Z coordinates for the
%               plane
%               rng: 1D array of the range-values (m)
%               az:  1D array of the azimuth-values (deg)
%               el:  1D array of the elevation-values (deg)
%
%   Notes:      General equation of a plane:     a*x + b*y + c*z + d = 0
%               
%               This project will use:           y = a*x + b*z + c
%                   
%               To transform spherical coordinates back to cartesian coordinates
%                   x = rng .* cosd(el) .* cosd(az);
%                   y = rng .* cosd(el) .* sind(az);
%                   z = rng .* sind(el);
% 
%               The input angles are used is a rotated 3D plane is measured
%               using the Lidar sensor. If they are 0, then the 3D plane is
%               perpendicular to the sensor.
% 
%               feet vs. meters are used to show the importance of units.
%
%**************************************************************************

function [x,y,z] = generate_planar_3d_data(add_error, ...
    dist_ft, plane_angle_deg, plane_tilt_deg)

range_spec  = 0.3;           % LIDAR range accuracy specification (ft)
angle_spec  = 2.0;           % LIDAR angle accuracy specification (deg)

x = -3:0.2:3;                % Create the x-data for the plane (ft) (Horizontal span)
y = dist_ft * ones(size(x)); % Create the y-data for the plane (ft) (dist_ft away from wall)
z = (0:0.2:4);               % Create the z-data for the plane (ft) (Vertical span)

% Calculate the rotation matrix
c1  = cosd(plane_angle_deg);
s1  = sind(plane_angle_deg);
Cxy = [c1 s1 0; -s1 c1 0; 0 0 1];
c2  = cosd(plane_tilt_deg);
s2  = sind(plane_tilt_deg);
Cz  = [1 0 0; 0 c2 s2; 0 -s2 c2];
C = Cxy * Cz;

% Generate the 3D planar data
%   - Shift the plane to the origin to rotate then shift it back (dist_ft)
k = 0;
for i=1:length(x)
    for j=1:length(z)
        k = k + 1;
        xp_ft(k) = x(i);
        yp_ft(k) = y(i) - dist_ft;
        zp_ft(k) = z(j);
        x_rot_ft = C * [xp_ft(k), yp_ft(k), zp_ft(k)]';
        xp_ft(k) = x_rot_ft(1);
        yp_ft(k) = x_rot_ft(2) + dist_ft;
        zp_ft(k) = x_rot_ft(3);
    end
end

% Transform from cartesian coordinates to spherical coordinates to 
% add noise to the range direction and angles.
rng_ft = sqrt(xp_ft.^2 + yp_ft.^2 + zp_ft.^2);
az_deg = atan2d(xp_ft,yp_ft);
el_deg = asind(zp_ft./rng_ft);

% Add noise deviation-data to the range, azimuth and elevation
if (add_error)
    rng_ft = rng_ft + (range_spec * randn(size(rng_ft)));
    az_deg = az_deg + (angle_spec * randn(size(az_deg)));
    el_deg = el_deg + (angle_spec * randn(size(el_deg)));
end

% Transform the range dta to meters for output
rng_m = rng_ft * 0.3048;

x = rng_m .* cosd(el_deg) .* cosd(az_deg);
y = rng_m .* cosd(el_deg) .* sind(az_deg);
z = rng_m .* sind(el_deg);
end

%**************************************************************************
