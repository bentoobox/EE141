numerator_coeffs_b = [10, -21, 14, -3];
denominator_coeffs_b = [3, -3, -6, 0];

zeros_b = roots(numerator_coeffs_b);
poles_b = roots(denominator_coeffs_b);

b0_b = 10;
a0_b = 3;
gain_b = b0_b / a0_b;
