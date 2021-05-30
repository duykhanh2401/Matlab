clear all ; close all ; clc;
syms x;
y= exp(-x) - 10*x -7; a = -2; b =1;
ezplot(char(y),[a b]);
f = inline(vectorize(y),'x');
xx = linspace(a,b,1000);
g1 = (exp(-x) -7)./10;
dg1 = diff(g1,'x');
fdg1 = inline(vectorize(dg1),'x');
q1 = max(abs(fdg1(xx)))
g2 = -log(70*x);
dg2 = diff(g2,'x');
fdg2 = inline(vectorize(dg2),'x');
q2 = max(abs(fdg2(xx)))
fg1=inline(vectorize(g1),'x');
tol = 1e-9;
x0 = 2.1;
x1 = fg1(x0);
k=0;
while abs(f(x1))>tol
    x0=x1;
    x1 = fg1(x0);
    k=k+1;
end
fprintf('Nghiem x(lap) = %12.10f \nSo vong lap k = %d \n',x1,k);
chiadoi(y,a,b,tol)