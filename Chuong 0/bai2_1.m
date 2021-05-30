clear all; clc;
a=input('Nhap vao canh a: ');
b=input('Nhap vao canh b: ');
c=input('Nhap vao canh c: ');

if a+b > c & a+c > b & b+c > a
    disp('Thoa man dieu kien tao thanh tam giac');
    p=(a+b+c)/2;
    s=sqrt(p*(p-a)*(p-b)*(p-c));
    fprintf('Dien tich tam giac la: %.2f\n',s);
else
    disp('Khong tao thanh tam giac !');
end