function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% Compute the sigmoid of each value of z (where z can be a matrix,
% vector or scalar).

g = 1./(1 + e.^(-z));

end
