clc;
close all;
clear all;
x1=input('Enter the sequence=');
n1=input('Enter the range n=');
%n1=-2:1:3;
%x1=1:6;
fx=fliplr(x1);
fn=-fliplr(n1);
disp(fx);

subplot(211),stem(n1,x1);
subplot(212),stem(fn,fx);