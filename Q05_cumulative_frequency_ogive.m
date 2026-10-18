% Question 5: "Less than" cumulative frequency distribution and ogive

clc; clear; close all;

f = [2 4 14 8 2];                               % frequencies of the 5 classes
upper_boundary = [32.95 35.95 38.95 41.95 44.95];

cf = cumsum(f);                                 % cumulative frequency

disp('Less than     Cumulative frequency');
fprintf('29.95              0\n');
for i = 1:length(f)
    fprintf('%.2f             %d\n', upper_boundary(i), cf(i));
end

% Ogive: plot upper boundaries against cumulative frequencies
x = [29.95 upper_boundary];
y = [0 cf];
figure;
plot(x, y, '-o', 'LineWidth', 1.5);
grid on;
xlabel('Upper class boundary (less than)');
ylabel('Cumulative frequency');
title('Less than ogive');
