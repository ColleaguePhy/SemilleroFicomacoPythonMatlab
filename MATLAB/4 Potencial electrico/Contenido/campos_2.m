% campos: calculo simbolico
clc
clear all 
%
x1=gpuArray(-15:0.05:15);
a=2;
[x,y]=meshgrid(x1);
f=1./sqrt(x.^2+(y-a).^2);
g=1./sqrt(x.^2+(y+a).^2);
v=gpuArray(f+g);
hold on
contour(x,y,v,500)
[Ex,Ey]=gradient(v,0.1,0.1);
quiver(x,y,-Ex,-Ey,'color','r');
stx=gpuArray(-15:1:15);
sty=ones(size(stx));
streamline(x,y,-Ex,-Ey,stx,sty);
streamline(x,y,Ex,Ey,stx,sty);

axis([-7 7 -10 10])
hold off
