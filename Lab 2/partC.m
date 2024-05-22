N = 100;
n = 0:N-1;
g = exp(-0.5 * n);

L = 512;
w = -pi:2*pi/(L-1):pi;
G = freqz(g, 1, w);

omega0 = pi/2;

gn = exp(1i * omega0 * n) .* g;
GN = freqz(gn, 1, w);

tolerance = 1e-6;

n_exp = 0:length(G)-1;
LHS = freqz(gn, 1, w);
RHS = G .* exp(-1i * omega0 * n_exp);

frequency_shifting_verified = all(abs(LHS - RHS) <= tolerance);

figure(1);
plot(w, abs(G)); hold on;
plot(w, abs(LHS));
legend('Original DTFT Magnitude', 'Shifted DTFT Magnitude');
title('Magnitude Comparison');

figure(2);
plot(w, angle(G)); hold on;
plot(w, angle(LHS));
legend('Original DTFT Phase', 'Shifted DTFT Phase');
title('Phase Comparison');
