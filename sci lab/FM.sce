clc;
clear all;
clf;
t=0:0.001:1;
fc=60;
fm=10;
a=5;
vc=squarewave(2*%pi*fc*t);
vm=a*sin(2*%pi*fm*t);
n=length(vc);
for i=1:n
    if (vc(i)<=0)
        vc(i)=0;
    else 
        vc(i)=1;
    end
end
y=vc.*vm;

subplot(3,1,1);
plot(t,vm);
xlabel('Time--->');
ylabel('Amplitude--->');
title('Message Signal--->');

subplot(3,1,2);
plot(t,vc);
xlabel('Time--->');
ylabel('Amplitude--->');
title('Carrier Signal--->');

subplot(3,1,3);
plot(t,y);
xlabel('Time--->');
ylabel('Amplitude--->');
title('Natural Sampled Signal--->');
