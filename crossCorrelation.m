x=input('Enter the first array=');
nx=input('Enter the range nx=');
h=input('Enter the second array=');
nh=input('Enter the range nh=');
%fh=fliplr(h);
fnh=-fliplr(nh);
%x=[1 2 3 4];
subplot(3,1,1);
stem(nx,x);
%h=[4 3 2 1];
subplot(3,1,2);
stem(nh,h);
%cross corelation
y=xcorr(x,h)
%ny=0:length(y)-1;
n1=min(nx)+min(fnh);
n2=max(nx)+max(fnh);
ny=n1:n2;
subplot(3,1,3);
stem(ny,y);
disp(y);