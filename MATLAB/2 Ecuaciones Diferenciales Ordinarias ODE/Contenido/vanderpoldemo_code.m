type vanderpoldemo

tspan = [0, 20];
y0 = [2, 0];    % Condiciones iniciales y0 = ['pocisi�n inicial', 'velocidad inicial']
Mu = 1;
ode = @(t,y)vanderpoldemo(t,y,Mu); %se declara una funci�n an�nima
[t, y] = ode45(ode,tspan,y0);

plot(t,y(:,1))
xlabel('t')
ylabel('Soluci�n y')
title('Ecuacu�n Van Der Pol, \mu = 1')