clc; clear all;
x=[0.589 0.55 0.486 0.443 0.402];
y=[1.628 1.64 1.652 1.668 1.679];

X = x;
Y = y.*x.^4;
pp = polyfit(X,Y,4);
c0 = pp(1);
b0 = pp(3);
a0 = pp(5);

f=inline('A(1)+A(2)./x.^2 +A(3)./x.^4','A','x');

A0 = [a0 b0 c0];
[An dAn]=lsqcurvefit(f,A0,x,y)
xx=linspace(0,1,100);yy=f(An,xx);
figure(2);
plot(xx,yy);hold on;
plot(x,y,'r*');hold off;