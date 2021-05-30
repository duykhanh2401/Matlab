clear all ; clc ;
syms x y

f = (x^3+y^3)/(x^2+y^2);
Dfx = diff(f,x)
Dfy = diff(f,y)

g =  log(((sqrt(x^2+y^2)-x))/((sqrt(x^2-y^2)+x)));
Dgx = diff(g,x)
Dgy = diff(g,y)

h = exp(x*y)*cos(x)*sin(y);

Dhx = diff(h,x)
Dhy = diff(h,y)