% Question 13: Box-and-whisker plot and skewness
% NOTE: the numbers below are only an EXAMPLE so that the program runs.
% Replace them with the downtime data of the 30 machines from your lecture.

clc; clear; close all;

data = [4 6 7 9 10 11 12 12 13 14 15 15 16 17 18 ...
        18 19 21 22 24 25 27 30 33 36 40 45 52 60 75];   % <-- put your data here

x = sort(data);
n = length(x);

% Quartiles: median of the lower half, median of the whole data, median of the upper half
Q2 = median(x);
if mod(n, 2) == 0
    lower_half = x(1 : n/2);
    upper_half = x(n/2 + 1 : end);
else
    lower_half = x(1 : (n-1)/2);
    upper_half = x((n+3)/2 : end);
end
Q1 = median(lower_half);
Q3 = median(upper_half);

fprintf('Minimum = %.2f\nQ1 = %.2f\nMedian = %.2f\nQ3 = %.2f\nMaximum = %.2f\n', ...
        min(x), Q1, Q2, Q3, max(x));

% Draw the box plot by hand
figure; hold on;
rectangle('Position', [Q1, 0.8, Q3 - Q1, 0.4]);      % the box
plot([Q2 Q2], [0.8 1.2], 'r', 'LineWidth', 2);       % median line
plot([min(x) Q1], [1 1], 'k');                       % left whisker
plot([Q3 max(x)], [1 1], 'k');                       % right whisker
ylim([0 2]); yticks([]);
xlabel('Downtime');
title('Box-and-whisker plot');
hold off;

% Skewness from the plot
if (Q3 - Q2) > (Q2 - Q1)
    disp('Upper part is longer: the distribution is positively skewed (to the right).');
elseif (Q3 - Q2) < (Q2 - Q1)
    disp('Lower part is longer: the distribution is negatively skewed (to the left).');
else
    disp('The distribution is symmetric.');
end
