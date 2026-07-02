function signal = dtmf_local(digits,fs)
t_digit = 0.075;    % 75ms per digit
t_break = 0.030;    % 30ms between digits
    
% frequencies from DTMF table
f_row = [697, 770, 852, 941]; 
f_col = [1209, 1336, 1477];   
keys = {'1','2','3'; '4','5','6'; '7','8','9'; '*','0','#'};
    
signal = [];

for i = 1:length(digits)
     % find row and column index of current digit
     [r, c] = find(strcmp(keys, digits(i)));
        
     % generate time vector for 75ms
     t = 0 : 1/fs : t_digit;
        
     % sum two harmonic waves (row frequency + column frequency)
     tone = sin(2*pi*f_row(r)*t) + sin(2*pi*f_col(c)*t); 
        
     % append tone and silent break (zeros) to the total signal
     break_samples = zeros(1, round(t_break * fs));
     signal = [signal, tone, break_samples]; 
end

end