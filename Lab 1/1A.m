numerator_coeffs_a = [2, 16, 34, 20, 0];
denominator_coeffs_a = [1, -10, 35, -50, 24];

zeros_a = roots(numerator_coeffs_a);
poles_a = roots(denominator_coeffs_a);

b0_a = 2;
a0_a = 1;
gain_a = b0_a / a0_a;
