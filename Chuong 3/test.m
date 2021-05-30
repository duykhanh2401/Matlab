clc; clear all;
syms x; y= cos(x);
f= inline(vectorize(y),'x');
a=0;b=pi/2;
x=a;S=0;
N=5000;
dx=(b-a)/N;
for k=1:N
    S=S+dx*(f(x)+f(x+dx))/2;
    x=x+dx;
end
S