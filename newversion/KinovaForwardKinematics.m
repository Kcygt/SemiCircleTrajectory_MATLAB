alpha = [pi pi/2 pi/2 pi/2 pi/2 pi/2 pi/2 pi];
a = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0];
d = [0.0 -0.2848 -0.0118 -0.4208 -0.0128 -0.3143 0 -0.1674];
% q = [0.0 0.0 0.0 0.0 0 0.0 0 0.0];
q = [0.0 0.0 296.5 0.0 127.0 0.0 35.0 0.0];
thetaR = deg2rad(q);
theta = [thetaR(1) thetaR(2) thetaR(3)+pi thetaR(4)+pi thetaR(5)+pi thetaR(6)+pi thetaR(7)+pi thetaR(8)+pi];

Y = eye(4); % Initialize Y as a 4x4 identity matrix
T = cell(1, 8); % Initialize a cell array to store transformation matrices

for k = 1:8
    T{k} = [
        cos(theta(k)), -sin(theta(k)) * cos(alpha(k)), sin(theta(k)) * sin(alpha(k)), a(k) * cos(theta(k));
        sin(theta(k)), cos(theta(k)) * cos(alpha(k)), -cos(theta(k)) * sin(alpha(k)), a(k) * sin(theta(k));
        0, sin(alpha(k)), cos(alpha(k)), d(k);
        0, 0, 0, 1
    ];
    Y = Y * T{k};
end

%% Inverse kinematic

% Given end-effector pose
desired_pose = [
    1, 0, 0,  0.0703;  % Replace 'x' with the desired x-coordinate
    0, 1, 0, -0.0246;  % Replace 'y' with the desired y-coordinate
    0, 0, 1, 0.5881;  % Replace 'z' with the desired z-coordinate
    0, 0, 0, 1
];

% Calculate wrist center position
desired_wrist_center = desired_pose * [eye(3), [0; 0; -d(8)]; 0, 0, 0, 1];
RotD = [   1  -0.0000    0.0;
           -0.000    1.0000    0.0;
            0   0   1];
o_c = [desired_pose(1,4); desired_pose(2,4); desired_pose(3,4)] - d(end) * RotD * [0 0 1]';
% Calculate theta1 (rotation about z-axis)
theta1 = atan2(o_c(2), o_c(1));

% Calculate the position of joint 2 in the xy-plane of joint 1
r = sqrt(desired_wrist_center(1)^2 + desired_wrist_center(2)^2) - a(1);
z = desired_wrist_center(3) - d(1);

% Calculate the distance between joint 2 and joint 3
D = sqrt(r^2 + z^2);

% Calculate angles for the triangle formed by joints 1, 2, and 3
cos_gamma = (a(2)^2 + a(3)^2 - D^2) / (2 * a(2) * a(3));
sin_gamma = sqrt(1 - cos_gamma^2);

% Calculate theta3 (angle between link 2 and the line joining joint 1 and wrist center)
theta3 = atan2(sin_gamma, cos_gamma);

% Calculate alpha and beta angles for the triangle formed by joints 1, 2, and 3
alpha = atan2(z, r);
beta = atan2(a(3) * sin_gamma, a(2) + a(3) * cos_gamma);

% Calculate theta2 (angle between link 1 and the line joining joint 1 and wrist center)
theta2 = alpha - beta;

% Calculate the rotation matrix from the end-effector pose
R = desired_pose(1:3, 1:3);

% Calculate theta4, theta5, theta6 (rotation angles about the end-effector's axes)
theta4 = atan2(R(3, 2), R(3, 3));
theta5 = atan2(-R(3, 1), sqrt(R(3, 2)^2 + R(3, 3)^2));
theta6 = atan2(R(2, 1), R(1, 1));

% Combine the joint angles
inverse_kinematics_solution = [theta1, theta2, theta3, theta4, theta5, theta6];

% Display the inverse kinematics solution in degrees
inverse_kinematics_solution_deg = rad2deg(inverse_kinematics_solution);
disp('Inverse Kinematics Solution (Degrees):');
disp(inverse_kinematics_solution_deg);

