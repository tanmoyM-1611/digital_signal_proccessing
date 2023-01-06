Ts = 0.0001;
t = 0: .00001 : 30 * Ts;
sig = sin(3000 * pi * t) + cos(3000 * pi * t);
maxsig = max(sig); %signal max
interv = 2 * maxsig / (2^3-1);
u = maxsig + interv;
partition = [-maxsig : interv : maxsig];
codebook = [-maxsig : interv : u];
[index, quants] = quantiz(sig, partition, codebook);
plot(t, sig, '-', t, quants, '-');
legend('original signal', 'Quantized signal');