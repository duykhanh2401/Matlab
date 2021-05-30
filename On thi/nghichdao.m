function Ak = nghichdao(B)
[x,y]=size(B);

A = [B eye(x)];
for k=1:min(x,y)
    for i=1:x
        p=A(i,k)/A(k,k);
        if i~=k
            A(i,:)=p*A(k,:)-A(i,:);
        end
    end
end
for i=1:x
    A(i,:)=A(i,:)/A(i,i);
end
Ak = A(:,x+1:end);


    