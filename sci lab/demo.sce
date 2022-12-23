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

// Ca r r i e r S i g n a l g e n e r a t i o n
carrier =ac* cos (2* %pi *fc*t);

// Fr equency Modulat ion Gene r a t i on
kf =4;
mod_index =( kf*am)/fm;
disp ( mod_index , 'The Modulat ion Index i s ' );
fm_mod =ac* cos ((2* %pi*fc*t)+( mod_index .* sin (2* %pi *fm*t)));
figure(1)
subplot (2 ,1 ,1);
plot (t, fm_mod );
xlabel ( 'Time ' );
ylabel ( ' Ampl i tude ' )
title ( ' Fr equency Modulated S i g n a l ' );


subplot (2 ,1 ,2);
plot (t,msg);
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' )
title ( 'message signal' );
