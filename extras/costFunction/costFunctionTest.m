clear ; close all; clc

data = load('data.txt');

X = data(:, 1);
y = data(:, 2);

m = length(y);

X = [ones(m, 1) X];

fprintf('Running cost function with given data file... \n');

% -------------------------------------------

theta = zeros(2, 1);
fprintf('Executing with theta values: \n');
theta

J = costFunctionCalculator(X, y, theta);

fprintf('The cost J is: %f \n\n', J);

% -------------------------------------------

theta = [0.5; 0.5];
fprintf('Executing with theta values: \n');
theta

J = costFunctionCalculator(X, y, theta);

fprintf('The cost J is: %f \n\n', J);

% -------------------------------------------

theta = [1; 1];
fprintf('Executing with theta values: \n');
theta

J = costFunctionCalculator(X, y, theta);

fprintf('The cost J is: %f \n\n', J);