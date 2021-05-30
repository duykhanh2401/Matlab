function Ak = nghichdao(A)
[x y]=size(A);
B = [A eye(x)];
B=Gauss(B);
for i=1:x
    B(i,:)=B(i,:)/B(i,i);
end
B=(:,y+1:end);
Ak=B;


