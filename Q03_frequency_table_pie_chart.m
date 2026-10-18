% Question 3: Frequency table, percentage frequency and pie chart
% Data: U, U, E, U, E, E, U, U

clc; clear; close all;

data = {'U','U','E','U','E','E','U','U'};
n = length(data);

% unique() gives the different categories, idx tells which category each value belongs to
[cats, ~, idx] = unique(data);
f = accumarray(idx, 1)';          % frequency of each category
percent = f / n * 100;            % percentage frequency
angle = f / n * 360;              % angle of each slice in the pie chart

disp('Category   Frequency   Percentage   Angle');
for i = 1:length(cats)
    fprintf('   %s           %d         %5.1f %%      %5.1f\n', cats{i}, f(i), percent(i), angle(i));
end
fprintf('Total        %d         %5.1f %%\n', sum(f), sum(percent));

% Pie chart
figure;
pie(f, cats);
title('Pie chart of the data');
