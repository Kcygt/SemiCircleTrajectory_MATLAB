% Define the transfer function of the system
num = 1;
den = [1, 2, 1];
G = tf(num, den);

% Define the desired reference trajectory
t = linspace(0, 1, 100); % Time vector
r = sin(2*pi*t); % Desired sinusoidal reference trajectory

% Number of iterations for ILC
iterations = 100;

% Initialize control input and error signal
u_prev = zeros(size(t)); % Initial control input (zero)
e_prev = zeros(size(t)); % Initial error signal (zero)

% Iterative Learning Control (ILC) loop
for k = 1:iterations
    % Simulate the system with the previous control input
    [~, y, ~] = lsim(G, u_prev, t);
    
    % Calculate the error signal
    e = r - y';
    
    % Proportional controller
    Kp = 1; % Proportional gain
    u_ILC = u_prev + Kp * e - Kp * e_prev;
    
    % Update the control input and error signal for the next iteration
    u_prev = u_ILC;
    e_prev = e;
end

% Plot the reference trajectory and the output of the system
figure;
plot(t, r, 'r--', 'LineWidth', 2);
hold on;
plot(t, y, 'b-', 'LineWidth', 1.5);
xlabel('Time');
ylabel('Amplitude');
legend('Reference', 'Output');
title('ILC Example');
grid on;

