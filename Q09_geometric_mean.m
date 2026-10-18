% Question 9: Geometric mean

clc; clear;

x = [45 32 37 46 39 36 41 48 36];
n = length(x);

logs = log10(x);                 % log of each value
sum_log = sum(logs);
gm = 10 ^ (sum_log / n);         % G.M. = antilog( sum(log x) / n )

disp('  x     log x');
for i = 1:n
    fprintf('%3d   %.4f\n', x(i), logs(i));
end
fprintf('Sum of logs = %.4f\n', sum_log);
fprintf('Sum of logs / n = %.4f\n', sum_log / n);
fprintf('Geometric mean = %.2f\n', gm);
