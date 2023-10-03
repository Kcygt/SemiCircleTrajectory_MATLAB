% Sampled Data
x = data.RC60.T3.Force(:,3);

%Number of samples
n = length(x);

%Sample frequency
fs = n/ data.RC60.T3.Time(end);


%Time or space increment per sample
dt = 1/fs;

%Time or space range for data
t = (0:n-1)/fs;

%Discrete Fourier transform of data (DFT)
y = fft(x);
f = (0:length(y)-1)*fs/length(y);

fshift = (-n/2:n/2-1)*(fs/n);
yshift = fftshift(y);

%
% Plotting
figure(1)
plot(fs/n*(0:n-1),abs(yshift))
title("Complex Magnitude of fft Spectrum")
xlabel("f (Hz)")
ylabel("|fft(X)|")

