zeros = [-1, 1, i, -i];
poles = [0, -2];
numerator_coeffs = -3 * poly(zeros);
denominator_coeffs = poly(poles);
numerator_coeffs = numerator_coeffs / numerator_coeffs(1);
denominator_coeffs = denominator_coeffs / denominator_coeffs(1);
