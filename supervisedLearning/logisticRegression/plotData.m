function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Find indices of positive and negative examples
indicesOfPositiveLabels = find(y == 1);
indicedOfNegativeLabels = find(y == 0);

plot(X(indicesOfPositiveLabels, 1), X(indicesOfPositiveLabels, 2),
	'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(indicedOfNegativeLabels, 1), X(indicedOfNegativeLabels, 2),
	'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

hold off;

end
