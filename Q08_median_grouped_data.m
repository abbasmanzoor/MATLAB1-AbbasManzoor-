% Question 8: Median of grouped data and the empirical relation

clc; clear;

f = [2 4 14 8 2];                               % frequencies
lower_b = [29.95 32.95 35.95 38.95 41.95];      % lower class boundaries
h = 3;                                          % class width
mid = [31.45 34.45 37.45 40.45 43.45];          % class mid-points

n = sum(f);
cf = cumsum(f);

% median class = first class whose cumulative frequency is at least n/2
m = find(cf >= n/2, 1);
if m == 1
    C = 0;
else
    C = cf(m-1);                                % cumulative frequency before median class
end

median_x = lower_b(m) + (h / f(m)) * (n/2 - C);
mean_x = sum(f .* mid) / n;
mode_x = 3*median_x - 2*mean_x;                 % empirical relation: Mode = 3 Median - 2 Mean

fprintf('n = %d, n/2 = %.0f\n', n, n/2);
fprintf('Median class number = %d\n', m);
fprintf('Median = %.2f\n', median_x);
fprintf('Mean (from mid-points) = %.2f\n', mean_x);
fprintf('Mode (from Mean - Mode = 3(Mean - Median)) = %.2f\n', mode_x);
