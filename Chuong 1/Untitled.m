clc;clear all;close all;
syms x; y=x^3-7*x+2;
f=inline(vectorize(y),'x');
% Kiem tra dang lap hoi tu
a=0;b=1;xx=linspace(a,b,1000);
g1=(x^3+2)/7;dg1=diff(g1);
fdg1=inline(vectorize(dg1),'x');
q1=max(abs(fdg1(xx))) % Dang lap g1 hoi tu
g2=(7*x-2)^(1/3);dg2=diff(g2);
fdg2=inline(vectorize(dg2),'x');
q2=max(abs(fdg2(xx))) % Dang lap g2 khong hoi tu
% Tim nghiem: Su dung dang lap g1
fg1=inline(vectorize(g1),'x');
tol=1e-9;x0=0.5;x1=fg1(x0);k=1;
while abs(x1-x0)>tol*(1-q1)/q1 %abs(f(x1))>tol
x0=x1;x1=fg1(x0);k=k+1;
end
fprintf('Nghiem x = %12.10f \nSo vong lap k = %d \n',x1,k);
daycung(y,a,b,1e-9);