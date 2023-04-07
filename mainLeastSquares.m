

% 2D
%[x, y, z] = generate_quadratic_2d_data(true)
%leastSquares2D(x,y,z)
%surf(x,y,z)
%calculate_statistics(z)

% 3D
%[x,y,z] = generate_planar_3d_data(true, 1, 0, 0);
%leastSquares3D(x, y, z)
%scatter3(x,y,z)

% Lidar Data
%[x,y,z] = generate_planar_3d_data(true, 1, 0, 0);
[success, x, y, z] = read_lidar_data('032923_Classroom.bin')
leastSquares3D(x, y, z)
patch(x, y, z, 'g')