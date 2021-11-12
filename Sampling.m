clc
clear all
close all
f1=input('Enter the highest frequency of the Signal F1 in hz');
f2=input('Enter the highest frequency of the Signal F2 in hz');
freq=2*max(f1,f2);

%Undersampling
fs=freq/2;


t=[0:1/fs:0.1];
x=cos(2*pi*f1*t)+cos(2*pi*f2*t);
XK=fft(x);
f=[0:length(XK)-1]*fs/length(XK);

subplot(2,2,1);
plot(f,abs(XK));
xlabel('frequency');
ylabel('amplitude');
title('Under sampling');

%Over sampling
fs=freq*2;


t=[0:1/fs:0.1];
x=cos(2*pi*f1*t)+cos(2*pi*f2*t);
XK=fft(x);
f=[0:length(XK)-1]*fs/length(XK);

subplot(2,2,2);
plot(f,abs(XK));
xlabel('frequency');
ylabel('amplitude');
title('Over sampling');

%critical sampling
fs=freq;


t=[0:1/fs:0.1];
x=cos(2*pi*f1*t)+cos(2*pi*f2*t);
XK=fft(x);
f=[0:length(XK)-1]*fs/length(XK);

subplot(2,2,3);
plot(f,abs(XK));
xlabel('frequency');
ylabel('amplitude');
title('Critical sampling');