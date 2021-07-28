%potencial y campo eléctrico de una disribución de cargas puntuales
%se establece como métrica K=1

%% caso1
x1=-10:0.1:10;
[x,y]=meshgrid(x1);

f=@(x,y)(1./sqrt((x+2).^2+(y).^2));
g=@(x,y)(1./sqrt((x-2).^2+(y).^2));
h=@(x,y)(1./sqrt((x).^2+(y+2).^2));
i=@(x,y)(1./sqrt((x).^2+(y-2).^2));
j=@(x,y)(-1./sqrt((x).^2+(y).^2));

v=@(x,y)(f(x,y)+g(x,y)+h(x,y)+i(x,y)+j(x,y));

axis([-7 7 -7 7])
contour(x,y,v(x,y),500)

%% caso2
x1=-10:0.1:10;
[x,y]=meshgrid(x1);

f=@(x,y)(1./sqrt((x+5).^2+(y+10/3*sqrt(3)).^2));
g=@(x,y)(1./sqrt((x-5).^2+(y+10/3*sqrt(3)).^2));
h=@(x,y)(1./sqrt((x).^2+(y-10/3*sqrt(3)).^2));
i=@(x,y)(-1./sqrt((x).^2+(y).^2));
%j=@(x,y)(-1./sqrt((x).^2+(y).^2));

v=@(x,y)(f(x,y)+g(x,y)+h(x,y)+i(x,y)+j(x,y));

axis([-7 7 -7 7])
contour(x,y,v(x,y),500)

%% caso3
x1=-10:0.1:10;
[x,y]=meshgrid(x1);

f=@(x,y)(1./sqrt((x).^2+(y+2).^2));
g=@(x,y)(1./sqrt((x).^2+(y-1).^2));
h=@(x,y)(-2./sqrt((x).^2+(y).^2));
%i=@(x,y)(-1./sqrt((x).^2+(y).^2));
%j=@(x,y)(-1./sqrt((x).^2+(y).^2));

v=@(x,y)(f(x,y)+g(x,y)+h(x,y)+i(x,y)+j(x,y));

axis([-7 7 -7 7])
contour(x,y,v(x,y),500)

%% caso5
x1=-10:0.1:10;
[x,y]=meshgrid(x1);

f=@(x,y)(-1./sqrt((x-8).^2+(y).^2));
g=@(x,y)(1./sqrt((x-6).^2+(y).^2));
h=@(x,y)(1./sqrt((x+8).^2+(y).^2));
i=@(x,y)(-1./sqrt((x+6).^2+(y).^2));
j=@(x,y)(1./sqrt((x).^2+(y-8).^2));
k=@(x,y)(-1./sqrt((x).^2+(y-6).^2));
l=@(x,y)(-1./sqrt((x).^2+(y+8).^2));
m=@(x,y)(1./sqrt((x).^2+(y+6).^2));

v=@(x,y)(f(x,y)+g(x,y)+h(x,y)+i(x,y)+j(x,y)+k(x,y)+l(x,y)+m(x,y));

axis([-7 7 -7 7])
contour(x,y,v(x,y),1000)