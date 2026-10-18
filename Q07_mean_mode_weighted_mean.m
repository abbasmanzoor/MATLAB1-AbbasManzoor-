% Question 7: Arithmetic mean, mode and weighted mean

clc; clear;

x = [2 7 9 5 8 9 10 9];

mean_x = sum(x) / length(x);     % arithmetic mean = sum / n
mode_x = mode(x);                % most repeated value

fprintf('Sum = %d, n = %d\n', sum(x), length(x));
fprintf('Arithmetic mean = %.3f\n', mean_x);
fprintf('Mode = %d\n\n', mode_x);

% Weighted mean example: marks in two courses with different credit hours
marks  = [80 60];
weight = [3 1];                  % credit hours
weighted_mean = sum(weight .* marks) / sum(weight);
fprintf('Simple mean of marks = %.1f\n', mean(marks));
fprintf('Weighted mean of marks = %.1f\n', weighted_mean);
disp('The weighted mean is used when the values have different importance.');
