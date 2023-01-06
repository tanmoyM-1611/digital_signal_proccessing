% clc;
% close all;
% clear all;
% n = -10 : 10;
% u = [zeros(1 , 10)  ones(1,11)];
% stem(n , u);
% axis([-12 12 -1 2]);
% xlabel('Time Index');
% ylabel('Amplitude');
% title('Unit Step Sequence');
% n=input('Enter n values');
% t=0:1:n-1;
% y1=ones(1,n);
% subplot(1,1,1);
% stem(t,y1);
% ylabel('Amplitude');
% xlabel('unit step');
N=input('Enter the size of sequence=');
t=-N:N;
l=length(t);
for ii=1:l
    if t(ii)==0
        seq(ii)=1
    else
        seq(ii)=0
    end
end
stem (t,seq);
title('Unit step Response');
xlabel('n');
ylabel('Amplitude');