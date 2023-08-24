figure(1)
hold on; grid on;

FC50.T3.Force(:,1);
xlabel('Time(s)')
ylabel('Force(N) - Velocity(m/s)')
title('Radius = 5cm for flat surface')
legend('Force in x axes','Velocity in z axes')



 fs = 1/y(2, 1); % Convert time step to sample rate
 [A, freq] = easy_fft(y(:, 2), fs); % Acceleration
 [F, ~] = easy_fft(y(:, 3), fs); % Force