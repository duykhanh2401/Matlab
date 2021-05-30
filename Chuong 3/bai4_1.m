clc;clear all;
syms x;
y=cos(x)/(x^2+1);
f=inline(vectorize(y),'x');
a=0;b=10;x=a;
N=5000;
dx=(b-a)/N;
S=0;
for k=1:N
    S=S+(f(x)+f(x+dx))*dx/2;
    x=x+dx;
end
S
S=0;
x=a;
gx = (b-a)/(2*N);
for k=1:N
    S=S+gx*(f(x)+4*f(x+gx)+f(x+2*gx))/3;
    x=x+2*gx;
end
S