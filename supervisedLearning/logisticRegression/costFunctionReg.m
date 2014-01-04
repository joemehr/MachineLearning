function [costJWithRegularization, gradientWithRegularization] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
% y = mx1 column vector
numberOfTrainingExamples = length(y); % = m

% return the following variables correctly  
costJ = 0; % costJ = single number 
gradient = zeros(size(theta)); % gradient = nx1 column vector (same size as theta)

% Compute the costJ of a particular choice of theta

% compute cost costJ
% X = mxn matrix
% theta = nx1 column vector
hypothesis = sigmoid(X*theta); % hypothesis = mx1 column vector
 
% costJ = single number 
costJ = (-1/numberOfTrainingExamples) * sum( y .* log(hypothesis) + (1 - y) .* log(1 - hypothesis) );

costRegularizationTerm = lambda/(2*numberOfTrainingExamples) * sum( theta(2:end).^2 );

costJWithRegularization = costJ + costRegularizationTerm;

% Compute the partial derivatives and set gradiant to the partial
% derivatives of the cost w.r.t. each parameter in theta

% compute the gradient 
for i = 1:numberOfTrainingExamples
	% hypothesis = mx1 column vector
	% y = mx1 column vector
	% X = mxn matrix
	gradient = gradient + ( hypothesis(i) - y(i) ) * X(i, :)';
end

gradientRegularizationTerm = lambda/numberOfTrainingExamples * [0; theta(2:end)]; 
% where [0; theta(2:end)] is the same column vector theta beginning with a value of '0' at index
% 1 and then containing the old values from index 2:end of theta

% gradient = nx1 column vector
gradientWithRegularization = (1/numberOfTrainingExamples) * gradient + gradientRegularizationTerm;

end
