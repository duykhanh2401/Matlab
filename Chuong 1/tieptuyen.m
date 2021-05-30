function tieptuyen(y,a,b,x0,tol)
dy=diff(y,'x');
f=inline(vectorize(y),'x');
df=inline(vectorize(dy),'x');
x1=x0-f(x0)/df(x0);k=1;
while abs(f(x1))>tol
    x0=x1;
    x1=x0-f(x0)/df(x0);
    k=k+1;
end
fprintf('Nghiem x = %12.10f \n',x1);
fprintf('So vong lap k = %d \n',k);