% Question 10: Quartile deviation and its coefficient

clc; clear;

Q1 = 60;
Q2 = 185;     % median (not needed in these formulas)
Q3 = 270;

QD = (Q3 - Q1) / 2;                   % quartile deviation
coef_QD = (Q3 - Q1) / (Q3 + Q1);      % coefficient of quartile deviation

fprintf('Quartile deviation = %.0f\n', QD);
fprintf('Coefficient of quartile deviation = %.3f\n', coef_QD);
