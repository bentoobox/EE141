zeros = [5, -3, 1];
poles = [6, -11, -2];
numerator_coeffs = 8 * poly(zeros);
denominator_coeffs = poly(poles);
numerator_coeffs = numerator_coeffs / numerator_coeffs(1);
denominator_coeffs = denominator_coeffs / denominator_coeffs(1);
