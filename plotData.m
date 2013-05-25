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

% xp = [];
% xn = [];

% for i = 1:length(y)
%   if y(i) == 0
%     xn = [xn; X(i, :)];
%   elseif y(i) == 1
%     xp = [xp; X(i, :)];
%   else
%     fprintf('There was an error in the dataset. y value is %f\n', y(i));
%   endif
% endfor

% plot(xp(:, 1), xp(:, 2), "k+");
% plot(xn(:, 1), xn(:, 2), "ko");


% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'g+','LineWidth', 2, ...
     'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ro', 'MarkerFaceColor', 'y', ...
     'MarkerSize', 7);








% =========================================================================



hold off;

end
