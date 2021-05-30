clc; clear all; close all;
f=@(x) sin(x);
N=1e4; a=0; b=pi/2; M=100;
for k=1:M
x=a+(b-a)*rand(1,N);
I(k)=mean(f(x))*(b-a);
end
Iref=quad(f,a,b)
Itb=mean(I)
I2tb=mean(I.^2);
std=sqrt((I2tb-Itb.^2)/(M-1))