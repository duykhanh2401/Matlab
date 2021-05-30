clear all ; clc ;
a = input('Nhap vao so dau tien: ');
b = input('Nhap vao so thu hai: ');
temp = a*b;
    while( b ~= 0)
       t = b;
       b = mod(a,b);
       a = t;
    end
    uc=a;
bc = temp/uc;
fprintf('UCLN = %d\n',uc);
fprintf('BCNN = %d\n',bc);
