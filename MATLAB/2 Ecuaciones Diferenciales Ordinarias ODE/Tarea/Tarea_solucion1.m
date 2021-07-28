% Solucionador de la ecuación diferencial de segundo orden para un oscilador armónico

tspan = [0, 100];               % Intervalo de integración
y0 = [2, 2];                    % Condiciones iniciales y0 = ['pocisión inicial', 'velocidad inicial']
w = 1;                          % constante del sistema
ode = @(t,y)[y(2); -w^2*abs(y(1))/y(1)];   % Se declara una función anónima
[t, y] = ode15s(ode,tspan,y0);  % Se resuelve la ecuación; puede usar 'ode45' o 'ode15s'

plot(t,y(:,1))
xlabel('t')
ylabel('Solución y')
title('Ecuación de x(t); \omega = 1')
