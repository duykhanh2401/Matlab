clc ; clear all;

A=[5 -2 3;-3 9 1;2 -1 -7];
b=[-1;2;3];
n=length(b);
X0=[0 0 0];
tol = 1e-9;
dk = tol +1;

while dk > tol
    for i=1:n
        s=0;
        for j=1:n
            if i~=j
                s=s+A(i,j)*X0(j);
            end
        end
        X1(i) =(b(i)-s)/A(i,i);
    end
    dk = norm(X1-X0);
    X0=X1;
end
X1
