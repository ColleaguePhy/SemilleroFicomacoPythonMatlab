%
clear all
clc
x1=-0.8:.005:.8;
[X,Y]=meshgrid(x1);

%lineas equipotenciales

f=@(X,Y)(X.^2+(Y-0.5).^2).^(-0.5);
g=@(X,Y)(X.^2+(Y+0.5).^2).^(-0.5);
h=@(X,Y)2*(X.^2+Y.^2).^(-0.5);

contour(X,Y,f(X,Y)-g(X,Y),500)
