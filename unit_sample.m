% clc;
% close all;
% clear all;
% n = -10 : 10;
% u = [zeros(1 , 10) 1 zeros(1,10)];
% stem(n , u);
% axis([-12 12 -1 2]);
% xlabel('Time Index');
% ylabel('Amplitude');
% title('Unit sample Sequence');
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
title('Unit impulse Response');
xlabel('n');
ylabel('Amplitude');