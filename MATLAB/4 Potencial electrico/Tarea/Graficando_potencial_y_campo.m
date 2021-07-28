%potencial y campo eléctrico de una disribución de cargas puntuales
%se establece como métrica K=1

x1=-10:0.1:10;
[x,y]=meshgrid(x1);
q1=1;
q2=-2;
q3=1;
a=2;
f=@(x,y)(q1./sqrt((x+a).^2+(y).^2));
g=@(x,y)(q2./sqrt((x).^2+(y-2*a).^2));
h=@(x,y)(q3./sqrt((x-a).^2+(y).^2));
v=@(x,y)(f(x,y)+g(x,y)+h(x,y));

axis([-7 7 -7 7])
contour(x,y,v(x,y),500)
hold on

x1=-10:0.5:10;
[x,y]=meshgrid(x1);

Ex=(2.*(x+a).*(f(x,y)).^3./q1^2 +2.*(x).*(g(x,y)).^3./q2^2+2.*(x-a).*(h(x,y)).^3./q3^2);
Ey=(2.*(y).*(f(x,y)).^3./q1^2 +2.*(y-2*a).*(g(x,y)).^3./q2^2+2.*(y).*(h(x,y)).^3./q3^2);

E=sqrt(Ex.^2+Ey.^2);

quiver(x,y,Ex,Ey,'color','r','Autoscale','on','AutoScaleFactor',2)

hold off
