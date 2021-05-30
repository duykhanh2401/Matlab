clc ; clear all;
%sin(x)
tol = 1e-12;
x = pi/4;
k=1; fsin = 0; ak=x;
while abs(ak) > tol 
    fsin = fsin + ak;
    ak = (((-1)^k)*(x^(2*k+1)))/(factorial(2*k+1));
    k=k+1;
end
fsin
fprintf('sin(x) = %f\n',sin(x));
%acrtan(x)

k = 1; farctan = 0 ; a = x;
while abs(a) > tol
    farctan = farctan + a;
    a = (((-1)^k)*x^(2*k+1))/(2*k+1);
    k = k + 1;
end
farctan
fprintf('arctan(x) = %f\n',atan(x));
%sinh(x)

k=1; fsinh = 0; b = x;
while abs(b) > tol
    fsinh = fsinh + b;
    b = (x^(2*k+1))/(factorial(2*k+1));
    k=k+1;
end
fsinh
fprintf('sinh(x) = %f\n',sinh(x));
%cosh(x) 

k=1; fcosh = 0 ; c = 1;
while abs(c) > tol
    fcosh = fcosh + c;
    c = (x^(2*k))/(factorial(2*k));
    k=k+1;
end
fcosh
fprintf('cosh(x) = %f\n',cosh(x));
%exp(x)

k=1 ; fexp = 0; d = 1;
while abs(d) > tol
    fexp = fexp + d;
    d = (x^k)/factorial(k);
    k=k+1;
end
fexp
fprintf('exp(x) = %f\n',exp(x));
%ln(1+x)

k=2; fln = 0; e = x;
while abs(e) > tol;
    fln = fln + e;
    e = (((-1)^(k+1))*(x^k))/k;
    k=k+1;
end
fln 
fprintf('ln(1+x) = %f\n',log(1+x))


