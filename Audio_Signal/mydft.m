function X = mydft(x)
    N = length(x);
    n = 0:N-1;
    k = (-N/2:N/2-1)';
    u1 = (k * n)';
    u2 = exp(-1j*2*pi*u1/N);
    xMat = x' * ones(1,N);
    argMat = u2 .* xMat;
    X = sum(argMat,1);
end