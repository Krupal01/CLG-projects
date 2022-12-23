clc ;
clear ;
close ;
fs =300
t =0:1/ fs :2;
p= length (t);
fm=2;
fc=23;
am=4;
ac=3;
// Mes sage S i g n a l Gene r a t i on
msg =am*cos (2* %pi *fm*t);
figure (1);
subplot (3 ,1 ,1);
plot (t,msg);
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' )
title ( 'message signal' );
// Ca r r i e r S i g n a l g e n e r a t i o n
carrier =ac* cos (2* %pi *fc*t);
subplot (3 ,1 ,2);
plot (t, carrier );
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' )
title ( 'carrier signal' );
// Fr equency Modulat ion Gene r a t i on
kf =4;
mod_index =( kf*am)/fm;
disp ( mod_index , 'The Modulat ion Index i s ' );
fm_mod =ac* cos ((2* %pi*fc*t)+( mod_index .* sin (2* %pi *fm*t)));
subplot (3 ,1 ,3);
plot (t, fm_mod );
xlabel ( 'Time ' );
ylabel ( ' Ampl i tude ' )
title ( ' Fr equency Modulated S i g n a l ' );
// Frqeuncy Spectrum
d=(-p /2:1: p/2 -1) *1/3;
figure (2)
subplot (3 ,1 ,1);
plot (d,abs( fftshift ( fft ( fm_mod )))); // FOURIER
//TRANSFORM OF MODULATED SIGNAL
xlabel ( ' Fr equency ' );
ylabel ( ' Ampl i tude ' );
title ( 'FM signal spectram' )
// Sample I nput s f o r Program
// Ent e r the me s sage s i g n a l f r e q u e n c y =2
// Ent e r the c a r r i e r s i g n a l f r e q u e n c y ( f c>>>fm) =23
// Ent e r the me s sage s i g n a l ampl i tude =4
// Ent e r the c a r r i e r s i g n a l ampl i tude =3
//The Modulat ion Index i s
// 8 .




 
