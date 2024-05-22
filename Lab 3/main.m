b0 = 0.9 * exp(-1j * pi/4);
b1 = 0;
b2 = -0.9 * exp(-1j * pi/4);
a1 = -0.9 * exp(1j * pi/4);
a2 = 0;

n = 0:99;
x1 = cos(0.2 * pi * n);
x2 = cos(0.4 * pi * n);
x3 = cos(0.2 * pi * n) + cos(0.4 * pi * n);

y1 = filter([b0 b1 b2], [1 a1 a2], x1);
y2 = filter([b0 b1 b2], [1 a1 a2], x2);
y3 = filter([b0 b1 b2], [1 a1 a2], x3);

figure;
subplot(3, 2, 1);
plot(n, x1);
title('Input x[n] = cos(0.2πn)');
subplot(3, 2, 2);
plot(n, y1);
title('Output y[n]');

subplot(3, 2, 3);
plot(n, x2);
title('Input x[n] = cos(0.4πn)');
subplot(3, 2, 4);
plot(n, y2);
title('Output y[n]');

subplot(3, 2, 5);
plot(n, x3);
title('Input x[n] = cos(0.2πn) + cos(0.4πn)');
subplot(3, 2, 6);
plot(n, y3);
title('Output y[n]');
