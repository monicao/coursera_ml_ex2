function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

if size(z) == [1, 1]
  g = 1 / (1 + e^-z);
elseif size(z)(1) == 1 && size(z)(2) > 1
  g = [];
  for val = z
    g(length(g) + 1) = 1 / (1 + e^-val);
  endfor

else 
  g = [];
  for r = 1:size(z)(1)
    for c = 1:size(z)(2)
      g(r, c) = 1 / (1 + e^-z(r, c));
    endfor
  endfor
end

% =============================================================

end



