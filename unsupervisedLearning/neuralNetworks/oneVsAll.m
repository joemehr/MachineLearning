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
X = [ones(numberOfTrainingExamples, 1) X];

% y = 400 x 1 column vector where the value at each row index is the correct
% label (of the handwritten digit) for corresponding row index in the the matrix X
% NOTE: the digit '0' has been remapped to the label '10'



% You should complete the following code to train numberOfLabels
% logistic regression classifiers with regularization parameter lambda. 
%
% Hint: theta(:) will return a column vector.
%
% Hint: You can use y == c to obtain a vector of 1's and 0's that tell use 
%       whether the ground truth is true/false for this class.
%
%       fmincg works similarly to fminunc, but is more efficient when we
%       are dealing with large number of parameters.



% Set Initial theta
initial_theta = zeros(numberOfPixelsInAImage + 1, 1);
     
% Set options for fmincg. fmincg works similarly to fminunc, but is more 
% efficient when we are dealing with large number of parameters.
options = optimset('GradObj', 'on', 'MaxIter', 50);
 
% Run fmincg to obtain the optimal theta
% This function will return theta and the cost 
[theta] = ...
    fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
        initial_theta, options);

end