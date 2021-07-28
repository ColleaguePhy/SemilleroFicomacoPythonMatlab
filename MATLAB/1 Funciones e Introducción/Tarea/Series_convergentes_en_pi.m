%Analisis de la rapidez de convergencia de dos series al valor de pi
clear

%
% Serie de Leibniz

suma=0;
suma_old=0;
m=100000;
eps=0.00000000001;

for i=0:m
    suma=suma_old+4*((-1)^i)/(2*i+1);
    if(abs(pi-suma)<=eps) %if uno
        break
    else
        suma_old=suma;
    end
end

v1_pi=suma_old     % valor de pi con la serie de Leibniz
c1=i               % cantidad de ciclos usados
error_1=abs(pi-v1_pi)

%
% Serie de Ramanujan-Sato
suma=0;
suma_old=0;

for j=0:m
    suma = suma_old + (2*sqrt(2)/(99^2))*((factorial(4*j)*(26390*j+1103)/factorial(j)^4)/396^(4*j));
    if (abs(pi-(1/suma))<=eps)
        break
    else
        suma_old=suma;
    end
end

v2_pi=1/suma    % valor 2 de pi con la serie de Ramanujan-Sato
c2=j            % cantidad de ciclos usados
error_2=abs(pi-v2_pi)
