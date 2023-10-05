% Define your data points (x, y)
x = [1, 5]; % X-coordinates
y = [3, 6]; % Y-coordinates

% Fit a fourth-order polynomial to the data points
degree = 4;
coefficients = polyfit(x, y, degree);

% Generate a finer x-grid for the smooth trajectory
x_finer = linspace(min(x), max(x), 1000);

% Evaluate the polynomial at the finer x-grid points
y_finer = polyval(coefficients, x_finer);

% Plot the original data points and the polynomial trajectory
figure;
plot(x, y, 'o', 'MarkerSize', 10, 'LineWidth', 2); % Original data points
hold on;
plot(x_finer, y_finer, 'LineWidth', 2); % Fourth-order polynomial trajectory
xlabel('X');
ylabel('Y');
title('Fourth-Order Polynomial Trajectory');
legend('Data Points', 'Fourth-Order Polynomial');
grid on;
hold off;
