% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
	[r, c] = size(X);
	% Se creaza un vector coloana in care se va calcula valoarea functiei
	% pentru fiecare element din X
	probabilities = zeros(r, 1);
	for i = 1 : r
		aux = X(i, :) - mean_values;
		probabilities(i) = (1 / (((2 * pi)^(c / 2)) * det(variances)^(1 / 2))) * exp((-1 / 2) * (aux * inv(variances) * aux'));
	endfor
endfunction
