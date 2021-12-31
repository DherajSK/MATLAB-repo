clc
clear all
close all

Ap=input('Enter the pass band gain in dB:');
As=input('Enter the stop band gain in dB:');
wp=input('Enter the digital pass band frequency');
ws=input('Enter the difital stop band frequency');

w=0:0.01:pi;
Fs=1;
T=1/Fs;

wp=(2/T)*tan(wp/2);
ws=(2/T)*tan(ws/2);

N=ceil(log10((10^(0.1*Ap)-1)/(10^(0.1*As)-1))/(2*log10(wp/ws)));

wc=wp/((10^(0.1*Ap)-1)^(1/(2*N)));
[b,a]=butter(N,wc,'low','s');

%Hs=tf(b,a);

%bilinear transformations
[n,d]=bilinear(b,a,Fs);
%hs=tf(n,d,T)

fvtool(n,d);

figure(2);
plot(w,20*log10(abs(freqz(n,d,w))));
grid on;
title('Magnitude Response bilinear transformations');
figure(3);
zplane(n,d);