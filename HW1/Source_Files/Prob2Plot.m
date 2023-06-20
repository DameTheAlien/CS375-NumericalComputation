%
% Script: Prob2table
% Plots the sub plots of the error
% and the h range values.
%
x = logspace(-1,-9,9);
y = [];
E = exp(sin(x)); 
for k = 1 : length(x)
  err = abs(E(k) - 0.9);
  y(end + 1) = err;
  subplot(2, 1, 1)
  plot(h, '-o')
  set(gca, 'XTick', -1:1:1);
  set(gca, 'XTickLabel', 0:1:2);
  title('Graph of h values')
  subplot(2, 1, 2)
  plot(y, '-o')
  set(gca, 'XTick', -1:1:1);
  set(gca, 'XTickLabel', 0:1:2);
  title('Graph of ERROR values')
end