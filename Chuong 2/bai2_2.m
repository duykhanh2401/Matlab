clear all; clc;
A=[2 -2 1 3;3 1 -1 7; 1 -3 2 0]
A= GaussJordan(A)
n=size(A,1)
for i=1:n
    x(i,1)=A(i,n+1)/A(i,i);
end
x
