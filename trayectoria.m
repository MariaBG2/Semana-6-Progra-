%PARAMETROS
angle = input('Ingrese el angulo de lanzamiento en grados: ');
water = input('Ingrese la cantidad de agua en litros: ')*0.001;
pressure = input('Ingrese la presion en pascales: '); 
mass = 0.24 + water/0.001; %kilogramos
g = 9.806; %m/s^2

%Velocidad inicial y sus componentes
v0 = sqrt((2*pressure*water)/mass);
vx = v0*cosd(angle);
vy = v0*sind(angle);

%Tiempo de vuelo
t_total = (2*vy)/g;
t = linspace(0,t_total, 100);

%Movimiento
x = vx * t;
y = (vy*t) - (0.5*g*t.^2);

%Grafica
plot(x, y, 'B','LineWidth',2);
xlabel('Distancia horizontal(m)');
ylabel('Altura (m)');
title('Trayectoria del hidrocohete');
grid on;
