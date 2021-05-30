function daycung(y,a,b,tol)
syms x;
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
fprintf('Nghiem x = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);