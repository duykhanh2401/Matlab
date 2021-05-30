function Ak=GaussJordan(A)

[x y] = size(A);
for k=1 : min(x,y)
    if A(k,k) == 0
        max=A(k+1,k);
        t=k+1;
        for g=t+1:x
            if A(g,k) > max
                max=A(g,k);
                h=g;
            end
        end
        temp=A(k,:);
        A(k,:)=A(h,:);
        A(h,:)=temp;
    end
    for i=1 : x
        if i~=k
            p = A(i,k)/A(k,k);
            A(i,:)= p*A(k,:) - A(i,:);
        end
    end
end
Ak=A;