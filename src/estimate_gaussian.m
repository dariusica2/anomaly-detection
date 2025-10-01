% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
    [r, c] = size(X);
    % Se creaza vectorul linie mean_values
    mean_values = zeros(1, c);
    % Se creaza matricea variances
    variances = zeros(c, c);
    % Se calculeaza suma fiecarei coloane i din X, care reprezinta suma tuturor
    % elementelor i din fiecare vector, si se imaprte la numarul de linii din X,
    % adica numarul total de vectori
    for i = 1 : c
        mean_values(i) = sum(X(:, i)) / r;
    endfor
    % Se calculeaza, pentru fiecare vector (fiecare linie din X), diferenta
    % dintre vector si mean_values, care este folosita pentru calcularea
    % matricei variances
    for i = 1 : r
        aux = X(i, :) - mean_values;
        variances = variances + aux' * aux;
    endfor
    variances = variances / r;
endfunction