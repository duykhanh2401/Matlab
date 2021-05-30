%function tinhhang(B)
A=fix(1+8*rand(5,3))
A=Gauss(A)
[x y] = size(A);
dem=0;
for i = 1:x
    s=0;
    for j =1:y
        s=s+A(i,j);
    end
    if abs(s) < 1e-15
        dem=dem+1;
    end
end
rank(A)
hang=x-dem