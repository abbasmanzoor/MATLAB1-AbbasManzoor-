% Question 6: Stem-and-leaf display and mode

clc; clear;

ages = [48 31 54 37 18 64 61 43 40 71 51 12 52 65 53 42 39 62 74 48 29 67 30 49 68 35 57 26 27 58];
ages = sort(ages);

stems = floor(ages / 10);       % tens digit  -> stem
leaves = mod(ages, 10);         % units digit -> leaf

disp('Stem | Leaves');
for s = unique(stems)
    fprintf(' %d   | ', s);
    fprintf('%d ', leaves(stems == s));
    fprintf('\n');
end
disp('Key: 4 | 8 means 48');

fprintf('\nMode = %d\n', mode(ages));
