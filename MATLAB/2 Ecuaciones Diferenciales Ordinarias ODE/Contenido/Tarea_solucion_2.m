% Solucionador de la ecuaci�n diferencial de segundo orden para un oscilador arm�nico

tspan = [0, 100];             % Intervalo de integraci�n
y0 = [2, 2];                  % Condiciones iniciales y0 = ['pocisi�n inicial', 'velocidad inicial']
K = 0.2;                      % constante del sistema
R = 10;
m = 5;
w = sqrt(K/m);
ode = @(t,y)[y(2); -2*w^2*y(1)-R/m];  % Se declara una funci�n an�nima
[t, y] = ode15s(ode,tspan,y0);     % Se resuelve la ecuaci�n; puede usar 'ode45' o 'ode15s'

plot(t,y(:,1))
xlabel('t')
ylabel('Soluci�n y')
title('Ecuaci�n de x(t); K=0.2, R=10, m=5')
