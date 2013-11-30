function [theta] = normalEquation(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% computes the closed form solution to linear regression and 
% puts the result in theta
theta = pinv(X' * X) * X' * y;

end
