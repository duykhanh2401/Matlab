clear all;clc;
A=[5 -2 3;-3 9 1; 2 -1 -7];
B=[-1; 2 ;3];
no=inv(A)*B
no2=A\B
n=length(B);
X0=zeros(n,1);
tol=1e-9;
dk=tol+1;
k=0;
while dk > tol
    k=k+1;
    for i=1:n
        S1=0;
        S2=0;
        for j=1:i-1
            S1=S1+A(i,j)*X1(j);
        end
        for j=i+1:n
            S2=S2+A(i,j)*X0(j);
        end
        X1(i)=(B(i)-S1-S2)/A(i,i);
    end
    dk=norm(X1-X0);
    X0=X1;
end
X0
k