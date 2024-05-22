omega0 = pi/3;
n = 0:199;

omega = linspace(-pi, pi, 1000);
num = 0.81 - 1.2728 * exp(-1j * omega) + exp(-2j * omega);
den = 1 - 1.2728 * exp(-1j * omega) + 0.81 * exp(-2j * omega);
H = num ./ den;
phase_response = angle(H);

d_phase = gradient(phase_response, omega(2) - omega(1));
group_delay = -d_phase;

[~, idx] = min(abs(omega - omega0));
alpha_omega0 = round(group_delay(idx));
phase_omega0 = phase_response(idx);

s = [ones(1, 100), zeros(1, 100)];
x = s .* cos(omega0 * n);

y_theoretical = [zeros(1, alpha_omega0), s(1:end - alpha_omega0)] .* cos(omega0 * n + phase_omega0);

figure;
stem(n, y_theoretical, 'filled');
xlabel('n', 'FontSize', 12);
ylabel('y[n]', 'FontSize', 12);
title('Theoretical Output Signal y[n]', 'FontSize', 14);
grid on;
