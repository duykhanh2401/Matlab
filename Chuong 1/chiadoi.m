function chiadoi(y,a,b,tol)
syms x;
f = inline(vectorize(y),'x');
c = (a+b)/2;
k=1;
while abs(f(c)) > tol
    if f(a)*f(c) > 0
        a = c;
    else
        b =c;
    end
    c = (a+b)/2;
    k=k+1;
end
fprintf('Nghiem x = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);