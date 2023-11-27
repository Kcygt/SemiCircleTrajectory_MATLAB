% PD Control with Iterative Learning Control (ILC) in MATLAB

% Define the plant/system
% For illustration purposes, let's assume a simple first-order system:
%Input Generation
Ts = 0.001;
t = 0:Ts:0.6;
reference = zeros(size(t));
reference(t < 0.3) = 0;
reference((t >= 0.3) & (t < 0.4)) = linspace(0, 0.001, sum((t >= 0.3) & (t < 0.4)));
reference(t >= 0.4) = 0.001;

% Desing Controller

% Define the numerator and denominator of the systems
plant_num = [8.331499999999999e-04 -0.002411635990000 0.001646764298800 0.001386774757085 -0.002226794738657 7.735179924151595e-04 ];
plant_den =  [1 -5.7154 13.723534400000000 -17.734220581599999 13.016931722320001  -5.148338416112000 0.857492875392000];

feedback_num = [12.33590000000000 -35.651984590000005 34.340092218032005  -11.023646014692989];
feedback_den = [1    -2.832900000000000    2.672854940000000    -0.839948725176000];

filter_num = [0.1568 0.126898240000000];
filter_den = [1 -1.25 0.5335];

% Calculate the transfer functions
plant_tf = tf(plant_num,plant_den,Ts);
feedback_tf = tf(feedback_num,feedback_den,Ts);
filter_tf = tf(filter_num,filter_den,Ts);
feedforward_tf = filter_tf / plant_tf;

% PD control parameters
Kp = 2; % Proportional gain
Kd = 50; % Derivative gain

% Iterative Learning Control (ILC) parameters
iterations = 50; % Number of iterations
learning_rate = 0.01; % Learning rate

% Initialize the controller
controller = pid(Kp, 0, Kd);

% Perform Iterative Learning Control
for i = 1:iterations
    % Feedback loop
    closedLoopSystem = feedback(series(plant_tf, feedback_tf), 1);

    % Simulate the closed-loop system
    system_output = lsim(closedLoopSystem, reference, t);

    % Compute the error for this iteration
    error = reference - system_output;

    % Update the controller using ILC
    controller = controller + learning_rate * sum(ilc_update(error, t));

    % Display current iteration
    disp(['Iteration: ' num2str(i)]);
end

% Plot the results
figure;
subplot(2, 1, 1);
plot(t, reference, 'r', t, system_output, 'b');
title('Reference Trajectory and System Output');
legend('Reference', 'System Output');

% subplot(2, 1, 2);
% step(feedback(series(controller, plant), 1));
% title('Step Response with PD Control and ILC');

% Function to compute the ILC update
function update = ilc_update(error, t)
% This is a simple update rule for illustration purposes
% You may need to customize it based on your system and requirements

update = zeros(size(error));
for k = 2:length(t)
    update(k) = update(k-1) + trapz(t(1:k), error(1:k)); % Cumulative integral of error
end
end
