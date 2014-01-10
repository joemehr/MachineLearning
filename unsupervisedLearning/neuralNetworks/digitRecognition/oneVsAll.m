function [all_theta] = oneVsAll(X, y, numberOfLabels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th row of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, numberOfLabels, lambda) trains numberOfLabels
%   logisitc regression classifiers and returns each of these classifiers
%   in a matrix all_theta, where the i-th row of all_theta corresponds 
%   to the classifier for label i

% Some useful variables
numberOfTrainingExamples = size(X, 1); 
numberOfPixelsInAImage = size(X, 2); 

% You need to return the following variables correctly 
all_theta = zeros(numberOfLabels, numberOfPixelsInAImage + 1);

% X = numberOfTrainingExamples x 400 matrix since each 20 x 20 pixel image 
% has been converted into a column vector 400 x 1.

% Adds a column vector of 1's to the left most column of the X data matrix
X = [ones(numberOfTrainingExamples, 1) X]; % Now X = numberOfTrainingExamples x 401 matrix

% y = 400 x 1 column vector where the value at each row index is the correct
% label (of the handwritten digit) for corresponding row index in the the matrix X
% NOTE: the digit '0' has been remapped to the label '10'

% Set Initial theta
initial_theta = zeros(numberOfPixelsInAImage + 1, 1);
     
% Set options for fmincg. fmincg works similarly to fminunc, but is more 
% efficient when we are dealing with large number of parameters.
options = optimset('GradObj', 'on', 'MaxIter', 50);
 
% Run fmincg to obtain the optimal theta

for currentLabel = 1:numberOfLabels
	% all_theta = numberOfLabels x 401 (extra column of 1's)
	all_theta(currentLabel, :) = fmincg( @(t)(costFunctionRegularized(t, X, (y == currentLabel), lambda)), initial_theta, options);
end

end