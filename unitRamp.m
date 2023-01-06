% clc;
% close all;
% clear all;
% n = -10 : 10;
% u = [zeros(1 , 10)  ones(1,11)];
% r=n.*u;
% plot(n , r);
% axis([-12 12 -1 2]);
% xlabel('Time Index');
% ylabel('Amplitude');
% title('Unit sample Sequence');
n=input('Enter n values');
t=0:1:n-1;
y1=ones(1,n);
r=t.*y1;
subplot(2,2,2);
stem(t,r);
ylabel('Amplitude');
xlabel('unit step');