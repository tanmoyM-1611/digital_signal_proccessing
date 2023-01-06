syms n;
f=input('value of x(n) for z transform=')
%f=(1/2)^n-(1/3)^n;
r=ztrans(f);
disp(r);
pretty(f);
pretty(r);