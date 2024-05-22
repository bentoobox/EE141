omega0 = pi/4;
n = 0:199;

s = [ones(1, 100), zeros(1, 100)];
x = s .* cos(omega0 * n);

y = zeros(1, length(n) + 2);
x = [0, 0, x];

for i = 3:length(y)
    y(i) = 1.8 * cos(omega0) * y(i - 1) - 0.81 * y(i - 2) + 0.81 * x(i) - 1.8 * cos(omega0) * x(i - 1) + x(i - 2);
end

y = y(3:end);

figure;
stem(n, y, 'filled');
xlabel('n', 'FontSize', 12);
ylabel('y[n]', 'FontSize', 12);
title('Actual Output Signal y[n]', 'FontSize', 14);
grid on;
