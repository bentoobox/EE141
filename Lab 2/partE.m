N = 100;
n = 0:N-1;
g = exp(-0.5 * n);

L = 512;
w = -pi:2*pi/(L-1):pi;
G = freqz(g, 1, w);

h = sin((2*pi*n)/(N/2));
H = freqz(h, 1, w);

gh_mod = g .* h;

GH_modulated = freqz(gh_mod, 1, w);
GH_mod = G .* H;

figure(1);
plot(w, abs(GH_modulated)); hold on;
plot(w, abs(GH_mod));
legend('Modulated Signal DTFT Magnitude', 'Theoretical Modulation DTFT Magnitude');
title('Modulation Property Verification (Magnitude Comparison)');
xlabel('Frequency (radians)');
ylabel('Magnitude');
grid on;
