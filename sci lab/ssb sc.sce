clc ;
clear ;
close ;
h = input('Modulation index = ');

t = linspace(0, 0.2, 1000);
p= length (t);

Am = 2;
fm = 2;
msg = Am*cos(2*%pi*fm*t);
figure;
subplot(4, 1, 1);
plot(t(1:100), msg(1:100));
title('Message Signal');
xlabel('time(t)');
ylabel('Amplitude');


Ac = Am/h;
fc = 20;
carrier = Ac*cos(2*%pi*fc*t);
subplot(4, 1, 2);
plot(t(1:100), carrier(1:100));
title('Carrier Signal');
xlabel('time(t)');
ylabel('Amplitude');


// Hi l b e r t Trans form o f Mes sage S i g n a l
h_msg = imag ( hilbert ( msg ));

// Hi l b e r t Trans form o f Ca r r i e r S i g n a l

h_carrier = imag ( hilbert ( carrier ));

//SINGLE SIDE BAND MODULATION GENERATION
ssbmod_lsb =( msg .* carrier )+( h_msg .* h_carrier ) // Lower
figure (2)
subplot (4 ,1 ,1);
plot (t, ssbmod_lsb );
xlabel ( ' t ime ' );
ylabel ( ' ampl i tude ' )
title ( 'SSB Modulated S i g n a l (LSB) ' );

ssbmod_usb =( msg .* carrier ) -( h_msg .* h_carrier ) //Upper
subplot (4 ,1 ,2);
plot (t, ssbmod_usb );
xlabel ( ' t ime ' );
ylabel ( ' ampl i tude ' )
title ( 'SSB Modulated S i g n a l (USB) ' );
// Frqeuncy Spect rum o f SSB (LSB) S i g n a l

d=(-p /2:1: p/2 -1) *1/2;
subplot (4 ,1 ,3);
plot (d,abs( fftshift ( fft ( ssbmod_lsb )))); // Normal i z ed
xlabel ( ' f r e q u e n c y ' );
ylabel ( ' ampl i tude ' );
title ( 'SSB S i g n a l Spect rum (LSB) ' )
// Frqeuncy Spect rum o f SSB (USB) S i g n a l
subplot (4 ,1 ,4);
plot (d,abs( fftshift ( fft ( ssbmod_usb )))); // Normal i z ed
xlabel ( ' f r e q u e n c y ' );
ylabel ( ' ampl i tude ' );
title ( 'SSB S i g n a l Spect rum (USB) ' )
