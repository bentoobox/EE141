omega = linspace(-pi, pi, 1000);
num = 0.81 - 1.2728 * exp(-1j * omega) + exp(-2j * omega);
den = 1 - 1.2728 * exp(-1j * omega) + 0.81 * exp(-2j * omega);
H = num ./ den;
phase_response = angle(H);

figure;
plot(omega, phase_response, 'b', 'LineWidth', 1.5);
xlabel('Frequency (\omega)', 'FontSize', 12);
ylabel('Phase (radians)', 'FontSize', 12);
title('Phase Response of the Second-Order Allpass Filter', 'FontSize', 14);
grid on;
