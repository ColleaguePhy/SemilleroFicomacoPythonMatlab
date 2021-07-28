% Primer intento de animación en matlab
% Tiro parabolico

clear all

t = 0;          % tiempo inicial
h = -4.9*t^2+t;     % altura inicial
eps=0.001;        % cifras decimales del tiempo que se quieren tener con precisión

while h>=0          % se repite el código mientras la altura sea mayor que cero
      h = -4.9*t^2+t;  % altura en el tiempo tt
      t = t+eps;    % se aumenta el tiempo una cantidad epsilon
end
tf=t-eps;

t=0:0.001:tf;
x=t+2;
y=-4.9*t.^2+t;
comet(x,y)

%
%

t=0:pi/100:2*pi;
x=3*cos(pi*t);
y=2*sin(pi*t/2);

%h=animatedline(x,y,'Color',b,'LineWidth',2)

h=animatedline('MaximumNumPoints',100);
t=linspace(0,4*pi,1000);
x=3*cos(pi*t);
y=2*sin(pi*t/2);

for k=1:length(t)
    addpoints(h,x(k),y(k))
    drawnow
end

comet(x,y)
