clc;
clear;

%% Test signal
x = [1:10];

%% Compare outputs
X_myDFT = myDFT(x);
X_fft   = fftshift(fft(x));

disp('Custom DFT:');
disp(X_myDFT);

disp('MATLAB fft:');
disp(X_fft);

%% Runtime comparison
x_large = rand(1,10000);

profile on;

tic;
myDFT(x_large);
time_myDFT = toc;

tic;
fft(x_large);
time_fft = toc;

profile viewer;

fprintf('\nCustom DFT runtime: %f seconds\n', time_myDFT);
fprintf('MATLAB fft runtime: %f seconds\n', time_fft);

s