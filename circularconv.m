clc;
close all;
clear all;

x=input('Enter x[n]');
h=input('Enter h[n]');

z=length(x)+length(h)-1;

xpad=[x zeros(1,z)];
ypad=[h zeros(1,z)];

out=conv(xpad,ypad);
out2=cconv(x,h,z);
out=out(1:z);
disp(out);
disp(out2);