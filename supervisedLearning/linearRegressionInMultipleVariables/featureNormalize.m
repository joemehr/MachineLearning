function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;

% size(X, 2) = # of columns in matrix X
% mu and sigma = row vector of size 1xn where n is the # of 
% rows in X (# of training data)
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%     

% Parameter X: Any real mxn matrix 
%      Return: mu = 1xn row vector
%              sigma = 1xn row vector sigma
%              X_norm = mxn matrix which has been normalized 
%                       with mu and sigma
numberOfColumnsInX_norm = columns(X_norm);
% works with input matrix X of any size
for i = 1:numberOfColumnsInX_norm, 
	meanOfCurrentFeatureInX = mean(X(:, i));
	mu(:, i) = meanOfCurrentFeatureInX;

	X_norm(:, i) = X_norm(:, i) .- mu(:, i);

	standardDeviationOfCurrentFeatureInX = std(X(:, i));
	sigma(:, i) = standardDeviationOfCurrentFeatureInX;

	X_norm(:, i) = X_norm(:, i) ./ sigma(:, i);
end

% vectorized implementation
%mu = mean(X);

% for each row in matrix X_norm subtract by row vector mu

%muRepeatedToHaveSameNumberOfRowsAsX = 

%X_norm = X_norm .- mu;

%sigma = std(X);
%X_norm = X_norm ./ sigma;

end
