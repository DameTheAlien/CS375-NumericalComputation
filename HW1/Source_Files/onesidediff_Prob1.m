function[fp] = onesidediff(f, x, h)
%
% Script: onesidediff(f, x, h)
% Approximates the derivative with a function
% that the user passes through and returns the
% approximated values of the derivative.
%
faprox = abs((f(x + h) - f(x))/(h));
fp = faprox;