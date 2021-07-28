%
% Solucionador de la ecuaci�n diferencial de segundo orden para un oscilador arm�nico

tspan = [0, 100];              % Intervalo de integraci�n
y0 = [2, 2];                  % Condiciones iniciales y0 = ['pocisi�n inicial', 'velocidad inicial']
w = 1;                        % constante del sistema
ode = @(t,y)[y(2); -w^2*y(1)];  % Se declara una funci�n an�nima
[t, y] = ode15s(ode,tspan,y0);    % Se resuelve la ecuaci�n; puede usar 'ode45' o 'ode15s'

plot(t,y(:,1))
xlabel('t')
ylabel('Soluci�n y')
title('Ecuaci�n de x(t); \omega = 1')

%
%Constantes del movimiento armonico simple
A0 = sqrt(y0(1)^2 + y0(2)^2/(w^2));
phi = atan(-w*y0(2)/y0(1));

t = linspace(0,10,100);
f = A0*cos(w*t+phi);
hold on
plot(t,f)

%
% El patr�n ODE resulve una ecuaci�n diferencial de segundo orden con una sola variable
% si la variable es x, entonces:
% y0 = [x0, v_x0]
% si tenemos un n�mero de constantes alpha, betha,...
% ode = @(t,y)equation(t,y, alpha,betha, ...)
% donde equation es el nombre de un archivo '.m' con la ecuaci�n diferencial deseada