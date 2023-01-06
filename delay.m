clc;
close all;
clear all;
x=input('Enter sequence=');
n=input('Enter range=');
shift1=input('Enter the required amount of shift=');

%n=-3:3;
%x=[-2 0 1 -3 2 -1 3];
subplot(2,1,1);
stem(n,x);
xlabel('Time sample');
ylabel('Amplitude');
title('Original Signal');
m=n+shift1;
subplot(2,1,2);
stem(m,x);
xlabel('Time sample');
ylabel('Amplitude');
title('Delayed signal')
