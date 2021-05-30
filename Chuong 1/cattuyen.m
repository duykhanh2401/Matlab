function cattuyen(y,a,b,x0,x1,tol)
syms x;
f=inline(vectorize(y),'x');
x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);k=1;
while abs(x2-x1)>tol
    x0=x1;
    x1=x2;
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);k=k+1;
end
fprintf('Nghiem x = %12.10f \n',x1);
fprintf('So vong lap k = %d \n',k);