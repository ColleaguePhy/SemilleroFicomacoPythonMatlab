% Solucionador de la ecuaci�n diferencial de segundo orden para un oscilador arm�nico

tspan = [0, 100];               % Intervalo de integraci�n
y0 = [2, 2];                    % Condiciones iniciales y0 = ['pocisi�n inicial', 'velocidad inicial']
w = 1;                          % constante del sistema
ode = @(t,y)[y(2); -w^2*abs(y(1))/y(1)];   % Se declara una funci�n an�nima
[t, y] = ode15s(ode,tspan,y0);  % Se resuelve la ecuaci�n; puede usar 'ode45' o 'ode15s'

plot(t,y(:,1))
xlabel('t')
ylabel('Soluci�n y')
title('Ecuaci�n de x(t); \omega = 1')