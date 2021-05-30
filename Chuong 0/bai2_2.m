clear all ; clc ;
n = input('Nhap n: ');
dem=0;

for i=2 : n
    if mod(n,i)== 0
        dem=dem+1;
    end
end

if dem == 1
    disp('Co la so nguyen to')
else
    disp('Khong la so nguyen to')
end