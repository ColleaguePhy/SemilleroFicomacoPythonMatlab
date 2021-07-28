% Este programa encuentra el tiempo tt en el que la altura de un proyectil
% es igual a cero de manera numerica.

% Se definen las Variables simb�licas y la funci�n de altura y(t)
syms tt v0 H0 theta
g = 9.8;
y = H0+v0*sin(theta)*tt-0.5*g*tt^2

% Parametros iniciales del movimiento
v0=10;
H0=10;
theta=pi/6;

% condiciones iniciales del c�digo
i=0;             % variable de iteraci�n
tt = 0;          % tiempo inicial
h = subs(y);     % altura inicial
eps=0.005;        % cifras decimales del tiempo que se quieren tener con precisi�n


while h>=0          % se repite el c�digo mientras la altura sea mayor que cero
      tt = i;       
      h = subs(y);  % altura en el tiempo tt
      i = i+eps;    % se aumenta el tiempo una cantidad epsilon
end
      
tt
