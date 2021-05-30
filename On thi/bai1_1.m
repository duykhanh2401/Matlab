clc ; clear all ;
 syms x ;
 y = exp(-x) -sin(x);
 a = 0;b=1;
 tol = 1e-9;
 f = inline(vectorize(y),'x');
 c = (a*f(b)-b*f(a))/(f(b)-f(a))
 
 while abs(f(c)) > tol 
     if f(a)*f(b) > 0
         a=c;
     else 
         b=c;
     end
     c = (a*f(b)-b*f(a))/(f(b)-f(a)); 
 end
 fprintf('Nghiem x = %12.10f \n',c);