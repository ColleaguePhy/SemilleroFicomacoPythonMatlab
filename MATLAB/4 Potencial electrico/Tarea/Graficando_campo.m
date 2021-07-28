%potencial y campo eléctrico de una disribución de cargas puntuales
%se establece como métrica K=1

x1=-10:0.1:10;
[x,y]=meshgrid(x1);
q1=1;
q2=-1;
q3=1;
a=2;
f=@(x,y)(q1./sqrt((x+a).^2+(y).^2));
g=@(x,y)(q2./sqrt((x).^2+(y).^2));
h=@(x,y)(q3./sqrt((x-sqrt(2)*a).^2+(y).^2));

v=@(x,y)(f(x,y)+g(x,y)+h(x,y));

axis([-7 7 -7 7])
contour(x,y,v(x,y),500)
