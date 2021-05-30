clear all ; clc;
syms x;

fprintf('lim((x^2-x-2)^20)/((x^3-12*x+16)^10)');
f=((x^2-x-2)^20)/((x^3-12*x+16)^10);
s1 = limit(f,x,2)

fprintf('lim(x^100-2*x+1)/(x^50-2*x+1)')
g = (x^100-2*x+1)/(x^50-2*x+1);
s2 = limit(g,x,1)

fprintf('lim(sqrt(x+sqrt(x+sqrt(x)))/(sqrt(x+1)))')
k = sqrt(x+sqrt(x+sqrt(x)))/(sqrt(x+1));
s3 = limit(k,x,inf)

fprintf('lim((sqrt(x)+(x^(1/3))+(x^(1/4)))/(sqrt(2*x+1)))')
l = ((sqrt(x)+(x^(1/3))+(x^(1/4)))/(sqrt(2*x+1)));
s4 = limit(l,x,inf)

fprintf('lim(sin(x)-sin(pi/3))/(x-(pi/3))')
m = (sin(x)-sin(pi/3))/(x-(pi/3));
s5 = limit(m,x,pi/3)

fprintf('lim(cos(sqrt(x))^(1/x))')
n = cos(sqrt(x))^(1/x);
s6 = limit(n,x,0,'right')

