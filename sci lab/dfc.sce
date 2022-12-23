clc;
fs =200
t=0:1/fs:2;
p=length(t);

fm=2;
fc=20;
am=2;
ac=3;


msg=am*cos(2*%pi*fm*t);
figure(1);
subplot(3,1,1);
plot(t,msg);
xlabel('TIME');
ylabel('AMPLITUDE');
title('Message Signal');

carrier=ac*cos(2*%pi*fc*t);
subplot(3,1,2);
plot(t,carrier);
xlabel('TIME');
ylabel('AMPLITUDE');
title('Carrier Signal');

m = am/ac;
Vt = (ac*(1+m*sin(((2*%pi)*fm)*t))) .*sin(((2*%pi)*fc)*t); 
subplot(3,1,3);
plot(t,Vt);
xlabel('TIME');
ylabel('AMPLITUDE');
title('Modulated signal');



DSBSC =msg .* carrier;
figure(2)
subplot(2, 1, 1);
plot(t, DSBSC);
title('DSB SC Signal');
xlabel('time(t)');
ylabel('Amplitude');

d=(-p /2:1: p/2 -1) *1/3;
subplot (2 ,1 ,2);
plot (d,abs( fftshift ( fft ( Vt )))); 
xlabel ( 'FREQUENCY' );
ylabel ( 'AMPLITUDE ' )

title ( 'DSBSC S i g n a l Spectrum ' )



//Hilbert Transform of Message Signal
h_msg=imag(hilbert(msg));


//Hilbert Transformof Carrier Signal
h_carrier=imag(hilbert(carrier));


//SINGLE SIDE BAND MODULATION GENERATION
ssbmod_lsb=(msg.*carrier)+(h_msg.*h_carrier);//LowerSideBand
figure(3)
subplot(4,1,1);
plot(t,ssbmod_lsb);
xlabel('time');
ylabel('amplitude');
title('SSB Modulated Signal(LSB)');

ssbmod_usb=(msg.*carrier)-(h_msg.*h_carrier);//UpperSideBand
subplot(4,1,2);
plot(t,ssbmod_usb);
xlabel('time');
ylabel('amplitude');
title('SSB Modulated Signal(USB)');

//Frqeuncy Spectrum of SSB (LSB) Signal
d=(-p/2:1:p/2-1)*1/2;
subplot(4,1,3);
plot (d ,abs(fftshift(fft(ssbmod_lsb)))); //No rmalized Frequency spectrum
xlabel('frequency');
ylabel('amplitude');
title('SSB Signal Spectrum(LSB)');

//Frqeuncy Spectrum of SSB (USB) Signal
subplot(4,1,4);
plot(d,abs(fftshift(fft(ssbmod_usb)))); // No rmalized Frequency spectrum
xlabel('frequency');
ylabel('amplitude');
title('SSB Signal Spectrum(USB)');

//Demodulation of SSB Signal
demod=ssbmod_lsb.*carrier;
k=abs(fft(demod));
filt=[ones(1,3*fm),zeros(1,p-3*fm)];
out=k.*filt;
figure(4)
subplot(3,1,1);
plot(t,ifft(out));
xlabel('TIME');
ylabel('AMPLITUDE');
title('Demodulated Message');

