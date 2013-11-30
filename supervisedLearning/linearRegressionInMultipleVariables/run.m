%  Linear regression with multiple variables
%% Initialization

%% ================ Part 1: Feature Normalization ================

%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Print out some data points
fprintf('First 10 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:10,:) y(1:10,:)]');

fprintf('Program paused. Press enter to continue.\n');
pause;

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');

[X mu sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];


%% ================ Part 2: Gradient Descent ================
fprintf('Running gradient descent ...\n');

% Choose some alpha value
alpha = 0.01;
num_iters = 400;

% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% Estimate the price of a 1650 sq-ft, 3 br house 
normalizedSquareFeet = (1650 - mu) / sigma;
normalizedNumberOfBedrooms = (3 - mu) / sigma;

% Recall that the first column of X is all-ones. Thus, it does
% not need to be normalized.
normalizedInput = [1, normalizedSquareFeet, normalizedNumberOfBedrooms];
estimatePriceUsingGradientDescent = normalizedInput * theta; % You should change this

fprintf(['Predicted estimatePriceUsingGradientDescent of a 1650 sq-ft, 3 br house ' ...
         '(using gradient descent):\n $%f\n'], estimatePriceUsingGradientDescent);

fprintf('Program paused. Press enter to continue.\n'); 
pause;

%% ================ Part 3: Normal Equations ================

fprintf('Solving with normal equations...\n');

% The following code computes the closed form solution for 
% linear regression using the normal equations. 

%% Load Data
data = csvread('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEquation(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');


% Estimate the price of a 1650 sq-ft, 3 br house
price = [1, 1650, 3] * theta; 

fprintf(['Predicted price of a 1650 sq-ft, 3 br house ' ...
         '(using normal equations):\n $%f\n'], price);

