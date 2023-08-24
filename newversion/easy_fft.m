function [X, freqs] = easy_fft(x, fs)
  L = length(x);
  NFFT = 2^nextpow2(length(x));
  X = fft(x, NFFT);
  X = 2/L*X(1:NFFT/2 + 1); % 2/L is the required scaling
  freqs = fs/2*linspace(0,1,NFFT/2+1); % Frequency vector
 end