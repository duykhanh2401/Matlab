clc; clear all;
syms x;
I = cos(x)/(x^2+1);
f=inline(vectorize(I),'x');
a = 0;b=10;
S=0;
N=5000;
dx=(b-a)/(N-1);
h=dx/2;
x=a+h;
for k=1:N
    S=S+dx*(f(x));
    x=x+dx;
end  
S
S=0;

g=inline(vectorize(I),'x');

x=a;S=0;
N=5000;gx=(b-a)/N;
for k=1:N
S=S+gx*(g(x)+g(x+gx))/2;
x=x+gx;
end
S