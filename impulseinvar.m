clc 
close all;
clear all;

N=input('Enter the filter order N:');
fs = input('Enter the sampling freequency fs:');
wc=input('Enter the cutoff frequency wc');

[na,da]=butter(N,wc,'s');
[n,d]=impinvar(na,da,fs);
[h,f]=freqz(n,d,512,fs);
gain=20*log10(abs(h));
subplot(2,1,1);
plot(f/fs,gain);
xlabel('Frequency');
ylabel('Magnitude');
title('Amplitude Response');
subplot(2,1,2);
zplane(n,d);
z=roots(n);
p=roots(d);
xlabel('Real Part');
ylabel('Imaginary Part');
title('Pole-Zero Plot');
disp(tf(na,da));
fvtool(n,d);

