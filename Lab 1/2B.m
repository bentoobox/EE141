zeros = [2, 2-i, 2+i];
poles = [3, -2, i, -i];
numerator_coeffs = 2 * poly(zeros);
denominator_coeffs = poly(poles);
numerator_coeffs = numerator_coeffs / numerator_coeffs(1);
denominator_coeffs = denominator_coeffs / denominator_coeffs(1);
