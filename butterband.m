clc;
clear all;
close all;
rp=input('Enter the passband attenuation:');;
rs=input('enter the stopband attenduation:');
wp=input('Enter the passband frequency:');
ws=input('Enter the stopband frequency:');


[N,wn]=buttord(wp/pi, ws/pi,rp, rs);
[b,a]=butter(N,wn);
freqz(b,a);