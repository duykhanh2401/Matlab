clear all; clc;
syms x
y = log(x).^2-x.^2+2.*x+3;
a=1;b=5;
ezplot(y,[a b]);
tol=1e-10;
disp('Chia doi:')
chiadoi(y,a,b,tol);
disp('Day cung')
daycung(y,a,b,tol);
disp('Tiep tuyen');
tieptuyen(y,a,b,2,tol);
disp('Cat tuyen')
cattuyen(y,a,b,2,2.01,tol);