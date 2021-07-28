type vanderpoldemo

tspan = [0, 20];
y0 = [2, 0];    % Condiciones iniciales y0 = ['pocisión inicial', 'velocidad inicial']
Mu = 1;
ode = @(t,y)vanderpoldemo(t,y,Mu); %se declara una función anónima
[t, y] = ode45(ode,tspan,y0);

plot(t,y(:,1))
xlabel('t')
ylabel('Solución y')
title('Ecuacuón Van Der Pol, \mu = 1')