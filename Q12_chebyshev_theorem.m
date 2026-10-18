% Question 12: Chebyshev's theorem
% At least (1 - 1/k^2) of the values lie within k standard deviations of the mean.

clc; clear;

m = 150;          % mean
s = 25;           % standard deviation
p = 0.75;         % required proportion (75%)

% 1 - 1/k^2 = p   ->   k = 1 / sqrt(1 - p)
k = 1 / sqrt(1 - p);

lower = m - k * s;
upper = m + k * s;

fprintf('k = %.0f\n', k);
fprintf('At least %.0f%% of the values lie between %.0f and %.0f\n', p*100, lower, upper);

% Empirical rule (for bell-shaped data)
disp(' ');
disp('Empirical rule:');
for k = 1:3
    pct = [68 95 99.7];
    fprintf('about %.1f%% of values lie between %.0f and %.0f\n', pct(k), m - k*s, m + k*s);
end
