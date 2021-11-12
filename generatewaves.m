clc
close all
clear all
t=0:0.001:1;
f=input('Enter the frequency');
a=input('Enter the value of the amplitude');
switch(a)
    case 1
        x=gensin(a,f,t);
        plot(x);
    
    case 2
        y=gencos(a,f,t);
        plot(y);
    
end

    