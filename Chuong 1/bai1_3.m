clear all; clc ;
syms x;
y = log(x)^2-x^2+2*x+3;
f=inline(vectorize(y),'x');
ezplot(f,[1 5]);
shg;
[x0 y0]= ginput;
[x1 fx1]=fsolve(f,x0);
Nghiem = [x1 fx1]
tieptuyen(y,1,5,2,1e-9);