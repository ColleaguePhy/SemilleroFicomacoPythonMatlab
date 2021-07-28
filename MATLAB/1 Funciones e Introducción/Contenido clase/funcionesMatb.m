clear all
phc=fundamentalPhysicalConstantsFromNIST();%constantes fisicas SI
eps0=phc.electric_constant.value;
%funciones en matlab
% uso de simbolos en funciones
syms tt v0 %la variable t y v0  tomaran valores diferentes
g=9.8; % valor fijado desde el inicio
y=-0.5*g*tt^2 +v0*tt+1.0; %lanzamiento vertical
vpa(y,4)% evalua la expresión de y con 4 decimales
v0=10.;
tt=linspace(0,10); yy=subs(y) % escribir double(subs(y))
plot(tt,double(yy))
%
%Funciones anónimas: no generan archivo
x=@(tt,w1, w2)(3.*sin(w1*tt)+4.*cos(w2*tt)); %superposición de oscilaciones armónicas
xx=x(tt,pi/2, pi/3);
plot(tt,xx)
%
%funciones de MATLAB: generan archivos
syms q R z %q carga R radio del anillo, z: linea a lo largo del eje del anillo
%campo electrico de un anillo de carga q y radio R
Ec=matlabFunction((1/(4*pi*eps0))*q/sqrt(R^2+z^2),'vars',[z,q,R])
z=linspace(-0.5,0.5);
plot(z,Ec(10.e-6,0.05,z)) %Ec va en el orden como se definieron en syms Ec(q, R, z)
%
%derivada de funciones simbolicas
syms f(t) %función simbólica
f(t)=-0.5*g*t^2+v0*t;
dfdt=diff(f) % calcula la primera derivada
dfdt2=diff(f,2)%calcula la segunda derivada
vel=dfdt(0) %evalua la primera derivada en cer0
plot(tt,dfdt(tt))
%%
%Derivada parcial
syms V(r,y)
d=1.e-4;
V(r,y)=(2*q*d*cos(y))/(4*pi*eps0*r^2)% r distancia al dipolo, y angulo con el dipolo
vpa(V,4)
dVdx=diff(V,r)
vpa(dVdx,4)
%
%Integración simbolica
syms a(t) c 
a(t)=-g*t+c;
int(a,0,10)

