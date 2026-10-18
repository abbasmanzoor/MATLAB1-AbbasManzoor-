% Question 1: Statistics (singular / plural) and types of variables
% This program just prints the definitions and classifies some example variables.

clc; clear;

disp('--- Statistics ---');
disp('Singular: the science of collecting, organizing, presenting, analyzing and interpreting data.');
disp('Plural  : the numerical facts / figures themselves (e.g. population figures of a country).');
disp(' ');

% Example variables: name, quantitative or qualitative, discrete or continuous
names = {'Height of students', 'Gender', 'Number of children in a family', 'Temperature'};
kind  = {'Quantitative', 'Qualitative', 'Quantitative', 'Quantitative'};
type  = {'Continuous',   '-',           'Discrete',      'Continuous'};

disp('--- Classification of variables ---');
for i = 1:length(names)
    fprintf('%-32s : %-13s : %s\n', names{i}, kind{i}, type{i});
end
