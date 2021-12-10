clc;
clear all;
close all;
rp=input('Enter the passband attenuation:');
rs=input('enter the stopband attenduation:');
wp=input('Enter the passband frequency:');
ws=input('Enter the stopband frequency:');


[N,wn]=cheb1ord(wp/pi, ws/pi,rp, rs);
[b,a]=cheby1(N,rp,wn);
freqz(b,a);