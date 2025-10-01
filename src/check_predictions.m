function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
    % Se initializeaza valorile
    false_pozitives = 0;
    false_negatives = 0;
    true_pozitives = 0;
    [r, c] = size(predictions);
    for i = 1 : r
        if (predictions(i, 1) == 1 && truths(i, 1) == 0)
            false_pozitives += 1;
        elseif (predictions(i, 1) == 0 && truths(i, 1) == 1)
            false_negatives += 1;
        elseif (predictions(i, 1) == 1 && truths(i, 1) == 1)
            true_pozitives += 1;
        endif
    endfor
endfunction