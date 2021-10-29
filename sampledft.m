clc
close all
clear all
b=[1];
a=[1,-0.8];
w=-pi:pi/512:pi;
[Xw]=freqz(b,a,w);
subplot(2,1,1);
plot(w,abs(Xw));
xlabel('Frequency\omega');
ylabel('Magnitude of X(\omega)');

subplot(2,1,2);
plot(w,angle(Xw));
xlabel('Frequency\omega');
ylabel('Phase of X(\omega)');