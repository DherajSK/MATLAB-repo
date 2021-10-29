clc;
close all;
clear all;
t= 0:0.01:1;
f=input('enter the value of frequency');
a=input('enter the value of amplitude');
y= a*sin(2*pi*f*t);
z= a*cos(2*pi*f*t);
subplot(3,3,1);
plot(t,y);
xlabel('time');
ylabel('amplitude');
title('sinewave');
subplot(3,3,2);
plot(t,z);
xlabel('time');
ylabel('amplitude');
title('cosinewave');
x= [2,3,4,5,6,9];
m= exp(x);
subplot(3,3,3);
plot(x,m);
xlabel('value');
ylabel('exp_value');
title('exponential wave');
c= [2,3,5,7,8,9,12,15];
d= sawtooth(c);
subplot(3,3,4);
plot(c,d);
xlabel('c_value');
ylabel('d_value');
title('sawtooth wave');
r = 0:.0001:.0625;
p = square(2*pi*50*r);
subplot(3,3,5);
plot(r,p);
xlabel('r_value');
ylabel('p_value');
title('square wave');
w= a*tan(2*pi*f*t);
subplot(3,3,6);
plot(t,w);
xlabel('time');
ylabel('amplitude');
title('tanwave');


