clear all; clc ;
syms x;
y =exp(-x) -sin(x.^2) - 0.5;
a=0 ; b=3;
f = inline(vectorize(y),'x');
figure(1)
ezplot(f,[a b]);
[x0 y0] = ginput;
for k=1:length(x0)
    [xmin(k,1) ymin(k,1)] = fminsearch(f,x0(k));
end
xymin = [xmin ymin]
figure(2)
g = -y;
fg = inline(vectorize(g),'x');
ezplot(g,[a b]);
[x1 y1] = ginput;
for k=1:length(x1)
    [xmax(k,1) ymax(k,1)] = fminsearch(fg,x1(k));
end
xymax = [xmax ymax]
dy = diff(y,'x');
%ezplot(dy,[a b]);
tieptuyen(dy,0,1.5,0.1,1e-9);
tieptuyen(dy,1.5,2.3,2,1e-9);
tieptuyen(dy,2.7,3,2.8,1e-9);
