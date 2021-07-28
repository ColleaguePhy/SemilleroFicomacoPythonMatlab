%
clear all

% Created on Saturday Feb 06 10:42:00 2021
% Author: Juan Guarin Rojas
 
% Parametros y condiciones iniciales del código
N=2000;
t=linspace(0,5,N);
CI=[2, 1]; %condiciones iniciales ['pocisión inicial','velocidad inicial']
h=(t(N)-t(1))/N;
w = 2*pi; %frecuencia angular
y = 2*w;  %factor gamma

% Matriz del SEL
M=zeros(N);
M(1,1)=2;
for i=2:N %filas
    for j=1:N %columnas
        
        if(i==j)
            M(i,j) = 1+y*h;
        elseif (i-j)==1
            M(i,j) = w^2*h^2-2;
        elseif (i-j)==2
            M(i,j) = 1-y*h;
        end
    end
end
        
v=zeros(N,1);
v(1)=2*h*CI(2)*(1-y*h)-(w^2*h^2-2)*CI(1);
v(2)=(y*h-1)*CI(1);

x=linsolve(M,v); %soluciona M.x=v
plot(t,x)
