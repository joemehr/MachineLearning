function predictions = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
numberOfTrainingExamples = size(X, 1);
numberOfLabels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1); % p = m x 1 column vector

X = [ones(numberOfTrainingExamples, 1) X];
% Now X = 5000 x 401 matrix

% a1 = 5000 x 401 matrix
a1 = X;

% Theta1' = 401 x 25 matrix
% a2 = 5000 x 25 matrix
a2 = sigmoid(a1 * Theta1');
a2 = [ones(numberOfTrainingExamples, 1) a2]; % add an extra column vector of 1's
% Now a2 = 5000 x 26 matrix

% Theta2' = 26 x 10 matrix
% a3 = 5000 x 10 matrix
a3 = sigmoid(a2 * Theta2');

[M, predictions] = max(a3, [], 2);

end