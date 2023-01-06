clc;
close all;
clear all;
x=input('Enter the first sequence');
n1=input('Enter the time sample range:');
h=input('Enter the second sequence');
n2=input('Enter the time sample range:');
n2=-fliplr(n2);
h=fliplr(h);
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
nl=min(n1)+min(n2);%nl(low)
nh=max(n1)+max(n2);
t=nl:1:nh;
subplot(3,1,1);
stem(n1,x);
title('input x')
subplot(3,1,2);
stem(n2,h);
title('input h');
subplot(3,1,3);
stem(t,y);
title('After Crossrelation');
grid on;