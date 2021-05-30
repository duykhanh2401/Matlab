clc; clear all;

%1/(a0*x+a1)
X=[0 0.2 0.4 0.6 0.9 1.2 1.4 1.8 2];
Y=[0.97 0.69 0.57 0.46 0.36 0.31 0.27 0.21 0.19];

x=X;
y=Y.^(-1);
pp=polyfit(x,y,2);
a0=pp(1);
a1=pp(2);

f = inline('(A(1)*x+A(2)).^-1','A','x');
A0=[a0 a1]

[An dAn]=lsqcurvefit(f,A0,X,Y);
xx=linspace(0,2,100);
yy=f(An,xx);
figure(1);
plot(xx,yy);
hold on;
plot(X,Y,'r*');
hold off;