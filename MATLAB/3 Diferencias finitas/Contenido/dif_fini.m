%oscilador armónico por diferencias finitas.
%
clc
clear all
N=2000;
t=linspace(0,5,N);%intrvalo de tiempo en 100 partes
%
CI=[-1 2*pi];% condiciones iniciales
h=(t(N)-t(1))/N; %paso de las diferencias finitas
w=2*pi; %frecuencia angular del oscilador
% definiendo la matrix de diferencias finitas
M=zeros(N);
M(1,1)=2;
for i=2:N%filas
    for j=1:N%columnas
      if ((i == j) || (i-j)==2)%operador o logico (OR)
            M(i,j) =1;
        elseif (i-j) == 1
            M(i,j) = h^2*w^2-2;
      end         
    end
end
%        
v=zeros(N,1);%vector independiente
v(1)=2*h*CI(2)-(h^2*w^2-2)*CI(1);
v(2)=-CI(1);
x=linsolve(M,v);%soluciona el sistema de ecuaciones lineales M.x=v
plot(t,x)
