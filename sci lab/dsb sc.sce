clc;
fs =200
t=0:1/fs:2;
p=length(t);
fm=2;
fc=20;
Am=2;
Ac=3;

ym = Am*cos(2*%pi*fm*t);
figure;
subplot(4, 1, 1);
plot(t, ym);
title('Message Signal');
xlabel('time(t)');
ylabel('Amplitude');

h=Am/Ac;

yc = Ac*cos(2*%pi*fc*t);
subplot(4, 1, 2);
plot(t, yc);
title('Carrier Signal');
xlabel('time(t)');
ylabel('Amplitude');

Vt =ym .* yc;
subplot(4, 1, 3);
plot(t, Vt);
title('DSB SC Modulated Signal');
xlabel('time(t)');
ylabel('Amplitude');

//Frqeuncy Spectrum
d =(-p/2:1: p/2 -1) *1/3;
figure(2)
subplot(2,1,1);
plot (d,abs(fftshift(fft(Vt)))); // FOURIER TRANSFORM OF MODULATED SIGNAL
xlabel('FREQUENCY');
ylabel('AMPLITUDE');
title('DSBSC Signal Spectrum');

// Demodulation of DSBSC Signal
demod = Vt.*carrier ;
k=abs(fft(demod));
filt=[ones(1,4*fm),zeros(1,p-4*fm)];
out = k.*filt;
subplot(2,1,2);
plot(t,ifft(out));
xlabel('TIME');
ylabel('AMPLITUDE');
title('Demodulated Message');

