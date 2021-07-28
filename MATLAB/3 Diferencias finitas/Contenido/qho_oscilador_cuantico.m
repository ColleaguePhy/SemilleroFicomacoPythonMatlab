%oscilador armónico cuántico con diferencias finitas
clc
clear all

U_fac=5;
N=5000;
a=3; %intervalo de integración
z=linspace(-a,a,N);
h=(z(N)-z(1))/N;
%
%definición de la matriz cinetica
T=2*eye(N-2)-diag(diag(eye(N-3)),1)-diag(diag(eye(N-3)),-1); %diag(v,2) pone al vector v en la diagonal 2 encima de la principal
T=T./h^2; %divide cada componente de la matriz T en h^2
%
%potencial
v=U_fac.*(z.^2);
for i=2:N-1
    vv(i-1)=v(i);
end
U=diag(vv);
%Hamiltoniano
Ha=T+U;
[Psi,ev]=eig(Ha);
egv=diff(diag(ev));
for j=2:N-1
    zz(j-1)=z(j);
end
for k=1:6
    hold on
    plot(zz,100*Psi(:,k)+ev(k,k))
    plot([zz(1),zz(length(zz))],[ev(k,k),ev(k,k)])
end
plot(zz,vv)