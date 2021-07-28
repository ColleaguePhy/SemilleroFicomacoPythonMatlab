clc
clear all 
%
phc=fundamentalPhysicalConstantsFromNIST();
me=phc.electron_mass.value;
q=abs(phc.electron_charge_to_mass_quotient.value*me);
eps_0=phc.electric_constant.value;
ct_k=q/(4*pi*eps_0);

x1=-12:0.05:12; %intervalo de iteración
a=1;
[x,y]=meshgrid(x1);
f=@(x,y)(1./sqrt(x.^2+(y-a).^2));
g=@(x,y)(1./sqrt(x.^2+(y+a).^2));
q1=1;
q2=-1;
v=@(x,y)(-q1*f(x,y)+-q2*g(x,y)); %potencial eléctrico, con f carga positiva, g carga negativa 

hold on
axis([-7 7 -7 7])
contour(x,y,v(x,y),200)

Ex=-x.*((f(x,y)).^3 -(g(x,y)).^3);
Ey=-((y-a).*(f(x,y)).^3 -(y+a).*(g(x,y)).^3);

quiver(x,y,Ex,Ey,'color','r')
hold off
