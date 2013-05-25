function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

n = size(X)(2);


% Compute the cost function

for i = 1:m
  h = sigmoid(X(i, :) * theta);
  J = J + (-y(i) * log(h) - (1 - y(i)) * log(1 - h));
endfor

J    = 1 / m * J;

lambda_term = 0;
for j = 2:n
  lambda_term = lambda_term + theta(j) ^ 2;
end
lambda_term = lambda / (2 * m) * lambda_term;

J = J + lambda_term;

% Compute the gradient

for j = 2:n
  for i = 1:m
    h = sigmoid(X(i, :) * theta);
    grad(j) = grad(j) + (h - y(i)) * X(i, j);
  endfor
  grad(j) = 1 / m * grad(j);
  grad(j) = grad(j) + lambda / m * theta(j);
endfor

for i = 1:m
  h = sigmoid(X(i, :) * theta);
  grad(1) = grad(1) + (h - y(i)) * X(i, 1);
endfor
grad(1) = 1 / m * grad(1);


% =============================================================

end
