clc;clear all;
M = 200;
k = 1;
for i=1:5
    k = k*10;
    [Itb(i) std(i)] = tinhsin(k,M);
end

plot(1:i,std)
