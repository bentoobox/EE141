omega = linspace(-pi, pi, 1000);
num = 0.81 - 1.2728 * exp(-1j * omega) + exp(-2j * omega);
den = 1 - 1.2728 * exp(-1j * omega) + 0.81 * exp(-2j * omega);
H = num ./ den;
phase_response = angle(H);

d_phase = gradient(phase_response, omega(2) - omega(1));
group_delay = -d_phase;

figure;
plot(omega, group_delay, 'b', 'LineWidth', 1.5);
xlabel('Frequency (\omega)', 'FontSize', 12);
ylabel('Group Delay (samples)', 'FontSize', 12);
title('Group Delay of the Second-Order Allpass Filter', 'FontSize', 14);
grid on;
