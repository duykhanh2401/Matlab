function eulerdev(dy,a,b,y0)
syms x y;
f=inline(vectorize(dy),'x','y');
xi=linspace(a,b,100);
yi(1)=y0;
n=length(xi);
h=(b-a)/(n-1);
for k=2:n
    yi(k)=yi(k-1)+h*f(xi(k-1),yi(k-1));
end
plot(xi,yi,'r')