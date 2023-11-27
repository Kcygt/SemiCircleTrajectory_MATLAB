% PD-type Iterative Learning Control in MATLAB

% Define the plant/system
A = [1.5 0.6; 0.8 0.9];
B = [1; 0.5];
C = eye(2);
D = zeros(2,1);

% Discretize the system
Ts = 0.1; % Sampling time
sys = ss(A, B, C, D);
sys_d = c2d(sys, Ts);

% System matrices
Ad = sys_d.A;
Bd = sys_d.B;

% Define control parameters
N = 50; % Number of iterations
u_desired = zeros(N, 1); % Desired input trajectory

% Initialize control input
u = zeros(N, 1);

% PD-type ILC parameters
alpha = 0.1; % Proportional gain
beta = 0.05; % Derivative gain

% Iterative Learning Control Loop
for k = 2:N
    % Simulate the system with the current control input
    y = C * (Ad^(k-1)) * B * u_desired(1:k-1);
    
    % Calculate the error
    error = u_desired(k) - y(end);
    
    % PD-type learning update
    u(k) = u(k-1) + alpha * error + beta * (error - (u(k-1) - u(k-2)));
end

% Plot the results
figure;
subplot(2,1,1);
plot(1:N, u_desired, 'r--', 1:N, u, 'b-');
legend('Desired Trajectory', 'ILC Output');
xlabel('Iteration');
ylabel('Control Input');
title('PD-type ILC Control Input');

subplot(2,1,2);
y_output = lsim(sys_d, u);
time = 0:Ts:(N-1)*Ts;
plot(time, y_output, 'b-');
hold on;
y_desired = lsim(sys_d, u_desired, time);
plot(time, y_desired, 'r--');
legend('Output', 'Desired Output');
xlabel('Time (s)');
ylabel('System Output');
title('System Output with PD-type ILC');
