%
% Script: Prob2table
% This function will start the process of
% solving the error and running that commands
% to help show what the error is compared to 
% N values. This will also plot both.
%
f = @(x) exp(sin(x));
N = linspace(4, 36, 9)
colV = linspace(0, 2*pi, 4);
x = (2*pi*(colV - 1))/4;
h = pi;
fx = onesidediff(f, x, h)
D = FourierDerivativeMatrix(4)
g = D.*x;
err = abs(g-1);
subplot(2, 1, 1);
plot(N, '-o');
title('Graph of N values')
subplot(2, 1, 2);
plot(err, '-o');
title('Graph of error values')