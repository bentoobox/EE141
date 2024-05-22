N = 100; % Length of the signal sequence

n = 0:N-1;

g = exp(-0.5 * n);

L = 512;

w = -pi:2*pi/(L-1):pi;

G = freqz(g, 1, w);

h = sin((2*pi*n)/(N/2));

H = freqz(h, 1, w);

gh = conv(g, h);

GH = G .* H;

GH_conv = freqz(gh, 1, w);

figure(1);
plot(w, abs(GH));  % Magnitude of theoretical convolution DTFT
hold on;
plot(w, abs(GH_conv));  % Magnitude of convolved signal DTFT
legend('Theoretical Convolution DTFT Magnitude', 'Convolved Signal DTFT Magnitude');
title('Convolution Property Verification (Magnitude Comparison)');
xlabel('Frequency (radians)');
ylabel('Magnitude');
grid on;
