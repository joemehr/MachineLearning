%% Neural Networks

%% Initialization
clear ; close all; clc

%% Setup the parameters you will use for this exercise
inputLayerSize  = 400;  % 20x20 Input Images of Digits
hiddenLayerSize = 25;   % 25 hidden units
numberOfLabels = 10;      % 10 labels, from 1 to 10   
                          % (note that we have mapped "0" to label 10)

%% =========== Loading and Visualizing Data =============
%  We start the exercise by first loading and visualizing the dataset. 
%  You will be working with a dataset that contains handwritten digits.
%

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

load('inputTrainingSetOf5000HandwrittenDigitsAndLabels.mat'); % training data stored in arrays X, y
numberOfTrainingExamples = size(X, 1);

% Randomly select 100 data points to display
sel = randperm(size(X, 1));
sel = sel(1:100);

displayData(X(sel, :));

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ================ Loading Pameters ================
fprintf('\nLoading Saved Neural Network Parameters ...\n')

% Load the weights into variables Theta1 and Theta2
load('Theta1AndTheta2.mat');

% the matrices Theta1 and Theta2 will now be in your Octave
% environment
% Theta1 has size 25 x 401
% Theta2 has size 10 x 26

%% ================= Implement Predict =================
%  After training the neural network, we would like to use it to predict
%  the labels. You will now implement the "predict" function to use the
%  neural network to predict the labels of the training set. This lets
%  you compute the training set accuracy.

predictions = predict(Theta1, Theta2, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(predictions == y)) * 100);

fprintf('Program paused. Press enter to continue.\n');
pause;

%  To give you an idea of the network's output, you can also run
%  through the examples one at the a time to see what it is predicting.

%  Randomly permute examples
rp = randperm(numberOfTrainingExamples);

for i = 1:numberOfTrainingExamples
    % Display 
    fprintf('\nDisplaying Example Image\n');
    displayData(X(rp(i), :));

    predictions = predict(Theta1, Theta2, X(rp(i),:));
    fprintf('\nNeural Network Prediction: %d (digit %d)\n', predictions, mod(predictions, 10));
    
    % Pause
    fprintf('Program paused. Press enter to continue.\n');
    pause;
end