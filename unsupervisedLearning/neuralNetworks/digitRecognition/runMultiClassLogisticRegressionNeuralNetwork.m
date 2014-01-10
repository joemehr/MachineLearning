%% One-vs-all

%% Initialization
clear ; close all; clc

%% Setup the parameters you will use for this part of the exercise
inputLayerSize = 400;  % 20 pixel x 20 pixel input Images of Digits
numberOfLabels = 10;      % 10 labels, from 1 to 10   
                          % (note that we have mapped "0" to label 10)

%% =========== Loading and Visualizing Data =============
%  We start the exercise by first loading and visualizing the dataset. 
%  You will be working with a dataset that contains handwritten digits.

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

load('inputTrainingSetOf5000HandwrittenDigitsAndLabels.mat'); % training data stored in arrays X, y
m = size(X, 1);
 
% Randomly select 100 data points to display
randomIndices = randperm(m);
randomlySelectedIndices = X(randomIndices(1:100), :);
 
displayData(randomlySelectedIndices);
title('Example of 100 Randomly Selected Digits from Input Training Set');

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ============ Vectorize Logistic Regression ============
%  one-vs-all classification for the handwritten digit dataset
%  using vectorized logistic regression with regularization

fprintf('\nTraining One-vs-All Logistic Regression...\n')

lambda = 0.1;
[all_theta] = oneVsAll(X, y, numberOfLabels, lambda);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ================ Predict for One-Vs-All ================
% predictions = m x 1 column vector
predictions = predictOneVsAll(all_theta, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(predictions == y)) * 100);