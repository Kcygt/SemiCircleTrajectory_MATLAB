% Swept-sine frequency response for the x-axis

% Define parameters
duration = 5;           % Duration of the signal in seconds
fs = 1000;              % Sampling frequency in Hz
f_start = 1;            % Start frequency in Hz
f_end = 10;             % End frequency in Hz

% Generate swept-sine signal
t = 0:1/fs:duration;
frequencies = linspace(f_start, f_end, length(t));
swept_sine = sin(2*pi*frequencies.*t);

% Perform FFT to analyze frequency content
N = length(swept_sine);
frequencies_fft = linspace(0, fs, N);
swept_sine_fft = fft(swept_sine);
magnitude_spectrum = abs(swept_sine_fft);

% Plot frequency response
figure;
plot(frequencies_fft, magnitude_spectrum);
title('Frequency Response for X-axis');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Identify the peak at 1 kHz
target_frequency = 1000;
[~, idx] = min(abs(frequencies_fft - target_frequency));
magnitude_at_1kHz = magnitude_spectrum(idx);
phase_at_1kHz = angle(swept_sine_fft(idx));

% Display magnitude and phase at 1 kHz
disp(['Magnitude at 1 kHz: ' num2str(magnitude_at_1kHz)]);
disp(['Phase at 1 kHz: ' num2str(phase_at_1kHz)]);

% Build a transfer function or state-space model
% (This part depends on the specific characteristics of your system)

% For example, if you assume a simple second-order system:
omega = 2 * pi * target_frequency;
zeta = 0.707; % Damping ratio
numerator = magnitude_at_1kHz;
denominator = [1, 2 * zeta * omega, omega^2];
sys = tf(numerator, denominator);

% Display the transfer function
disp('Transfer Function:');
disp(sys);

% Optional: Plot the step response
figure;
step(sys);
title('Step Response of the System');
