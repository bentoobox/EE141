N = 100;
n = 0:N-1;
g = exp(-0.5 * n);

L = 512;
w = -pi:2*pi/(L-1):pi;
G = freqz(g, 1, w);

a = 2;
b = 3;

ag = a * g;
bh = b * g;

AG = freqz(ag, 1, w);
BH = freqz(bh, 1, w);

tolerance = 1e-3;

LHS = freqz(a * g + b * g, 1, w);
RHS = a * G + b * G;

linearity_verified = all(abs(LHS - RHS) <= tolerance);

disp('Linearity verified:');
