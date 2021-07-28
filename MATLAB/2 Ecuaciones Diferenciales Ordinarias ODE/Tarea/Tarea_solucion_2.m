% Solucionador de la ecuación diferencial de segundo orden para un oscilador armónico

tspan = [0, 100];             % Intervalo de integración
y0 = [2, 2];                  % Condiciones iniciales y0 = ['pocisión inicial', 'velocidad inicial']
K = 0.2;                      % constante del sistema
R = 10;
m = 5;
w = sqrt(K/m);
ode = @(t,y)[y(2); -2*w^2*y(1)-R/m];  % Se declara una función anónima
[t, y] = ode15s(ode,tspan,y0);     % Se resuelve la ecuación; puede usar 'ode45' o 'ode15s'

plot(t,y(:,1))
xlabel('t')
ylabel('Solución y')
title('Ecuación de x(t); K=0.2, R=10, m=5')
