clear all ; close all ; clc ;
syms x y

f= sin(x).^2 + sin(y).^2 - 1;
g= 4*x.*y + 0.1*x +0.2*y - 1;
dfx = diff(f,'x');
dfy = diff(f,'y');
dgx = diff(g,'x');
dgy = diff(g,'y');
ff = inline(vectorize(f),'x','y');
fg = inline(vectorize(g),'x','y');
fdfx = inline(vectorize(dfx),'x','y');
fdfy = inline(vectorize(dfy),'x','y');
fdgx = inline(vectorize(dgx),'x','y');
fdgy = inline(vectorize(dgy),'x','y');
ezplot(f, [0 2]); hold on;
h = ezplot(g, [0 2]); set(h,'color','r');
[x0 y0] = ginput;
x1 = x0 - ((ff(x0,y0)*fdgy(x0,y0)-fg(x0,y0)*fdfy(x0,y0))/(fdfx(x0,y0)*fdgy(x0,y0))-fdgx(x0,y0)*fdfy(x0,y0));
y1 = y0 - ((fg(x0,y0)*fdfx(x0,y0)-ff(x0,y0)*fdgx(x0,y0))/(fdfx(x0,y0)*fdgy(x0,y0))-fdgx(x0,y0)*fdfy(x0,y0));
tol = 1e-9;
while (abs(ff(x1,y1))>tol)|(abs(fg(x1,y1))>tol)
    x1 = x0 - ((ff(x0,y0)*fdgy(x0,y0)-fg(x0,y0)*fdfy(x0,y0))/((fdfx(x0,y0)*fdgy(x0,y0))-fdgx(x0,y0)*fdfy(x0,y0)));
    y1 = y0 - ((fg(x0,y0)*fdfx(x0,y0)-ff(x0,y0)*fdgx(x0,y0))/((fdfx(x0,y0)*fdgy(x0,y0))-fdgx(x0,y0)*fdfy(x0,y0)));
    x0 = x1;
    y0 = y1;
end
fprintf('Nghiem cua phuong trinh phi tuyen da cho: \n x: %6.9f\n y: %6.9f\n',x1,y1);
