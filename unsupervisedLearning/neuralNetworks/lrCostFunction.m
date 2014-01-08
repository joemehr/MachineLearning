function [costJWithRegularization, gradientWithRegularization] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   costJ = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
numberOfTrainingExamples = length(y); % number of training examples

% You need to return the following variables correctly 
costJ = 0; % costJ = single number
gradient = zeros(size(theta)); % gradient = nx1 column vector 

hypothesis = sigmoid(X * theta); % hypothesis = mx 1 column vector
% each row of hypothesis will contain the value of the prediction for that example.
% You can make use of this to vectorize the cost function and gradient computations.

% costJ = single number 
costJ = (-1/numberOfTrainingExamples) * sum( y .* log(hypothesis) + (1 - y) .* log(1 - hypothesis) );

costRegularizationTerm = lambda/(2*numberOfTrainingExamples) * sum( theta(2:end).^2 );

costJWithRegularization = costJ + costRegularizationTerm;

% Compute the partial derivatives and set gradiant to the partial
% derivatives of the cost w.r.t. each parameter in theta

% compute the vectorized gradient 

% hypothesis = mx1 column vector where m = numberOfTrainingExamples
% y = mx1 column vector
% X = mxn matrix
% gradient = nx1 column vector 
gradient = X' * ( hypothesis - y );

gradientRegularizationTerm = lambda/numberOfTrainingExamples * [0; theta(2:end)]; 
% where [0; theta(2:end)] is the same column vector theta beginning with a value of '0' at index
% 1 and then containing the old values from index 2:end of theta

% gradient = nx1 column vector
gradientWithRegularization = (1/numberOfTrainingExamples) * gradient + gradientRegularizationTerm;

% force all columns of matrix into one long column vector
gradientWithRegularization = gradientWithRegularization(:);

end