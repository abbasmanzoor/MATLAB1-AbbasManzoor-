% Question 4: Grouped frequency distribution with 5 classes (EPA mileage data)

clc; clear;

d = [36.3 42.1 44.9 30.1 37.5 32.9 40.5 40.0 40.2 36.2 35.6 35.9 38.5 38.8 38.6 ...
     36.3 38.4 40.5 41.0 39.0 37.0 37.0 36.7 37.1 37.1 34.8 33.9 39.9 38.1 39.8];

k = 5;                                  % number of classes
range_d = max(d) - min(d);              % step 1: range
width = round(range_d / k);             % step 2: class width (14.8/5 = 2.96, so 3)
fprintf('Range = %.1f, class width = %d\n\n', range_d, width);

lower = 30.0;                           % lower limit of the first class
disp('Class limits      Class boundaries     Frequency');
total = 0;
for i = 1:k
    lo_limit = lower + (i-1)*width;     % e.g. 30.0
    up_limit = lo_limit + width - 0.1;  % e.g. 32.9
    lo_b = lo_limit - 0.05;             % class boundaries
    up_b = up_limit + 0.05;
    f = sum(d >= lo_b & d < up_b);      % count values inside the class
    total = total + f;
    fprintf('%.1f - %.1f      %.2f - %.2f          %d\n', lo_limit, up_limit, lo_b, up_b, f);
end
fprintf('Total = %d\n', total);
