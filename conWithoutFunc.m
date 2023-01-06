clc
clear all
close all
x=input('Enter the first array=');
nx=input('Enter the range nx=');
h=input('Enter the second array=');
nh=input('Enter the range nh=');
z=[];
for i=1:length(x)
    g=h.*x(i);
    z=[z;g];
end
[r c]=size(z);
k=r+c;
t=2;
y=[];
cd=0;
while(t<=k)
    for i=1:r
        for j=1:c
            if((i+j)==t)
               cd=cd+z(i,j);
            end
        end
    end
    t=t+1;
    y=[y cd];
    cd=0;
end
n3=min(nx)+min(nh);
n4=max(nx)+max(nh);
ny=n3:n4;
%ny=0:length(y)-1;
disp(y);

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
