function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% Uncomment the following code if you want to get optimal C and sigma values.

% v = [0.01 0.03 0.1 0.3 1 3 10 30];
% v_size = size(v, 2);
% 
% trials = zeros(v_size^2, 3);
% 
% for i = 1:v_size
%     for j = 1:v_size
%         C_aux = v(i);
%         sigma_aux = v(j);
%         model = svmTrain(X, y, C_aux, @(x1, x2) gaussianKernel(x1, x2, sigma_aux));
%         predictions = svmPredict(model, Xval);
%         prediction_error = mean(double(predictions ~= yval));
%         trials(j + ((i-1) * v_size), :) = [C_aux sigma_aux prediction_error];
%     end
% end
% 
% [minval, row] = min(min(trials(:,3),[],2));
% 
% C = trials(row, 1);
% sigma = trials(row, 2);
% fprintf('\n\nBest C and sigma values found: [%f,%f]\n\n', C, sigma);

% =========================================================================

end
