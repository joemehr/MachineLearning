function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier. The labels 
%are in the range 1..K, where K = size(all_theta, 1). 
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th row is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples) 

numberOfTrainingExamples = size(X, 1); % = m
numberOfLabels = size(all_theta, 1); % = n

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1); % p = m x 1 column vector

% Adds a column vector of 1's to the left most column of the X data matrix
X = [ones(numberOfTrainingExamples, 1) X]; % Now X = m x (n + 1) matrix

% X = m x 401
% all_theta = n x 401 (extra column of 1's)
% hypothesisForAllDigits = m x n matrix where element_ixj = the probability
%   that the input image along row vector X(i, :) is digit value j (where j = 10 = digit '0')
hypothesisForAllDigits = sigmoid(X * all_theta'); 

[M, p] = max(hypothesisForAllDigits, [], 2); % obtains the maximum number in all row vector 
 											 % in matrix hypothesisForAllDigits

end