% Question 11: Mean deviation, variance, standard deviation, coefficient of variation

clc; clear;

x = [4 6 2 0 3 5 8];
n = length(x);

m = sum(x) / n;                       % mean
dev = x - m;                          % deviations from the mean

MD = sum(abs(dev)) / n;               % mean deviation
variance = sum(dev.^2) / n;           % variance (divide by n)
sd = sqrt(variance);                  % standard deviation
CV = sd / m * 100;                    % coefficient of variation in percent

fprintf('Mean = %.2f\n', m);
fprintf('Mean deviation = %.2f\n', MD);
fprintf('Variance = %.2f\n', variance);
fprintf('Standard deviation = %.2f\n', sd);
fprintf('Coefficient of variation = %.2f %%\n', CV);

% If the sample formula (divide by n-1) is needed:
fprintf('\nSample variance (n-1) = %.2f\n', sum(dev.^2) / (n-1));
fprintf('Sample standard deviation = %.2f\n', sqrt(sum(dev.^2) / (n-1)));
