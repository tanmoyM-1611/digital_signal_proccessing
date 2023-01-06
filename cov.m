clc;
clear all;
close all;
x=input('Enter First sequence=');
nx=input('Enter the range n=');
h=input('Enter second sequence=');
nh=input('Enter the range n=');
%x=[1 2 3 4 1 2 3];
%nx=[0 1 2 3 4 5 6];
%h=[1 1 1 1 1 1 1];
%nh=[0 1 2 3 4 5 6];
y=conv(x,h); % 1 3 6 10 11 13 16 15 13 10 6 5 3(13)
disp(y);
n3=min(nx)+min(nh);
n4=max(nx)+max(nh);
ny=n3:n4;
%ny=0:length(y)-1; 
%0 1 2 3 4 5 6 7 8 9 10 11 12 for y(13-1)
figure(1);

subplot(3,1,1);
stem(nx,x);
title('input x');
grid on;
subplot(3,1,2);
stem(nh,h);
title('input y');
grid on;
subplot(3,1,3);
stem(ny,y);
title('input cov seq');
grid on;