% Constants
R = 0.06;    % radius
tFinal = 8;  % tFinal
rootdir = 'Flat_R%.6f/Flat_R%.6f_T%.6f_%d';

% Trajectory blending parameters

line_length = 0.20;
alpha = (2 * line_length) / (R * pi) + 1;
tBlend = 1;
W = (alpha + 1) / (tBlend * (tFinal - tBlend));

for a = 1:3
    dirName = sprintf(rootdir, R, R, tFinal, a);
    
    % Load data using sprintf for file names
    desiredEndEffectorVelocity = load(fullfile(dirName, sprintf('Flat_R%.6f_T%.6f_%d_desiredEndEffectorVelocity.csv', R, tFinal, a)));
    desiredJointPosition = load(fullfile(dirName, sprintf('Flat_R%.6f_T%.6f_%d_desiredJointPosition.csv', R, tFinal, a)));
    jointPosition = load(fullfile(dirName, sprintf('Flat_R%.6f_T%.6f_%d_jointPosition.csv', R, tFinal, a)));
    jointVelocity = load(fullfile(dirName, sprintf('Flat_R%.6f_T%.6f_%d_jointVelocity.csv', R, tFinal, a)));
    time = load(fullfile(dirName, sprintf('Flat_R%.6f_T%.6f_%d_simulationTime.csv', R, tFinal, a)));
    force = load(fullfile(dirName, sprintf('Flat_R%.6f_T%.6f_%d_wrench.csv', R, tFinal, a)));
    
    % Preallocate arrays
    x = zeros(length(time), 3);
    xDot = zeros(length(time) - 1, 3);
    xpDot = zeros(length(time) - 1, 7);
    
    % Calculate forward kinematics and velocities
    for i = 1:length(time)
        [x(i, :), ~] = forwardKinematics(jointPosition(i, :));
    end
    
    for i = 1:length(x) - 1
        xDot(i, :) = (x(i + 1, :) - x(i, :)) / (time(i + 1) - time(i));
    end
    
    for i = 1:length(x) - 1
        xpDot(i, :) = (jointPosition(i + 1, :) - jointPosition(i, :)) / (time(i + 1) - time(i));
    end
    
    % Generate trajectory points
    sspace = linspace(0, alpha + 1, length(time));
    P_z = zeros(1, length(sspace));
    P_x = zeros(1, length(sspace));
    P_z_derivative = zeros(1, length(sspace));
    P_x_derivative = zeros(1, length(sspace));
    
    for i = 1:length(sspace)
        s = sspace(i);
        if s <= 1
            P_z(i) = -R * cos(s * pi / 2);
            P_x(i) = -R * sin(s * pi / 2);
            P_z_derivative(i) = R * (pi / 2) * sin(s * pi / 2);
            P_x_derivative(i) = -R * (pi / 2) * cos(s * pi / 2);
        elseif s <= alpha && s > 1
            P_z(i) = (s - 1) * (R * pi) / 2;
            P_x(i) = -R;
            P_z_derivative(i) = R * pi / 2;
            P_x_derivative(i) = 0;
        else
            P_z(i) = R * sin((s - alpha) * pi / 2) + line_length;
            P_x(i) = -R * cos((s - alpha) * pi / 2);
            P_z_derivative(i) = R * pi / 2 * cos((s - alpha) * pi / 2);
            P_x_derivative(i) = R * pi / 2 * sin((s - alpha) * pi / 2);
        end
    end
    
    % Plotting
    figure(1)
    hold on; grid on
    plot(x(:, 3), -x(:, 1), '.')
    if a == 3
        plot(P_z + x(1, 3) + R, P_x - x(1, 1), 'LineWidth', 1.5)
    end
    xlabel('z direction (m)')
    ylabel('x direction (m)')
    title(sprintf('Desired and Actual Position for radius = %.3f and t_F=%d ',R,tFinal ))
    legend('Actual Path1', 'Actual Path2', 'Actual Path3', 'Desired Path')
    axis('equal')
    
    figure(2)
    hold on; grid on
    plot(time(10:end - 1), xDot(10:end, 1), '.')
    if a == 3
        plot(time, desiredEndEffectorVelocity(:, 1), 'LineWidth', 1.5)
    end
    xlabel('Time (s)')
    ylabel('Velocity (m/s)')
    title(sprintf('Velocity in X direction Radius = %.3f and t_F=%d ',R,tFinal ))
    legend('Actual Velocity1', 'Actual Velocity2', 'Actual Velocity3', 'Desired Velocity')
    
    figure(3)
    hold on; grid on
    plot(time(10:end - 1), xDot(10:end, 3), '.')
    if a == 3
        plot(time, desiredEndEffectorVelocity(:, 3), 'LineWidth', 1.5)
    end
    xlabel('Time (s)')
    ylabel('Velocity (m/s)')
    title(sprintf('Velocity in Z direction Radius = %.3f and t_F=%d ',R,tFinal ))
    legend('Actual Velocity1', 'Actual Velocity2', 'Actual Velocity3', 'Desired velocity')
end

% Trajectory blending
s = zeros(length(time), 1);
sDot = zeros(length(time), 1);
for i = 1:length(sDot)
    t = i * tFinal / length(sDot);
    if t <= tBlend
        s(i) = (W * t^2) / 2;
        sDot(i) = W * t;
    elseif t > tBlend && t < tFinal - tBlend
        s(i) = W * tBlend * (t - tBlend) + ((W * tBlend^2)) / 2;
        sDot(i) = W * tBlend;
    else
        s(i) = W * (tFinal) - (W * tFinal^2 / 2) + (W * tFinal * t) - (W * t^2 / 2);
        sDot(i) = W * (tFinal - t);
    end
end
