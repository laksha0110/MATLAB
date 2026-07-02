%% Lab 3 - Problem 3

fs = 8000; % 8kHz

% (d) analysis of current signal
[y, fs_wav] = audioread('touchtone1.wav'); 

% spectrum of loaded file
N_y = length(y);
Y_mag = abs(fft(y));
f_y = (-N_y/2 : N_y/2-1) * (fs_wav / N_y);

% plot sample's spectrum
figure;
subplot(2,1,1);
plot(y);
title('Time Domain: touchtone1.wav');
xlabel('Samples');
ylabel('Amplitude');

subplot(2,1,2);
plot(f_y, Y_mag);
title('Frequency Domain: touchtone1.wav');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

% generation of dtmf signal
digits = '1757950840';
dtmf_signal = dtmf_local(digits, fs);

% play sound
soundsc(dtmf_signal, fs);
N_gen = length(dtmf_signal);
f_gen = (-N_gen/2 : N_gen/2-1) * (fs / N_gen);

% plot generated signal's spectrum
figure;
subplot(2,1,1);
plot(dtmf_signal);
title(['Time Domain: My Number (', digits, ')']); 
xlabel('Samples');
ylabel('Amplitude');

subplot(2,1,2);
plot(f_gen, abs(fft(dtmf_signal)));
title('Frequency Domain: My Number Spectrum');
xlabel('Frequency (Hz)'); 
ylabel('Magnitude');
grid on;