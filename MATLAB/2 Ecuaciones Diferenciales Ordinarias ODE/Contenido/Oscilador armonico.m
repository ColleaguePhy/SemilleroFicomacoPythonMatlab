% oscilador armonico

type vanderpoldemo

tspan = [0, 5];
y0 = [2, 1];    % Condiciones iniciales y0 = ['pocisión inicial', 'velocidad inicial']
w = 2*pi;
ode = @(t,y)[y(2); -2*w^2*y(1)]; %se declara una función anónima
[t, y] = ode45(ode,tspan,y0);

plot(t,y(:,1))
xlabel('t')
ylabel('Solución y')
title('Oscilador armónico \omega = 2\pi')
