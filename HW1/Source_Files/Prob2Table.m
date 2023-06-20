%
% Script: Prob2table
% Makes the table for problem 2 and approximates
% the error from the given range h.
%
x = logspace(-1,-9,9);
E = exp(sin(x)); 
fid=fopen('Prob2Table.txt','w');
fprintf(fid,'---------------------------------------------------\n');
fprintf(fid,'|        h         |        E        |   error(E) |\n');
fprintf(fid,'---------------------------------------------------\n');
for k = 1 : length(x)
  err = abs(E(k) - 0.9);
  sci = x(k) * 10;
  fprintf(fid,'| %1.14f | %1.14f | %1.3e |\n', sci, E(k), err);
end
fprintf(fid,'---------------------------------------------------\n');
fprintf(fid,'Compares absolute errors of exp(sin(x))');
fclose(fid);