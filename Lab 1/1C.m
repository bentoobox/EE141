numerator_coeffs_c = [1, 0, 0, 0, -1];
denominator_coeffs_c = [1, 0, 0, 0, 0, 0, 0, 0, -1];

zeros_c = roots(numerator_coeffs_c);
poles_c = roots(denominator_coeffs_c);

b0_c = 1;
a0_c = 1;
gain_c = b0_c / a0_c;
