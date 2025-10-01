% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
	% Se initializeaza valorile
	best_epsilon = 0;
	best_F1 = 0;
	associated_precision = 0;
	associated_recall = 0;
	% Se cauta cea mai mica si cea mai mare valoare pe care o poate lua epsilon
	min_value = min(min(probabilities));
	max_value = max(max(probabilities));
	% Se creaza un vector linie ce contine valori de la cel mai mic posibil
	% epsilon pana la cel mai mare cu pasul (max_value - min_value) / 1000
	possible_values = linspace(min_value, max_value, 1001);
	% Pentru fiecare epsilon posibil este calculat F1 cu ajutorul lui precision
	% si recall
	for i = 1 : 1001
		predictions = probabilities < possible_values(1, i);
		[false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths);
		[precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives);
		% Se actualizeaza valorile pentru cel mai mare F1
		if (F1 > best_F1)
			best_F1 = F1;
			associated_precision = precision;
			associated_recall = recall;
			best_epsilon = possible_values(1, i);
		endif
	endfor
endfunction
