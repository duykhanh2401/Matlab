clc;clear all;close all;
A=[2 -12;1 -5];X=[0;1];
N=8;
B=nghichdao(A)
for k=1:N
w=B*X;
X=w/norm(w);
end
X
lambda=(X'*A*X)/(X'*X) % Rayleigh quotient