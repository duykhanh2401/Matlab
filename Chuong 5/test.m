clc; clear all;
syms x y;
y1=dsolve('Dy=y+sin(x)','y(-2)=0.7','x');
ezplot(y1,[-2,2]);
hold on
dy = y+sin(x);
f = inline(vectorize(dy),'x','y');
x0 = -2;
xend=2;
yi(1)=0.7;
xi=linspace(x0,xend,1000);
n=length(xi);
h=(xend-x0)/(n-1);
for k=2:n
    yi(k)=yi(k-1)+h*f(xi(k-1),yi(k-1));
end
plot(xi,yi,'r')
