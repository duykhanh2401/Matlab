clc;clear all;close all;
syms x;y = (log(x))^2-x^2-0.5;
a=0;b=5;
fplot(char(y),[a b]);
f=inline(vectorize(y),'x');
c=(a+b)/2;k=1; tol=1e-9;
while abs(f(c))>tol
if f(a)*f(c)>0
a=c;
else
b=c;
end
c=(a+b)/2;k=k+1;
end
fprintf('Nghiem x = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);