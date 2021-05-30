clc; clear all

A = [8 3 5 3 1 ; 2 4 9 0 7 ; 9 10 2 9 4 ; 8 9 1 6 2 ; 9 9 8 7 2]
c=0;
for i=1 : 5
    c = c + A(i,i);
end

d=0;

for i=1 : 5
    d = d + A(i,6-i);
end

B = A;

B(:,1) = [4 8 4 4 8];
B(:,3) = [2 4 2 2 4];
B
det(A)
det(B)
A+B
A*B
A.*B 
B/A 
A\B 
B./A 
A.\B