function ghpt(A)
A=Gauss(A);
n=size(A,1);
for i=n:-1:1
    S=0;
    for j=i+1:n
        S=S+A(i,j)*x(j);
    end
    x(i,1)=(A(i,n+1)-S)/A(i,i);
end
A,x