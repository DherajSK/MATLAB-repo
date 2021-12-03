clc;
close all;
clear all;

x=input('Enter the sequence');
N=input('Enter the length');

y=fft(x,N);

mag=abs(y);
ph=angle(y);
subplot(2,2,1);
stem(mag);
grid;
title('magnitude');

subplot(2,2,2);
stem(ph*180/pi);
grid;
title('Phase');

disp(y);

iy=ifft(y);
disp(iy);

