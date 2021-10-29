clc
close all
clear all

x=input('Enter the value');
h=input('Enter the factor');
stem(x)
subplot(2,2,1)
plot(x);
stem(h);
subplot(2,2,2);
plot(h);
%convolution
y=conv(x,h);
disp(y);
stem(y);
subplot(2,2,3);
plot(y);

%coleration
z=conv(x,fliplr(h));
disp(z);
subplot(2,2,4);
plot(z);

%autocorelation
au=conv(x,fliplr(x));
disp(au);