clear all ; clc ;
figure(1)

syms t
tlim = [0 15];

x = 15*cos(t*pi/2-pi/2);
v = diff(x,t);
a = diff(v,t);
  
fplot(x,tlim,'r');
hold on 
fplot(v,tlim,'b');
fplot(a,tlim);
title('Do thi bieu dien x(t),v(t),a(t)');
xlabel('t');
legend('x(t)','v(t)','a(t)');

T = 4;
figure(2);


ezplot(x,v,[0 T]);