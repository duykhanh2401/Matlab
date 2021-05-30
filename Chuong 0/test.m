clear all ; clc ; 
A = [1 2 3 4; 5 6 3 8; 13 10 1 12;3 6 9 5]
det(A)
for k=1 : 3
    for i=k+1 : 4
        p = A(i,k)/A(k,k);
        A(i,:)= p*A(k,:) - A(i,:);
    end
end

A
