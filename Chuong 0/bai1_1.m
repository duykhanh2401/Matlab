% Bai 1.1.a 

a=input('Nhap diem thuong xuyen: ');
b=input('Nhap diem giua ki: ');
c=input('Nhap diem cuoi ki: ');
 
d=a*0.2+b*0.2+c*0.6;
 
fprintf('Diem tong ket la: %.2f\n\n',d);
 
% Bai 1.1.b
 
tren = input('Nhap vao canh tren cua hinh thang: ');
duoi = input('Nhap vao canh duoi cua hinh thang: ');
cao  = input('Nhap vao chieu cao cua hinh thang: ');
 
s=(tren+duoi)*cao/2;
 
fprintf('Dien tich hinh thang la: %.2f\n',s);