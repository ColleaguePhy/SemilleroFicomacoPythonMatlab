clear all

phc=fundamentalPhysicalConstantsFromNIST();%constantes fisicas SI
hbar=phc.Planck_constant.value/(2*pi);
me=phc.electron_mass.value;
q=abs(phc.electron_charge_to_mass_quotient.value*me);
K=phc.Boltzmann_constant_in_eV_over_K.value;

%creando vectores

% vector fila
v=[1 2 3 4]; %cuatro elementos
vc=v'; %vector columna

v,vc % muestra en la ventana de comandos

vc2=[1;2;3;4] %vector columna

length(vc2)%longitud del vector, numero de elementos
size(vc2) %dimensiones del vector: nuemero de filas y columnas
size(v)

%definir vector con elementos de intervalo constante
A=1:3:16
A(4) %cuarto elemento de a lista
A(end) %ultimo elemento de la lista
A(1)%primer elemento de la lista

%
%linspace:para crear vectores de valores equidistante reales

x=linspace(0,10,6)
y=linspace(1,5,10)

%
%algunas operaciones
2.*v %multiplica cada elemento del vector por 2
v./2 %divide cada elemento por 2
sqrt(v) % obtiene la raiz cuadrada de cada vector
vc.*vc2 %producto componente a componente
z=linspace(1,5,6);
dot(x,z) %producto escalar
norm(v) %norma del vector
sum(x)% sumatoria las componentes del vector

%%%

%Matrices
A=zeros(4)%matrix de ceros 4x4
B=ones(4) %matrix de unos 4x4
C=A+B %suma elemento a elemento
D=2.+A %suma a cada elemento
E=3.*B %multiplica cada elemento
D./E %divide elemento a elemento

%
F=[1,2,3;4,5,6;7,8,9]%matrix por filas
F(3,2)
fila_2=F(2,:) %elementos de la segunda fila

Ft=F' %transpuesta de F
col_3=Ft(:,3)
Ft(2,2)=0;

Ft

size(Ft)%dimension de Ft
det(Ft) % determinante de Ft
inv_Ft=inv(Ft) %matrix inversa

A=Ft*inv_Ft
B=inv_Ft*Ft

%
%matrices diagonales
F
dgF=diag(F)% vector con los elemento de la diagona
C=[3,5,7];
diag(C) %contruye una matrix diagonal con los elementos de C
diag(C,1) %matrix diagonal superior
diag(C,-1) % matrix diagonal inferior
B=ones(4) %matrix de elemento de valor 1
A=eye(4) % matrix diagonal de unos

%
% operador de segunda derivada
op=-2.*A+diag(diag(eye(3)),1)+diag(diag(eye(3)),-1)

%problema de valores propios A.v=lambda.v (v=vec,lambda=val)
[vec,val]=eig(op)%valores y vectores propios de una matrix
op*vec(:,1)-val(1,1).*vec(:,1)

%
%Resolviendo el problema Ax=b
A=op
b=v %vector fila
x=A\b'
A*x-b'

%%%%

%ciclos:calculo de Pi con un ciclo finito

% Serie de Leibniz
suma=0
for i=0:100000
    suma=suma+((-1)^i)/(2*i+1);
end
v_pi=4*suma 


% aprovechando de las ventajas de los vectores
n=0:1:45000; 
v=(-diag(eye(length(n))))';
v2_pi=4*sum(((v.^n)./(2.*n+1)))


% Uso del ciclo while
eps=0.00001;
l=0;
suma_old=0.;

while (abs(pi-suma_old))>=eps
    suma=suma_old+4.*((-1)^l)/(2*l+1);
    l=l+1;
    suma_old=suma;
end
v3_pi=suma_old


%uso de condicional para romper el ciclo for
suma_old=0;
m=10000000;

for i=0:m
    suma=suma_old+4*((-1)^i)/(2*i+1);
    if(abs(pi-suma)<=eps) %if uno
        break
    else
        suma_old=suma;
    end
end
v4_pi=suma,i %valor de pi mediante serie de Leibniz
