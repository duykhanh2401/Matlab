clc;clear all;
N = 1e4;
k = 0;
for i=100:100:1000
    k = k+1;
    [Itb(k) std(k)] = tinhsin(N,i);
end

plot(1:k,Itb)