% Question 15: Least-squares regression line Y = a + bX, standard error and correlation

clc; clear; close all;

X = [1 2 3 4 5];
Y = [1 1 2 2 4];
n = length(X);

% Sums needed for the normal equations
sx = sum(X);  sy = sum(Y);
sxy = sum(X .* Y);
sx2 = sum(X.^2);
sy2 = sum(Y.^2);

% Slope and intercept
b = (n*sxy - sx*sy) / (n*sx2 - sx^2);
a = (sy - b*sx) / n;
fprintf('Regression line: Y = %.1f + %.1f X\n', a, b);

% Standard error of estimate
Yhat = a + b*X;                         % estimated values
SSE = sum((Y - Yhat).^2);               % sum of squared errors
Se = sqrt(SSE / (n - 2));
fprintf('Sum of squared errors = %.2f\n', SSE);
fprintf('Standard error of estimate = %.3f\n', Se);

% Correlation coefficient
r = (n*sxy - sx*sy) / sqrt((n*sx2 - sx^2) * (n*sy2 - sy^2));
fprintf('Correlation r = %.2f\n', r);
fprintf('r squared = %.2f\n', r^2);
if r > 0.7
    disp('Strong positive relationship between X and Y.');
end

% Graph of the data and the fitted line
figure;
plot(X, Y, 'o', 'MarkerFaceColor', 'b'); hold on;
plot(X, Yhat, '-r', 'LineWidth', 1.5);
xlabel('X'); ylabel('Y');
title('Least-squares regression line');
legend('Data', 'Fitted line', 'Location', 'northwest');
grid on;
