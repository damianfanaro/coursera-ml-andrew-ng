function J = costFunctionCalculator(X, y, theta)

m = length(y);

J = 0;

h = X * theta;
sqrtErrors = (h - y) .^ 2;

J = 1 / (2 * m) * sum(sqrtErrors);

end