clc; clear all;
syms x;
dy= -2*x^3+12*x-20*x+8.5;
a=0;b=4;y0=1;
y=int(dy,'x')+y0;
fplot(char(y),[a b]);
f=inline(vectorize(dy),'x');hold on
yi(1)=y0;
xi=linspace(a,b,100);
n=length(xi);
h=(b-a)/(n-1);
for k=2:n
    yi(k)=yi(k-1)+h*f(xi(k-1));
end
plot(xi,yi,'r')
%Midpoint 
h2=h/2;
for k=2:n
    yi(k)=yi(k-1)+f(xi(k-1)+h2)*h;
end
plot(xi,yi,':b')
