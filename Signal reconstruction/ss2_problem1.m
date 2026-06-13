% SAMPLING THEOREM : Signal reconstruction
function ss2_problem1(n)
% -----------------------------
% Define continuous signal
% -----------------------------
T = 0.0025;                    % base temporal resolution
t = 0:T:1;                     % time vector from 0 to 1 s
x = 4*sin(2*pi*t) + cos(pi/4 + 16*pi*t);    % continuous-time signal

% -----------------------------
% Define sampling
% -----------------------------
Ts = T * n;                    % sampling interval
fs = 1 / Ts;                   % sampling frequency


tk = downsample(t, n);                 
xk = downsample(x,n);    

% ----------------------------------
% Original and sampled signals
% ----------------------------------

subplot(2,1,1)
plot(t, x, 'b', 'LineWidth', 1.2); hold on
stem(tk, xk, 'r', 'filled', 'LineWidth', 1.0)
xlabel('Time (s)')
ylabel('Amplitude')
title('Continuous and Sampled Signals ')
legend('Original Signal x(t)', 'Samples x_k', 'Location', 'best')
grid on
xlim([0 1])

% -----------------------------
% Reconstruct the signal 
% -----------------------------
% Sinc interpolation formula:
%   x_recon(t) = sum_k xk * sinc((t - k*Ts)/Ts)

x_recon = zeros(size(t));
for k = 1:length(xk)
    x_recon = x_recon + xk(k) * sinc((t - tk(k)) / Ts);
end

% -----------------------------
% Reconstructed signal
% -----------------------------
subplot(2,1,2)
plot(t, x, 'b', 'LineWidth', 1.2); hold on
plot(t, x_recon, 'r--', 'LineWidth', 1.2)
xlabel('Time (s)')
ylabel('Amplitude')
title('Signal Reconstruction')
legend('Original x(t)', 'Reconstructed \tilde{x}(t)', 'Location', 'best')
grid on
xlim([0 1])

end