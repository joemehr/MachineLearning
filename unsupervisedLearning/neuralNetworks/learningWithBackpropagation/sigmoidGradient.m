function gradientOfSigmoidFunction = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   gradientOfSigmoidFunction = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.

gradientOfSigmoidFunction = zeros(size(z));

% Compute the gradient(derivative) of the sigmoid function evaluated at each value 
% of z (z can be a matrix, vector or scalar).

gradientOfSigmoidFunction = sigmoid(z) .* (1 - sigmoid(z));

end
