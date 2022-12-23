// E xpe rimen t Number: 1 1
// W ri te a program to p e rfo rm P ul s e Code Mo d ula tio nG e n e r a ti o n and D e t e c t i o n
// Analog and D i g i t a l Communication L a b o r a t o r y
//B. Tech I I Year I I Sem
// S t u d e n t Name : En rolmen t Number :
// Co u r s e I n s t r u c t o r : A q e el S hai k
// S r e y a s I n s t i t u t e Of E n g i n e e r i n g & Technolog y ,Hyderabad .
//−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−//
// OS : Windows 1 0 . 1
 // S c i l a b 6 . 0 . 2
 clc ;
f =2;
fs =20* f ; // Sampling F r e q u e n c y
t =0:1/ fs :2;
a =2;
msg=a*sin(2*%pi*f*t);
subplot(3,1,1);
plot(t,msg);
xlabel('TIME');
ylabel('AMPLITUDE');
title('Message Signal');

x1=msg+a;//Level Shifting toonesided signal
disp(x1,'Discrete Sampled Values of Message Signal');
//Displays sampled values
quant=round(x1);//Quantization
disp(quant,'Quantized Sampled Values');//Display squantized values
enco=dec2bin(quant);//Encoding into binary data
deco=bin2dec(enco);//Recovering Analog Message signal
recover=deco-a;
subplot(3,1,2);
plot(t,recover);
xlabel('TIME');
ylabel('AMPLITUDE');
title('Recovered Signal');
h=gca();
h.data_bounds=[0,-3;2,3];
subplot(3,1,3);
plot(t,msg,t,recover,);
xlabel('TIME');
ylabel('AMPLITUDE');
title('Recovered VS Original Signal');
h=gca();
h.data_bounds=[0,-3;2,3];
//Discrete Sampled Values of Message

