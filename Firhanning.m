clc
clear all
close all
N=input('enter the value of N');
wc=input('enter the cutoff freq value');
h=fir1(N,wc/pi,hamming(N+1));
figure(1);
freqz(h);
figure(2);
zplane(h);
