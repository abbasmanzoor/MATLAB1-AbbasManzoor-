% Question 14: Bowley's coefficient of skewness and percentile coefficient of kurtosis
% NOTE: the numbers below are only an EXAMPLE so that the program runs.
% Replace them with the ages of the children from your lecture
% (run the program once for each group of workers).

clc; clear;

ages = [3 4 4 5 5 6 6 7 7 8 8 9 10 10 11 12 12 13 14 15];   % <-- put your data here

x = sort(ages);
n = length(x);

% Percentile by simple linear interpolation between neighbouring values
p = [0.10 0.25 0.50 0.75 0.90];
val = zeros(1, 5);
for i = 1:5
    pos = 1 + (n - 1) * p(i);
    lo = floor(pos);
    hi = ceil(pos);
    val(i) = x(lo) + (pos - lo) * (x(hi) - x(lo));
end
P10 = val(1); Q1 = val(2); Q2 = val(3); Q3 = val(4); P90 = val(5);

% Bowley's coefficient of skewness
Sk = (Q3 + Q1 - 2*Q2) / (Q3 - Q1);

% Percentile coefficient of kurtosis
K = ((Q3 - Q1) / 2) / (P90 - P10);

fprintf('Q1 = %.2f, Median = %.2f, Q3 = %.2f\n', Q1, Q2, Q3);
fprintf('Bowley skewness = %.3f\n', Sk);
if Sk > 0
    disp('Positively skewed.');
elseif Sk < 0
    disp('Negatively skewed.');
else
    disp('Symmetric.');
end

fprintf('Percentile coefficient of kurtosis = %.3f (normal curve = 0.263)\n', K);
if K > 0.263
    disp('Platykurtic (flatter than normal).');
elseif K < 0.263
    disp('Leptokurtic (more peaked than normal).');
else
    disp('Mesokurtic (normal).');
end
