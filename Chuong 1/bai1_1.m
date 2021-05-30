clear all; close all ; clc;
%a
syms x;
y=exp(-x)-sin(x);
a=0; b=1;
tol=1e-9;
fplot(char(y),[a b]);
f = inline(vectorize(y),'x');
c = (a*f(b)-b*f(a))/(f(b)-f(a));
k=1;
while abs(f(c)) > tol
    if f(a)*f(c) > 0
        a = c;
    else
        b =c;
    end
    c = (a*f(b)-b*f(a))/(f(b)-f(a));
    k=k+1;
end
fprintf('Nghiem x(daycung) = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);
%b
f=inline(vectorize(y),'x');
tol=1e-9;
x0=0.5;
x1=0.51;
x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);k=1;
while abs(x2-x1)>tol
    x0=x1;
    x1=x2;
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);k=k+1;
end
fprintf('Nghiem x(cattuyen) = %12.10f \n',x1);
fprintf('So vong lap k = %d \n',k);
%d

% x1 chia doi
a=0;b=10;
f=inline(vectorize(y),'x');
fplot(char(y),[a b]);
a1=0;b1=1;
tol=1e-9;
c1=(a1+b1)/2;k=1;
while abs(f(c1))>tol
    if f(a1)*f(c1)>0
        a1=c1;
    else
        b1=c1;
    end
        c1=(a1+b1)/2;k=k+1;
end
fprintf('Nghiem x1 = %12.10f \n',c1);
fprintf('So vong lap k = %d \n',k);

% x2 day cung
a2=2;b2=4;
c2 = (a2*f(b2)-b2*f(a2))/(f(b2)-f(a2));
k=1;
while abs(f(c2)) > tol
    if f(a2)*f(c2) > 0
        a2 = c2;
    else
        b2 = c2;
    end
    c2 = (a2*f(b2)-b2*f(a2))/(f(b2)-f(a2));
    k=k+1;
end
fprintf('Nghiem x2 = %12.10f \n',c2);
fprintf('So vong lap k = %d \n',k);

%x3 tiep tuyen
dy=diff(y,'x');
f=inline(vectorize(y),'x');
df=inline(vectorize(dy),'x');
x0=5.5;
x1=x0-f(x0)/df(x0);k=1;
while abs(f(x1))>tol
    x0=x1;
    x1=x0-f(x0)/df(x0);
    k=k+1;
end
fprintf('Nghiem x3 = %12.10f \n',x1);
fprintf('So vong lap k = %d \n',k);