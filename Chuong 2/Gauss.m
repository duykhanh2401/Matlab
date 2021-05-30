function Ak= Gauss(A)
    [x y] = size(A);
    for k=1 : min(x-1,y)
        if A(k,k) == 0
            max=A(k+1,k);
            h=k+1;
            for g=k+2:x
                if A(g,k) > max
                    max=A(g,k);
                    h=g;
                end
            end
            temp=A(k,:);
            A(k,:)=A(h,:);
            A(h,:)=temp;
        end
        for i=k+1 : x
                p = A(i,k)/A(k,k);
                A(i,:)= p*A(k,:) - A(i,:);
        end
    end
Ak=A;